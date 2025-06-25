local defaults = {
	AntiEyefestation = false,
	AntiSquid = false,
	PickLights = false,
	FixGeneratorsLegit = false,
	AutoPick = false,
	ESP = {
		DocumentESP = false,
		TurretESP = false,
		GeneratorESP = false,
		["Fake LockerESP"] = false,
		["Fake DoorESP"] = false,
		DoorESP = false,
		EyefestationESP = false,
		SearchlightsESP = false,
		MonsterESP = false,
		LeverESP = false,
		SquiddleESP = false,
		["Wall DwellerESP"] = false,
		LootsESP = false,
		RachjumperESP = false,
		["Other MonstersESP"] = false
	},
	side = "Left",
	FB = false,
	II = false,
	AutoFixGenerators = false,
	TeleportToGenerators = false,
	StopAutoplayOnGambling = false,
	DropTool = false,
	DoTween = false,
	StopAutoplayOnPS = false,
	PickDocuments = false,
	SebastianYapping = false,
	DoorReach = false,
	APA = false,
	SWAH = false,
	AutoPande = false,
	AntiTurret = false,
	NoDamage = false,
	FlashSeb = false,
	CumDist = 0,
	AntiBouncer = false,
	AntiPande = false,
	AntiMonsterLocker = false,
	PAOAPE = false,
	AntiSkeleton = false,
	AutoPlay = false,
	AntiFishHead = false,
	AntiSearchlights = false,
	AntiMonsterStatue = false,
	AntiLandmine = false,
	AntiTripwire = false,
	AntiDeathAngel = false,
	NoFriends = false,
	AutoCard = false,
	AntiFake = false,
	SaveFromMonster = false,
	infhp = false,
	AutoPlayMoney = false,
	AutoHide = false,
	AutoPlayTools = false,
	ShowCurrentRoom = false,
	NoVoid = false,
	Notify = false,
	NotifyChatM = "{monster} has spawned!",
	NotifyChatF = "Chainsmoker=Chain; Wall Dweller=Dweller; Bouncer=None; Statue=None; Skeleton Head=None; RottenWallDweller=Dweller",
	NotifyChat = false,
	AntiParasite = false,
	AntiSkelepede = false,
	AutoTrigger = false,
	NoDMG = false,
	Noclip = false,
	Speed = 0,
	GodMode = not not (typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G).GodMode
}

local vals = table.clone(defaults)
vals.ESP = table.clone(defaults.ESP)

local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if game.PlaceId == 12411473842 then
	return loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Pressure-Lobby/Main.lua"))()
end

local closed = false
local blocked = {}
local cons = {}

local function blockInstance(object, values, reverse)
	if not object or not object.Parent or blocked[object] then return end
	
	blocked[object] = true
	values = values:split("/")

	local old = object.Parent
	local function doBlock()
		local doBlock = false
		for _, val in values do
			doBlock = (not reverse and vals[val] or reverse and not vals[val])
			if doBlock then break end
		end
		
		return doBlock
	end
	local function update()
		local targetPar = not doBlock() and old or nil
		
		if object.Parent ~= targetPar then
			object.Parent = targetPar
		end
	end
	local function try()
		object.Parent = old
	end
	
	local checking = false
	
	pcall(update)
	cons[#cons+1] = object:GetPropertyChangedSignal("Parent"):Connect(function()
		if checking then return end
		update()
	end)
	
	while not closed and task.wait(1) do
		checking = true
		if not old or not old.Parent or not pcall(try) and (object.Parent ~= old or not object.Parent) then
			break
		end
		checking = false
		
		pcall(update)
	end
	
	task.wait(1)
	
	pcall(try)
end

getGlobalTable().MaxPlayers = game.ReplicatedStorage.MaxPlayers.Value
getGlobalTable().FireHubLoaded = true

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Fire-Lib/Main.lua", true))()
local espLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/ESP/Main.lua", true))()
local txtf = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Side-Text/Main.lua"))()

espLib.Values = vals.ESP
local function espFunc(...)
	task.wait()
	game["Run Service"].RenderStepped:Wait()
	task.wait()
	game["Run Service"].RenderStepped:Wait()
	espLib.ApplyESP(...)
end
local applyESP = function(...)
	task.spawn(espFunc, ...)
end

local plr = game.Players.LocalPlayer

local function rs(times)
	local times = math.max(math.round(tonumber(times) or 1), 1)
	local dt = 0
	for i=1, times do
		dt = dt + game["Run Service"].RenderStepped:Wait()
	end
	return dt / times
end

if not workspace:FindFirstChild("Monsters") then
    Instance.new("Folder", workspace).Name = "Monsters"
end

local dropBtn = game:GetService("Players").LocalPlayer.PlayerGui.Main.Controls.Mobile.BaseControls:FindFirstChild("Drop")
if not dropBtn then
	dropBtn = game:GetService("Players").LocalPlayer.PlayerGui.Main.Controls.Mobile.BaseControls.BindKey1:Clone()
	dropBtn.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Controls.Mobile.BaseControls
	dropBtn.Visible = false
	dropBtn.Name = "Drop"
	dropBtn.Position = UDim2.fromScale(0.481, -1.413)
	dropBtn.Icon.Image = "rbxassetid://14786143679"
end

cons[#cons+1] = dropBtn.Activated:Connect(function()
	if plr and plr.Character then
		local tool = plr.Character:FindFirstChildOfClass("Model")
		if tool then
			game.ReplicatedStorage.Events.DropItem:FireServer(tool.Name)
		end
	end
end)

local cd = {}
local fppn = false
local fpp = getfenv().fireproximityprompt

if fpp then
	pcall(function()
		task.spawn(function()
			local pp = Instance.new("ProximityPrompt", game.Players.LocalPlayer.Character)
			local con; con = pp.Triggered:Connect(function()
				print("fppn")
				con:Disconnect()
				pp:Destroy()
				fppn = true
			end)
			task.wait(0.1)
			fpp(pp)
			task.wait(1.5)
			if pp and pp.Parent then
				pp:Destroy()
				print("fppb")
				con:Disconnect()
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
	game["Run Service"].RenderStepped:Wait()
	obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
	game["Run Service"].RenderStepped:Wait()
	obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
	pp:InputHoldBegin()
	game["Run Service"].RenderStepped:Wait()
	pp:InputHoldEnd()
	game["Run Service"].RenderStepped:Wait()
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
local function canGetPivot(pp)
	return pp.Parent.GetPivot
end
local fireproximityprompt = function(pp)
	if typeof(pp) ~= "Instance" or not pp:IsA("ProximityPrompt") or not pcall(canGetPivot, pp) or cd[pp] or not workspace.CurrentCamera or ((game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart or workspace.CurrentCamera).CFrame.Position - pp.Parent:GetPivot().Position).Magnitude > pp.MaxActivationDistance then return end
	if fppn then
		return fpp(pp)
	end
	task.spawn(fppFunc, pp)
end
local function isLightSource(obj)
	return not not (obj.Name:lower():match("light") or obj.Name:match("Lantern") or obj.Name:match("FlashBeacon"))
end
local framework, health = getGlobalTable().pframework, nil
local function hasEverything(v) return v.Main.Health.CurrentHealth end
if getfenv().getgc and not framework then
	for i,v in getfenv().getgc(true) do
		if typeof(v) == "table" and pcall(hasEverything) and tonumber(v.Main.Health.CurrentHealth) then
			framework = v
			break
		end
	end
	getGlobalTable().pframework = framework
end
local td = false
task.spawn(function()
	if framework and getfenv().hookfunction then
		health = framework.Main.Health
		td = true
	end
end)

local Not = {}
local function notifyMonster(monster, text)
	if vals.Notify then
		Not.Title = monster
		Not.Text = text
		task.spawn(lib.Notifications.Notification, lib.Notifications, Not)
	end
	if vals.NotifyChat then
		local formatted = vals.NotifyChatM:gsub("{monster}", monster)
		for i,v in vals.NotifyChatF:split("; ") do
			local s = v:split("=")
			if s[2] == "None" and monster:lower():match(s[1]:lower()) then return end
			formatted = formatted:gsub(s[1], s[2])
		end
		task.spawn(game.TextChatService.TextChannels.RBXGeneral.SendAsync, game.TextChatService.TextChannels.RBXGeneral, formatted)
	end
end
local gm
local interacts = {}
local monsterLockers = {}
local function addFunction(t,v)
	if v == nil or typeof(t) ~= "table" then return end
	local i = 1
	local add = 1
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
local function removeFunc2(t,v)
	table.remove(t, table.find(v))
end
local function removeFunc(t,v)
	pcall(removeFunc2, t, v)
end
local function remove(t,v)
	task.spawn(removeFunc, t, v)
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
	local amnt = 0
	for i,v in t do
		if typeof(v) == "Instance" and v.Parent ~= nil or typeof(v) ~= "Instance" and v ~= nil then
			return v
		end
	end
	return amnt
end

local function insertCum(str)
	local new = str:gsub("(%u)", " %1")
	if new:sub(1, 1) == " " then
		new = new:sub(2)
	end
	
	return new:gsub("  ", " ")
end
local function getColor(v)
	if v.Name:match("Currency") then
		return Color3.new((v:GetAttribute("Amount") or 5)/75, 150/255, 50/255)
	elseif v.Name:lower():match("keycard") then
		local type = v.Name:lower():gsub("keycard","")
		return type == "normal" and Color3.new(0, 1-(1/3), 1) or type == "inner" and Color3.new(1-(1/3), 1/3, 0.5) or Color3.new(1, 1-(1/3), 0)
	elseif v.Name == "CodeBreacher" then
		return Color3.new(0.7, 0.1, 0.025)
	elseif v.Name == "Medkit" then
		return Color3.new(0.3, 1, 0.4)
	elseif v.Name:lower():match("document") then
		return Color3.new(0.4, 0.2, 0.5)
	elseif v.Name:match("Battery") then
		return Color3.new(0.6, 0.4, 0.2)
	elseif v.Name == "Blacklight" then
		return Color3.new(0.3, 0.1, 0.6)
	elseif v.Name == "SPRINT" then
		return Color3.new(0.5, 0.5, 0.9)
	elseif isLightSource(v) then
		return Color3.new(1, 1, 0.5)
	elseif v.Name == "Relic" then
		return Color3.new(1, 0.1, 0.4)
	elseif v.Name:sub(1,2) == "GY" then
		return Color3.new(150/255, (v:GetAttribute("Amount") or 5)/75, 50/255)
	end
	return Color3.new(1,1,1)
end
local function getText(v)
	if v.Name:match("Currency") or v.Name:sub(1,2) == "GY" then
		return v:GetAttribute("Amount").."$"
	elseif v.Name:lower():match("keycard") then
		return "Keycard"
	elseif v.Name:lower():match("battery") then
		return "Battery"
	elseif v.Name == "SPRINT" then
		return "Adrenaline"
	elseif isLightSource(v) then
		return insertCum(v.Name:gsub("Big", "Large"):gsub("Large", ""):gsub("Small", ""):gsub("(%u)", " %1"))
	elseif v.Name == "Relic" then
		return "500$"
	end
	return insertCum(v.Name)
end

cons[#cons+1] = game.ProximityPromptService.PromptButtonHoldBegan:Connect(function(pp)
	if vals.II then
		fireproximityprompt(pp)
	end
end)

local generators = {}
local searchlights = {}
local fakeDoors = {}
local damageParts = {}
local shootEvents = {}
local monsters = {}
local locks = {}
local switches = {}
local triggers = {}
local invisibleParts = {}
local doors = {}
local puzzles = {}
local dwellers = {}
local lockers = {}
local documents = {}

local applied = {}

-- esp is creating too much tables, fixing that ;)

local ps = {Text = "Party Special", HighlightEnabled = true, Color = Color3.new(0.44, 0.11, 0.66), ESPName = "Party SpecialESP"}
local ml = {HighlightEnabled = true, Color = Color3.fromRGB(255, 50, 150), Text = "Monster Locker", ESPName = "Fake LockerESP"}
local fd = {HighlightEnabled = true, Color = Color3.new(0.9, 0.1, 0.2), Text = "Fake Door", ESPName = "Fake DoorESP"}
local te = {HighlightEnabled = true, Color = Color3.new(0.7, 0.7, 0.8), Text = "Turret", ESPName = "TurretESP"}
local de = {HighlightEnabled = true, Color = Color3.new(0, 0.6, 1), Text = "Door", ESPName = "DoorESP"}
local omg = {}
local ef = {HighlightEnabled = true, Text = "Eyefestation", ESPName = "EyefestationESP"}
local sq = {HighlightEnabled = true, Color = Color3.fromRGB(34, 9, 28), Text = "Squiddle", ESPName = "SquiddleESP"}
local sl = {HighlightEnabled = true, Color = Color3.fromRGB(220, 183, 59), Text = "Searchlights", ESPName = "SearchlightsESP"}
local wd = {Text = "Wall Dweller", HighlightEnabled = true, Color = Color3.new(0.9, 0.1, 0.2), ESPName = "Wall DwellerESP"}
local vt = {Text = "Valve", HighlightEnabled = false, Color = Color3.new(0.7, 0.7, 0.7), ESPName = "DoorESP"}

-- same with notifications
local tubepuzzle = {Title = "Tube puzzle", Text = "Hate tube puzzles? I too!\nTake one ;)"}
local gambling = {Title = "Let's go gambling!", Text = "Heeey, look who is here!!"}
local event = {Title = "Event", Text = "You passed event!\nReenabling godmode..."}

local genMax = 92
local function eyefestationLoop(w)
	repeat task.wait() until w and w:FindFirstChild("Active") and w.Active.Value or not w
	if not w then return end
	while w and w.Parent and w:FindFirstChild("Active") and not closed do
		w.Active.Value = not vals.AntiEyefestation
		task.wait()
	end
end
local function offGodMode(w)
	local par = w.Parent.Parent
	while w and w.Parent and w.Parent.Parent and w.Parent.Parent == par do
		task.wait()
	end
	gm:Set(true)
end
local eventRooms = {
	--["SearchlightsEncounter"] = true
}

local scanned = {}
local function mainFunc(w)
	if w and w:IsDescendantOf(workspace) and w.Parent ~= workspace and w.Parent and not scanned[w] then
		task.wait()
		if not w or not w.Parent then return end
		
		scanned[w] = true
		if w.Name == "ProxyPart" and w.Parent:IsA("Model") then
			if w.Parent.Name:match("Document") or w.Parent.Parent:IsA("BasePart") then
				if w.Parent.Parent.Name ~= "ShopSpawn" then
					add(interacts, w)
					if w.Parent.Name:match("Document") then
						add(documents, w)
					end
				end
				local txt = (getText(w.Parent) or w.Parent.Name:gsub("Document", " Document"))
				local obj = omg[txt] or {HighlightEnabled = false, Color = getColor(w.Parent), Text = txt, ESPName = w.Parent.Name:match("Document") and "DocumentESP" or "LootsESP"}
				omg[txt] = obj

				applyESP(w.Parent, obj)
			elseif w.Parent.Name == "Drink" then
				applyESP(w, ps)
				if vals.StopAutoplayOnPS then
					ap:Set(false)
				end
			end	
		elseif w.Name == "highlight" then
			add(monsterLockers, w.Parent)
			applyESP(w.Parent, ml)
		elseif w.Name == "Door" and w.Parent.Name == "TricksterDoor" then
			add(fakeDoors, w.Parent.Parent:FindFirstChild("RemoteEvent"))
			applyESP(w, fd)
		elseif w.Name == "Shoot" and w.Parent.Name:match("TurretSpawn") and not w:GetAttribute("Fake") then
			add(shootEvents, w)
			applyESP(w.Parent:FindFirstChild("Turret"), te)
		elseif w.Name == "OpenValue" and w:FindFirstAncestorOfClass("Folder") and w:FindFirstAncestorOfClass("Folder").Name == "Entrances" then
			add(doors, w.Parent)
			applyESP(w.Parent:FindFirstChild("Door") or w.Parent, de)
		elseif w.Name == "LandmineSpawn" then
			task.spawn(blockInstance, w, "AntiLandmine")
		elseif w.Name == "Fixed" and w:IsA("IntValue") and w.Parent:IsA("Model") then
			task.wait(0.1)
			if w and w.Parent and w.Value ~= 100 then
				local mod = w.Parent:FindFirstChild("Model") or w.Parent
				if w.Value == 100 or not w or not w.Parent or not w.Parent:FindFirstChild("ProxyPart") then
					espLib.DeapplyESP(mod)	
				else
					applyESP(mod, {HighlightEnabled = true, Object = w.Parent:FindFirstChild("Model"), Color = Color3.new(0.7, 0.5, 1), Text = (w.Parent.Name == "BrokenCables" and "Broken Cables" or "Broken Generator") .. "\n[" .. string.format("%03d", w.Value):gsub("", " "):sub(2):sub(0, 5) .. "]", ESPName = "GeneratorESP"})
					add(generators, w.Parent)
					cons[#cons+1] = w.Changed:Connect(function(val)
						if val >= genMax or not w or not w.Parent  or not w.Parent:FindFirstChild("ProxyPart") or not w.Parent.ProxyPart:FindFirstChild("ProximityPrompt") then
							espLib.DeapplyESP(mod)
						else
							applyESP(mod, {HighlightEnabled = true, Object = w.Parent:FindFirstChild("Model"), Color = Color3.new(0.7, 0.5, 1), Text = (w.Parent.Name == "BrokenCables" and "Broken Cables" or "Broken Generator") .. "\n[" .. string.format("%03d", w.Value):gsub("", " "):sub(2):sub(0, 5) .. "]", ESPName = "GeneratorESP"})
						end
					end)
				end
			end
		elseif w.Name == "Eyefestation" and (w.Parent.Name == "EyefestationSpawn" or w.Parent.Name == "EyefestationRoot") then
			notifyMonster("Eyefestation", "Eyefestation has spawned!\nAvoid looking at it!")
			if vals.GodMode and w.Parent.Name == "EyefestationRoot" and gm then
				if gm.Value then
					task.spawn(offGodMode, w)
				end
			end
			ef.Color = w.NonAnimated.LeftEye.Color
			applyESP(w, ef)
			task.spawn(eyefestationLoop, w)
			local noAnim = w:WaitForChild("NonAnimated", 0.1)
			local function fake()
				local fake = Instance.new("Folder", w)
				fake.Name = "NonAnimated"
			end
			if not noAnim then return fake() end
			noAnim:WaitForChild("LeftEye", 1)
			if not noAnim or not noAnim:FindFirstChild("LeftEye") then return fake() end
			cons[#cons+1] = noAnim.LeftEye.Changed:Connect(function()
				if not w or not w.Parent then return end
				ef.Color = w.NonAnimated.LeftEye.Color
				applyESP(w, ef)
			end)
		elseif w.Name == "LeverPull" then
			local colored = w.Parent.Parent:WaitForChild("Colored", 1)
			if colored then
				cons[#cons+1] = colored.Changed:Connect(function()
					if not w or not w.Parent then return end
					applyESP(w.Parent.Parent, {HighlightEnabled = true, Color = (colored and colored.Color or Color3.fromRGB(0, 167, 97)), Text = "Lever", ESPName = "LeverESP"})
				end)
			end
			applyESP(w.Parent.Parent, {HighlightEnabled = true, Color = (colored and colored.Color or Color3.fromRGB(0, 167, 97)), Text = "Lever", ESPName = "LeverESP"})
			if not w.Parent:WaitForChild("ProximityPrompt", 1) then return end
			add(switches, w.Parent)
		elseif w.Name == "Tentacle10" then
			applyESP(w.Parent, sq)
			task.spawn(blockInstance, w.Parent, "AntiSquid/GodMode/AutoPlay")
		elseif w.Name:match("DamagePart") or (w.Name == "Electricity" and w:IsA("BasePart")) then
			add(damageParts, w)
		elseif w.Name == "RemoteEvent" and w.Parent.Name:lower():match("searchlight") then
			add(searchlights, w)
		elseif w.Name == "KeycardUnlock" then
			applyESP(w.Parent.Parent, {HighlightEnabled = true, Color = w.Parent.Parent:WaitForChild("Part", 1) and w.Parent.Parent.Part.Color or Color3.new(0, 0.6, 1), Text = "", ESPName = "DoorESP"})
			add(locks, w.Parent.Parent:FindFirstChild("ProxyPart") and w.Parent.Parent.ProxyPart:WaitForChild("ProximityPrompt", 1) or w.Parent:WaitForChild("ProximityPrompt", 2))
		elseif w.Name == "Enter" and w.Parent:IsA("Folder") and w.Parent.Parent:IsA("Model") and w.Parent.Parent.Name ~= "MonsterLocker" then
			for i,v in monsterLockers do
				if v == w.Parent.Parent then
					return
				end
			end
			add(lockers, w.Parent)
		elseif w.Name == "BlockPart" or w.Name:lower():match("invisible") or w.Name == "Boundaries" then
			add(invisibleParts, w)
		elseif w.Name == "RFin" then
			applyESP(w.Parent, sl)
		elseif w.Name == "TouchInterest" and w.Parent.Name:match("Trigger") then
			add(triggers, w.Parent)
		elseif w.Name == "Tripwire" and w:IsA("Model") then
			task.wait()
			task.spawn(blockInstance, w, "AntiTripwire/GodMode/AutoPlay")
		elseif w.Name == "ProximityPrompt" then
			if w.Parent.Parent.Name == "FinalButton" then
				add(switches, w.Parent)
				applyESP(w, {Text = "Finish Game", Color = Color3.fromRGB(125, 50, 255), ESPName = "DoorESP", HighlightEnabled = false})
			end
		elseif w.Name == "VentCover" and w:IsA("BasePart") then
			add(switches, w)
		elseif (w.Parent.Name == "WallDweller" or w.Parent.Name == "RottenWallDweller") and w.Parent:IsA("Model") and w.Name == "RemoteEvent" and w:IsA("RemoteEvent") then
			notifyMonster("Wall Dweller", "Wall Dweller has spawned!\nTurn around!")
			applyESP(w.Parent, wd)
			add(dwellers, w)
		elseif w.Name == "puzzle" then
			if vals.Notify then
				lib.Notifications:Notification(tubepuzzle)
			end
			add(puzzles, w.Parent)
		elseif w.Name == "ValveTurn" then
			task.wait()
			applyESP(w.Parent, vt)
			add(switches, w.Parent)
		elseif w.Parent == workspace.Monsters and w.Name ~= "WallDweller" then
			applyESP(w, {Text = w.Name:gsub("H", " H"):gsub("Root", ""), HighlightEnabled = true, Color = Color3.new(0.9, 0.1, 0.2), ESPName = "Other MonstersESP"})
			notifyMonster(w.Name:gsub("H", " H"):gsub("Root", "").."", w.Name:gsub("H", " H"):gsub("Root", "").." has spawned!\nI dunno who is tat :sob:")
		elseif w:IsA("Beam") and w.Parent:IsA("Part") then
			task.wait(0.05)
			if w and w.Parent and w.Parent:FindFirstChildOfClass("Sound") and w.Parent:FindFirstChildOfClass("Attachment") and w.Parent.Parent == workspace and not applied[w.Parent] then
				applied[w.Parent] = true
				notifyMonster(w.Parent.Name:gsub("Ridge", "").."", not w.Parent.Name:match("Pandemonium") and w.Parent.Name:gsub("Ridge", "").." has spawned!\nHide!" or "Pandemonium has spawned!\nRolling ballz time ;)")
				if w.Parent.Name:match("Pandemonium") and (vals.AntiPande or vals.GodMode or vals.AutoPlay) then
					task.wait(1)
					w.Parent:Destroy()
				elseif (w.Parent.Name:lower():match("death") or w.Parent.Name:lower():match("harbringer")) and (vals.AntiDeath or vals.GodMode or vals.AutoPlay) then
					task.wait(1)
					w.Parent:Destroy()
				else
					add(monsters, w)
					applyESP(w.Parent, {Text = w.Parent.Name:gsub("Ridge", "").."", HighlightEnabled = true, Color = Color3.new(0.9, 0.1, 0.2), ESPName = "MonsterESP"})
					local con; con = w.Destroying:Connect(function()
						con:Disconnect()
						remove(monsters, w)
					end)
				end
			end
		elseif w.Name == "SkeletonDancer" and vals.AntiSkeleton then
			task.wait()
			w:Destroy()
		elseif w.Name == "rachjumper" or w.Name == "Rach" then
			if vals.Notify then
				lib.Notifications:Notification(gambling)
			end
			workspace.Rooms.ChildAdded:Wait()
			applyESP(w, {Text = "Rachjumper", HighlightEnabled = true, Color = Color3.new(0.44, 0, 0.66), ESPName = "RachjumperESP"})
		elseif w.Name == "UnboxChest" then
			applyESP(w, {Text = "Gambling Chest", HighlightEnabled = true, Color = Color3.new(0.66, 0.33, 0), ESPName = "RachjumperESP"})
			if vals.StopAutoplayOnGambling then
				ap:Set(false)
			end
		end
	elseif w and w.Parent == workspace and w.Name == "Statue" then
		applyESP(w.Parent, {Text = "Statue", HighlightEnabled = true, Color = Color3.new(0.9, 0.1, 0.2), ESPName = "Other MonsterESP"})
	end
end

local dsc = workspace:GetDescendants()
local len = #dsc

for i,v in dsc do
	task.spawn(mainFunc, v)
end

local god

cons[#cons+1] = workspace.Rooms.ChildAdded:Connect(function(room)
	if eventRooms[room.Name] then
		workspace.Rooms.ChildAdded:Wait()
		if vals.GodMode then
			lib.Notification(event)
			vals.GodMode = false
			getGlobalTable().GodMode = false
			god()
		end
	end
end)

cons[#cons+1] = workspace.DescendantAdded:Connect(mainFunc)

local function canCarry(v)
	if not v or v:FindFirstChild("LeverPull", math.huge) or v.Name == "ToyRemote" or not v:FindFirstChild("ProximityPrompt", math.huge) or not v:FindFirstChild("ProximityPrompt", math.huge).Enabled then
		return false
	end
	if v.Name:match("Document") then
		return false
	end
	if v:GetAttribute("Price") then return false end
	if (isLightSource(v) and not vals.PickLights) then
		return false
	end
	if v.Name:lower():match("battery") then
		return plr.PlayerFolder.Batteries.Value < 5
	end
	if not plr.PlayerFolder.Inventory:FindFirstChild(v.Name:gsub("Small", "Big"):gsub("Big", "").."") then
		if v:GetAttribute("InteractionType") == "KeyCard" and (plr.PlayerFolder.Inventory:FindFirstChild("NormalKeyCard") or plr.PlayerFolder.Inventory:FindFirstChild("RidgeKeyCard")) then
			return false
		end
		return true
	else
		if v.Name:match("KeyCard") then
			return false
		end

		local item = plr.PlayerFolder.Inventory:FindFirstChild(v.Name:gsub("Small", "Big"):gsub("Big", "").."")

		local res = false
		local doesExist = false
		local function check(attr)
			if v:GetAttribute(attr) then
				doesExist = true
				res = item.Value < v:GetAttribute(attr)
			end
		end

		check("Charge")
		check("Uses")

		if doesExist then
			return res
		end

		if game.ReplicatedStorage.EquipableItems:FindFirstChild(v.Name:gsub("Small", "Big"):gsub("Big", "").."") and game.ReplicatedStorage.EquipableItems[v.Name:gsub("Small", "Big"):gsub("Big", "")..""]:GetAttribute("MaxStack") then
			return plr.PlayerFolder.Inventory[v.Name:gsub("Small", "Big"):gsub("Big", "")..""].Value < game.ReplicatedStorage.EquipableItems[v.Name:gsub("Small", "Big"):gsub("Big", "")..""]:GetAttribute("MaxStack")
		end
	end
	return true
end

local fixing = false

local tweenId = -2.14e9
local function tweenChar(pos)
	tweenId = tweenId + 1
	
	local myId = tweenId
	local step = math.max(100 - (plr.Character:GetPivot().Position - pos.Position).Magnitude, 0.75) / 10
	
	for i=1, 100, step do
		plr.Character:PivotTo(plr.Character:GetPivot():Lerp(pos, i / 100))
		task.wait(0.01)
		if myId ~= tweenId or not vals.DoTween or closed then return end
	end
	plr.Character:PivotTo(pos)
end
local function teleport(pos)
	if vals.DoTween then
		task.spawn(tweenChar, pos)
	else
		plr.Character:PivotTo(pos)
	end
end

local function fix(gen)
	if (vals.TeleportToGenerators or vals.AutoPlay) and plr.Character then
		teleport(gen:GetPivot() - (gen:GetPivot().LookVector * 4))
		plr.Character.HumanoidRootPart.Velocity = Vector3.new()
	end
end
local function fixGenerator(gen)
	if fixing or not (vals.AutoFixGenerators or vals.AutoPlay) then return false end
	if gen.Parent.Parent.Name == "SearchlightsEncounter" and not workspace.Rooms.SearchlightsEncounter.Interactables.EntranceDoor.BigDoor.OpenValue.Value then return end
	if not gen or not gen:FindFirstChild("RemoteEvent") or not gen:FindFirstChild("RemoteFunction") or not gen:FindFirstChild("Fixed") then return end
	if gen.Fixed.Value >= genMax then return true end
	gen.RemoteFunction:InvokeServer()
	local i = 20
	repeat
		i = i + 1
		if i == 50 then
			gen.RemoteFunction:InvokeServer()
			i = 0
		end
		gen.RemoteEvent:FireServer(true)
		pcall(fix, gen)
		task.wait(0.03)
	until not gen or not gen:FindFirstChild("RemoteEvent") or not gen:FindFirstChild("RemoteFunction") or not gen:FindFirstChild("Fixed") or gen.Fixed.Value >= genMax or not (vals.AutoFixGenerators or vals.AutoPlay)
	if fixing or not (vals.AutoFixGenerators or vals.AutoPlay) then return false end
	if not gen or not gen:FindFirstChild("RemoteEvent") or not gen:FindFirstChild("RemoteFunction") or not gen:FindFirstChild("Fixed") then return end
	if gen.Fixed.Value >= genMax then return true end
end

local cool = game:GetService("Players").LocalPlayer.PlayerGui.Main.FixMinigame.Background.Frame.Middle
local pande = game:GetService("Players").LocalPlayer.PlayerGui.Main.PandemoniumMiniGame.Background.Frame.circle
local pos = pande.Position

local goodColors = {[Color3.fromRGB(0, 255, 102)] = true, [Color3.fromRGB(71, 175, 255)] = true}
local errs = 0

local function restart()
	if plr.Character and plr.Character:FindFirstChild("Humanoid") then
		plr.Character.Humanoid.Health = -10
	end
	game.ReplicatedStorage.Events.PlayAgain:FireServer()
end
task.spawn(function()
	while not closed and task.wait() do
		local fixed = false
		if not vals.GodMode and count(monsters) ~= 0 and (vals.AutoPlay or vals.AutoHide) and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
			local old = plr.Character:GetPivot()
			local object
			local con = game["Run Service"].RenderStepped:Connect(function()
				if vals.SWAH and object and object.Parent then
					local piv = object:GetPivot()
					workspace.CurrentCamera.CFrame = CFrame.lookAt(piv.Position - (workspace.CurrentCamera.CFrame.LookVector * (vals.CumDist + 7.5)), piv.Position) + Vector3.new(0, 5)
				end
			end)
			local mustHide = true
			while mustHide and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") do
				mustHide = false
				for i,v in monsters do
					if v and v.Parent then
						if not object or not object.Parent or object.Parent:GetPivot().Position.Y < 700 and v.Parent:GetPivot().Position.Y > 700 then
							object = v.Parent
						end
						if v.Parent:GetPivot().Position.Y > 700 then
							mustHide = true
						end
					end
				end
				plr.Character:PivotTo(old + Vector3.new(0, 1000))
				plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 5)
				task.wait()
			end
			con:Disconnect()
			task.wait(0.5)
			if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
				plr.Character:PivotTo(old)
				plr.Character.HumanoidRootPart.Velocity = Vector3.new()
			end
		end
		if vals.AutoFixGenerators and not vals.AutoPlay then
			local old = plr and plr.Character and plr.Character:GetPivot() or CFrame.new()
			for i,v in generators do
				if v and v.Parent then
					local res = fixGenerator(v)
					if res == true or res == nil then
						generators[i] = nil
						fixed = true
					end
				else
					generators[i] = nil
				end
			end
			if fixed then
				if plr and plr.Character then
					plr.Character:PivotTo(old)
					plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 5)
					task.wait()
				end
			end
		end
		if vals.AutoPlay then
			local s,e = pcall(autoPlayLoop)
			if not s and vals.PAOAPE or #puzzles > 0 and vals.AutoPlay and vals.PAOAPE then
				if not s then
					errs = errs + 1
					if errs > 100 then
						lib.Notifications:Notification({Title = "Auto play error", Text = errs.." / 100\nRestarting autoplay."})
						errs = 0
						vals.APA = true
						plr.Character.Humanoid.Health = -10
					else
						lib.Notifications:Notification({Title = "Auto play error", Text = errs.." / 100\n\n"..e})
					end
				else
					restart()
				end
			end
		end
	end
end)
task.spawn(function()
	while task.wait() do
		if vals.FixGeneratorsLegit then
			if cool.Parent.Parent.Parent.GroupTransparency ~= 1 then
				local num = (cool.Pointer.Rotation - cool.Circle.Rotation) % 360
				if num > 1 and num < 44 then
					game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
					task.wait()
					game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game)
					task.wait(0.3)
				end
			end
		end
	end
end)

local doorsHistory = {}
local blockDoors = {}
local blockLevers = {}

local hadKeycard = false
local godQueue = false
local teleported = false

local function blockLever()
	task.wait(3.5)
	blockLevers[doorsHistory[#doorsHistory-1].Lever] = true
end
function autoPlayLoop()
	if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") and not godQueue then
		if #puzzles > 0 then
			local mustTeleport = false
			for i,v in puzzles do
				if v and v.Parent and task.wait(0.001) --[[prevert bugs]] and v:FindFirstChild("Ends") and v:FindFirstChild("") then
					local allGreen = true
					for idx, val in v.Ends:GetChildren() do
						if val and val:FindFirstChild("LightPart") and val.Color ~= Color3.fromRGB(0, 167, 97) then
							allGreen = false
						end
					end
					if allGreen then
						puzzles[i] = nil
					else
						mustTeleport = v
					end
				else
					puzzles[i] = nil
				end
			end
			if mustTeleport then
				if not teleported then
					teleported = true
					task.wait(1)
					teleport(mustTeleport.Main.CFrame + (mustTeleport.Main.CFrame.LookVector*10))
				end
				return
			end
		end
		teleported = false
		if vals.AutoPlay then
			if
				workspace.Rooms:FindFirstChild("SearchlightsEncounter") and
				workspace.Rooms.SearchlightsEncounter:FindFirstChild("Interactables") and
				workspace.Rooms.SearchlightsEncounter.Interactables:FindFirstChild("EntranceDoor") and
				workspace.Rooms.SearchlightsEncounter.Interactables.EntranceDoor:FindFirstChild("BigDoor") and
				workspace.Rooms.SearchlightsEncounter.Interactables.EntranceDoor.BigDoor:FindFirstChild("OpenValue") and
				not workspace.Rooms.SearchlightsEncounter.Interactables.EntranceDoor.BigDoor.OpenValue.Value and
				workspace.Rooms.SearchlightsEncounter.Interactables.EntranceDoor.BigDoor:FindFirstChild("Root") and
				workspace.Rooms.SearchlightsEncounter.Interactables.EntranceDoor.BigDoor.Root:FindFirstChild("ProximityPrompt")
			then
				teleport(workspace.Rooms.SearchlightsEncounter.Interactables.EntranceDoor.BigDoor.Root:GetPivot())
				fireproximityprompt(workspace.Rooms.SearchlightsEncounter.Interactables.EntranceDoor.BigDoor.Root.ProximityPrompt)
				return
			end

			local old = plr and plr.Character and plr.Character:GetPivot() or CFrame.new()
			local fixed = false
			for i,v in generators do
				if v and v.Parent then
					local res = fixGenerator(v)
					if res == true or res == nil then
						generators[i] = nil
						fixed = true
					end
				else
					generators[i] = nil
				end
			end
			if fixed then
				if plr and plr.Character then
					teleport(old)
					plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 5)
					task.wait()
				end
			end
		end

		local pickedUp = false
		for i,v in interacts do
			if v and v.Parent then
				if v:FindFirstChild("ProximityPrompt") and canCarry(v.Parent) then
					if v and v.Parent and not isLightSource(v.Parent) and ((getText(v.Parent):match("%$") and vals.AutoPlayMoney or not getText(v.Parent):match("%$")) or (not v.Parent.Name:lower():match("keycard") and vals.AutoPlayTools or v.Parent.Name:lower():match("keycard"))) then
						teleport(v:GetPivot())
						plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 5)
						pickedUp = true
						break
					end
				end
			else
				interacts[i] = nil
			end
		end

		if not pickedUp then
			if hadKeycard and not plr.Character:FindFirstChild("NormalKeyCard") then
				game.ReplicatedStorage.Events.Equip:FireServer("NormalKeyCard")
				local atts = 0
				repeat task.wait(0.01) atts = atts + 1 until plr.Character:FindFirstChild("NormalKeyCard") or atts >= 100
			end
			if plr.Character:FindFirstChild("NormalKeyCard") then
				hadKeycard = true
			end

			local zat = false
			if workspace.Rooms:FindFirstChild("SearchlightsEnding") then
				zat = workspace.Rooms:FindFirstChild("0After200") ~= nil
			end

			if not zat then
				local door = getLastDoor()
				if door then
					if not table.find(doorsHistory, door.Parent.Parent) then
						doorsHistory[#doorsHistory+1] = door.Parent.Parent
					end
					if doorsHistory[#doorsHistory-1] and doorsHistory[#doorsHistory-1]:FindFirstChild("Lever") and doorsHistory[#doorsHistory-1].Lever:FindFirstChild("Colored") and doorsHistory[#doorsHistory-1].Lever.Colored.Color == Color3.fromRGB(0, 167, 97) and not blockLevers[doorsHistory[#doorsHistory-1].Lever] then
						door = doorsHistory[#doorsHistory-1].Lever
					elseif doorsHistory[#doorsHistory-1] and doorsHistory[#doorsHistory-1]:FindFirstChild("Lever") and not blockLevers[doorsHistory[#doorsHistory-1].Lever] then
						task.spawn(blockLever)
					end
					plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 50)
					teleport(door:GetPivot() + Vector3.new(math.random(-100, 100),0,math.random(-100, 100))/20)
				end
			else
				if workspace.Rooms:FindFirstChild("SearchlightsEnding") then
					if workspace.Rooms.SearchlightsEnding:FindFirstChild("Lever") and workspace.Rooms.SearchlightsEnding.Lever.Colored.Color == Color3.fromRGB(0, 167, 97) and workspace.Rooms.SearchlightsEnding.Lever.Highlight.ProximityPrompt then
						plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 50)
						teleport(workspace.Rooms.SearchlightsEnding.Lever.Colored:GetPivot())
					elseif workspace.Rooms.SearchlightsEnding:FindFirstChild("Lever2") and workspace.Rooms.SearchlightsEnding.Lever2.Colored.Color == Color3.fromRGB(0, 167, 97) and workspace.Rooms.SearchlightsEnding.Lever2.Highlight.ProximityPrompt.Enabled then
						plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 50)
						teleport(workspace.Rooms.SearchlightsEnding.Lever2.Colored:GetPivot())
					elseif workspace.Rooms.SearchlightsEnding:FindFirstChild("TriggerLever") and workspace.Rooms.SearchlightsEnding.TriggerLever.Colored.Color == Color3.fromRGB(0, 167, 97) and workspace.Rooms.SearchlightsEnding.TriggerLever.Highlight.ProximityPrompt then
						plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 50)
						teleport(workspace.Rooms.SearchlightsEnding.TriggerLever.Colored:GetPivot())
					else
						plr.Character.HumanoidRootPart.Velocity = Vector3.new(0, 50)
						teleport(workspace.Rooms.SearchlightsEnding.ExitSubmarine.FinalButton.Highlight:GetPivot())
					end
				end
			end
		end
		task.wait(0.3)
	end
end

local conns = {}
local humCon
local roomNum = 0
local blockedFriends = {}
task.spawn(blockInstance, game.ReplicatedStorage.Events.LocalDamage, "NoDamage/GodMode")
task.spawn(function()
	roomNum = game.ReplicatedStorage.Events.CurrentRoomNumber:InvokeServer()
end)
cons[#cons+1] = game["Run Service"].RenderStepped:Connect(function()
	plr.PlayerGui.Main.LopeeGlitch.Visible = false
	txtf("ClearText")
	if vals.ShowCurrentRoom then
		txtf("UpdateLine", vals.side, "Current room: "..(string.format("%03d", roomNum)))
	end
	txtf("UpdateLine", vals.side, "")
	game.Lighting.Ambient = vals.FB and Color3.new(1,1,1) or Color3.new()
	game.Lighting.Brightness = vals.FB and 1 or 0
	game.Lighting.GlobalShadows = not vals.FB

	if workspace.CurrentCamera then
		workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame - (workspace.CurrentCamera.CFrame.LookVector * vals.CumDist)
	end
	if plr.Character then
		if plr.Character:FindFirstChildOfClass("Humanoid") then
			if not conns[plr.Character.Humanoid] then
				conns[plr.Character.Humanoid] = plr.Character.Humanoid.Died:Connect(function()
					task.wait(1)
					if vals.APA and not game.ReplicatedStorage.PlayAgain.List:FindFirstChild(plr.Name) then
						restart()
					end
				end)
			end
			plr.Character.Humanoid.WalkSpeed = (16 + vals.Speed) / (plr.Crouching.Value and 1.6 or 1)
		end
		if plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.HumanoidRootPart:FindFirstChild("LinearVelocity") and plr.Character.HumanoidRootPart.LinearVelocity.VectorVelocity.Magnitude <= 28 then
			plr.Character.HumanoidRootPart.LinearVelocity.VectorVelocity = plr.Character.HumanoidRootPart.LinearVelocity.VectorVelocity * (vals.Speed + 20) / 22.5
		end
		if vals.Noclip or vals.AutoPlay then
			for i,v in plr.Character:GetDescendants() do
				if v and v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		else
			if plr.Character:FindFirstChild("HumanoidRootPart") then
				plr.Character.HumanoidRootPart.CanCollide = true
			end
		end
		if vals.AutoTrigger or vals.AutoPlay then
			for i,v in triggers do
				if v and v.Parent then
					v:PivotTo(plr.Character:GetPivot())
				end
			end
		end
	end
	if vals.AutoPick or vals.AutoPlay then
		for i,v in interacts do
			if v and v.Parent then
				if v:FindFirstChild("ProximityPrompt") and canCarry(v.Parent) and (vals.AutoPlay and vals.AutoPlayTools or vals.AutoPlay and getText(v.Parent):match("%$") or vals.AutoPlay and not isLightSource(v.Parent) or not vals.AutoPlay) or canCarry(v.Parent) and v.Parent.Name:lower():match("keycard") then
					fireproximityprompt(v.ProximityPrompt)
				end
			else
				interacts[i] = nil
			end
		end
	end
	if vals.PickDocuments or vals.AutoPlay then
		for i,v in documents do
			if v and v.Parent then
				if v:FindFirstChild("ProximityPrompt") then
					fireproximityprompt(v.ProximityPrompt)
				end
			else
				documents[i] = nil
			end
		end
	end
	if workspace:FindFirstChild("FriendPart") and not blockedFriends[workspace.FriendPart] then
		blockedFriends[workspace.FriendPart] = true
		task.spawn(blockInstance, workspace.FriendPart, "NoFriends")
	end
	workspace.FallenPartsDestroyHeight = (vals.NoVoid or vals.GodMode) and 0/0 or -500
	if vals.OtherPick or vals.AutoPlay then
		for i,v in switches do
			if v and v.Parent then
				if v:FindFirstChild("ProximityPrompt") then
					fireproximityprompt(v.ProximityPrompt)
				end
			else
				switches[i] = nil
			end
		end
	end
	if vals.AutoCard or vals.AutoPlay then
		for i,v in locks do
			if v and v.Parent then
				fireproximityprompt(v)
			else
				locks[i] = nil
			end
		end 
	end
	if vals.AntiParasite or vals.GodMode or vals.AutoPlay then
		game.ReplicatedStorage.Events.ParasiteShakeOff:FireServer()
	end
	if vals.NoDMG or vals.GodMode or vals.AutoPlay then
		for i,v in damageParts do
			if v and v.Parent then
				task.spawn(blockInstance, v, "NoDMG/GodMode/AutoPlay")
			else
				damageParts[i] = nil
			end
		end
	end
	if vals.NoInvisible then
		for i,v in invisibleParts do
			if v and v.Parent then
				task.spawn(blockInstance, v, "NoInvisible")
			else
				invisibleParts[i] = nil
			end
		end
	end
	dropBtn.Visible = vals.DropTool and plr.Character ~= nil and plr.Character:FindFirstChildOfClass("Model") ~= nil or false
	if vals.AntiTurret or vals.GodMode or vals.AutoPlay then
		for i,v in shootEvents do
			if v and v.Parent then
				task.wait()
				local fake = Instance.new("RemoteEvent", v.Parent)
				fake.Name = v.Name
				fake:SetAttribute("Fake", true)

				task.spawn(blockInstance, v, "AntiTurret/GodMode/AutoPlay")
				task.spawn(blockInstance, v, "AntiTurret/GodMode/AutoPlay", true)
			else
				shootEvents[i] = nil
			end
		end
	end
	if vals.AntiSkelepede or vals.GodMode or vals.AutoPlay then
		if workspace:FindFirstChild("Monsters") and workspace.Monsters:FindFirstChild("SkeletonHead") then
			task.spawn(blockInstance, workspace.Monsters.SkeletonHead, "AntiSkelepede/GodMode/AutoPlay")
		end
	end
	if vals.AntiFishHead or vals.GodMode or vals.AutoPlay then
		if workspace:FindFirstChild("Monsters") and workspace.Monsters:FindFirstChild("FishHead") then
			task.spawn(blockInstance, workspace.Monsters.FishHead, "AntiFishHead/GodMode/AutoPlay")
		end
	end
	if vals.AntiBouncer or vals.GodMode or vals.AutoPlay then
		if workspace:FindFirstChild("Monsters") and workspace.Monsters:FindFirstChild("Bouncer") then
			task.spawn(blockInstance, workspace.Monsters.Bouncer, "AntiBouncer/GodMode/AutoPlay")
		end
	end
	if vals.AntiMonsterStatue or vals.GodMode or vals.AutoPlay then
		if workspace:FindFirstChild("Monsters") and workspace.Monsters:FindFirstChild("StatueRoot") then
			task.spawn(blockInstance, workspace.Monsters.StatueRoot, "AntiMonsterStatue/GodMode/AutoPlay")
		end
		if workspace:FindFirstChild("Statue") then
			task.spawn(blockInstance, workspace.Statue, "AntiMonsterStatue/GodMode/AutoPlay")
		end
	end
	if vals.AntiSearchlights or vals.GodMode or vals.AutoPlay then
		for i,v in searchlights do
			if v and v.Parent then
				task.spawn(blockInstance, v, "AntiSearchlights/GodMode/AutoPlay")
			else
				searchlights[i] = nil
			end
		end
	end
	if vals.AntiFake or vals.GodMode or vals.AutoPlay then
		for i,v in fakeDoors do
			if v and v.Parent then
				task.spawn(blockInstance, v, "AntiFake/GodMode/AutoPlay")
			else
				fakeDoors[i] = nil
			end
		end
	end
	if vals.AutoPande then
		pande.Position = pos
	end
	for i,v in monsterLockers do
		if v and v.Parent then
			if v:FindFirstChild("ProximityPrompt") and v:FindFirstChild("highlight") then
				if v.highlight:FindFirstChild("Highlight") then
					v.ProximityPrompt.Enabled = true
					if vals.SaveFromMonster then
						fireproximityprompt(v.ProximityPrompt)
					end
				else
					v.ProximityPrompt.Enabled = not vals.AntiMonsterLocker
				end
			end
		else
			monsterLockers[i] = nil
		end
	end
	if vals.SebastianYapping then
		game.ReplicatedStorage.Events.ShopKeycard:FireServer(plr)
	end
	if vals.DoorReach then
		for i,v in doors do
			if v and v.Parent then
				if v:FindFirstChild("Root") and v.Root:FindFirstChild("ProximityPrompt") then
					fireproximityprompt(v.Root.ProximityPrompt)
				end
			else
				doors[i] = nil
			end
		end
	end
	if game.ReplicatedStorage.Events:FindFirstChild(vals.FlashSeb and "FlashMode" or "NotFlashMode") or vals.GodMode then
		(game.ReplicatedStorage.Events:FindFirstChild("FlashMode") or game.ReplicatedStorage.Events:FindFirstChild("NotFlashMode")).Name = vals.FlashSeb and "NotFlashMode" or "FlashMode"
	end
	roomNum = game.ReplicatedStorage.Events.CurrentRoomNumber:InvokeServer()
end)

local sounds = game.ReplicatedStorage.Sounds
local function playSound(sound)
	game.ReplicatedStorage.Events.PlaySound:FireServer(sound)
end

local resetSt = game.ReplicatedStorage.Events.ResetStatus
task.spawn(blockInstance, resetSt, "GodMode")

local function resetStatus()
	local old = vals.GodMode
	vals.GodMode = false
	resetSt.Parent = game
	resetSt:FireServer()
	vals.GodMode = old
	resetSt.Parent = nil
end

function god()
	if godQueue then return end
	godQueue = true
	local locker
	resetStatus()
	repeat task.wait()
		for i,v in lockers do
			if v and v:FindFirstChild("Enter") and v:FindFirstChild("OpenValue") and v.Parent then
				if v.OpenValue.Value == "" or v.OpenValue.Value == "exit" then
					locker = v
					break
				end
			else
				lockers[i] = nil
			end
		end
	until locker or closed or not vals.GodMode
	if not locker or closed or not vals.GodMode then return end
	local oldPos = plr.Character:GetPivot()
	teleport(CFrame.lookAt(locker.Parent:GetPivot().Position + (locker.Parent:GetPivot().LookVector * 3), locker.Parent:GetPivot().Position))
	task.wait(0.5)
	local ti = tick()
	repeat
		teleport(CFrame.lookAt(locker.Parent:GetPivot().Position + (locker.Parent:GetPivot().LookVector * 3), locker.Parent:GetPivot().Position))
		locker.Enter:InvokeServer(true)
		task.wait()
	until locker or not vals.GodMode and locker.Parent and locker:FindFirstChild("OpenValue") and locker.OpenValue.Value == "enter" or not locker or not locker.Parent or not locker:FindFirstChild("OpenValue") or closed or tick() - ti > 2
	if not locker or not vals.GodMode or not locker.Parent or not locker:FindFirstChild("OpenValue") or locker.OpenValue.Value ~= "enter" or closed then return end
	teleport(oldPos)
	godQueue = false
end

local function setHealth(h)
	health.CurrentHealth = h
	health.Heal(h)
end
local window = lib:MakeWindow({Title = "NullFire: Pressure", CloseCallback = function()
	getGlobalTable().FireHubLoaded = false
	for i,v in defaults.ESP do
		espLib.ESPValues[i] = v
	end
	for i,v in defaults do
		vals[i] = v
	end
	rs(3)
	for i,v in cons do
		if v then
			v:Disconnect()
		end
	end
	closed = true
end}, true)

local page = window:AddPage({Title = "Character"})
page:AddSlider({Caption = "Speed boost", Default = 0, Min = 0, Max = 100, Step = 1, Callback = function(v)
	vals.Speed = v
	plr.Character.Humanoid.WalkSpeed = 0
end})
page:AddToggle({Caption = "Noclip", Default = false, Callback = function(b)
	vals.Noclip = b
	plr.Crouching.Value = not plr.Crouching.Value
	task.wait(0.2)
	plr.Crouching.Value = not plr.Crouching.Value
end})
page:AddToggle({Caption = "Anti invisible walls", Default = false, Callback = function(b)
	vals.NoInvisible = b
end})
page:AddSeparator()
page:AddToggle({Caption = "Auto trigger events", Default = false, Callback = function(b)
	vals.AutoTrigger = b
end})
function getLastDoor()
	local rooms = workspace.Rooms:GetChildren()
	for i,v in rooms do
		if v and v:FindFirstChild("Entrances") and v:FindFirstChild("Lights") and v.Lights:FindFirstChild("Sign") then
			local door = v.Entrances:FindFirstChildOfClass("Model")
			if door and (door:FindFirstChild("OpenValue") and not door.OpenValue.Value or door:FindFirstChild("NormalDoor") and door.NormalDoor:FindFirstChild("OpenValue") and not door.NormalDoor.OpenValue.Value) and door:FindFirstChild("Exit") and door.Exit.Value and door.Exit.Value:IsDescendantOf(workspace.Rooms) then
				local thatRoomNum
				for idx,val in v.Lights:GetChildren() do
					if val and val.Name == "Sign" and val:FindFirstChild("SurfaceGui") and val.SurfaceGui:FindFirstChild("TextLabel") and not goodColors[val.SurfaceGui.TextLabel.TextColor3] then
						thatRoomNum = tonumber(val.SurfaceGui.TextLabel.Text)
					end 
				end
				if thatRoomNum then
					if thatRoomNum == roomNum then
						local lock = door:FindFirstChild("Lock", math.huge)
						return lock and lock:FindFirstChild("Main") or door
					end
				end
			end
		end
	end

	local high, top = -1, nil
	for i,v in rooms do
		if v and v:FindFirstChild("Entrances") then
			local door = v.Entrances:FindFirstChildOfClass("Model")
			if door and (door:FindFirstChild("OpenValue") and not door.OpenValue.Value or door:FindFirstChild("NormalDoor") and door.NormalDoor:FindFirstChild("OpenValue") and not door.NormalDoor.OpenValue.Value) and door:FindFirstChild("Exit") and door.Exit.Value and door.Exit.Value:IsDescendantOf(workspace.Rooms) then
				local found = table.find(doorsHistory, door)
				if not found then
					return door
				else
					if found > high then
						high = found
						top = door
					end
				end
			end
		end
	end

	if top then
		return top
	end

	for i,v in rooms do
		if v and v:FindFirstChild("Entrances") then
			local door = v.Entrances:FindFirstChildOfClass("Model")
			if door and (door:FindFirstChild("OpenValue") and not door.OpenValue.Value or door:FindFirstChild("NormalDoor") and door.NormalDoor:FindFirstChild("OpenValue") and not door.NormalDoor.OpenValue.Value) and door:FindFirstChild("Exit") and door.Exit.Value and door.Exit.Value:IsDescendantOf(workspace.Rooms) then
				return door
			end
		end
	end
end

page:AddToggle({Caption = "No damage", Default = false, Callback = function(b)
	if b then
		game.CollectionService:AddTag(game.Players.LocalPlayer, "GodMode")
	else
		game.CollectionService:RemoveTag(game.Players.LocalPlayer, "GodMode")
	end
	vals.NoDamage = b
end})

if health and td then
	page:AddButton({Caption = "Regenerate health [semi-patched]", Default = true, Callback = function(b)
		setHealth(100)
	end})
	page:AddButton({Caption = "Kill", Default = true, Callback = function(b)
		plr.Character.Humanoid.Health = -10
		setHealth(-1)
		lib.Notifications:Notification({Title = "Kill", Text = "Killed character!"})
	end})
end
page:AddButton({Caption = "Teleport to the door", Callback = function()
	teleport(getLastDoor():GetPivot())
end})
page:AddSeparator()
page:AddToggle({Caption = "Tween character instead of teleporting", Default = false, Callback = function(b)
	vals.DoTween = b
end})

local page = window:AddPage({Title = "Anti monster"})
gm = page:AddToggle({Caption = "God Mode", Default = vals.GodMode, Callback = function(b)
	vals.GodMode = b
	getGlobalTable().GodMode = b
	if b then
		god()
	else
		godQueue = false
		resetStatus()
	end
end})

if pcall(function() workspace.FallenPartsDestroyHeight = workspace.FallenPartsDestroyHeight end) then
	page:AddToggle({Caption = "No void", Default = false, Callback = function(b)
		vals.NoVoid = b
	end})
	page:AddSeparator()
end

page:AddToggle({Caption = "Auto hide", Default = false, Callback = function(b)
	vals.AutoHide = b
end})
page:AddToggle({Caption = "Spectate monster while autohiding", Default = false, Callback = function(b)
	vals.SWAH = b
end})
--page:AddToggle({Caption = "Hide in lockers", Default = false, Callback = function(b)
--	vals.AutoHideLocker = b
--end})
page:AddToggle({Caption = "Auto Pandemonium minigame", Default = false, Callback = function(b)
	vals.AutoPande = b
end})
page:AddToggle({Caption = "Remove imaginary friend (why?)", Default = false, Callback = function(b)
	vals.NoFriends = b
end})
page:AddSeparator()
page:AddToggle({Caption = "Anti monster locker", Default = false, Callback = function(b)
	vals.AntiMonsterLocker = b
end})
page:AddToggle({Caption = "Anti Pandemonium", Default = false, Callback = function(b)
	vals.AntiPande = b
end})
page:AddToggle({Caption = "Anti Eyefestation", Default = false, Callback = function(b)
	vals.AntiEyefestation = b
end})
page:AddToggle({Caption = "Anti Searchlights", Default = false, Callback = function(b)
	vals.AntiSearchlights = b
end})
page:AddToggle({Caption = "Anti Trickster (Good People)", Default = false, Callback = function(b)
	vals.AntiFake = b
end})
page:AddToggle({Caption = "Anti Squiddle", Default = false, Callback = function(b)
	vals.AntiSquid = b
end})
page:AddToggle({Caption = "Anti Tripwire", Default = false, Callback = function(b)
	vals.AntiTripwire = b
end})
page:AddToggle({Caption = "Anti Landmine", Default = false, Callback = function(b)
	vals.AntiLandmine = b
end})
page:AddToggle({Caption = "Anti parasites", Default = false, Callback = function(b)
	vals.AntiParasite = b
end})
page:AddToggle({Caption = "Anti Death Angel", Default = false, Callback = function(b)
	vals.AntiDeathAngel = b
end})
page:AddToggle({Caption = "Anti Sebastian", Default = false, Callback = function(b)
	vals.FlashSeb = b
end})
page:AddToggle({Caption = "Anti turret", Default = false, Callback = function(b)
	vals.AntiTurret = b
end})
page:AddToggle({Caption = "Anti damage parts", Default = false, Callback = function(b)
	vals.NoDMG = b
end})
page:AddToggle({Caption = "Anti Fish Head", Default = false, Callback = function(b)
	vals.AntiFishHead = b
end})
page:AddToggle({Caption = "Anti Skelepede (HALOWEEN)", Default = false, Callback = function(b)
	vals.AntiSkelepede = b
end})
page:AddToggle({Caption = "Anti Bouncer (HALOWEEN)", Default = false, Callback = function(b)
	vals.AntiBouncer = b
end})
page:AddToggle({Caption = "Anti Candlebearer (HALOWEEN)", Default = false, Callback = function(b)
	vals.AntiMonsterStatue = b
end})
page:AddSeparator()

local page = window:AddPage({Title = "Auto interact"})
page:AddToggle({Caption = "Auto pick up loots", Default = false, Callback = function(b)
	vals.AutoPick = b
end})
page:AddToggle({Caption = "Pick up light sources", Default = false, Callback = function(b)
	vals.PickLights = b
end})
page:AddToggle({Caption = "Interact with levers and vents", Default = false, Callback = function(b)
	vals.OtherPick = b
end})
page:AddToggle({Caption = "Auto pick up documents", Default = false, Callback = function(b)
	vals.PickDocuments = b
end})
page:AddToggle({Caption = "Auto interact with card readers", Default = false, Callback = function(b)
	vals.AutoCard = b
end})
page:AddToggle({Caption = "Instant interact", Default = false, Callback = function(b)
	vals.II = b
end})
page:AddToggle({Caption = "Auto save mates from monster locker", Default = false, Callback = function(b)
	vals.SaveFromMonster = b
end})

local page = window:AddPage({Title = "Auto"})
ap = page:AddToggle({Caption = "Auto play [After update it became ultra unstable]", Default = false, Callback = function(b)
	vals.AutoPlay = b
end})
page:AddToggle({Caption = "Fix doors not opening [Can speed up autoplay]", Default = false, Callback = function(b)
	vals.DoorReach = b
end})
page:AddToggle({Caption = "Pick up money", Default = false, Callback = function(b)
	vals.AutoPlayMoney = b
end})
page:AddToggle({Caption = "Pick up loots", Default = false, Callback = function(b)
	vals.AutoPlayTools = b
end})
page:AddToggle({Caption = "Stop autoplay on gambling room", Default = false, Callback = function(b)
	vals.StopAutoplayOnGambling = b
end})
page:AddToggle({Caption = "Stop autoplay on party special", Default = false, Callback = function(b)
	vals.StopAutoplayOnPS = b
end})
page:AddToggle({Caption = "Auto play again", Default = false, Callback = function(b)
	vals.APA = b
end})
page:AddToggle({Caption = "Play again on autoplay errors / tube puzzle", Default = false, Callback = function(b)
	vals.PAOAPE = b
end})
page:AddSeparator()
page:AddToggle({Caption = "Auto fix generator minigame", Default = false, Callback = function(b)
	vals.FixGeneratorsLegit = b
end})
page:AddToggle({Caption = "Auto fix generator", Default = false, Callback = function(b)
	vals.AutoFixGenerators = b
end})
page:AddToggle({Caption = "Teleport to generators", Default = false, Callback = function(b)
	vals.TeleportToGenerators = b
end})

local page = window:AddPage({Title = "Notifications"})
page:AddToggle({Caption = "Notify monsters", Default = false, Callback = function(b)
	vals.Notify = b
end})
page:AddSeparator()
page:AddToggle({Caption = "Notify monsters in chat", Default = false, Callback = function(b)
	vals.NotifyChat = b
end})
page:AddTextBox({Caption = "Chat message", Default = vals.NotifyChatM, Placeholder = "{monster} - monster name; \"{monster} has spawned!\"", Callback = function(t)
	vals.NotifyChatM = t
end})
page:AddTextBox({Caption = "Chat message format; None = Won't notify in chat", Default = vals.NotifyChatF, Placeholder = "monster_name=formatted_name\nmonster_name=None - Wont notify", Callback = function(t)
	vals.NotifyChatF = t
end})

local page = window:AddPage({Title = "Visual"})
page:AddToggle({Caption = "Show current room number", Default = false, Callback = function(b)
	vals.ShowCurrentRoom = b
end})
local t = {"Left", "Right", "Bottom", "Top"}
page:AddDropdown({Text = "Text side", Default = "Left", Rows = t, Callback = function(name)
	vals.side = t[name]
end})
page:AddSlider({Caption = "Camera zoom", Default = vals.CumDist, Min = 0, Max = 30, Step = 0.1, Callback = function(v)
	vals.CumDist = v
end})
page:AddSeparator()
page:AddToggle({Caption = "Full bright", Default = false, Callback = function(b)
	vals.FB = b
end})
page:AddSeparator()
local activated = false
if game.UserInputService.TouchEnabled and not game.UserInputService.MouseEnabled then
	page:AddToggle({Caption = "Mobile drop tool button", Default = false, Callback = function(b)
		vals.DropTool = b
	end})
end
page:AddToggle({Caption = "Gay ESP", Default = false, Callback = function(b)
	if not activated then activated = true return end
	espLib.ESPValues.RGBESP = b
end})
page:AddSeparator()
for i,v in vals.ESP do
	page:AddToggle({Caption = i:gsub("ESP", " ESP"), Default = v, Callback = function(b)
		espLib.ESPValues[i] = b
	end})
end

local page = window:AddPage({Title = "Extra"})
page:AddToggle({Caption = "Anti dancing skeletons (HALOWEEN)", Default = false, Callback = function(b)
	vals.AntiSkeleton = b
end})
page:AddToggle({Caption = "Make sebastian yap smth", Default = false, Callback = function(b)
	vals.SebastianYapping = b
end})
page:AddButton({Caption = "Play again", Callback = restart})

local obj = game.Players.LocalPlayer:WaitForChild("PlayerGui", 9e9):WaitForChild("Main", 9e9):WaitForChild("AfterDeath", 9e9)
cons[#cons+1] = obj.Changed:Connect(function()
	if vals.APA and not game.ReplicatedStorage.PlayAgain.List:FindFirstChild(plr.Name) and obj.Visible then
		restart()
	end
end)
