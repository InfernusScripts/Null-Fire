local teleports = {}
local tb = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Dead-Rails/TurretBypass.lua"))()
local plr = game:GetService("Players").LocalPlayer
local network = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/Network/Main.lua"))()

local function teleport(pos,y,z)
	if typeof(pos) == "CFrame" then
		pos = pos.Position
	elseif typeof(pos) ~= "Vector3" then
		pos = Vector3.new(pos, y, z) -- using vector3 instead of vector cuz y or z might be nil
	end
	
	if not tb.Enabled then
		tb.Enabled = true
		
		repeat task.wait() until tb.Active
		
		tb.Position = pos
		task.wait(1)
		tb.Enabled = false
	else
		tb.Position = pos
	end
end

local scan = tb.Scan

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

teleports.Teleport = teleport
teleports.Teleports = table.freeze({
	Start = function(self)
		teleport(-0, 3, 29910)
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
			teleport(part:GetPivot() + (part:GetPivot().LookVector * 5))
		end
	end,
	Castle = function(self)
		teleport(210, 3, -9030)
	end,
	Sterling = function(self)
		local sterling = teleports.SterlingScan or scan(function()
			return workspace:FindFirstChild("Sterling")
		end, true):GetPivot() + Vector3.new(0, 10)
		teleports.SterlingScan = sterling
		
		teleport(sterling)
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
			if tb.Enabled then
				tb.Position = train:GetPivot().Position + Vector3.new(0, 10)
			else
				local oldPos = train.RequiredComponents.Controls.ConductorSeat.VehicleSeat:GetPivot()

				repeat
					network.Other:Sit(train.RequiredComponents.Controls.ConductorSeat.VehicleSeat)
					task.wait(0.01)
				until train.RequiredComponents.Controls.ConductorSeat.VehicleSeat:FindFirstChild("SeatWeld")

				train.RequiredComponents.Controls.ConductorSeat.VehicleSeat:PivotTo(oldPos)
			end
		else
			if retry then return end
			
			for i=1, 100 do
				plr.Character:PivotTo(teleports.TrainPivot or CFrame.new(0, 100, 0))
				task.wait(0.01)
			end
			
			if train then
				return self:Train(true)
			end
			
			scan(function()
				return train and train.Parent
			end, true)

			return self:Train(true)
		end
	end
})

game:GetService("RunService").RenderStepped:Connect(function()
	if train then
		teleports.TrainPivot = train:GetPivot()
	end
end)

return teleports
