local vec = vector and vector.create or Vector3.new
local defaults = {
	Noclip = false,
	AntiFling = false,
	Gravity = 195,
	VelocityBypass = false,
	ShowCurrentDisaster = false,
	ShowDisasterHint = false,
	Notify = false,
	Jesus = false,
	Bypass = false,
	NoVoid = false,
	PosSpoof = vec(0, 0, 0),
	RotSpoof = vec(0, 0, 0),
	RotSpoofS = vec(0, 0, 0),
	AntiTeleport = false,
	NoBrizzardUI = false,
	NoSandstormUI = false,
	AntiEarthquake = false,
	reset = false,
	side = "Left",
	ws = 16,
	jp = 50,
	NoFog = false,
	RemoveDisasterCloud = false,
	FixBalloon = true,
	PA = false,
	PAR = 25,
	PAP = 10
}
local vals = table.clone(defaults)

local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

getGlobalTable().FireHubLoaded = true

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Fire-Lib/Main.lua"))()
local txtf = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Side-Text/Main.lua"))()
local tornado = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/Tornado/Main.lua"))()

local plr = game:GetService("Players").LocalPlayer
local realCharacter = plr.Character or plr.CharacterAdded:Wait()
local fakeChar

local function baseCheck(part)
	return part and part.Parent and part:IsA("BasePart") and tornado:_IsSafe(part) and tornado.Properties.Enabled and not part:IsDescendantOf(realCharacter) and not part:IsDescendantOf(fakeChar) and (plr.Character and not part:IsDescendantOf(plr.Character) or not plr.Character)
end

local function checkPart(part)
	if not baseCheck(part) then return end
	task.spawn(tornado.Tornado, tornado, part)
end

workspace.DescendantAdded:Connect(checkPart)
workspace.DescendantRemoving:Connect(function(v)
	checkPart(v.Parent) -- "v" might be a weld, so i'm doing v.Parent
end)

local closed = false
local cons = {}
fakeChar = Instance.new("Model")
fakeChar.Name = plr.Name.."_FAKE"
local fakeHrp = Instance.new("Part", fakeChar)
fakeHrp.Size = vec(2,2,1)
fakeHrp.CanCollide = false
fakeHrp.Transparency = 0.8
fakeHrp.Name = "HumanoidRootPart"
local fakeHum = Instance.new("Humanoid", fakeChar)
fakeChar.PrimaryPart = fakeHrp

local fakeLevel = workspace:FindFirstChild("FakeWaterLevel") or workspace.WaterLevel:Clone()
fakeLevel.Name = "FakeWaterLevel"
fakeLevel.Parent = workspace
fakeLevel:ClearAllChildren()
fakeLevel.Transparency = 1
fakeLevel.Size = vec(2048, 5, 2048)

local inside = {}
local pushAura = Instance.new("Part", workspace)
pushAura.Shape = Enum.PartType.Ball
pushAura.Material = Enum.Material.ForceField
pushAura.Massless = true
pushAura.CastShadow = false
pushAura.Color = Color3.fromRGB(255, 100, 255)
pushAura.Name = "PushAura"
pushAura.Size = vec(vals.PAR, vals.PAR, vals.PAR)
pushAura.Transparency = 1
pushAura.Touched:Connect(function(v)
	if not baseCheck(v) then return end
	table.insert(inside, v)
end)
pushAura.TouchEnded:Connect(function(v)
	local found = table.find(inside, v)
	if found then
		table.remove(inside, found)
	end
end)

cons[#cons+1] = game:GetService("RunService").RenderStepped:Connect(function()
	if not plr.Character or not vals.PA then return end

	if plr.Character:FindFirstChild("HumanoidRootPart") then
		pushAura.AssemblyLinearVelocity = plr.Character.HumanoidRootPart.AssemblyLinearVelocity
	end

	local charPiv = plr.Character:GetPivot()
	pushAura:PivotTo(charPiv)

	pushAura.Size = vec(vals.PAR, vals.PAR, vals.PAR)

	for i,v in inside do
		if v and v.Parent and baseCheck(v) and not v:IsGrounded() then
			if tornado.Network:IsNetworkOwner(v) then
				local pos = v:GetPivot().Positon
				local mod = (charPiv.Position - pos).Magnitude
				if mod <= vals.PAR / 2 then
					mod = (((vals.PAR / 2) - mod) / (vals.PAR)) * vals.PAP
					v.AssemblyLinearVelocity = v.AssemblyLinearVelocity + (CFrame.lookAt(charPiv.Position, pos).LookVector * vals.PAP)
				end
			end
		else
			local found = table.find(inside, v)
			if found then
				table.remove(inside, found)
			end
		end
	end
	
	print()
end)

local warning = "None"
game:GetService("ReplicatedStorage").Remotes.Round.OnClientEvent:Connect(function(s,w)
	if s == "Warn Disaster" then
		warning = table.concat(w:split("! "), "! ", 2)
	end
end)

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

local disaster = "None"
local prev = "None"
local map = "None"
local respawning = false

local function died()
	respawning = true
	--plr.Character = realCharacter
end
cons[#cons+1] = plr.CharacterAdded:Connect(function(char)
	if char ~= fakeChar then
		realCharacter = char
		cons[#cons+1] = char:WaitForChild("Humanoid", 9e9).Died:Connect(died)
		char:WaitForChild("Animate", 9e9)
		char:WaitForChild("HumanoidRootPart", 9e9)
		char:WaitForChild("Head", 9e9)
		repeat renderWait(0.01) until workspace.CurrentCamera and char:FindFirstChildOfClass("Humanoid") and workspace.CurrentCamera.CameraSubject == char:FindFirstChildOfClass("Humanoid")
		renderWait(0.25)
		respawning = false
	end
end)

local pp
local d = 3
local td = 128
local none = {Name = "None"}

cons[#cons+1] = game:GetService("RunService").RenderStepped:Connect(function(delta)
	delta = --(1 / delta) / 60
		1

	if vals.NoFog then
		game:GetService("Lighting").Brightness = 1.981249213218689 -- actual value
		game:GetService("Lighting").FogColor = Color3.fromRGB(204, 236, 240)
		game:GetService("Lighting").FogEnd = 5000
		game:GetService("Lighting").FogStart = 400
	end
	if workspace.Structure:FindFirstChild("Cloud") then
		workspace.Structure.Cloud.Transparency = vals.RemoveDisasterCloud and 1 or 0
	end
	workspace.Gravity = (vals.Gravity + 1) > 1 and (vals.Gravity + 1) or 0
	fakeLevel.CanCollide = vals.Jesus
	workspace.FallenPartsDestroyHeight = (vals.NoVoid or vals.Bypass) and (0/0) or 0
	if not realCharacter or not realCharacter.Parent and workspace:FindFirstChild(plr.Name) then
		pp = nil
		realCharacter = workspace:FindFirstChild(plr.Name)
		if realCharacter then
			pp = realCharacter:GetPivot()
		end
	end
	map = (workspace.Structure:FindFirstChildOfClass("Model") or none).Name
	fakeHum.WalkSpeed = vals.ws / delta
	fakeHum.JumpPower = vals.jp / delta
	if realCharacter then
		if realCharacter:FindFirstChild("Humanoid") then
			fakeHum.HipHeight = realCharacter.Humanoid.HipHeight
			realCharacter:FindFirstChild("Humanoid").WalkSpeed = vals.ws / delta
			realCharacter:FindFirstChild("Humanoid").JumpPower = vals.jp / delta
		end
		if realCharacter:FindFirstChild("HumanoidRootParent") then
			fakeHrp.Size = realCharacter.HumanoidRootParent.Size
		end
		local pos = plr.Character:GetPivot().Position
		local flood = workspace.Structure:FindFirstChild("FloodLevel")
		local y = workspace.WaterLevel.Position.Y - 2.5
		if flood then
			y = math.max(y, flood.Position.Y - 2.5)
		end
		fakeLevel.Position = vec(pos.X, y, pos.Z)
		if not vals.Noclip then
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
		if plr.Character:FindFirstChildOfClass("Tool") and plr.Character:FindFirstChildOfClass("Tool").Name:lower():match("balloon") and vals.FixBalloon then
			workspace.Gravity = workspace.Gravity * 0.30612244897959184 -- actual modifier
		end
	end
	local mod = 0
	if workspace.CurrentCamera then
		if not respawning then
			workspace.CurrentCamera.CameraSubject = plr.Character
		end
		local pos = workspace.CurrentCamera.CFrame.Position
		local dist = (pos - fakeHrp.Position).Magnitude
		if dist <= d then
			if dist <= d / 7.5 then
				mod = 1
			else
				mod = d - dist
			end
		end
		mod = math.clamp(mod, 0, 1)
	end
	fakeHrp.LocalTransparencyModifier = mod
	if not respawning and realCharacter then
		if fakeHum.Health <= 0.01 and realCharacter and realCharacter:FindFirstChild("Humanoid") then
			realCharacter.Humanoid.Health = -100
		end
		if plr.Character == fakeChar and not vals.Bypass then
			fakeChar.Parent = nil
			realCharacter:PivotTo(fakeChar:GetPivot())
		end
		plr.Character = vals.Bypass and fakeChar or realCharacter
		local pos = fakeHrp.Position
		if pos.Y <= -25 or pos.Y + (fakeHrp.AssemblyLinearVelocity.Y/10) <= -25 then
			fakeHrp.AssemblyLinearVelocity = vec(fakeHrp.AssemblyLinearVelocity.X, math.abs(fakeHrp.AssemblyLinearVelocity.Y) * 0.9, fakeHrp.AssemblyLinearVelocity.Z)
			fakeChar:PivotTo(fakeHrp.CFrame + vec(0, 10, 0))
		end
		if realCharacter and realCharacter:FindFirstChild("Humanoid") then
			realCharacter.Humanoid.PlatformStand = vals.Bypass
		end
		if vals.Bypass then
			if realCharacter:FindFirstChild("Humanoid") then
				realCharacter.Humanoid:MoveTo(fakeHrp.Position + (fakeHum.MoveDirection * 100))
				fakeHum.Health = math.clamp(realCharacter.Humanoid.Health, 1, 100)
			end

			fakeHrp.CanCollide = not vals.Noclip
			fakeChar.Parent = workspace

			if pp and (realCharacter:GetPivot().Position - pp.Position).Magnitude >= td and not vals.AntiTeleport then
				fakeChar:PivotTo(CFrame.new(realCharacter:GetPivot().Position))
			end

			realCharacter:PivotTo((fakeChar:GetPivot() + (fakeHrp.CFrame.XVector * vals.PosSpoof.X) + (fakeHrp.CFrame.YVector * vals.PosSpoof.Y) + (fakeHrp.CFrame.ZVector * vals.PosSpoof.Z)) * (CFrame.Angles(math.rad(vals.RotSpoof.X), math.rad(vals.RotSpoof.Y), math.rad(vals.RotSpoof.Z))))
		else
			if pp and (realCharacter:GetPivot().Position - pp.Position).Magnitude >= td and vals.AntiTeleport then
				realCharacter:PivotTo(pp)
			end
			fakeChar:PivotTo(realCharacter:GetPivot())
			fakeChar.Parent = nil
		end
	end
	for i,v in realCharacter:GetDescendants() do
		if v and v:IsA("BasePart") then
			if v.Name ~= "HumanoidRootPart" or vals.Bypass then
				v.CanCollide = false
			end
			v.LocalTransparencyModifier = fakeHrp.LocalTransparencyModifier
			if vals.Bypass then
				v.AssemblyLinearVelocity = vec(math.clamp(v.AssemblyLinearVelocity.X, -1, 1), 3, math.clamp(v.AssemblyLinearVelocity.Z, -1, 1))
			end
		end
	end
	if realCharacter then
		pp = realCharacter:GetPivot()
	end
	disaster = "None"
	for i,v in plr.Parent:GetPlayers() do
		if v and v.Character and (vals.AntiFling or vals.AntiFling2) and v ~= plr then
			for idx,val in v.Character:GetChildren() do
				if val and val:IsA("BasePart") then
					if vals.AntiFling then
						val.AssemblyLinearVelocity = vec(0, 0, 0)
						val.AssemblyAngularVelocity = vec(0, 0, 0)
					end
					if vals.AntiFling2 then
						val.CanCollide = false
					end
				end
			end
		end
		if v ~= plr and v.Character:FindFirstChild("HumanoidRootPart") and not vals.AntiFling2 then
			v.Character.HumanoidRootPart.CanCollide = true
		end
		if v.Character:FindFirstChild("SurvivalTag") and v.Character.SurvivalTag.Value ~= "" then
			disaster = v.Character.SurvivalTag.Value
		end
	end
	if plr.PlayerGui:FindFirstChild("BlizzardGui") then
		plr.PlayerGui.BlizzardGui.Enabled = not vals.NoBlizzardUI
	end

	if plr.PlayerGui:FindFirstChild("SandStormGui") then
		plr.PlayerGui.SandStormGui.Enabled = not vals.NoSandstormUI
	end

	txtf("ClearText")
	if vals.ShowCurrentDisaster then
		txtf("UpdateLine", vals.side, "Disaster: "..disaster)
	end
	if vals.ShowDisasterHint then
		txtf("UpdateLine", vals.side, "Warning: "..warning)
	end

	if prev ~= disaster then
		if disaster ~= "None" then
			prev = disaster
			if vals.Notify then
				game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(disaster.."!")
			end
		else
			if realCharacter:FindFirstChild("Humanoid") and realCharacter:FindFirstChild("Humanoid").Health < 99 and vals.reset then
				realCharacter:FindFirstChild("Humanoid").Health = -100
			end
		end
	end
	if disaster == "None" then
		warning = "None"
		prev = "None"
	end
end)
for i,v in workspace.Island:GetChildren() do
	if v and v:IsA("BasePart") then
		cons[#cons+1] = v.Changed:Connect(function()
			if vals.AntiEarthquake then
				v.AssemblyLinearVelocity = vec(0, 0, 0)
				v.AssemblyAngularVelocity = vec(0, 0, 0)
			end
		end)
	end
end

local window = lib:MakeWindow({Title = "NullFire: NDS", CloseCallback = function()
	for i,v in defaults do
		vals[i] = v
	end
	getGlobalTable().FireHubLoaded = false
	closed = true
	for i=1, 3 do
		game["Run Service"].RenderStepped:Wait()
	end
	plr.Character = realCharacter
	fakeChar:Destroy()
	for i,v in workspace.Island:GetChildren() do
		if v and v:IsA("BasePart") then
			if v.Name == "LowerRocks" then
				v.CanCollide = false
			end
		end
	end
	for i,v in cons do
		v:Disconnect()
	end
	pushAura:Destroy()
end}, true)

local page = window:AddPage({Title = "Character"})
page:AddToggle({Caption = "Noclip", Default = false, Callback = function(b)
	vals.Noclip = b
end})
page:AddSlider({Caption = "Walk speed", Default = 16, Min = 0, Max = 250, Step = 2, Callback = function(b)
	vals.ws = b
end})
page:AddSlider({Caption = "Jump power", Default = 50, Min = 0, Max = 375, Step = 1, Callback = function(b)
	vals.jp = b
end})
page:AddSeparator()
page:AddToggle({Caption = "Anti Fling", Default = false, Callback = function(b)
	vals.AntiFling = b
end})
page:AddToggle({Caption = "No players collision", Default = false, Callback = function(b)
	vals.AntiFling2 = b
end})
page:AddSeparator()
page:AddToggle({Caption = "Jesus (Water walker)", Default = false, Callback = function(b)
	vals.Jesus = b
end})
page:AddToggle({Caption = "Reset character after game ends", Default = false, Callback = function(b)
	vals.reset = b
end})

page:AddToggle({Caption = "Speed bypass", Default = false, Callback = function(b)
	vals.Bypass = b
end})

local function addVector3(cap, val)
	local setMode = false
	local first = true
	local text; text = page:AddTextBox({Caption = cap, Default = "0, 0, 0", Enter = true, Callback = function(txt)
		if setMode then
			setMode = false
			return
		end

		local splits = txt:gsub(";", ","):gsub(" ", ""):gsub("\r", ""):gsub("\n", ""):gsub("\t", ""):split(",")
		local n1, n2, n3 = (tonumber(splits[1]) or 0), (tonumber(splits[2]) or 0), (tonumber(splits[3]) or 0)
		local vector = vec(n1, n2, n3)

		vals[val] = vector
		if not first then
			setMode = true
			text:Set(tostring(vector))
		else
			first = false
		end
	end})
	return text
end

addVector3("Position spoof [only with speed bypass]", "PosSpoof")
local rot = addVector3("Rotation spoof [only with speed bypass]", "RotSpoof")
addVector3("Rotation spoof speed", "RotSpoofS")

;(getfenv().getgenv or getfenv)().isnetworkowner = nil

task.spawn(function()
	while not closed and task.wait(0.01) do
		if vals.RotSpoofS ~= vec(0, 0, 0) then
			local vector = vals.RotSpoof + vals.RotSpoofS
			rot:Set(tostring(vec(vector.X % 360, vector.Y % 360, vector.Z % 360)))
		end
	end
end)
page:AddSeparator()
page:AddToggle({Caption = "Anti teleport", Default = false, Callback = function(b)
	vals.AntiTeleport = b
end})

local teleports = {
	{"Game", CFrame.new(-125, 50, 0)},
	{"Lobby", CFrame.new(-250, 200, 300)},
	{"Rocket", CFrame.new(-5, 115, 25)}
}
local tpsConverted = {}
for i,v in teleports do
	tpsConverted[#tpsConverted+1] = v[1]
end
page:AddDropdown({Text = "Teleports", Default = tpsConverted[1], Rows = tpsConverted, Callback = function(name)
	local old = vals.AntiTeleport
	vals.AntiTeleport = false
	if plr.Character then
		plr.Character:PivotTo(teleports[name][2])
	end
	renderWait(0.05)
	vals.AntiTeleport = old
end})
local page = window:AddPage({Title = "World"})
local grav = page:AddSlider({Caption = "Gravity", Default = 196, Min = 0, Max = 5500, Step = 1, Callback = function(v)
	vals.Gravity = v
end})
local gravs = {
	{"Normal", 195},
	{"Balloon", 75},
	{"Uranus", 175},
	{"Neptune", 225},
	{"Moon", 30},
	{"Saturn", 210},
	{"Jupiter", 495},
	{"Venus", 180},
	{"Mars", 75},
	{"Sun", 5488},
	{"Zero", 0},
	{"Low", 10},
	{"Very low", 3}
}
local gravTable = {}
for i,v in gravs do
	gravTable[#gravTable+1] = v[1] .. " [" .. v[2] .. "]"
end

page:AddDropdown({Text = "Gravity presets", Default = gravTable[1], Rows = gravTable, Callback = function(name)
	grav:Set(gravs[name][2])
end})
page:AddToggle({Text = "Fix balloon gravity not working", Default = true, Callback = function(b)
	vals.FixBalloon = b
end})

page:AddSeparator()
page:AddToggle({Caption = "Whole island collides", Default = false, Callback = function(b)
	for i,v in workspace.Island:GetChildren() do
		if v and v:IsA("BasePart") then
			if v.Name == "LowerRocks" then
				v.CanCollide = b
			end
		end
	end
end})
page:AddToggle({Caption = "Anti earthquake", Default = false, Callback = function(b)
	vals.AntiEarthquake = b
end})
page:AddSeparator()
page:AddToggle({Caption = "No void", Default = false, Callback = function(b)
	vals.NoVoid = b
end})

local page = window:AddPage({Title = "Disaster"})
page:AddToggle({Caption = "Show current disaster", Default = false, Callback = function(b)
	vals.ShowCurrentDisaster = b
end})
page:AddToggle({Caption = "Show disaster hint", Default = false, Callback = function(b)
	vals.ShowDisasterHint = b
end})

local t = {"Left", "Right", "Bottom", "Top"}
page:AddDropdown({Text = "Text side", Default = "Left", Rows = t, Callback = function(name)
	vals.side = t[name]
end})
page:AddSeparator()
page:AddToggle({Caption = "Notify disasters in chat", Default = false, Callback = function(b)
	vals.Notify = b
end})
page:AddToggle({Caption = "No blizzard UI", Default = false, Callback = function(b)
	vals.NoBlizzardUI = b
end})
page:AddToggle({Caption = "No sandstorm UI", Default = false, Callback = function(b)
	vals.NoSandstormUI = b
end})
page:AddToggle({Caption = "No fog", Default = false, Callback = function(b)
	vals.NoFog = b
end})
page:AddToggle({Caption = "Remove disaster clouds", Default = false, Callback = function(b)
	vals.RemoveDisasterCloud = b
end})

local page = window:AddPage({Title = "Auras [Can cause FPS issues]"})
page:AddLabel({Caption = "Tornado"})
page:AddSeparator()
page:AddToggle({Caption = "Tornado Enabled", Default = tornado.Properties.Enabled, Callback = function(b)
	tornado.Properties.Enabled = b

	if b then
		for i,v in workspace:GetDescendants() do
			checkPart(v)
			if i % 256 == 0 then
				task.wait()
			end
		end
	end
end})
page:AddSeparator()
page:AddSlider({Caption = "Rotation speed", Default = tornado.Properties.Speed, Min = 0, Max = 100, Step = 0.1, Callback = function(b)
	tornado.Properties.Speed = b
end})
page:AddSlider({Caption = "Radius", Default = tornado.Properties.Radius, Min = 10, Max = 100, Step = 0.1, Callback = function(b)
	tornado.Properties.Radius = b
end})
page:AddSeparator()
page:AddSlider({Caption = "Layers", Default = tornado.Properties.Layers, Min = 1, Max = 25, Step = 1, Callback = function(b)
	tornado.Properties.Layers = b
end})
page:AddSlider({Caption = "Distance modifier per layer", Default = tornado.Properties.LayerModifier, Min = 0.01, Max = 25, Step = 0.01, Callback = function(b)
	tornado.Properties.LayerModifier = b
end})
page:AddSlider({Caption = "Height modifier per layer", Default = tornado.Properties.HeightLayerModifier, Min = 0, Max = 25, Step = 0.1, Callback = function(b)
	tornado.Properties.HeightLayerModifier = b
end})
page:AddSeparator()
page:AddToggle({Caption = "Reverse layers", Default = tornado.Properties.Enabled, Callback = function(b)
	tornado.Properties.ReverseLayers = b
end})
page:AddSeparator()
page:AddLabel({Caption = "Push aura"})
page:AddSeparator()
page:AddToggle({Caption = "Push aura Enabled [Glitchy]", Default = false, Callback = function(b)
	vals.PA = b
	pushAura.Transparency = b and 0.5 or 1
end})
page:AddSlider({Caption = "Push aura radius", Default = 25, Min = 1, Max = 100, Step = 0.1, Callback = function(b)
	vals.PAR = b
end})
page:AddSlider({Caption = "Push aura power", Default = 10, Min = 1, Max = 250, Step = 0.1, Callback = function(b)
	vals.PAP = b
end})
page:AddSeparator()
page:AddToggle({Caption = "Better network ownership", Default = tornado.Network.Active, Callback = function(b)
	tornado.Network(b)
end})
