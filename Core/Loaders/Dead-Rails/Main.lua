local defaults = {
	ESP = {
		["Money BagESP"] = false,
		["MonsterESP"] = false,
		["Dead MonsterESP"] = false,
		["AnimalESP"] = false,
		["Dead AnimalESP"] = false,
		["ItemESP"] = false,
		["Vault CodeESP"] = false,
		["Train (the most useful)ESP"] = false
	},
	ExtraPP = 1,
	AutoCollectBags = false,
	AutoPickTools = false,
	AutoPickOther = false,
	AutoPickArmor = false,
	AutoPickBonds = false,
	Noclip = false,
	NC = false,
	ShowTime = false,
	ShowDistance = false,
	ShowSpeed = false,
	ShowFuel = false,
	II = false,
	MeleeAura = false,
	ARG = false,
	SilentAim = false,
	Mode = "Distance",
	NoVoid = false,
	SaveBulltets = false,
	AutoThrottle = false,
	AutoPlayAgain = false,
	DontShootAll = false,
	FastKillaura = false,
	AlwaysCritical = false,

	AutoFuel = false,
	GreedyMode = false,
	
	ControlMobs = false,
	
	ShowTimeLeft = false,
	ShowPlayingTimer = false,
	TimeMode = false,
	ShowMillis = false,
	ACBypass = false,
	
	SpeedBoost = 0,
	JumpBoost = 7.2,

	BandageUse = 0,
	OilUse = 0,
	OilUseCooldown = 5,
	KAR = 500,

	ThrowPower = 100,
	
	ForceNoclip = false,
	
	ReplaceMoney = false,
	BondFarm = false,
	
	Killaura = false,
	KillauraOne = false
}

local train
local vals = table.clone(defaults)
vals.ESP = table.clone(defaults.ESP)

local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

getGlobalTable().FireHubLoaded = true

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Fire-Lib/Main.lua", true))()

if game.PlaceId == 116495829188952 then
	return lib.Notifications:Notification({Title = "Hey!", Text = "Please, load the script ingame!"})
end

local espLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/ESP/Main.lua", true))()
local txtf = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Side-Text/Main.lua", true))()
local bondFarm = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Dead-Rails/BondFarm.lua", true))()
local network = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/Network/Main.lua", true))()
local dragFuncs = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Dead-Rails/DragFunctions.lua", true))()
local tps = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Dead-Rails/Teleports.lua", true))()
local tb = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Dead-Rails/TurretBypass.lua", true))()

local plr = game:GetService("Players").LocalPlayer

espLib.Values = vals.ESP

local function rs(times)
	local times = math.max(math.round(tonumber(times) or 1), 1)
	local dt = 0
	for i=1, times do
		dt = dt + game:GetService("RunService").RenderStepped:Wait()
	end
	return dt / times
end

local function renderWait(t)
	local start = tick()
	t = tonumber(t) or 0

	rs()
	task.wait(t / 2)
	rs()
	task.wait(t / 2)
	rs()

	return tick() - start
end

local espFunc = espLib.ApplyESP

local closed = false
local cons = {}
local prompts = {}
local oprompts = {}
local hooks = {}

local deathAmmo = {}

local function isDead(hum)
	if hum and hum.Parent then
		if not hum:IsA("Humanoid") then
			hum = hum:FindFirstChild("Humanoid")
		end

		if hum then
			return hum.Health <= 0.01 and hum.PlatformStand
		end
	end

	return true
end

local myGuns = {}
local melee = {}
local heals = {
	Bandage = {},
	["Snake Oil"] = {}
}

local function bp(v)
	if v and v:IsA("Tool") then
		if v:FindFirstChild("WeaponConfiguration") and not myGuns[v] then
			myGuns[v] = true
		elseif v:FindFirstChild("SwingEvent") and not melee[v] then
			melee[v] = true
		elseif heals[v.Name] and not heals[v.Name][v] then
			heals[v.Name][v] = true
		end
	end
end

local toolsMt = setmetatable({}, {
	__index = function(self, value)
		if value == "GetChildren" then
			local tools = plr.Backpack:GetChildren()

			if plr.Character then
				for i,v in plr.Character:GetChildren() do
					if v and v:IsA("Tool") then
						table.insert(tools, 1, v)
					end
				end
			end

			return tools
		end
		if plr and plr.Character and plr.Character:FindFirstChildOfClass("Tool") and plr.Character:FindFirstChildOfClass("Tool").Name == value then
			return plr.Character:FindFirstChildOfClass("Tool")
		end
		return plr.Backpack:FindFirstChild(value)
	end
})

for i,v in toolsMt.GetChildren do
	bp(v)
end
cons[#cons+1] = plr.Backpack.ChildAdded:Connect(bp)

local function addFunction(t,v)
	if v == nil or typeof(t) ~= "table" then return end
	local i = 1
	while true do
		if v == nil or typeof(v) == "Instance" and v.Parent == nil then
			return -1
		end
		if t[i] == nil or typeof(t[i]) == "Instance" and t[i].Parent == nil then
			t[i] = v
			return i
		end
		i = i + 1
	end
end
local function add(t,v)
	task.spawn(addFunction, t, v)
end
local function remove(t,v)
	task.spawn(pcall, table.remove, t, table.find(t, v))
end
local function count(t)
	local amnt = 0
	for i,v in t do
		if typeof(v) == "Instance" and v.Parent ~= nil or typeof(v) ~= "Instance" and v ~= nil then
			amnt = amnt + 1
		end
	end
	return amnt
end
local function getFirst(t)
	for v,i in t do
		if typeof(v) == "Instance" and (v.Parent == plr.Character or v.Parent == plr.Backpack) or typeof(v) ~= "Instance" and v ~= nil then
			return v
		else
			remove(t, v)
		end
	end
end

local function fuseTables(t1, t2)
	for i,v in t2 do
		add(t1, v)
	end

	return t1
end

local function raycast(from, to, ignore)
	local raycastParams = RaycastParams.new()

	raycastParams.IgnoreWater = true
	raycastParams.FilterDescendantsInstances = fuseTables(plr.Character and plr.Character:GetDescendants() or {}, ignore or {})

	local result = workspace:Raycast(from, (to - from).Unit * (to - from).Magnitude, raycastParams)
	return result and result.Instance
end

local s = game:GetService("ReplicatedStorage").Remotes.Weapon.Shoot
local r = game:GetService("ReplicatedStorage").Remotes.Weapon.Reload

local function weirdIndex(i)
	return ((i - 1) * 3) + 2
end

local mobLabel
local currentMob = 0
local current

local monsters = {}

local function shoot(gun, target, dontShootOther)
	if not isDead(target) and (vals.Raycast and not raycast(workspace.CurrentCamera.CFrame.Position, target:GetPivot().Position, target:GetDescendants()) or not vals.Raycast) and (workspace.CurrentCamera.CFrame.Position - target:GetPivot().Position).Magnitude <= vals.KAR then
		local head = target:FindFirstChild("Head") or target:GetPivot()

		local hits = {}
		local idx = 1
		
		for _ = 1, gun.WeaponConfiguration.PelletsPerBullet.Value + 2 do -- +2 to imitate raycast shootthroughs
			idx += 1
			hits[tostring(weirdIndex(idx))] = target.Humanoid
		end
		
		--[[if not dontShootOther then
			for _, v in monsters do
				if isDead(v) or not v:FindFirstChild("Humanoid") then
					remove(monsters, v)
				else
					for _ = 1, gun.WeaponConfiguration.PelletsPerBullet.Value + 2 do -- same here
						idx += 1
						hits[tostring(weirdIndex(idx))] = v.Humanoid
					end
				end
			end
		end]]

		s.FireServer(s, workspace:GetServerTimeNow(), gun, CFrame.new((workspace.CurrentCamera and workspace.CurrentCamera.CFrame.Position or head.Position - Vector3.new(10)), head.Position), hits)
	end
end

local function reload(gun)
	r:FireServer(workspace:GetServerTimeNow(), gun)
end
local fireproximityprompt = function(...)
	return network.Other:FireProximityPrompt(...)
end

local function insertCum(str)
	local new = str:gsub("(%u)", " %1")
	if new:sub(1, 1) == " " then
		new = new:sub(2)
	end

	return new:gsub("  ", " "):gsub("_", "") .. ""
end

local function startDrag(object)
	game:GetService("ReplicatedStorage"):FindFirstChild("RequestStartDrag", math.huge):FireServer(object)
end
local function stopDrag()
	game:GetService("ReplicatedStorage"):FindFirstChild("RequestStopDrag", math.huge):FireServer()
end

local buzy = false
local function fuel(object)
	if buzy or (object:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude > 10 or not train or not train:FindFirstChild("RequiredComponents") or not train.RequiredComponents:FindFirstChild("FuelZone") then
		return false
	end

	buzy = true
	dragFuncs:ClaimNetwork(object)
	
	for i=1, 100 do
		if not object or not object.Parent or not train or not train:FindFirstChild("RequiredComponents") or not train.RequiredComponents:FindFirstChild("FuelZone") then
			buzy = false
			stopDrag()
			return true
		end

		object:PivotTo(train.RequiredComponents.FuelZone:GetPivot())
		task.wait(0.01)
	end

	buzy = false
	stopDrag()
end

local cameraOffset = Vector3.new()

local function getSelectedObject()
	return game:GetService("ReplicatedStorage"):FindFirstChild("DragHighlight", math.huge).Adornee
end

local function throwObject(object)
	if (object:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude > 20 then
		return
	end

	local par = dragFuncs:ClaimNetwork(object)
	if par then
		task.wait()
		
		local model = par:FindFirstAncestorOfClass("Model") or par.Parent or par
		
		for i,v in model:GetDescendants() do
			if v and v:IsA("BasePart") then
				v.AssemblyLinearVelocity = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, v:GetPivot().Position + Vector3.new(0, ((10000 - vals.ThrowPower)/10000) * 5 - 0.25)).LookVector * vals.ThrowPower
			end
		end
		
		task.wait()
	end
	
	task.wait(0.1)

	stopDrag()
end

local function throw()
	local obj = getSelectedObject()
	if not obj then
		return lib.Notifications:Notification({Title = "No object", Text = "Please, look at object you want to throw!"})
	end

	throwObject(obj)
end

local esps = {}
local desps = {}

local tools = {}
local bonds = {}
local other = {}
local equippables = {}

local pickupable = { "Consumable", "Gun", "Weapon", "Melee", "Playable", "Tool" }
local armor = { "Equippable" }

local infoStored = {}

local function getInfo(object)
	renderWait()

	if not object or not object.Parent then return end
	if infoStored[object.Name] then return infoStored[object.Name] end

	local info = {}
	for i,v in object:WaitForChild("ObjectInfo", 9e9):GetChildren() do
		if v.Name ~= "Title" and v:IsA("TextLabel") then
			add(info, v.Text)
		end
	end

	infoStored[object.Name] = info
	return info
end

local function hasProperty(object, prop)
	if not object or not object:FindFirstChild("ObjectInfo") then return false end

	local info = getInfo(object)

	if not info then return false end

	for i,v in info do
		if v == prop then
			return true
		end
	end

	return false
end

local function getColor(v)
	local val = v and v:GetAttribute("Value")
	if v.Name == "Bond" then
		return Color3.fromRGB(255, 170)
	elseif v.Name == "Coal" then
		return Color3.new(0.2, 0.2, 0.2)
	elseif v.Name == "Bandage" then
		return Color3.fromRGB(255, 150, 255)
	elseif v.Name == "Snake Oil" then
		return Color3.fromRGB(0, 170)
	elseif hasProperty(v, "Ammo") then
		return Color3.fromRGB(255, 170, 125)
	elseif hasProperty(v, "Weapon") or hasProperty(v, "Gun") or hasProperty(v, "Melee") then
		return Color3.new(0.75, 0.5, 0.5)
	elseif val then
		if val <= 50 then
			return Color3.new(0.8, 0.8, 0.8):Lerp(Color3.fromRGB(255, 255, 75), val / 50)
		elseif val <= 175 then
			return Color3.fromRGB(255, 255, 75):Lerp(Color3.fromRGB(75, 255, 255), (val - 50) / 175)
		else
			return Color3.fromRGB(75, 255, 255):Lerp(Color3.fromRGB(255, 125, 255), (val - 175) / 325)
		end
	elseif v.Name:match("JadeTablet") then
		return Color3.fromRGB(125, 150, 100)
	end
	return Color3.new(0.8, 0.8, 0.8)
end

local function getText(obj)
	local n = obj:GetAttribute("EntityName") or obj.Name
	local l = n:lower():gsub(" ", ""):gsub("_", "")

	if l:match("vase") then
		return "Vase"
	elseif l:match("outlaw") then
		return "Outlaw"
	elseif l:match("zombie") then
		return "Zombie"
	elseif l:match("nikola") then
		return "OMFG, IT IS THE MOTHERFUCKER"
	elseif l:match("jadetablet") then
		return "Jade Tablet"
	end

	return insertCum(n):gsub("Model ", "") .. ""
end

local function getBase(obj)
	if not obj or not obj.Parent then return end

	return obj:FindFirstChild("Base") or obj:FindFirstChild("BasePart") or obj:FindFirstChild("Handle") or obj:FindFirstChildWhichIsA("BasePart", math.huge)
end

local function getFuelPercentage()
	if train and train.Parent and train:FindFirstChild("RequiredComponents") and train.RequiredComponents:FindFirstChild("Controls") and train.RequiredComponents.Controls:FindFirstChild("TimeDial") then
		return math.round((train.RequiredComponents.Controls.Fuel.SurfaceGui.ImageLabel.Gauge.Rotation - 120) / 0.03) / 100
	else
		return 50 -- why not?
	end
end

local function getFuelPercentageFromValue(value)
	return math.round(value / 0.024) / 100
end

local function getItemText(object)
	local text = getText(object)
	local price = object:GetAttribute("Value")
	local fuel = object:GetAttribute("Fuel")

	if not price or price <= 0 then
		price = nil
	end
	if not fuel or fuel <= 0 then
		fuel = nil
	end
	
	local otherText = "\n\n"

	if price then
		otherText = otherText .. '<font color="rgb(0,255,0)">Price: <b>' .. price .. "$</b></font>\n"
	end
	if fuel then
		otherText = otherText .. '<font color="rgb(50,50,50)">Fuel: <b>' .. getFuelPercentageFromValue(fuel) .. "%</b></font>\n"
	end
	
	return (text .. (otherText:gsub(" ", ""):gsub("\n", ""):gsub("\r", ""):gsub("\t", "") ~= "" and otherText:sub(1, #otherText - 1) or "")):gsub("Model ", "") .. ""
end

local checked = {}
local items = workspace.RuntimeItems

local function main(v)
	renderWait()

	if v and v.Parent and not checked[v] then
		if v:IsA("ProximityPrompt") and not oprompts[v] then
			oprompts[v] = v.MaxActivationDistance
			v.MaxActivationDistance = oprompts[v] * vals.ExtraPP
		elseif v:IsA("Humanoid") and not game:GetService("Players"):GetPlayerFromCharacter(v.Parent) and not checked[v.Parent] then
			checked[v] = true
			checked[v.Parent] = true
			
			if v.Parent:GetAttribute("DangerScore") or v.Parent.Parent and (v.Parent.Parent.Name:lower():match("enemies") or v.Parent.Parent.Name:lower():match("enemy")) then
				local monster = esps[v.Parent.Name] or {HighlightEnabled = false, Color = Color3.new(0.35):Lerp(Color3.new(1), (v.Parent:GetAttribute("DangerScore") or 10) / 100), Text = getItemText(v.Parent), ESPName = "MonsterESP"}
				esps[v.Parent.Name] = monster

				espFunc(v.Parent, monster)
				add(monsters, v.Parent)

				repeat task.wait() until not v or not v.Parent or isDead(v)
				if not v or not v.Parent then return end
				
				pcall(espLib.DeapplyESP, v.Parent)

				local dead = desps[v.Parent.Name] or {HighlightEnabled = true, Color = Color3.fromRGB(200, 150, 50):Lerp(Color3.fromRGB(255, 75, 0), (v.Parent:GetAttribute("DangerScore") / 10) / 100), Text = getItemText(v.Parent), ESPName = "Dead MonsterESP"}
				desps[v.Parent.Name] = dead
				
				remove(monsters, v.Parent)

				return espFunc(v.Parent, dead)
			elseif v.Parent:GetAttribute("BloodColor") then
				local animal = esps[v.Parent.Name] or {HighlightEnabled = true, Color = getColor(v.Parent), Text = getItemText(v.Parent), ESPName = "AnimalESP"}
				esps[v.Name] = animal

				espFunc(v.Parent, animal)

				repeat task.wait() until not v or not v.Parent or isDead(v)
				if not v or not v.Parent then return end

				pcall(espLib.DeapplyESP, v.Parent)

				local dead = desps[v.Parent.Name] or {HighlightEnabled = true, Color = Color3.new(1, 0.7, 0.7), Text = getItemText(v.Parent), ESPName = "Dead AnimalESP"}
				desps[v.Parent.Name] = dead

				return espFunc(v.Parent, dead)
			end
		elseif v:IsA("Model") then
			checked[v] = true
			if v.Name == "Vault" and v:FindFirstChild("Combination") then
				espFunc(v, {HighlightEnabled = true, Color = Color3.fromRGB(85, 170, 0), Text = "[" .. tostring(v.Combination.Value):gsub("", " ") .. "]", ESPName = "Vault CodeESP"})
			elseif v.Parent == workspace and v:GetAttribute("Stopped") ~= nil then
				train = v
				espFunc(v:WaitForChild("Functional", 9e9), {HighlightEnabled = false, Color = Color3.fromRGB(55, 65, 65), Text = "Train", ESPName = "Train (the most useful)ESP"})
			end
		elseif v:IsA("MeshPart") and v.Name == "MoneyBag" then
			checked[v] = true
			checked[v.Parent] = true
			
			local price = tonumber(v:WaitForChild("BillboardGui", 9e9):WaitForChild("TextLabel", 9e9).Text:gsub("%$", "") .. "")
			local bag = esps[price] or {HighlightEnabled = true, Color = Color3.fromRGB(40, 85):Lerp(Color3.fromRGB(85, 255), math.min(price / 50, 1)), Text = price .. "$", ESPName = "Money BagESP"}

			esps[price] = bag

			espFunc(v, bag)
			add(prompts, v:WaitForChild("CollectPrompt", 9e9))
		end
	end
end

local fuels = {}
local function itemFunc(v)
	if not v or not v.Parent or v.Name == "Moneybag" or checked[v] then return end
	renderWait(0.01)
	if not v or not v.Parent then return end

	v:WaitForChild("ObjectInfo", 9e9)
	
	if not v or not v.Parent or v:FindFirstChildOfClass("Humanoid") then return end

	checked[v] = true
	local tool = esps[v.Name] or {HighlightEnabled = false, Color = getColor(v), Text = getItemText(v), ESPName = "ItemESP"}

	esps[v.Name] = tool
	espFunc(v, tool)
	
	if v:GetAttribute("Fuel") and v:GetAttribute("Fuel") > 0 and v.Name ~= "Chair" then
		add(fuels, v)
	end

	for i,va in pickupable do
		if hasProperty(v, va) then
			return add(tools, v)
		end
	end

	if v.Name == "Electrocutioner" or v.Name:lower():match("sword") then
		return add(tools, v)
	end

	if hasProperty(v, "Currency") then
		return add(bonds, v)
	end

	for i,va in armor do
		if hasProperty(v, va) then
			return add(equippables, v)
		end
	end

	if v:GetAttribute("ActivateText") then
		return add(other, v)
	end
end

for i,v in items:GetChildren() do
	task.spawn(itemFunc, v)
end
items.ChildAdded:Connect(itemFunc)

local getClosestMonster; getClosestMonster = function(mode)
	mode = mode or vals.Mode
	if mode == "Angle" and workspace.CurrentCamera then
		local a, d, m = math.huge, math.huge, nil
		for i,v in monsters do
			if v and v.Parent and not isDead(v) and not v:GetAttribute("Reanimated") and not v:GetAttribute("Tamed") then
				if vals.Raycast and raycast(workspace.CurrentCamera.CFrame.Position, v.GetPivot(v).Position, v.GetDescendants(v)) then
					continue
				end

				local di = (plr.Character.GetPivot(plr.Character).Position - v.GetPivot(v).Position).Magnitude
				local an = ((workspace.CurrentCamera.CFrame.Position + (workspace.CurrentCamera.CFrame.LookVector * di)) - v.GetPivot(v).Position).Magnitude

				if an <= a then
					d = di
					a = an
					m = v
				end
			else
				remove(monsters, v)
			end
		end

		return m, d
	elseif mode == "MaxHealth" then
		local h, m = -1, nil
		for i,v in monsters do
			if v and v.Parent and not isDead(v) and not v:GetAttribute("Reanimated") and not v:GetAttribute("Tamed") then
				if vals.Raycast and raycast(workspace.CurrentCamera.CFrame.Position, v.GetPivot(v).Position, v.GetDescendants(v)) then
					continue
				end

				local hum = v:FindFirstChildOfClass("Humanoid")
				if hum and hum.MaxHealth > h then
					h, m = hum.MaxHealth, v
				end
			else
				remove(monsters, v)
			end
		end

		return m, h
	elseif mode == "Random" then
		local allowedMonsters = {}
		for i,v in monsters do
			if v and v.Parent and not isDead(v) and not v:GetAttribute("Reanimated") and not v:GetAttribute("Tamed") then
				if vals.Raycast and raycast(workspace.CurrentCamera.CFrame.Position, v.GetPivot(v).Position, v.GetDescendants(v)) then
					continue
				end

				add(allowedMonsters, v)
			else
				remove(monsters, v)
			end
		end

		if #allowedMonsters > 0 then
			local monster = allowedMonsters[math.random(1, #allowedMonsters)]
			return monster, monster and (plr.Character.GetPivot(plr.Character).Position - monster.GetPivot(monster).Position).Magnitude
		end

		return getClosestMonster("Angle")
	else
		local d, m = math.huge, nil
		for i,v in monsters do
			if v and v.Parent and not isDead(v) and not v:GetAttribute("Reanimated") and not v:GetAttribute("Tamed") then
				if vals.Raycast and raycast(workspace.CurrentCamera.CFrame.Position, v.GetPivot(v).Position, v.GetDescendants(v)) then
					continue
				end

				local di = (plr.Character.GetPivot(plr.Character).Position - v.GetPivot(v).Position).Magnitude

				if di <= d then
					d = di
					m = v
				end
			else
				remove(monsters, v)
			end
		end

		return m, d
	end
end

local gncm, hmm = getfenv().getnamecallmethod, getfenv().hookmetamethod
if hmm and gncm then
	local old; old = hmm(game, "__namecall", function(self, ...)
		if gncm() == "FireServer" and vals.SilentAim and self == s then
			warn("lets go")
			local args = { ... }

			local m, d = getClosestMonster()

			if not m and vals.SaveBullets then
				args[2].ClientWeaponState.CurrentAmmo.Value = args[2].ClientWeaponState.CurrentAmmo.Value + 1
				error("Cancel shoot", 0)
			end

			if d <= vals.KAR then
				return shoot(args[2], m, vals.DontShootAll)
			end
		elseif vals.SaveBullets and self == s and gncm() == "FireServer" and not getClosestMonster() then
			local args = { ... }
			args[2].ClientWeaponState.CurrentAmmo.Value = args[2].ClientWeaponState.CurrentAmmo.Value + 1
			
			error("Cancel shoot", 0)
		end

		return old(self, ...)
	end)

	hooks[#hooks + 1] = function()
		hmm(game, "__namecall", old)
	end
end

local ad = 30
local farEvents = {}

local function equipUntilNoZombie(tool, zombie, name)
	tool.Parent = plr.Character

	if not farEvents[zombie] then
		farEvents[zombie] = Instance.new("BindableEvent")
		repeat task.wait() until not vals[name] or isDead(zombie)

		farEvents[zombie]:Fire()

		farEvents[zombie]:Destroy()
		farEvents[zombie] = nil
	else
		farEvents[zombie].Event:Wait()
	end

	tool.Parent = plr.Backpack
end

task.spawn(function()
	while not closed and task.wait(0.01) do
		if vals.SpeedBoost ~= 0 and plr.Character and plr.Character:FindFirstChild("Humanoid") and not plr.Character.Humanoid.Sit and plr.Character.Humanoid.Health > 1 then
			plr.Character:PivotTo(plr.Character:GetPivot() + plr.Character.Humanoid.MoveDirection / ((101 - vals.SpeedBoost) * 14))
			if workspace.CurrentCamera then
				workspace.CurrentCamera.FieldOfView = 70 + (vals.SpeedBoost / 5)
			end
		end
	end
end)

task.spawn(function()
	while not closed and task.wait(0.1) do
		if vals.Killaura and plr.Character and not vals.Running then
			local m, d = getClosestMonster()
			if m and d <= vals.KAR then
				if not vals.KillauraOne then
					for v in myGuns do
						if v and v.Parent and v:FindFirstChild("WeaponConfiguration") and not vals.Running then
							if v.Parent == plr.Backpack then
								task.spawn(equipUntilNoZombie, v, m, "Killaura")
							end
							
							pcall(shoot, v, m, vals.DontShootAll)
							
							if not vals.FastKillaura then
								task.wait(0.1)
							end
						end
					end
				else
					local weapon = plr.Character:FindFirstChildOfClass("Tool")
					if not weapon or not weapon:FindFirstChild("WeaponConfiguration") then
						for v in myGuns do
							if v and v.Parent and v:FindFirstChild("WeaponConfiguration") and not vals.Running then
								weapon = v
								break
							end
						end
					end
					
					if weapon then
						if weapon.Parent == plr.Backpack then
							task.spawn(equipUntilNoZombie, weapon, m, "Killaura")
						end
						
						pcall(shoot, weapon, m, vals.DontShootAll)
					end
				end
			end
		end
	end
end)
task.spawn(function()
	while not closed and task.wait(0.5) do
		if vals.ARG and plr.Character then
			for v in myGuns do
				if v and v.Parent and v:FindFirstChild("WeaponConfiguration") then
					pcall(reload, v)
				end
			end
		end
	end
end)

local swing = game:GetService("ReplicatedStorage"):FindFirstChild("SwingMelee", math.huge)
local charge = game:GetService("ReplicatedStorage"):FindFirstChild("ChargeMelee", math.huge)

task.spawn(function()
	while not closed and task.wait(0.025) do
		if vals.MeleeAura and plr.Character and not vals.Running then
			local m, d = getClosestMonster("Distance")
			if m and d <= ad then
				for v in melee do
					if v and v.Parent and v:FindFirstChild("SwingEvent") and not vals.Running then
						if v.Parent == plr.Backpack then
							task.spawn(equipUntilNoZombie, v, m, "MeleeAura")
						end

						if vals.AlwaysCritical then
							charge:FireServer(v, workspace:GetServerTimeNow())
							task.wait(1.5)
						end
						swing:FireServer(v, workspace:GetServerTimeNow(), CFrame.lookAt(plr.Character:GetPivot().Position, m:GetPivot().Position + Vector3.new(0, 2)).LookVector)
					end
				end
			end
		end
	end
end)

for i,v in workspace:GetDescendants() do
	task.spawn(main, v)
end
cons[#cons+1] = workspace.DescendantAdded:Connect(main)

local void = pcall(function()
	workspace.FallenPartsDestroyHeight = workspace.FallenPartsDestroyHeight
end)

local function formatTime(timeInSeconds)
	if not vals.TimeMode then
		local totalMilliseconds = math.floor(timeInSeconds * 1000 + 0.5)

		return string.format("%s:%02d" .. (vals.ShowMillis and ".%02d" or ""), math.floor(totalMilliseconds / 60000), math.floor((totalMilliseconds % 60000) / 1000), vals.ShowMillis and math.floor((totalMilliseconds % 1000) / 10))
	else
		local hours = math.floor(timeInSeconds / 3600)
		timeInSeconds = timeInSeconds % 3600
		local minutes = math.floor(timeInSeconds / 60)
		local secs = timeInSeconds % 60

		local result = ""

		if hours > 0 then
			result = result .. string.format(not vals.ShortMode and "%02d hours " or "%02d h; ", hours)
		end

		if minutes > 0 then
			result = result .. string.format(not vals.ShortMode and "%02d minutes " or "%02d m; ", minutes)
		end

		result = result .. string.format(not vals.ShortMode and "%02d seconds " or "%02d s" .. (vals.ShowMillis and ";" or "") .. " ", secs)

		if vals.ShowMillis then
			local milliseconds = math.floor((timeInSeconds - math.floor(timeInSeconds)) * 1000)
			result = result .. string.format(not vals.ShortMode and "%03d milliseconds" or "%03d ms", milliseconds)
		end

		return result
	end
end

local oilCooldown = false
local notified = false
local fired = false

local money = plr:WaitForChild("PlayerGui", 9e9):WaitForChild("MoneyGui", 9e9):WaitForChild("Money", 9e9)
task.wait(1)
local bond = plr.PlayerGui.BondGui.BondInfo.BondCount
local bt = "Not refreshed"

local emptyModel = workspace:FindFirstChild("EmptyModel") or Instance.new("Model", workspace)
emptyModel.Name = "EmptyModel"

local controlHighlight = Instance.new("Highlight", workspace)
controlHighlight.Adornee = emptyModel

cons[#cons+1] = game:GetService("RunService").RenderStepped:Connect(function()
	txtf("ClearText")
	if train and train.Parent and train:FindFirstChild("RequiredComponents") and train.RequiredComponents:FindFirstChild("Controls") and train.RequiredComponents.Controls:FindFirstChild("TimeDial") then
		if vals.ShowTime then
			txtf("UpdateLine", "Left", "Time: " .. train.RequiredComponents.Controls.TimeDial.SurfaceGui.TextLabel.Text)
		end
		if vals.ShowDistance then
			txtf("UpdateLine", "Left", "Traveled: " .. train.RequiredComponents.Controls.DistanceDial.SurfaceGui.TextLabel.Text)
		end
		if vals.ShowSpeed then
			txtf("UpdateLine", "Left", "Speed: " .. (math.round((train.RequiredComponents.Controls.Spedometer.SurfaceGui.ImageLabel.Gauge.Rotation - 120) / 163 * 650) / 10) .. " s/s")
		end
		if vals.ShowFuel then
			txtf("UpdateLine", "Left", "Fuel: " .. getFuelPercentage() .. "%")
		end
	end
	local t = workspace.DistributedGameTime
	
	if vals.ShowTimeLeft then
		if txtf("GetText", "Left") ~= "" then
			txtf("UpdateLine", "Left", "")
		end
		
		local time = math.max(599 - t, 0)
		txtf("UpdateLine", "Left", "Timer: " .. formatTime(time) .. " left")
		if time == 0 and not notified then
			notified = true
			lib.Notifications:Notification({Title = "Timer", Text = "You can finish game now!"})
		end
	end
	if vals.ShowPlayingTimer then
		if txtf("GetText", "Left") ~= "" and not vals.ShowTimeLeft then
			txtf("UpdateLine", "Left", "")
		end
		txtf("UpdateLine", "Left", "Playing: " .. formatTime(t))
	end

	money.Visible = not vals.ReplaceMoney
	bond.Parent.Parent.Enabled = not vals.ReplaceBond

	if vals.ReplaceMoney then
		if txtf("GetText", "Left") ~= "" then
			txtf("UpdateLine", "Left", "")
		end
		txtf("UpdateLine", "Left", "Money: " .. money.Text)
	end
	if vals.BondFarm then
		if txtf("GetText", "Left") ~= "" then
			txtf("UpdateLine", "Left", "")
		end
		txtf("UpdateLine", "Left", "Collected bonds: " .. bondFarm.Collected .. " / " .. bondFarm.Found)
		txtf("UpdateLine", "Left", "That value is not fully real")
	end
	
	if workspace.CurrentCamera then
		workspace.CurrentCamera.CFrame += cameraOffset
	end
	
	bondFarm.Enabled = vals.BondFar

	local monstrs = (#monsters)
	if currentMob > monstrs then
		currentMob = 0
	end
	
	tb.Enabled = vals.BondFarm or vals.ControlMobs or vals.ACBypass
	
	if vals.FB then
		game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
		game:GetService("Lighting").Brightness = 1.5
	end
	if vals.NC then
		plr.CameraMode = Enum.CameraMode.Classic
	end
	if void then
		workspace.FallenPartsDestroyHeight = vals.NoVoid and 0/0 or -500
	end
	plr.DevCameraOcclusionMode = vals.NC and not vals.ACBypass and not vals.ControlMobs and Enum.DevCameraOcclusionMode.Invisicam or Enum.DevCameraOcclusionMode.Zoom
	game:GetService("Lighting").GlobalShadows = not vals.FB
	if vals.AutoCollectBags then
		for i,v in prompts do
			if v and v.Parent then
				fireproximityprompt(v)
			else
				remove(prompts, v)
			end
		end
	end
	
	local mobText = "Currently controlling: " .. currentMob .. " / "  .. monstrs
	mobLabel:SetText(mobText)
	
	if vals.ControlMobs then
		if txtf("GetText", "Left") ~= "" then
			txtf("UpdateLine", "Left", "")
		end
		txtf("UpdateLine", "Left", mobText)
	end
	
	if vals.AutoThrottle and train and train.Parent and train:FindFirstChild("RequiredComponents") and train.RequiredComponents:FindFirstChild("Controls") and train.RequiredComponents.Controls.ConductorSeat:FindFirstChild("VehicleSeat") and math.abs(train.RequiredComponents.Controls.ConductorSeat.VehicleSeat.Throttle) == 0 then
		train.RequiredComponents.Controls.ConductorSeat.VehicleSeat.Throttle = 1
	end
	if vals.AutoPlayAgain and plr.PlayerGui.EndScreen.Enabled then
		game:GetService("ReplicatedStorage"):FindFirstChild("EndDecision", math.huge):FireServer(false)
	end
	if plr.Character then
		if (vals.NoVoid or vals.ForceNoclip) and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.HumanoidRootPart.Position.Y <= -10 then
			plr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 10)
			plr.Character:PivotTo(plr.Character:GetPivot() + Vector3.new(0, 20))
		end
		if vals.Noclip or vals.ForceNoclip then
			for i,v in plr.Character:GetDescendants() do
				if v and v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		elseif plr.Character:FindFirstChild("HumanoidRootPart") then
			plr.Character.HumanoidRootPart.CanCollide = true
		end

		local hum = plr.Character:FindFirstChildOfClass("Humanoid")

		if not hum or hum.Health <= 0.01 and hum.PlatformStand then return end
		
		hum.JumpHeight = vals.JumpBoost
		
		if vals.AutoPickTools then
			for i,v in tools do
				if v and v.Parent then
					if v.Parent == items and not v:GetAttribute("BuyPrice") and (v:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude <= 30 then
						game:GetService("ReplicatedStorage"):FindFirstChild("PickUpTool", math.huge):FireServer(v)
					end
				else
					remove(prompts, v)
				end
			end
		end
		if vals.AutoPickOther then
			for i,v in other do
				if v and v.Parent then
					if v.Parent == items and not v:GetAttribute("BuyPrice") and (v:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude <= 30 then
						game:GetService("ReplicatedStorage"):FindFirstChild("C_ActivateObject", math.huge):FireServer(v)
					end
				else
					remove(prompts, v)
				end
			end
		end
		if vals.AutoPickBonds then
			for i,v in bonds do
				if v and v.Parent then
					if v.Parent == items and not v:GetAttribute("BuyPrice") and (v:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude <= 30 then
						game:GetService("ReplicatedStorage"):FindFirstChild("C_ActivateObject", math.huge):FireServer(v)
					end
				else
					remove(prompts, v)
				end
			end
		end
		if vals.AutoPickArmor then
			for i,v in equippables do
				if v and v.Parent then
					if v.Parent == items and not v:GetAttribute("BuyPrice") and (v:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude <= 30 then
						game:GetService("ReplicatedStorage"):FindFirstChild("EquipObject", math.huge):FireServer(v)
					end
				else
					remove(prompts, v)
				end
			end
		end

		local bandage = getFirst(heals.Bandage)
		if bandage and bandage.Parent and plr.Character:FindFirstChildOfClass("Humanoid").Health <= vals.BandageUse then
			return bandage.Use:FireServer(bandage)
		end

		local oil = getFirst(heals["Snake Oil"])
		if not oilCooldown and oil and oil.Parent and plr.Character:FindFirstChildOfClass("Humanoid").Health <= vals.OilUse then
			oilCooldown = true
			oil.Use:FireServer(oil)
			task.wait(vals.OilUseCooldown)
			oilCooldown = false
		end
	end
	if vals.AutoFuel and getFuelPercentage() ~= 100 then
		for i,v in fuels do
			if v and v.Parent then
				if vals.GreedyMode or getFuelPercentage() + getFuelPercentageFromValue(v:GetAttribute("Fuel")) <= 100 then
					task.spawn(fuel, v)
				end
			else
				remove(fuels, v)
			end
		end
	end
end)

task.spawn(function()
	while not closed and task.wait(0.05) do
		cameraOffset = Vector3.new()
		local hum = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid")
		
		if not vals.BondFarm and (vals.ControlMobs or vals.ACBypass) and hum then
			controlHighlight.Adornee = emptyModel

			if vals.ControlMobs and current and current.Parent then
				local cpiv = current:GetPivot()

				controlHighlight.Adornee = current

				if workspace.CurrentCamera then
					workspace.CurrentCamera.CameraSubject = current
				end
				
				local attackDistance = current:FindFirstChild("AttackDistance", math.huge)
				if attackDistance then
					attackDistance = attackDistance.Value
				end
				
				attackDistance = tonumber(attackDistance) or 0
				tb.Position = Vector3.new(cpiv.Position.X, -7.5 - attackDistance, cpiv.Position.Z) + (hum.MoveDirection * 50)
			else
				local cpiv = plr.Character:GetPivot()

				controlHighlight.Adornee = plr.Character

				if workspace.CurrentCamera then
					workspace.CurrentCamera.CameraSubject = plr.Character
				end
				
				cameraOffset = Vector3.new(0, 10)
				tb.Position = Vector3.new(cpiv.Position.X, -7.5, cpiv.Position.Z) + (hum.MoveDirection * 10 * ((vals.SpeedBoost + 25) / 25))
			end
		end
	end
end)

cons[#cons+1] = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(pp)
	if vals.II then
		fireproximityprompt(pp, true)
	end
end)

local window = lib:MakeWindow({Title = "NullFire - Dead Rails", CloseCallback = function()
	for i,v in defaults do
		vals[i] = v
	end
	for i,v in defaults.ESP do
		espLib.ESPValues[i] = v
	end
	for i,v in hooks do
		task.spawn(v)
	end
	for i,v in oprompts do
		if i and i.Parent and v then
			i.MaxActivationDistance = v
		end
	end
	getGlobalTable().FireHubLoaded = false
	closed = true

	renderWait(0.1)

	controlHighlight:Destroy()
	for i,v in cons do
		v:Disconnect()
	end
end}, true)

local page = window:AddPage({Title = "Character"})
page:AddSlider({Caption = "Speed boost", Default = 0, Min = 0, Max = 100, Step = 1, Callback = function(b)
	vals.SpeedBoost = b
end, CustomTextDisplay = function(p)
	return p .. "%"
end})
page:AddSlider({Caption = "Jump height", Default = 7.2, Min = 0, Max = 12.5, Step = 0.1, Callback = function(b)
	vals.JumpBoost = b
end, CustomTextDisplay = function(p)
	return p .. " / 12.5 studs"
end})
page:AddSeparator()
page:AddLabel({Caption = "Max Speed boost makes you a bit faster than vampires that spawn at night"})
page:AddLabel({Caption = "Max Jump height allows you to jump on the roofs"})
page:AddSeparator()
page:AddToggle({Caption = "Noclip", Default = false, Callback = function(b)
	vals.Noclip = b
end})
page:AddToggle({Caption = "AC Bypass + invisible (can't grab items)", Default = false, Callback = function(b)
	tb.Position = plr.Character:GetPivot()
	vals.ACBypass = b
end})
page:AddToggle({Caption = "No void (fix death when falling under map)", Default = false, Callback = function(b)
	vals.NoVoid = b
end})
page:AddSeparator()
mobLabel = page:AddLabel({Caption = "Currently controlling: 0 / 0"})

local next = page:AddButton({Caption = "Next mob", Callback = function()
	currentMob += 1

	if currentMob > #monsters then
		currentMob = 0
	end

	current = monsters[currentMob]
end})

local previous = page:AddButton({Caption = "Previous mob", Callback = function()
	currentMob -= 1

	if currentMob < 0 then
		currentMob = #monsters
	end

	current = monsters[currentMob]
end})

next:Visible(false)
previous:Visible(false)

page:AddToggle({Caption = "Control mobs", Default = false, Callback = function(b)
	vals.ControlMobs = b
	tb.Position = plr.Character:GetPivot()

	next:Visible(b)
	previous:Visible(b)
end})

page:AddSeparator()

page:AddLabel({Caption = "Teleports (might be broken)"})
for i,v in tps.Teleports do
	page:AddButton({Text = "Teleport to " .. insertCum(i), Callback = function()
		tb.Position = plr.Character:GetPivot()
		v(tps.Teleports)
	end})
end

local page = window:AddPage({Title = "Auto"})
page:AddToggle({Caption = "Auto grab money bags", Default = false, Callback = function(b)
	vals.AutoCollectBags = b
end})
page:AddToggle({Caption = "Auto pick up tools", Default = false, Callback = function(b)
	vals.AutoPickTools = b
end})
page:AddToggle({Caption = "Auto pick up armor", Default = false, Callback = function(b)
	vals.AutoPickArmor = b
end})
page:AddToggle({Caption = "Auto pick up bonds", Default = false, Callback = function(b)
	vals.AutoPickBonds = b
end})
page:AddToggle({Caption = "Auto pick up ammo & other", Default = false, Callback = function(b)
	vals.AutoPickOther = b
end})
page:AddToggle({Caption = "Auto play again", Default = false, Callback = function(b)
	vals.AutoPlayAgain = b
end})
page:AddToggle({Caption = "Auto throttle", Default = false, Callback = function(b)
	vals.AutoThrottle = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Auto fuel", Default = false, Callback = function(b)
	vals.AutoFuel = b
end})
page:AddToggle({Caption = "Greedy Auto fuel", Default = false, Callback = function(b)
	vals.GreedyMode = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Bond farm (works bad atm)", Default = false, Callback = function(b)
	tb.Position = plr.Character:GetPivot()
	vals.BondFarm = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Instant interact", Default = false, Callback = function(b)
	vals.II = b
end})
page:AddSlider({Caption = "Prompt activation distance multiplier", Default = 1, Min = 1, Max = 2, Step = 0.01, Callback = function(b)
	vals.ExtraPP = b
	for i,v in oprompts do
		if i and i.Parent and v then
			i.MaxActivationDistance = v * b
		end
	end
end})

page:AddSeparator()

page:AddSlider({Caption = "Auto use Bandage when has HP:", Default = 0, Min = 0, Max = 99.5, Step = 0.5, Callback = function(b)
	vals.BandageUse = b
end})
page:AddSlider({Caption = "Auto use Snake Oil when has HP:", Default = 0, Min = 0, Max = 100, Step = 0.5, Callback = function(b)
	vals.OilUse = b
end})
page:AddSlider({Caption = "Auto use Snake Oil cooldown", Default = 5, Min = 0, Max = 10, Step = 0.1, Callback = function(b)
	vals.OilUseCooldown = b
end})

local page = window:AddPage({Title = "Visual"})

page:AddToggle({Caption = "Show distance", Default = false, Callback = function(b)
	vals.ShowDistance = b
end})
page:AddToggle({Caption = "Show time", Default = false, Callback = function(b)
	vals.ShowTime = b
end})
page:AddToggle({Caption = "Show speed", Default = false, Callback = function(b)
	vals.ShowSpeed = b
end})
page:AddToggle({Caption = "Show fuel", Default = false, Callback = function(b)
	vals.ShowFuel = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Show 10 minute timer", Default = false, Callback = function(b)
	vals.ShowTimeLeft = b
end})
page:AddToggle({Caption = "Show playing timer", Default = false, Callback = function(b)
	vals.ShowPlayingTimer = b
end})
page:AddToggle({Caption = "Show milliseconds", Default = false, Callback = function(b)
	vals.ShowMillis = b
end})
local short
page:AddToggle({Caption = "Second timer mode", Default = false, Callback = function(b)
	vals.TimeMode = b
	short:Visible(b)
end})
short = page:AddToggle({Caption = "Shorter second timer mode", Default = false, Callback = function(b)
	vals.ShortMode = b
end})
short:Visible(false)

page:AddSeparator()

page:AddToggle({Caption = "Replace money GUI", Default = false, Callback = function(b)
	vals.ReplaceMoney = b
end})
--[[page:AddToggle({Caption = "Replace bond GUI", Default = false, Callback = function(b)
	vals.ReplaceBond = b
end})]]

page:AddSeparator()

page:AddToggle({Caption = "Full bright", Default = false, Callback = function(b)
	vals.FB = b
end})
page:AddToggle({Caption = "Normal camera", Default = false, Callback = function(b)
	vals.NC = b
	rs(2)
	plr.CameraMode = vals.NC and Enum.CameraMode.Classic or Enum.CameraMode.LockFirstPerson
	if b then
		lib.Notifications:Notification({Title = "Normal camera", Text = "Now you can zoom out your camera"})
	end
end})

page:AddSeparator()

local activated = false
page:AddToggle({Caption = "RGB ESP (might cause FPS issues, careful!)", Default = false, Callback = function(b)
	if not activated then activated = true return end
	espLib.ESPValues.RGBESP = b
	if b then
		lib.Notifications:Notification({Title = "RGB ESP", Text = "This might cause FPS issues when a lot of objects!\nUse this only if you think your device is strong enough"})
	end
end})

page:AddSeparator()

for i,v in vals.ESP do
	page:AddToggle({Caption = i:gsub("ESP", " ESP"), Default = v, Callback = function(b)
		espLib.ESPValues[i] = b
	end})
end

local page = window:AddPage({Title = "Kill assist"})

page:AddLabel({Text = "This page been temporarily removed for the rework"})
page:AddSeparator()

local t = {"Distance", "Angle", "Random"}
page:AddDropdown({Text = "Find closest target by", Default = "Distance", Rows = t, Callback = function(name)
	vals.Mode = t[name]
end})

page:AddSeparator()

page:AddToggle({Caption = "Auto reload guns", Default = false, Callback = function(b)
	vals.ARG = b
end})

if hmm and gncm then
	page:AddSeparator()
	page:AddToggle({Caption = "Silent aim", Default = false, Callback = function(b)
		vals.SilentAim = b
	end})
	page:AddLabel({Caption = "If Silent aim does not work, then your executor is bad"})
	page:AddSeparator()
	--[[page:AddToggle({Caption = "Don't shoot all zombies at once", Default = false, Callback = function(b)
		vals.DontShootAll = b
	end})]]
	page:AddSlider({Caption = "Radius", Default = vals.KAR, Min = 100, Max = 2700, Step = 10, Callback = function(b)
		vals.KAR = b <= 2500 and b or b <= 2600 and 2500 or 1488228
	end, CustomTextDisplay = function(p)
		return p <= 2500 and p .. " studs" or p <= 2600 and "2500 studs" or "inf studs"
	end})
	page:AddSeparator()
	page:AddToggle({Caption = "Melee aura (Shovel killaura)", Default = false, Callback = function(b)
		vals.MeleeAura = b
	end})
	--[[page:AddToggle({Caption = "Always do critical hits", Default = false, Callback = function(b)
		vals.AlwaysCritical = b
	end})]]
	page:AddSeparator()
	page:AddToggle({Caption = "Killaura", Default = false, Callback = function(b)
		vals.Killaura = b
	end})
	page:AddToggle({Caption = "Make killaura faster", Default = false, Callback = function(b)
		vals.FastKillaura = b
	end})
	page:AddToggle({Caption = "Use only 1 weapon for killaura", Default = false, Callback = function(b)
		vals.KillauraOne = b
	end})
end

local page = window:AddPage({Title = "Trolling"})

page:AddButton({Caption = "Throw object", Callback = throw})
page:AddSlider({Caption = "Throw power", Default = vals.ThrowPower, Min = 10, Max = 10000, Step = 1, Callback = function(b)
	vals.ThrowPower = b
end})
page:AddLabel({Caption = "Try throwing a friend's corpse with power of 500 XD"})
