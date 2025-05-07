local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().DRTPs then
	return getGlobalTable().DRTPs
end

local network = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/Network/Main.lua"))()
local plr = game:GetService("Players").LocalPlayer

local function FindLastChild(self, name)
	if not self:FindFirstChild(name) then return end

	local last
	for i,v in self:GetChildren() do
		if v.Name == name then
			last = v
		end
	end

	return last
end

local teleports = {
	FindLastChild = FindLastChild,
	Network = network
}

getGlobalTable().DRTPs = teleports

local function getFirstRail()
	while true do
		for i,v in workspace.RailSegments:GetChildren() do
			if v and v.Name == "RailSegment" and (v:GetPivot().Position - teleports.FirstRailPivot.Position).Magnitude <= 25 then
				return v
			end
		end

		plr.Character:PivotTo(teleports.FirstRailPivot + Vector3.new(0, 25))
		task.wait()
	end
end

teleports.GetFirstRail = getFirstRail

local firstRail = FindLastChild(workspace.RailSegments, "RailSegment")
local chair

while not firstRail and task.wait() do
	firstRail = FindLastChild(workspace.RailSegments, "RailSegment")
end

teleports.FirstRailPivot = firstRail:GetPivot()

local function scanFor(func, ...)
	local res = func(...)
	if res then return res end
	
	local rail
	while task.wait() do
		rail = rail and FindLastChild(workspace.RailSegments, "RailSegment") or getFirstRail()
		if rail then
			plr.Character:PivotTo(rail:GetPivot())
		end
		
		local res = func(...)
		if res then return res end
	end
end

local function getChair()
	if chair and chair.Parent and chair:FindFirstChild("Chair") and chair.Seat.Occupant and chair.Seat.Occupant ~= plr.Character.Humanoid then return end
	chair = workspace.RuntimeItems:FindFirstChild("Chair")

	if teleports.ChairPivot then
		for i=1, 100 do
			plr.Character:PivotTo(teleports.ChairPivot)

			for i,v in workspace.RuntimeItems:GetChildren() do
				if v and v.Name == "Chair" and v:FindFirstChild("Seat") and (not v.Seat.Occupant or v.Seat.Occupant == plr.Character.Humanoid) then
					chair = v

					teleports.Chair = chair
					teleports.ChairPivot = chair:GetPivot()

					return v
				end
			end

			task.wait(0.01)
		end
	end

	teleports.Chair = chair
	teleports.ChairPivot = chair and chair:GetPivot()
	
	if not chair then
		chair = scanFor(game.FindFirstChild, workspace.RuntimeItems, "Chair")
		print(chair)
		teleports.ChairPivot = chair and chair:GetPivot()
	end
	
	return chair
end

task.spawn(function()
	while task.wait(0.01) do
		if chair then
			teleports.ChairPivot = chair:GetPivot()
		end
	end
end)

teleports.GetChair = getChair

local function startDrag(object)
	game:GetService("ReplicatedStorage"):FindFirstChild("RequestStartDrag", math.huge):FireServer(object)
end
local function stopDrag()
	game:GetService("ReplicatedStorage"):FindFirstChild("RequestStopDrag", math.huge):FireServer()
end

teleports.StartDrag = startDrag
teleports.StopDrag = stopDrag

local function teleportToChair(cchair, dontChangeChair, inLoop)
	chair = cchair
	local function step()
		if chair.Seat.Occupant and chair.Seat.Occupant ~= plr.Character.Humanoid then
			if not dontChangeChair then
				chair = getChair()
			else
				return true
			end
		end
		chair.Seat.Disabled = false
		network.Other:Sit(chair.Seat)
	end

	if inLoop then
		repeat
			task.wait(0.1)

			local r = step()
			if r then
				return false
			end

			if not chair:FindFirstChild("Seat") then
				if not dontChangeChair then
					chair = getChair()
				else
					return false
				end

				continue
			end
		until chair.Seat.Occupant == plr.Character.Humanoid

		chair.Seat.Disabled = true
		plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		task.wait(0.1)
		chair.Seat.Disabled = true
		plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)

		return chair
	else
		return step()
	end
end

teleports.TeleportToChair = teleportToChair

local function claimNetwork(object)
	startDrag(object)

	local par
	local atts = 0
	while atts < 100 do
		local drag1 = object:FindFirstChild("DragAttachment", math.huge)
		local drag2 = object:FindFirstChild("DragAlignPosition", math.huge)
		local drag3 = object:FindFirstChild("DragAlignOrientation", math.huge)

		if not drag1 and not drag2 and not drag3 and par then
			break
		end

		if drag1 then
			par = drag1.Parent
			drag1:Destroy()
		end
		if drag2 then
			par = drag2.Parent
			drag2:Destroy()
		end
		if drag3 then
			par = drag3.Parent
			drag3:Destroy()
		end

		atts += 1

		task.wait(0.01)
	end

	return par
end

teleports.ClaimNetwork = claimNetwork

local teleport
local teleporting = false

teleports.Teleporting = teleporting

function teleport(position, y, z)
	if teleporting then return end
	if typeof(position) == "Vector3" then
		position = CFrame.new(position)
	elseif typeof(position) ~= "CFrame" then
		position = tonumber(position) or 0
		y = tonumber(y) or 0
		z = tonumber(z) or 0

		position = CFrame.new(position, y, z)
	end

	teleporting = true
	chair = teleportToChair(getChair(), false, true)

	teleports.Teleporting = teleporting
	
	task.spawn(claimNetwork, chair)
	task.wait()
	task.spawn(claimNetwork, chair)

	local times = 0
	repeat
		times = (times + 1) % 10

		if times == 0 then
			plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end

		for i,v in chair:GetDescendants() do
			if v and v:IsA("BasePart") then
				v.AssemblyLinearVelocity = Vector3.new(0, 1)
			end
		end

		for i=1, 5 do
			task.spawn(claimNetwork, chair)
			for i,v in chair:GetDescendants() do
				if v and v:IsA("BasePart") then
					v.CanCollide = false
					v.AssemblyLinearVelocity = Vector3.new()
				end
			end
			
			plr.Character:PivotTo(position)
			chair:PivotTo(position)

			task.wait(0.1)
		end

		if not chair:FindFirstChild("Seat") then continue end

		if teleportToChair(chair, true, false) == false then
			return teleport(position)
		end

		if not chair:FindFirstChild("Seat") then continue end
	until chair.Seat.Occupant == plr.Character.Humanoid

	if teleportToChair(chair, true, false) == false then
		return teleport(position)
	end

	plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	
	task.wait(1)
	
	plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)

	if teleportToChair(chair, true, false) == false then
		return teleport(position)
	end
	
	for i,v in chair:GetDescendants() do
		if v and v:IsA("BasePart") then
			v.CanCollide = false
			v.AssemblyLinearVelocity = Vector3.new()
		end
	end
	
	stopDrag()
	
	chair.Seat.Disabled = true
	plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	
	task.wait(0.1)
	
	plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)

	stopDrag()
	
	teleporting = false
	teleports.Teleporting = teleporting
end

teleports.Teleport = teleport
teleports.Teleports = table.freeze({
	Start = function()
		teleport(-0, 3, 29910)
	end,
	TeslaLab = function()
		local part
		for i,v in workspace.TeslaLab:GetDescendants() do
			if v and v:IsA("BasePart") then
				part = v
				break
			end
		end
		
		if part then
			teleport(part:GetPivot() + Vector3.new(0, 50))
		end
	end,
	Castle = function()
		teleport(210, 3, -9030)
	end,
	Sterling = function()
		local sterling = scanFor(game.FindFirstChild, workspace, "Sterling")
		teleport(sterling:GetPivot() + Vector3.new(0, 10))
	end,
	End = function()
		teleport(-340, 30, -49045)
		
		repeat task.wait() until workspace.Baseplates:FindFirstChild("FinalBasePlate") and workspace.Baseplates.FinalBasePlate:FindFirstChild("OutlawBase")
		
		local closest = nil
		
		while not closest do
			for i,v in workspace.Baseplates.FinalBasePlate.OutlawBase:GetChildren() do
				if v and v:IsA("BasePart") and (v.Position - Vector3.new(-300, 12.5, -49040)).Magnitude <= 10 then
					closest = v
					break
				end
			end
		end
		
		closest.CanCollide = false
	end
})

return teleports
