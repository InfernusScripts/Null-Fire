local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().VelocityBypass then
	return getGlobalTable().VelocityBypass
end

local plr = game:GetService("Players").LocalPlayer
local vec = vector.create

local fakeChar = Instance.new("Model")
fakeChar.Name = plr.Name.."_FAKE"

local fakeHrp = Instance.new("Part", fakeChar)
fakeHrp.Size = vec(2,2,1)
fakeHrp.CanCollide = false
fakeHrp.Transparency = 0.8
fakeHrp.Name = "HumanoidRootPart"

local fakeHum = Instance.new("Humanoid", fakeChar)
fakeChar.PrimaryPart = fakeHrp

local realCharacter
local pp

local settings = {
	FakeCharacter = {
		Model = fakeChar,
		FakeHumanoid = fakeHum,
		FakeRoot = fakeHrp
	},
	
	Spoofing = {
		Rotation = vec(0,0,0),
		Position = vec(0,0,0),

		NonAngularPosition = vec(0,0,0),
		
		Velocity = vec(0,0,0),
		VelocityEnabled = false,
	},
	
	RealCharacter = realCharacter,
	ForceTeleport = nil,
	
	Noclip = false,
	Bypass = false,
	AntiTeleport = false,
}

getGlobalTable().VelocityBypass = settings

local function renderWait(t)
	local start = tick()
	t = tonumber(t) or 0
	game:GetService("RunService").RenderStepped:Wait()
	task.wait(t/2)
	game:GetService("RunService").RenderStepped:Wait()
	task.wait(t/2)
	game:GetService("RunService").RenderStepped:Wait()
	return tick() - start
end

plr.CharacterAdded:Connect(function(char)
	if char ~= fakeChar then
		realCharacter = char
		settings.RealCharacter = realCharacter
		
		char:WaitForChild("Humanoid", 9e9).Died:Connect(function()
			respawning = true
		end)
		
		char:WaitForChild("Animate", 9e9)
		char:WaitForChild("HumanoidRootPart", 9e9)
		char:WaitForChild("Head", 9e9)
		
		repeat renderWait(0.01) until workspace.CurrentCamera and char:FindFirstChildOfClass("Humanoid") and workspace.CurrentCamera.CameraSubject == char:FindFirstChildOfClass("Humanoid")
		
		renderWait(0.25)
		respawning = false
	end
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if not realCharacter or not realCharacter.Parent or realCharacter == fakeChar then
		pp = nil
		realCharacter = workspace:FindFirstChild(plr.Name, math.huge)
		settings.RealCharacter = realCharacter
	end
	if realCharacter then
		pp = realCharacter:GetPivot()
	end
	if not respawning and realCharacter then
		if fakeHum.Health <= 0.01 and realCharacter and realCharacter:FindFirstChild("Humanoid") then
			realCharacter.Humanoid.Health = -100
		end
		if plr.Character == fakeChar and not settings.Bypass then
			fakeChar.Parent = nil
			realCharacter:PivotTo(fakeChar:GetPivot())
		end
		plr.Character = settings.Bypass and fakeChar or realCharacter
		local pos = fakeHrp.Position
		if pos.Y <= -25 or pos.Y + (fakeHrp.AssemblyLinearVelocity.Y/10) <= -25 then
			fakeHrp.AssemblyLinearVelocity = vec(fakeHrp.AssemblyLinearVelocity.X, math.abs(fakeHrp.AssemblyLinearVelocity.Y) * 0.9, fakeHrp.AssemblyLinearVelocity.Z)
			fakeChar:PivotTo(fakeHrp.CFrame + vec(0, 10, 0))
		end
		if realCharacter and realCharacter:FindFirstChild("Humanoid") then
			realCharacter.Humanoid.PlatformStand = settings.Bypass
		end
		if settings.Bypass then
			if realCharacter:FindFirstChild("Humanoid") then
				realCharacter.Humanoid:MoveTo(fakeHrp.Position + (fakeHum.MoveDirection * 100))
				fakeHum.Health = math.clamp(realCharacter.Humanoid.Health, 1, 100)
			end

			fakeHrp.CanCollide = not settings.Noclip
			fakeChar.Parent = workspace

			if pp and (realCharacter:GetPivot().Position - pp.Position).Magnitude >= 128 and not settings.AntiTeleport or settings.ForceTeleport then
				fakeChar:PivotTo(CFrame.new(settings.ForceTeleport or realCharacter:GetPivot().Position))
				settings.ForceTeleport = nil
			end

			realCharacter:PivotTo((fakeChar:GetPivot() + settings.Spoofing.NonAngularPosition + (fakeHrp.CFrame.XVector * settings.Spoofing.Position.X) + (fakeHrp.CFrame.YVector * settings.Spoofing.Position.Y) + (fakeHrp.CFrame.ZVector * settings.Spoofing.Position.Z)) * (CFrame.Angles(math.rad(settings.Spoofing.Rotation.X), math.rad(settings.Spoofing.Rotation.Y), math.rad(settings.Spoofing.Rotation.Z))))
		else
			if pp and (realCharacter:GetPivot().Position - pp.Position).Magnitude >= 128 and settings.AntiTeleport or settings.ForceTeleport then
				realCharacter:PivotTo(settings.ForceTeleport or pp)
				settings.ForceTeleport = nil
			end
			fakeChar:PivotTo(realCharacter:GetPivot())
			fakeChar.Parent = nil
		end
	end
	local mod = 0
	if workspace.CurrentCamera then
		if not respawning then
			workspace.CurrentCamera.CameraSubject = plr.Character
		end
		local pos = workspace.CurrentCamera.CFrame.Position
		local dist = (pos - fakeHrp.Position).Magnitude
		if dist <= 3 then
			if dist <= 3 / 7.5 then
				mod = 1
			else
				mod = 3 - dist
			end
		end
		mod = math.clamp(mod, 0, 1)
	end
	fakeHrp.LocalTransparencyModifier = mod
	for i,v in realCharacter:GetDescendants() do
		if v and v:IsA("BasePart") then
			if v.Name ~= "HumanoidRootPart" or settings.Bypass then
				v.CanCollide = false
			end
			v.Transparency = v.Name ~= "HumanoidRootPart" and mod or 1
			if settings.Bypass and not settings.Spoofing.VelocityEnabled then
				v.AssemblyLinearVelocity = vec(math.clamp(v.AssemblyLinearVelocity.X, -1, 1), 3, math.clamp(v.AssemblyLinearVelocity.Z, -1, 1))
			end
		end
	end
	if realCharacter then
		if realCharacter:FindFirstChild("Humanoid") then
			fakeHum.HipHeight = realCharacter.Humanoid.HipHeight
			fakeHum.RigType = realCharacter.Humanoid.RigType
		end
		if realCharacter:FindFirstChild("HumanoidRootParent") then
			fakeHrp.Size = realCharacter.HumanoidRootParent.Size
		end
		local pos = plr.Character:GetPivot().Position
		if not settings.Noclip then
			if realCharacter:FindFirstChild("HumanoidRootPart") then
				realCharacter.HumanoidRootPart.CanCollide = true
			end
		else
			for i,v in realCharacter:GetChildren() do
				if v and v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		end
	end
	warn()
end)

task.spawn(function()
	while game:GetService("RunService").Heartbeat:Wait() do -- took from infinite yield source
		local root = realCharacter and realCharacter:FindFirstChild("HumanoidRootPart")
		local vel, movel = nil, 0.1

		while not root or not root.Parent do
			game:GetService("RunService").Heartbeat:Wait()
			root = realCharacter and realCharacter:FindFirstChild("HumanoidRootPart")
		end

		vel = root.AssemblyLinearVelocity
		root.AssemblyLinearVelocity = vel + settings.Spoofing.Velocity

		game:GetService("RunService").RenderStepped:Wait()
		if root and root.Parent then
			root.AssemblyLinearVelocity = vel
		end

		game:GetService("RunService").Stepped:Wait()
		if root and root.Parent then
			root.AssemblyLinearVelocity = vel + Vector3.new(0, 0.1, 0)
		end
	end
end)

return settingslocal function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().VelocityBypass then
	return getGlobalTable().VelocityBypass
end

local plr = game:GetService("Players").LocalPlayer
local vec = vector.create

local fakeChar = Instance.new("Model")
fakeChar.Name = plr.Name.."_FAKE"

local fakeHrp = Instance.new("Part", fakeChar)
fakeHrp.Size = vec(2,2,1)
fakeHrp.CanCollide = false
fakeHrp.Transparency = 0.8
fakeHrp.Name = "HumanoidRootPart"

local fakeHum = Instance.new("Humanoid", fakeChar)
fakeChar.PrimaryPart = fakeHrp

local realCharacter
local pp

local settings = {
	FakeCharacter = {
		Model = fakeChar,
		FakeHumanoid = fakeHum,
		FakeRoot = fakeHrp
	},
	
	Spoofing = {
		Rotation = vec(0,0,0),
		Position = vec(0,0,0),

		NonAngularPosition = vec(0,0,0),
		
		Velocity = vec(0,0,0),
		VelocityEnabled = false,
	},
	
	RealCharacter = realCharacter,
	ForceTeleport = nil,
	
	Noclip = false,
	Bypass = false,
	AntiTeleport = false,
}

getGlobalTable().VelocityBypass = settings

local function renderWait(t)
	local start = tick()
	t = tonumber(t) or 0
	game:GetService("RunService").RenderStepped:Wait()
	task.wait(t/2)
	game:GetService("RunService").RenderStepped:Wait()
	task.wait(t/2)
	game:GetService("RunService").RenderStepped:Wait()
	return tick() - start
end

plr.CharacterAdded:Connect(function(char)
	if char ~= fakeChar then
		realCharacter = char
		settings.RealCharacter = realCharacter
		
		char:WaitForChild("Humanoid", 9e9).Died:Connect(function()
			respawning = true
		end)
		
		char:WaitForChild("Animate", 9e9)
		char:WaitForChild("HumanoidRootPart", 9e9)
		char:WaitForChild("Head", 9e9)
		
		repeat renderWait(0.01) until workspace.CurrentCamera and char:FindFirstChildOfClass("Humanoid") and workspace.CurrentCamera.CameraSubject == char:FindFirstChildOfClass("Humanoid")
		
		renderWait(0.25)
		respawning = false
	end
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if not realCharacter or not realCharacter.Parent or realCharacter == fakeChar then
		pp = nil
		realCharacter = workspace:FindFirstChild(plr.Name, math.huge)
		settings.RealCharacter = realCharacter
	end
	if realCharacter then
		pp = realCharacter:GetPivot()
	end
	if not respawning and realCharacter then
		if fakeHum.Health <= 0.01 and realCharacter and realCharacter:FindFirstChild("Humanoid") then
			realCharacter.Humanoid.Health = -100
		end
		if plr.Character == fakeChar and not settings.Bypass then
			fakeChar.Parent = nil
			realCharacter:PivotTo(fakeChar:GetPivot())
		end
		plr.Character = settings.Bypass and fakeChar or realCharacter
		local pos = fakeHrp.Position
		if pos.Y <= -25 or pos.Y + (fakeHrp.AssemblyLinearVelocity.Y/10) <= -25 then
			fakeHrp.AssemblyLinearVelocity = vec(fakeHrp.AssemblyLinearVelocity.X, math.abs(fakeHrp.AssemblyLinearVelocity.Y) * 0.9, fakeHrp.AssemblyLinearVelocity.Z)
			fakeChar:PivotTo(fakeHrp.CFrame + vec(0, 10, 0))
		end
		if realCharacter and realCharacter:FindFirstChild("Humanoid") then
			realCharacter.Humanoid.PlatformStand = settings.Bypass
		end
		if settings.Bypass then
			if realCharacter:FindFirstChild("Humanoid") then
				realCharacter.Humanoid:MoveTo(fakeHrp.Position + (fakeHum.MoveDirection * 100))
				fakeHum.Health = math.clamp(realCharacter.Humanoid.Health, 1, 100)
			end

			fakeHrp.CanCollide = not settings.Noclip
			fakeChar.Parent = workspace

			if pp and (realCharacter:GetPivot().Position - pp.Position).Magnitude >= 128 and not settings.AntiTeleport or settings.ForceTeleport then
				fakeChar:PivotTo(CFrame.new(settings.ForceTeleport or realCharacter:GetPivot().Position))
				settings.ForceTeleport = nil
			end

			realCharacter:PivotTo((fakeChar:GetPivot() + settings.Spoofing.NonAngularPosition + (fakeHrp.CFrame.XVector * settings.Spoofing.Position.X) + (fakeHrp.CFrame.YVector * settings.Spoofing.Position.Y) + (fakeHrp.CFrame.ZVector * settings.Spoofing.Position.Z)) * (CFrame.Angles(math.rad(settings.Spoofing.Rotation.X), math.rad(settings.Spoofing.Rotation.Y), math.rad(settings.Spoofing.Rotation.Z))))
		else
			if pp and (realCharacter:GetPivot().Position - pp.Position).Magnitude >= 128 and settings.AntiTeleport or settings.ForceTeleport then
				realCharacter:PivotTo(settings.ForceTeleport or pp)
				settings.ForceTeleport = nil
			end
			fakeChar:PivotTo(realCharacter:GetPivot())
			fakeChar.Parent = nil
		end
	end
	local mod = 0
	if workspace.CurrentCamera then
		if not respawning then
			workspace.CurrentCamera.CameraSubject = plr.Character
		end
		local pos = workspace.CurrentCamera.CFrame.Position
		local dist = (pos - fakeHrp.Position).Magnitude
		if dist <= 3 then
			if dist <= 3 / 7.5 then
				mod = 1
			else
				mod = 3 - dist
			end
		end
		mod = math.clamp(mod, 0, 1)
	end
	fakeHrp.LocalTransparencyModifier = mod
	for i,v in realCharacter:GetDescendants() do
		if v and v:IsA("BasePart") then
			if v.Name ~= "HumanoidRootPart" or settings.Bypass then
				v.CanCollide = false
			end
			v.Transparency = v.Name ~= "HumanoidRootPart" and mod or 1
			if settings.Bypass and not settings.Spoofing.VelocityEnabled then
				v.AssemblyLinearVelocity = vec(math.clamp(v.AssemblyLinearVelocity.X, -1, 1), 3, math.clamp(v.AssemblyLinearVelocity.Z, -1, 1))
			end
		end
	end
	if realCharacter then
		if realCharacter:FindFirstChild("Humanoid") then
			fakeHum.HipHeight = realCharacter.Humanoid.HipHeight
			fakeHum.RigType = realCharacter.Humanoid.RigType
		end
		if realCharacter:FindFirstChild("HumanoidRootParent") then
			fakeHrp.Size = realCharacter.HumanoidRootParent.Size
		end
		local pos = plr.Character:GetPivot().Position
		if not settings.Noclip then
			if realCharacter:FindFirstChild("HumanoidRootPart") then
				realCharacter.HumanoidRootPart.CanCollide = true
			end
		else
			for i,v in realCharacter:GetChildren() do
				if v and v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		end
	end
	warn()
end)

task.spawn(function()
	while game:GetService("RunService").Heartbeat:Wait() do -- took from infinite yield source
		local root = realCharacter and realCharacter:FindFirstChild("HumanoidRootPart")
		local vel, movel = nil, 0.1

		while not root or not root.Parent do
			game:GetService("RunService").Heartbeat:Wait()
			root = realCharacter and realCharacter:FindFirstChild("HumanoidRootPart")
		end

		vel = root.AssemblyLinearVelocity
		root.AssemblyLinearVelocity = vel + settings.Spoofing.Velocity

		game:GetService("RunService").RenderStepped:Wait()
		if root and root.Parent then
			root.AssemblyLinearVelocity = vel
		end

		game:GetService("RunService").Stepped:Wait()
		if root and root.Parent then
			root.AssemblyLinearVelocity = vel + Vector3.new(0, 0.1, 0)
		end
	end
end)

return settings
