local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().DRTPs then
	return getGlobalTable().DRTPs
end

local network = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/Network/Main.lua"))()
local plr = game:GetService("Players").LocalPlayer

local teleports = {
	Network = network,
	Event = Instance.new("BindableEvent")
}

teleports.Event.Name = "<INSTANCE> BindableEvent" -- idk why add this LMFAO

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

local function findLastRail()
	local rail
	local t = 0
	while true do
		rail = rail or workspace.RailSegments:FindFirstChild("RailSegment")
		if rail and rail:FindFirstChild("NextTrack") then
			if rail.NextTrack.Value then
				rail = rail.NextTrack.Value
			else
				return rail
			end
		else
			task.wait()
		end
	end
end

teleports.GetFirstRail = getFirstRail
teleports.FindLastRail = findLastRail

local firstRail = workspace.RailSegments:FindFirstChild("RailSegment")
local chair

while not firstRail and task.wait() do
	firstRail = workspace.RailSegments:FindFirstChild("RailSegment")
end

teleports.FirstRailPivot = firstRail:GetPivot()

local function scanFor(func, ...)
	local res = func(...)
	if res then return res end
	
	local rail
	while task.wait() do
		rail = not workspace.Baseplates:FindFirstChild("FinalBasePlate") and rail and findLastRail() or getFirstRail()
		if rail then
			plr.Character:PivotTo(rail:GetPivot())
		end
		
		local res = func(...)
		if res then return res end
	end
end

teleports.ScanFor = scanFor

local function getChair()
	if chair and chair.Parent and chair:FindFirstChild("Seat") and (chair.Seat.Occupant and chair.Seat.Occupant == plr.Character.Humanoid or not chair.Seat.Occupant) then return chair end
	
	teleports.Event:Fire("Getting available chair...")
	
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
		teleports.ChairPivot = chair and chair:GetPivot()
	end
	
	return chair
end

local train
workspace.ChildAdded:Connect(function(v)
	if v:GetAttribute("Stopped") ~= nil then
		train = v
	end
end)
for i,v in workspace:GetChildren() do
	if v:GetAttribute("Stopped") ~= nil then
		train = v
	end
end

task.spawn(function()
	while task.wait(0.01) do
		teleports.Chair = chair ~= nil and chair.Parent and chair
		teleports.ChairPivot = chair and chair:GetPivot()

		teleports.Train = train ~= nil and train.Parent and train
		teleports.TrainPivot = train and train:GetPivot()
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

local teleporting = false
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

teleports.Teleporting = teleporting

function teleport(position, y, z, posName)
	if teleporting then return end
	if typeof(position) == "Vector3" then
		position = CFrame.new(position)
	elseif typeof(position) ~= "CFrame" then
		position = tonumber(position) or 0
		y = tonumber(y) or 0
		z = tonumber(z) or 0

		position = CFrame.new(position, y, z)
	end
	
	local dist = (position.Position - plr.Character:GetPivot().Position).Magnitude
	if dist < 50 then
		if teleports.Values then
			teleports.Values.ForceNoclip = true
		end
		for i=1, ((dist / plr.Character.Humanoid.WalkSpeed / 2) - 1) * 100 do
			plr.Character.Humanoid:MoveTo(position.Position)
			task.wait(0.01)
		end
		if teleports.Values then
			teleports.Values.ForceNoclip = false
		end
		return
	end
	
	if plr.Character:GetPivot().Position.Y - position.Y > 5 then
		plr.Character:PivotTo(plr.Character:GetPivot() - Vector3.new(0, 5))
	end
	
	if posName ~= false then
		teleports.Event:Fire("Teleporting to " .. (posName or tostring(position.Position)))
	end

	teleporting = true
	
	chair = getChair()

	local dist = (chair:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude
	if dist > 50 then
		chair = teleportToChair(chair, false, true)
	elseif dist < 50 then
		if teleports.Values then
			teleports.Values.ForceNoclip = true
		end
		for i=1, ((dist / plr.Character.Humanoid.WalkSpeed / 2) - 1) * 100 do
			plr.Character.Humanoid:MoveTo(chair:GetPivot().Position)
			task.wait(0.01)
		end
		if teleports.Values then
			teleports.Values.ForceNoclip = false
		end
	end

	if posName ~= false then
		teleports.Event:Fire("Teleporting")
	end
	
	teleports.Teleporting = teleporting
	
	task.spawn(claimNetwork, chair)
	task.wait()
	task.spawn(claimNetwork, chair)

	local times = 0
	local start = tick()
	
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

		if tick() - start > 15 then
			teleporting = false
			teleports.Teleporting = teleporting

			return posName ~= false and teleports.Event:Fire("Teleport timeout")
		end
		if teleportToChair(chair, true, false) == false then
			teleporting = false
			teleports.Teleporting = teleporting

			return posName ~= false and teleports.Event:Fire("Teleport failed")
		end

		if not chair:FindFirstChild("Seat") then continue end
	until chair.Seat.Occupant == plr.Character.Humanoid
	
	teleporting = false
	teleports.Teleporting = teleporting

	if teleportToChair(chair, true, false) == false then
		teleporting = false
		teleports.Teleporting = teleporting

		return posName ~= false and teleports.Event:Fire("Teleport failed")
	end

	plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	
	task.wait(0.25)
	
	plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)

	if teleportToChair(chair, true, false) == false then
		teleporting = false
		teleports.Teleporting = teleporting

		return posName ~= false and teleports.Event:Fire("Teleport failed")
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
	
	if posName ~= false then
		teleports.Event:Fire("Teleported!", "If you got teleported back, try again!")
	end
end

teleports.Teleport = teleport
teleports.Teleports = table.freeze({
	Start = function(self)
		teleport(-0, 3, 29910, "Start")
	end,
	TeslaLab = function(self)
		local part
		for i,v in workspace.TeslaLab:GetDescendants() do
			if v and v:IsA("BasePart") then
				part = v
				break
			end
		end
		
		if part then
			teleport(part:GetPivot() + Vector3.new(0, 50), nil, nil, "Tesla's Laboratory")
		end
	end,
	Castle = function(self)
		teleport(210, 3, -9030, "Castle")
	end,
	Sterling = function(self)
		teleports.Event:Fire("Scanning for sterling town...", "This might take a while, please wait!")
		
		local sterling = teleports.SterlingScan or scanFor(game.FindFirstChild, workspace, "Sterling"):GetPivot() + Vector3.new(0, 10)
		teleports.SterlingScan = sterling
		
		teleport(sterling, nil, nil, "Sterling town")
	end,
	End = function(self)
		teleport(-340, 30, -49045, "End")
		
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
	end,
	Train = function(self, retry)
		if train and train.Parent and train:FindFirstChild("RequiredComponents") and train.RequiredComponents:FindFirstChild("Controls") and train.RequiredComponents.Controls.ConductorSeat:FindFirstChild("VehicleSeat") then
			local oldPos = train.RequiredComponents.Controls.ConductorSeat.VehicleSeat:GetPivot()

			repeat
				network.Other:Sit(train.RequiredComponents.Controls.ConductorSeat.VehicleSeat)
				task.wait(0.01)
			until train.RequiredComponents.Controls.ConductorSeat.VehicleSeat:FindFirstChild("SeatWeld")

			train.RequiredComponents.Controls.ConductorSeat.VehicleSeat:PivotTo(oldPos)
		else
			if retry then return end
			
			teleports.Event:Fire("No train found!", "Trying to search for it [1]")
			
			for i=1, 100 do
				plr.Character:PivotTo(teleports.TrainPivot or CFrame.new(0, 100, 0))
				task.wait(0.01)
			end
			
			if train then
				return self:Train(true)
			end
			
			teleports.Event:Fire("No train found!", "Trying to search for it [2]")
			
			scanFor(function()
				return train and train.Parent
			end)

			return self:Train(true)
		end
	end,
})

return teleports
