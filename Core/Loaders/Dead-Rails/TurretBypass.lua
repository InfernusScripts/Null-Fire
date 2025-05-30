local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().TACB then
	return getGlobalTable().TACB
end

local network = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/Network/Main.lua"))()
local plr = game:GetService("Players").LocalPlayer

local function findLastRail()
	local rail

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

local function pivot(pos)
	if plr.Character then
		if typeof(pos) == "Vector3" then
			pos = CFrame.new(pos)
		end

		plr.Character:PivotTo(pos)
		if plr.Character:FindFirstChild("HumanoidRootPart") then
			plr.Character.HumanoidRootPart.AssemblyLinearVelocity = vector.create(0, 0, 0)
		end
	end
end

local function getClosestRail()
	if not plr.Character then return end

	local o, d = nil, math.huge
	for i, v in workspace.RailSegments:GetChildren() do
		if v and v.Parent and v.Name == "RailSegment" then
			local di = (v:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude
			if di < d then
				o = v
				d = di
			end
		end
	end

	return o, d
end
local function getRailByPosition(pos)
	for i = 1, 500 do
		pivot(pos)

		local rail, dist = getClosestRail()
		if dist < 25 then
			return rail
		end

		task.wait(0.01)
	end
end
local function getFirstRail()
	return getRailByPosition(vector.create(55, -9, 29910))
end

local scanTarget
local function scan()
	return workspace.RuntimeItems:FindFirstChild(scanTarget)
end

local function scanFor(item, fromStart)
	if typeof(item) == "string" then
		scanTarget = item
		item = scan
	end

	local res = item()
	if res then
		return res
	end

	if fromStart then
		local first = getFirstRail()
		if first then
			task.wait(5)
		end
	end

	while not workspace.Baseplates:FindFirstChild("FinalBasePlate") do
		local rail = findLastRail()
		if not rail then break end

		pivot(rail:GetPivot())

		local res = item()
		if res then
			return res
		end

		task.wait()
	end

	task.wait(1)

	local res = item()
	if res then
		return res
	end
end

local function maximGunFunction()
	for i, v in workspace.RuntimeItems:GetChildren() do
		if v and v.Parent and v.Name == "MaximGun" and v:FindFirstChild("VehicleSeat") and (not v.VehicleSeat.Occupant or plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and v.VehicleSeat.Occupant == plr.Character:FindFirstChildOfClass("Humanoid")) then
			return v
		end
	end
end

local maximGun
local function getMaximGun()
	if maximGun and maximGun.Parent and maximGun:FindFirstChild("VehicleSeat") then return maximGun end

	local mg = scanFor(maximGunFunction, false)
	if not mg then
		mg = scanFor(maximGunFunction, true)
	end

	if not mg then
		return
	end

	maximGun = mg

	return maximGun
end

local tbl = {
	Position = vector.create(55, 25, 29910),
	Enabled = false,
	Active = false
}

local meta; meta = setmetatable({}, {
	__index = function(self, index)
		assert(typeof(index) == "string", "invalid argument #2 for __index (string expected)")

		local res = tbl[index:sub(1, 1):upper() .. index:sub(2)]

		assert(res ~= nil, index .. " is not a valid member of TurretACBypass")

		return res
	end,

	__newindex = function(self, index, value)
		assert(typeof(index) == "string", "invalid argument #2 for __newindex (string expected)")

		local index = index:sub(1, 1):upper() .. index:sub(2)
		
		if index == "Position" then
			assert(typeof(value) == "Vector3" or typeof(value) == "CFrame", "invalid #3 argument for __newindex (Vector3 or CFrame expected)")
			if typeof(value) == "CFrame" then
				value = value.Position
			end

			tbl.Position = value
		elseif index == "Enabled" then
			assert(typeof(value) == "boolean", "invalid #3 argument for __newindex (boolean expected)")

			tbl.Enabled = value
		else
			error("Unable to set value", 0)
		end
	end
})

getGlobalTable().TACB = meta

local function loopStep()
	if not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid") then
		tbl.Active = false
		return
	end

	local hum = plr.Character:FindFirstChildOfClass("Humanoid")
	if tbl.Enabled then
		if hum.SeatPart and hum.SeatPart.Parent and hum.SeatPart.Parent.Name ~= "MaximGun" then
			tbl.Active = false
			hum:ChangeState(Enum.HumanoidStateType.Jumping)
		elseif not hum.SeatPart or not hum.SeatPart.Parent then
			tbl.Active = false
			
			if hum.SeatPart then
				hum:ChangeState(Enum.HumanoidStateType.Jumping)
			end

			local maximGun = getMaximGun()
			if maximGun then
				local seat = maximGun:WaitForChild("VehicleSeat", 1)

				if seat then
					seat.CanTouch = true
					seat.Disabled = false

					network.Other:Sit(seat)

					task.wait(0.5)
					pivot(meta.Position)
					task.wait(0.5)
					pivot(meta.Position)

					hum:ChangeState(Enum.HumanoidStateType.Jumping)

					task.wait(1)

					network.Other:Sit(seat)

					task.wait(0.5)
					pivot(meta.Position)
					task.wait(0.5)
					pivot(meta.Position)
				end
			end
		elseif hum.SeatPart and hum.SeatPart.Parent and hum.SeatPart.Parent.Name == "MaximGun" then
			maximGun = hum.SeatPart.Parent
			tbl.Active = true
			pivot(meta.Position + vector.create(0, 5, 0))
		end
	elseif hum.SeatPart and hum.SeatPart.Parent and hum.SeatPart.Parent == maximGun then
		hum:ChangeState(Enum.HumanoidStateType.Jumping)
		tbl.Active = false
	end
end

task.spawn(function()
	while task.wait() do
		pcall(loopStep)
	end
end)

return meta
