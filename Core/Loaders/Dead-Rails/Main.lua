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
	GKA = false,
	MA = false,
	ARG = false,
	Raycast = false, -- causing huge lags
	SilentAim = false,
	Mode = "Distance",
	NoVoid = false,
	SaveBulltets = false,
	AutoThrottle = false,
	FastKillaura = false,
	AutoComplete = false,
	
	ShowTimeLeft = false,
	ShowPlayingTimer = false,
	
	SpeedBoost = 0,
	JumpBoost = 7.2,

	BandageUse = 0,
	OilUse = 0,
	OilUseCooldown = 5,
	KAR = 500,

	ThrowPower = 100,
	
	ForceNoclip = false,
	Running = false
}

local vals = table.clone(defaults)
vals.ESP = table.clone(defaults.ESP)

local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

getGlobalTable().FireHubLoaded = true

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Fire-Lib/Main.lua", true))()
local espLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/ESP/Main.lua", true))()
local txtf = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Side-Text/Main.lua", true))()
local tpToEnd = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Dead-Rails/TeleportToEnd.lua", true))()

local plr = game:GetService("Players").LocalPlayer

if game.PlaceId == 116495829188952 then
	return lib.Notifications:Notification({Title = "Hey!", Text = "Please, load the script ingame!"})
end

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

local cd = {}
local fppn = false
local fpp = getfenv().fireproximityprompt

local probablyDead = {}
local deathAmmo = {}

local function isDead(hum)
	if probablyDead[hum] and vals.FastKillaura then
		return true
	end

	if hum and hum.Parent then
		if not hum:IsA("Humanoid") then
			hum = hum:FindFirstChild("Humanoid")
		end

		if hum then
			if probablyDead[hum] and vals.FastKillaura then
				return true
			end

			local dead = hum.Health <= 0.01 and hum.PlatformStand
			if dead then
				probablyDead[hum] = true
			end

			return dead
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

local cooldown = {}
local function setCooldown(gun)
	cooldown[gun] = true
	task.wait((gun.WeaponConfiguration.FireDelay.Value * 1.5) + 0.25)
	cooldown[gun] = false
end

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

local s = game:GetService("ReplicatedStorage"):FindFirstChild("Shoot", math.huge)
local r = game:GetService("ReplicatedStorage"):FindFirstChild("Reload", math.huge)
local function shoot(gun, target)
	if not isDead(target) and (vals.Raycast and not raycast(workspace.CurrentCamera.CFrame.Position, target:GetPivot().Position, target:GetDescendants()) or not vals.Raycast) and (workspace.CurrentCamera.CFrame.Position - target:GetPivot().Position).Magnitude <= vals.KAR then
		local head = target:FindFirstChild("Head") or target:GetPivot()

		local hits = {}
		for i=1, gun.WeaponConfiguration.PelletsPerBullet.Value do
			hits[tostring(i)] = target.Humanoid
		end

		if target.Humanoid.Health - gun.WeaponConfiguration.BulletDamage.Value < 0 and gun.ServerWeaponState.CurrentAmmo.Value >= 1 and not cooldown[gun] then
			deathAmmo[target.Humaoind] = (tonumber(deathAmmo[target.Humaoind]) or 3) - 1
			if deathAmmo[target.Humaoind] <= 0 then
				probablyDead[target.Humanoid] = true
			end
			task.spawn(setCooldown, gun)
		end

		s:FireServer(workspace:GetServerTimeNow(), gun, CFrame.lookAt(head.Position + (head.CFrame.LookVector * 10), head.Position), hits)
	end
end
local function reload(gun)
	r:FireServer(workspace:GetServerTimeNow(), gun)
end

if fpp then
	pcall(function()
		task.spawn(function()
			local pp = Instance.new("ProximityPrompt", workspace)
			local con; con = pp.Triggered:Connect(function()
				con:Disconnect()
				fppn = true
				task.wait(0.1)
				pp.Parent = nil
				task.wait(0.1)
				pp:Destroy()
			end)
			task.wait(0.1)
			fpp(pp)
			task.wait(1.5)
			if pp and pp.Parent then
				con:Disconnect()
				task.wait(0.1)
				pp.Parent = nil
				task.wait(0.1)
				pp:Destroy()
			end
		end)
	end)
end

local function fppFunc(pp)
	cd[pp] = true
	local a,b,c,d,e = pp.MaxActivationDistance, pp.Enabled, pp.Parent, pp.HoldDuration, pp.RequiresLineOfSight
	local obj = Instance.new("Part", workspace)
	obj.Transparency = 1
	obj.CanCollide = false
	obj.Size = Vector3.new(0.1, 0.1, 0.1)
	obj.Anchored = true
	pp.Parent = obj
	pp.MaxActivationDistance = math.huge
	pp.Enabled = true
	pp.HoldDuration = 0
	pp.RequiresLineOfSight = false
	if not pp or not pp.Parent then
		obj:Destroy()
		return
	end
	obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
	rs()
	obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
	pp:InputHoldBegin()
	rs()
	obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
	pp:InputHoldEnd()
	rs()
	obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
	if pp.Parent == obj then
		pp.Parent = c
		pp.MaxActivationDistance = a
		pp.Enabled = b
		pp.HoldDuration = d
		pp.RequiresLineOfSight = e
	end
	obj:Destroy()
	cd[pp] = false
end
local ftiv = false
local fti = getfenv().firetouchinterest
task.spawn(function()
	if fti then
		local part = Instance.new("Part", workspace)
		part.Position = Vector3.new(0, 100, 0)
		part.Touched:Connect(function()
			part:Destroy()
			ftiv = true
		end)
		task.wait(0.1)
		repeat task.wait() until plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and part and part.Parent
		fti(part, plr.Character.HumanoidRootPart, 0)
		fti(plr.Character.HumanoidRootPart, part, 0)
		task.wait()
		repeat task.wait() until plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and part and part.Parent
		fti(part, plr.Character.HumanoidRootPart, 1)
		fti(plr.Character.HumanoidRootPart, part, 1)
	end
end)
local firetouchinterest = function(a,b,touching)
	if ftiv then
		return fti(a,b,touching)
	end

	if cd[a] or cd[b] then return end
	cd[a] = true
	touching = touching == 1

	if not touching then
		local c = b
		local ct = c.CanTouch
		c.CanTouch = false
		task.wait(0.015)
		c.CanTouch = ct
	else
		local pp = b:GetPivot()
		local t,c,an = b.Transparency,b.CanCollide,b.Anchored
		b:PivotTo(a:GetPivot())
		b.Transparency = 1
		b.CanCollide = false
		b.Anchored = false
		b.Velocity = b.Velocity + Vector3.new(0,1)
		a.Touched:Wait()
		b.Transparency = t
		b.CanCollide = c
		b.Anchored = an
		b:PivotTo(pp)
	end
	task.wait()
	cd[a] = false
end
local function sit(seat)
	local hum = plr.Character:FindFirstChild("Humanoid")

	if hum then
		if seat:FindFirstChild("SeatWeld") then return end
		seat.CFrame = plr.Character.HumanoidRootPart.CFrame

		firetouchinterest(seat, plr.Character.HumanoidRootPart, 0)
		firetouchinterest(seat, plr.Character.HumanoidRootPart, 1)
	end
end
local function tpEnd()
	if vals.Running then
		vals.Running = false
		vals.ForceNoclip = false
		renderWait(0.1)
		vals.ForceNoclip = false
	end
	vals.Running = true
	tpToEnd(vals)
	plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
end
local function canGetPivot(pp)
	return pp.Parent.GetPivot
end
local fireproximityprompt = function(pp, i)
	if not i and (typeof(pp) ~= "Instance" or not pp:IsA("ProximityPrompt") or not pcall(canGetPivot, pp) or cd[pp] or not workspace.CurrentCamera or ((game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart or workspace.CurrentCamera).CFrame.Position - pp.Parent:GetPivot().Position).Magnitude > pp.MaxActivationDistance * 2) then return end
	if fppn then
		return fpp(pp)
	end
	task.spawn(fppFunc, pp)
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

local function getSelectedObject()
	return game:GetService("ReplicatedStorage"):FindFirstChild("DragHighlight", math.huge).Adornee
end

local function throwObject(object)
	if (object:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude > 20 then
		return
	end

	startDrag(object)

	local par

	while true do
		local drag1 = object:FindFirstChild("DragAttachment", math.huge)
		local drag2 = object:FindFirstChild("DragAlignPosition", math.huge)
		local drag3 = object:FindFirstChild("DragAlignOrientation", math.huge)

		if not drag1 and not drag2 and not drag3 and par then
			break
		end

		if drag1 then
			par = drag1.Parent
			drag1:Destroy()
			continue
		end
		if drag2 then
			par = drag2.Parent
			drag2:Destroy()
			continue
		end
		if drag3 then
			par = drag3.Parent
			drag3:Destroy()
			continue
		end

		task.wait()
	end

	task.wait()

	if par then
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
local monsters = {}

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
	local n = obj.Name
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
		otherText = otherText .. '<font color="rgb(50,50,50)">Fuel: <b>' .. (math.round((fuel / 240) * 1000) / 10) .. "%</b></font>\n"
	end
	
	return (text .. (otherText:gsub(" ", ""):gsub("\n", ""):gsub("\r", ""):gsub("\t", "") ~= "" and otherText:sub(1, #otherText - 1) or "")):gsub("Model ", "") .. ""
end

local checked = {}
local function main(v)
	renderWait()

	if v and v.Parent and not checked[v] then
		if v:IsA("ProximityPrompt") and not oprompts[v] then
			oprompts[v] = v.MaxActivationDistance
			v.MaxActivationDistance = oprompts[v] * vals.ExtraPP
		elseif v:IsA("Humanoid") and not game:GetService("Players"):GetPlayerFromCharacter(v.Parent) and not print(v.Parent) then
			checked[v] = true
			checked[v.Parent] = true
			
			if v.Parent:GetAttribute("DangerScore") or v.Parent.Parent and (v.Parent.Parent.Name:lower():match("enemies") or v.Parent.Parent.Name:lower():match("enemy")) then
				local monster = esps[v.Parent.Name] or {HighlightEnabled = false, Color = Color3.new(0.35):Lerp(Color3.new(1), (v.Parent:GetAttribute("DangerScore") or 10) / 100), Text = getItemText(v.Parent), ESPName = "MonsterESP"}
				esps[v.Parent.Name] = monster

				espFunc(v.Parent, monster)
				add(monsters, v.Parent)

				repeat task.wait() until not v or not v.Parent or isDead(v)

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

				pcall(espLib.DeapplyESP, v.Parent)

				local dead = desps[v.Parent.Name] or {HighlightEnabled = true, Color = Color3.new(1, 0.7, 0.7), Text = getItemText(v.Parent), ESPName = "Dead AnimalESP"}
				desps[v.Parent.Name] = dead

				return espFunc(v.Parent, dead)
			end
		elseif (v:IsA("BillboardGui") and v.Name == "ObjectInfo" and (getBase(v.Parent) and not getBase(v.Parent).Anchored or not getBase(v.Parent)) or v.Parent == workspace.RuntimeItems and v.Name ~= "Moneybag") and not checked[v] and not checked[v.Parent] then
			renderWait(0.01)
			if not v or not v.Parent or checked[v] or checked[v.Parent] then return end
			
			v = v:IsA("BillboardGui") and v or v:FindFirstChildWhichIsA("Instance")
			local tool = esps[v.Parent.Name] or {HighlightEnabled = false, Color = getColor(v.Parent), Text = getItemText(v.Parent), ESPName = "ItemESP"}

			esps[v.Parent.Name] = tool

			espFunc(v.Parent, tool)

			for i,va in pickupable do
				if hasProperty(v.Parent, va) then
					return add(tools, v.Parent)
				end
			end
			
			if v.Parent.Name == "Electrocutioner" or v.Parent.Name:lower():match("sword") then
				return add(tools, v.Parent)
			end

			if hasProperty(v.Parent, "Currency") then
				return add(bonds, v.Parent)
			end

			for i,va in armor do
				if hasProperty(v.Parent, va) then
					return add(equippables, v.Parent)
				end
			end

			if v.Parent:GetAttribute("ActivateText") then
				return add(other, v.Parent)
			end
		elseif v:IsA("Model") and v.Name == "Vault" and v:FindFirstChild("Combination") then
			checked[v] = true
			
			espFunc(v, {HighlightEnabled = true, Color = Color3.fromRGB(85, 170, 0), Text = "[" .. tostring(v.Combination.Value):gsub("", " ") .. "]", ESPName = "Vault CodeESP"})
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
		if vals.SilentAim and self == s and gncm() == "FireServer" then
			local args = { ... }

			local m, d = getClosestMonster()

			if m then
				local hits = {}
				for i=1, args[2].WeaponConfiguration.PelletsPerBullet.Value do
					hits[tostring(i)] = m.Humanoid
				end

				local head = m:FindFirstChild("Head") or m:GetPivot()

				args[3] = CFrame.lookAt(head.Position + Vector3.new(0, 1), head.Position)
				args[4] = hits
			elseif vals.SaveBullets then
				args[2].ClientWeaponState.CurrentAmmo.Value = args[2].ClientWeaponState.CurrentAmmo.Value + 1
				error("Cancel shoot", 0)
			end

			if d <= vals.KAR then
				return s.FireServer(s, unpack(args))
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

task.spawn(function()
	while not closed and task.wait(0.01) do
		if vals.SpeedBoost ~= 0 and plr.Character and plr.Character:FindFirstChild("Humanoid") and not plr.Character.Humanoid.Sit then
			plr.Character:PivotTo(plr.Character:GetPivot() + plr.Character.Humanoid.MoveDirection / ((101 - vals.SpeedBoost) * 15))
		end
	end
end)
task.spawn(function()
	while not closed and task.wait(0.1) do
		if vals.GKA and plr.Character and not vals.Running then
			local m, d = getClosestMonster()
			print(d, vals.KAR, d <= vals.KAR)
			if m and d <= vals.KAR then
				for v in myGuns do
					if v and v.Parent and v:FindFirstChild("WeaponConfiguration") and not vals.Running then
						pcall(shoot, v, m)
						if not vals.FastKillaura then
							task.wait(0.1)
						end
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

local ad = 30
local farEvents = {}

local function equipUntilNoZombie(tool, zombie)
	tool.Parent = plr.Character

	if not farEvents[zombie] then
		farEvents[zombie] = Instance.new("BindableEvent")
		repeat task.wait() until not vals.MA or isDead(zombie)

		farEvents[zombie]:Fire()

		farEvents[zombie]:Destroy()
		farEvents[zombie] = nil
	else
		farEvents[zombie].Event:Wait()
	end

	tool.Parent = plr.Backpack
end

task.spawn(function()
	while not closed and task.wait(0.1) do
		if vals.MA and plr.Character and not vals.Running then
			local m, d = getClosestMonster("Distance")
			if m and d <= ad then
				for v in melee do
					if v and v.Parent and v:FindFirstChild("SwingEvent") and not vals.Running then
						if v.Parent == plr.Backpack then
							task.spawn(equipUntilNoZombie, v, m)
						end

						v.SwingEvent:FireServer(CFrame.lookAt(plr.Character:GetPivot().Position, m:GetPivot().Position + Vector3.new(0, 2)).LookVector)
					end
				end
			end
		end
	end
end)

local endPosition = CFrame.new(-380, 40, -48885)
local function finish()
	if plr.Character and vals.AutoComplete and plr.Character:FindFirstChild("Humanoid") and (plr.Character:GetPivot().Position - endPosition.Position).Magnitude < 1000 then
		for i=1, 3 do
			--print("walking")
			vals.ForceNoclip = true
			if plr.Character and vals.AutoComplete and plr.Character:FindFirstChild("Humanoid") and (plr.Character:GetPivot().Position - endPosition.Position).Magnitude < 1000 then
				--print("walking 2")
				plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				plr.Character.Humanoid:MoveTo(workspace.Baseplates.FinalBasePlate.OutlawBase.Bridge.BridgeControl.Part.Position + Vector3.new(13.5, 0, 5))
				task.wait(2)
				plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end
			vals.ForceNoclip = true
		end
		if plr.Character and vals.AutoComplete and plr.Character:FindFirstChild("Humanoid") and (plr.Character:GetPivot().Position - endPosition.Position).Magnitude < 1000 then
			--print("hiding")
			local prompt = workspace.Baseplates:FindFirstChild("EndGame", math.huge)
			while not closed and vals.AutoComplete and task.wait(0.1) and plr.Character and plr.Character:FindFirstChild("Humanoid") and (plr.Character:GetPivot().Position - endPosition.Position).Magnitude < 1000 do
				--print("loop")
				prompt = prompt or workspace.Baseplates:FindFirstChild("EndGame", math.huge)
				vals.ForceNoclip = true
				if prompt and prompt.Parent then
					oprompts[prompt] = oprompts[prompt] or prompt.MaxActivationDistance
					prompt.MaxActivationDistance = oprompts[prompt] * 3
					
					fireproximityprompt(prompt)
				end
				plr.Character.Humanoid:MoveTo(workspace.Baseplates.FinalBasePlate.OutlawBase.Bridge.BridgeControl.Part.Position + Vector3.new(13.5, 0, 5))
				vals.ForceNoclip = true
			end
		end
	end
end

task.spawn(function()
	while not closed and task.wait(0.1) do
		vals.ForceNoclip = false
		if vals.AutoComplete and plr.Character then
			if (plr.Character:GetPivot().Position - endPosition.Position).Magnitude > 1000 and vals.AutoComplete then
				--print("teleporting to end")
				pcall(tpEnd)
				--print("finale")
				pcall(finish)
			elseif vals.AutoComplete then
				--print("finale")
				pcall(finish)
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
	local totalMilliseconds = math.floor(timeInSeconds * 1000 + 0.5)

	return string.format("%s:%02d.%02d", math.floor(totalMilliseconds / 60000), math.floor((totalMilliseconds % 60000) / 1000), math.floor((totalMilliseconds % 1000) / 10))
end

local items = workspace.RuntimeItems
local oilCooldown = false
cons[#cons+1] = game:GetService("RunService").RenderStepped:Connect(function()
	txtf("ClearText")
	if workspace:FindFirstChild("Train") and workspace.Train.TrainControls:FindFirstChild("TimeDial") then
		if vals.ShowTime then
			txtf("UpdateLine", "Left", "Time: " .. workspace.Train.TrainControls.TimeDial.SurfaceGui.TextLabel.Text)
		end
		if vals.ShowDistance then
			txtf("UpdateLine", "Left", "Traveled: " .. workspace.Train.TrainControls.DistanceDial.SurfaceGui.TextLabel.Text)
		end
		if vals.ShowSpeed then
			txtf("UpdateLine", "Left", "Speed: " .. (math.round((workspace.Train.TrainControls.Spedometer.SurfaceGui.ImageLabel.Gauge.Rotation - 120) / 163 * 65 * 10) / 10) .. " s/s")
		end
		if vals.ShowFuel then
			txtf("UpdateLine", "Left", "Fuel: " .. (math.round((workspace.Train.Fuel.Value / 240) * 1000) / 10) .. "%")
		end
	end
	if vals.ShowTimeLeft then
		if txtf("GetText", "Left") ~= "" then
			txtf("UpdateLine", "Left", "")
		end
		txtf("UpdateLine", "Left", "Timer: " .. formatTime(math.max(600 - workspace.DistributedGameTime, 0)))
	end
	if vals.ShowPlayingTimer then
		if txtf("GetText", "Left") == "" and not vals.ShowTimeLeft then
			txtf("UpdateLine", "Left", "")
		end
		txtf("UpdateLine", "Left", "Playing: " .. formatTime(workspace.DistributedGameTime))
	end
	
	if vals.FB then
		game.Lighting.Ambient = Color3.new(1, 1, 1)
		game.Lighting.Brightness = 1.5
	end
	if vals.NC then
		plr.CameraMode = Enum.CameraMode.Classic
	end
	if void then
		workspace.FallenPartsDestroyHeight = vals.NoVoid and 0/0 or -500
	end
	plr.DevCameraOcclusionMode = vals.NC and Enum.DevCameraOcclusionMode.Invisicam or Enum.DevCameraOcclusionMode.Zoom
	game.Lighting.GlobalShadows = not vals.FB
	if vals.AutoCollectBags then
		for i,v in prompts do
			if v and v.Parent then
				fireproximityprompt(v)
			else
				remove(prompts, v)
			end
		end
	end
	if vals.AutoThrottle and workspace:FindFirstChild("Train") and workspace.Train.TrainControls.ConductorSeat:FindFirstChild("VehicleSeat") and math.abs(workspace.Train.TrainControls.ConductorSeat.VehicleSeat.Throttle) == 0 then
		workspace.Train.TrainControls.ConductorSeat.VehicleSeat.Throttle = 1
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
	return p .. " studs"
end})
page:AddToggle({Caption = "Noclip", Default = false, Callback = function(b)
	vals.Noclip = b
end})
page:AddSeparator()
page:AddToggle({Caption = "No void (fix death when falling under map)", Default = false, Callback = function(b)
	vals.NoVoid = b
end})
page:AddSeparator()
page:AddButton({Caption = "Teleport to train [No TP = click that button again]", Callback = function()
	if workspace:FindFirstChild("Train") and  workspace.Train.TrainControls.ConductorSeat:FindFirstChild("VehicleSeat") then
		local oldPos = workspace.Train.TrainControls.ConductorSeat.VehicleSeat:GetPivot()

		repeat
			sit(workspace.Train.TrainControls.ConductorSeat.VehicleSeat)
			task.wait(0.01)
		until workspace.Train.TrainControls.ConductorSeat.VehicleSeat:FindFirstChild("SeatWeld")

		workspace.Train.TrainControls.ConductorSeat.VehicleSeat:PivotTo(oldPos)
	else
		lib.Notifications:Notification({Title = "Uh-oh!", Text = "Looks like the train is way too far away"})
	end
end})
page:AddButton({Caption = "Teleport to end [No TP = click that button again]", Callback = tpEnd})
page:AddToggle({Caption = "Auto complete game", Default = false, Callback = function(b)
	vals.AutoComplete = b
end})

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

page:AddSeparator()

page:AddToggle({Caption = "Auto throttle", Default = false, Callback = function(b)
	vals.AutoThrottle = b
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

local page = window:AddPage({Title = "Killaura"})

page:AddToggle({Caption = "Gun kill aura", Default = false, Callback = function(b)
	vals.GKA = b
end})
page:AddToggle({Caption = "Faster gun kill aura", Default = false, Callback = function(b)
	vals.FastKillaura = b
end})
page:AddLabel({Text = "^^^ might leave 1-2 shoot zombies, careful"})
page:AddSeparator()
page:AddToggle({Caption = "Melee kill aura (auto shovel)", Default = false, Callback = function(b)
	vals.MA = b
end})
page:AddSlider({Caption = "Gun killaura radius", Default = vals.KAR, Min = 10, Max = 3000, Step = 1, Callback = function(b)
	vals.KAR = b >= 2751 and 1488_228 or b >= 2501 and 2500 or b
end, CustomTextDisplay = function(i)
	return (tonumber(i) >= 2751 and "Infinite" or tonumber(i) >= 2501 and "2500" or i) .. " studs"
end})
--[[page:AddSeparator()
page:AddToggle({Caption = "Kill aura " .. (hmm and gncm and "and Silent aim " or "") .. "check line of sight (raycast)", Default = false, Callback = function(b)
	vals.Raycast = b
end})
page:AddLabel({Caption = "Better dont enable ^^^ because unstable"})]]

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

	page:AddToggle({Caption = "Save bullets", Default = false, Callback = function(b)
		vals.SaveBullets = b
	end})
	page:AddLabel({Caption = "Better dont ^^^ this because unstable + can't kill animals"})
	page:AddLabel({Caption = "Save bullets cancels the shoot if theres no alive zombies around"})
	page:AddSeparator()
end

local page = window:AddPage({Title = "Trolling"})

page:AddButton({Caption = "Throw object", Callback = throw})
page:AddSlider({Caption = "Throw power", Default = vals.ThrowPower, Min = 10, Max = 10000, Step = 1, Callback = function(b)
	vals.ThrowPower = b
end})
page:AddLabel({Caption = "Try throwing a friend's corpse XD"})

page:AddSeparator()

page:AddButton({Caption = "Glitch train", Callback = function()
	if workspace:FindFirstChild("Train") and workspace.Train.TrainControls.ConductorSeat:FindFirstChild("VehicleSeat") then
		local old = plr.Character:GetPivot()
		
		plr.Character:PivotTo(old + Vector3.new(0, 5))
		task.wait(0.02)
		plr.Character:PivotTo(workspace.Train.TrainControls.ConductorSeat.VehicleSeat:GetPivot())
		task.wait(0.02)
		plr.Character:PivotTo(old)

		task.wait(0.1)

		plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	else
		lib.Notifications:Notification({Title = "Uh-oh!", Text = "Looks like the train is way too far away"})
	end
end})

espFunc(workspace:WaitForChild("Train", 9e9), {HighlightEnabled = false, Color = Color3.fromRGB(55, 65, 65), Text = "Train", ESPName = "Train (the most useful)ESP"})
