local defaults = {
	ESP = {
		DoorESP = false,
		CurrencyESP = false,
		ItemESP = false,
		MonsterESP = false,
	},

	AutoInputCode = false,
	TeleportToDoorLock = false,

	NoLocalDamage = false,
	AutoHide = false,

	AntiSearchlights = false,
	AntiEyefestation = false,

	ExtraPrompt = 0,
	InstantInteract = false,
	AutoGrabCurrency = false,
	NotifyMonsters = false,
	SpectateEntity = false,
	BetterDoors = false
}

local vals = table.clone(defaults)
vals.ESP = table.clone(defaults.ESP)

local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

getGlobalTable().GameName = "true"
getGlobalTable().FireHubLoaded = true

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Fire-Lib/Main.lua", true))()
local espLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/ESP/Main.lua", true))()
local txtf = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Side-Text/Main.lua", true))()
local network = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/Network/Main.lua", true))()

local fireproximityprompt = function(...)
	return network.Other:FireProximityPrompt(...)
end

local deleted = getGlobalTable().pressureBanReal
if deleted == nil and getfenv().getnilinstances then
	for _, v in getfenv().getnilinstances() do
		if v:IsA("RemoteFunction") then
			pcall(v.Destroy, v)
			deleted = true
		end
	end

	getGlobalTable().pressureBanReal = deleted
end

espLib.Values = vals.ESP

local rs = game:GetService("RunService")
local function render(times)
	local times = math.max(math.round(tonumber(times) or 1), 1)
	local dt = 0
	for i=1, times do
		dt = dt + rs.RenderStepped:Wait()
	end
	return dt / times
end

local spectateObject = nil
local viewOffset = Vector3.new()

local function renderWait(time)
	local start = tick()
	time = tonumber(time) or 0

	task.wait((time / 2) - render())
	task.wait((time / 2) - (render() * 2))
	render()

	return tick() - time
end

local function espFunc(...)
	renderWait()
	espLib.ApplyESP(...)
end

local function esp(...)
	task.spawn(espFunc, ...)
end

local closed = false
local cons = { }

local function getRoom(obj)
	repeat
		obj = obj:FindFirstAncestorOfClass("Model")
	until not obj or not obj.Parent or obj.Parent == workspace.GameplayFolder.Rooms or closed

	renderWait() -- so room loads
	return obj
end

local function waitUntil(object, name)
	while object and object.Parent and not vals[name] and not closed do
		render()
	end

	return object and object.Parent
end

local changedEvent = Instance.new("BindableEvent")

local function parentUpdate(a, b)
	a.Parent = b
end

local blockedEvents = { }
local copies = { }
local originalDistances = { }

local function blockInstance(object, condition, reversed, dontCreateClone)
	local oldParent = object.Parent
	local copy = nil

	if object:IsA("RemoteEvent") or object:IsA("RemoteFunction") or object:IsA("UnreliableRemoteEvent") then
		if not deleted and object.Parent.Name == "Events" then
			return
		end
		
		if not dontCreateClone then
			copy = object:Clone()
			copies[copy] = object
		end

		blockedEvents[object.Name] = object
	end

	while not closed do
		local targetParent = ((not reversed and (not vals[condition])) or (reversed and vals[condition])) and oldParent or nil
		if not pcall(parentUpdate, object, targetParent) or object.Parent ~= targetParent then
			break
		end

		if copy then
			copy.Parent = not object.Parent and oldParent or nil
		end

		changedEvent.Event:Wait()

		if not object then return end
	end

	if copy then
		copy:Destroy()
	end

	pcall(parentUpdate, object, oldParent)
end

local oldValues = table.clone(vals)

task.spawn(function()
	local idx = 0
	while task.wait(0.1) and not closed do
		idx = (idx + 1) % 149

		for i, v in vals do
			if oldValues[i] ~= v then
				changedEvent:Fire()
				
				for id, va in vals do
					oldValues[id] = va
				end
				
				break
			end
		end

		if idx == 0 then
			changedEvent:Fire()
		end
	end
end)

local plr = game:GetService("Players").LocalPlayer
local events = game:GetService("ReplicatedStorage").Events

task.spawn(blockInstance, events.LocalDamage, "NoLocalDamage")
local monsters = { }

local function waitUntilSafe()
	while #monsters ~= 0 do renderWait(0) end
end

local function bruteforce(obj, dontTP)
	waitUntilSafe()
	
	local tped = false
	local oldPosition = plr.Character:GetPivot()
	if vals.TeleportToDoorLock and not dontTP then
		tped = true
		plr.Character:PivotTo(obj:FindFirstAncestorOfClass("Model"):GetPivot())
		renderWait(0.025)
	end

	plr.Character.HumanoidRootPart.Anchored = true

	local atStart = false
	if obj and obj.Parent and not closed then
		for i=0, string.rep("9", ((obj:FindFirstAncestorOfClass("Model") or obj):GetAttribute("MaxIndex") or 4)) do
			if obj.Parent.KeycardUnlocking.Playing or obj.Parent.KeycardUnlock.Playing or obj:FindFirstAncestorOfClass("Model").Parent:FindFirstChild("OpenValue", math.huge).Value then
				atStart = i < 75
				break
			end
			
			if tped then
				plr.Character:PivotTo(obj:FindFirstAncestorOfClass("Model"):GetPivot())
			end

			task.spawn(obj.InvokeServer, obj, string.format("%04d", i))

			if i + 1 % 75 == 0 then
				render()
			end
		end
	end

	if not atStart then
		renderWait(2.5)
	end

	plr.Character.HumanoidRootPart.Anchored = false

	if tped then
		render()
		plr.Character:PivotTo(oldPosition)
	end
end

local function insertCum(str)
	local new = str:gsub("(%u)", " %1")
	if new:sub(1, 1) == " " then
		new = new:sub(2)
	end

	return new:gsub("  ", " "):gsub("_", "") .. ""
end

local lockers = { }
local searchlights = { }
local doors = { }
local doorCodes = { }

local function isLightSource(obj)
	local n = obj.Name:lower()
	return n:match("light") or n:match("flash") or n:match("lantern")
end

local function getColor(obj)
	local money = obj:GetAttribute("Amount")
	if money then
		return money <= 100 and Color3.fromRGB(85, 170, 127):Lerp(Color3.fromRGB(170, 170, 255), money / 100) or Color3.fromRGB(170, 170, 255):Lerp(Color3.fromRGB(255, 85, 0), (money - 100) / 400)
	elseif isLightSource(obj) then
		return obj.Name == "Blacklight" and Color3.fromRGB(170, 0, 255) or obj.Name == "Gummylight" and Color3.fromRGB(85, 255, 127) or obj.Name == "Splorglight" and Color3.fromRGB(170, 170, 255) or Color3.fromRGB(255, 200, 112)
	elseif obj.Name == "SPRINT" or obj.Name == "BlueToyRemote" then
		return Color3.fromRGB(0, 170, 255)
	elseif obj.Name == "HealthBoost" then
		return Color3.fromRGB(255, 100, 100)
	elseif obj.Name == "Medkit" then
		return Color3.fromRGB(200, 255, 170)
	elseif obj.Name == "CodeBreacher" or obj.Name == "ToyRemote" then
		return Color3.fromRGB(125, 0, 0)
	elseif obj.Name == "HighLight" then
		return Color3.fromRGB(170, 85, 255)
	elseif obj.Name == "Defib" then
		return Color3.fromRGB(85, 255, 255)
	elseif obj.Name:lower():match("crate") then
		return Color3.fromRGB(0, 170, 127)
	elseif obj.Name:lower():match("battery") then
		return Color3.fromRGB(170, 85, 0)
	end
	
	return Color3.new(0.8, 0.8, 0.8)
end

local function getText(obj)
	local money = obj:GetAttribute("Amount")
	if money then
		return "$" .. money
	elseif obj.Name == "SPRINT" then
		return "Sprint"
	elseif obj.Name == "HighLight" then
		return "Highlight"
	elseif obj.Name == "Defib" then
		return "Defibrillator"
	elseif obj.Name:lower():match("crate") then
		return "Crate"
	elseif obj.Name:lower():match("battery") then
		return "Battery"
	end
	
	return insertCum(obj.Name):gsub("Crate ", ""):gsub("Big ", ""):gsub("Large ", ""):gsub("Small ", "")
end

local notified = { }

local function onMonster(obj)
	if notified[obj] then return end
	notified[obj] = true
	
	if obj:IsA("Part") then -- is node monster
		table.insert(monsters, obj)
	end

	esp(obj, { HighlightEnabled = obj.Name == "Eyefestation", Color = Color3.fromRGB(255, 0, 0), Text = insertCum(obj.Name), ESPName = "MonsterESP" })

	if vals.NotifyMonsters then
		task.spawn(lib.Notifications.Notification, lib.Notifications, { Title = "Monster spawned", Text = insertCum(obj.Name) })
	end
	
	if (obj.Name:lower():match("eyefestation") or obj.Parent.Name:lower():match("eyefestation")) and vals.AntiEyefestation then
		local active = obj:WaitForChild("Active", 9e9)
		repeat task.wait() until active.Value
		active.Value = false
		renderWait(1)
		active.Value = false
		
		local eyes = obj:WaitForChild("NonAnimated", 9e9):WaitForChild("Eyes", 9e9)
		eyes.Changed:Connect(function()
			esp(obj, { HighlightEnabled = false, Color = eyes.Color, Text = insertCum(obj.Name), ESPName = "MonsterESP" })
		end)
		
		esp(obj, { HighlightEnabled = false, Color = eyes.Color, Text = insertCum(obj.Name), ESPName = "MonsterESP" })
	end
end

local e = game:GetService("ReplicatedStorage").Events.CurrentRoomNumber
local cr = e:InvokeServer()
task.spawn(function()
	while not closed do
		cr = e:InvokeServer()
	end
end)

local money = { }
local function object(obj)
	if obj and obj.Parent then
		if obj:IsA("Model") then
			if obj.Parent.Name == "Entrances" then
				esp(obj:WaitForChild("Door", 2.5) or obj, { HighlightEnabled = true, Color = obj:FindFirstChild("Lock", math.huge) and Color3.fromRGB(100, 175, 255) or Color3.fromRGB(0, 255, 100), Text = "Room " .. (cr + 1) .. (obj:FindFirstChild("Lock", math.huge) and "\n[ Locked ]" or ""), ESPName = "DoorESP" })
			elseif obj.Parent == workspace.GameplayFolder.Monsters or obj.Name == "Eyefestation" then
				onMonster(obj)
			end
		elseif obj:IsA("Sound") and obj.Parent:IsA("BasePart") and not obj.Parent.Name:lower():match("ambience") and obj.Parent.Name ~= "Part" and obj.Parent.Name ~= "Vent" and (obj.Parent.Parent == workspace or obj.Parent.Parent == workspace.GameplayFolder.Monsters) then
			onMonster(obj.Parent)
		elseif obj:IsA("ProximityPrompt") then
			originalDistances[obj] = obj.MaxActivationDistance
			obj.MaxActivationDistance *= (vals.ExtraPrompt / 100) + 1

			if obj.Parent.Name == "Root" and obj.Parent.Parent:IsA("Model") then
				doors[#doors + 1] = obj
			elseif obj.Parent.Name == "ProxyPart" and obj.Parent.Parent:IsA("Model") then
				local currency = obj.Parent.Parent:GetAttribute("Amount")
				if currency then
					table.insert(money, obj)
				end
				
				esp(obj.Parent.Parent, {HighlightEnabled = false, Color = getColor(obj.Parent.Parent), Text = getText(obj.Parent.Parent), ESPName = (currency and "Currency" or "Item") .. "ESP"})
			end
		elseif obj:IsA("RemoteEvent") then
			if obj.Parent:IsA("Part") and obj.Name == "RemoteEvent" and obj.Parent.Name:lower():match("searchlight") then
				task.spawn(blockInstance, obj, "AntiSearchlights")
				searchlights[#searchlights + 1] = obj
			end
		elseif obj:IsA("RemoteFunction") then
			if obj.Parent.Name == "Main" and obj.Name == "RemoteFunction" and obj.Parent.Parent and obj.Parent.Parent:FindFirstChild("Keypad0") then
				doorCodes[#doorCodes + 1] = obj
			end
			
			if obj.Name == "Enter" and obj.Parent:IsA("Folder") and obj.Parent.Parent and obj.Parent.Parent.Name == "Locker" then
				lockers[#lockers + 1] = obj.Parent.Parent
			elseif obj:FindFirstAncestorOfClass("Model") and obj:FindFirstAncestorOfClass("Model").Name == "Lock" then
				if not waitUntil(obj, "AutoInputCode") then return end

				repeat task.wait() until closed or not obj or not obj.Parent or not obj:FindFirstAncestorOfClass("Model") or vals.TeleportToDoorLock or (obj:FindFirstAncestorOfClass("Model"):GetPivot().Position - plr.Character:GetPivot().Position).Magnitude <= 9.5

				if not waitUntil(obj, "AutoInputCode") then return end

				local tped = false
				local oldPosition = plr.Character:GetPivot()
				if vals.TeleportToDoorLock then
					tped = true
					plr.Character:PivotTo(obj:FindFirstAncestorOfClass("Model"):GetPivot())
					renderWait(0.025)
				end

				plr.Character.HumanoidRootPart.Anchored = true

				local atStart = false
				if obj and obj.Parent and not closed then
					atStart = bruteforce(obj)
				end

				if not atStart then
					renderWait(2.5)
				end

				plr.Character.HumanoidRootPart.Anchored = false

				if tped then
					render()
					plr.Character:PivotTo(oldPosition)
				end
			end
		end
	end
end

for _, v in workspace:GetDescendants() do
	task.spawn(object, v)
end

cons[#cons + 1] = workspace.DescendantAdded:Connect(object)
cons[#cons + 1] = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
	if vals.InstantInteract then
		prompt:InputHoldEnd()
		task.wait()
		fireproximityprompt(prompt)
	end
end)

local oldPos
cons[#cons + 1] = rs.RenderStepped:Connect(function(dt)
	if vals.BetterDoors then
		for idx, doorPrompt in doors do
			if doorPrompt and doorPrompt.Parent then
				fireproximityprompt(doorPrompt, false)
			else
				table.remove(doors, idx)
				break
			end
		end
	end
	
	if vals.AutoGrabCurrency then
		for i, v in money do
			if not v or not v.Parent then
				table.remove(money, i)
				break
			else
				fireproximityprompt(v, false)
			end
		end
	end
	
	for i, v in monsters do
		if not v or not v.Parent then
			table.remove(monsters, i)
			break
		end
	end
	
	if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
		if vals.AutoHide then
			if #monsters > 0 then
				oldPos = oldPos or plr.Character:GetPivot()
				plr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new()
				plr.Character:PivotTo(oldPos + Vector3.new(0, 250))
				
				spectateObject = vals.SpectateEntity and monsters[1] or nil
				viewOffset = Vector3.new(0, 5)
			elseif oldPos then
				plr.Character:PivotTo(oldPos)
				oldPos = nil
			end
		end
	end
	
	if workspace.CurrentCamera and spectateObject and spectateObject.Parent then
		workspace.CurrentCamera.CFrame = CFrame.lookAt(spectateObject:GetPivot().Position + viewOffset - (workspace.CurrentCamera.CFrame.LookVector * 15), spectateObject:GetPivot().Position + viewOffset)
	else
		spectateObject = nil
	end
end)

local window = lib:MakeWindow({Title = "NullFire - Pressure", CloseCallback = function()
	for i, v in defaults.ESP do
		espLib.ESPValues[i] = v
	end

	for i, v in defaults do
		vals[i] = v
	end

	changedEvent:Fire()

	for prompt, original in originalDistances do
		prompt.MaxActivationDistance = original
	end

	renderWait()

	getGlobalTable().FireHubLoaded = false
	closed = true
	render(3)

	for i, v in cons do
		if v.Connected then
			v:Disconnect()
		end
	end

	for prompt, original in originalDistances do
		prompt.MaxActivationDistance = original
	end
end}, true)

local page = window:AddPage({Title = "! READ ME NOW !"})
page:AddLabel({Caption = "Because pressure has been updated, NullFire got patched"})
page:AddLabel({Caption = "At this moment script being fully rewrited"})
page:AddLabel({Caption = "Expect more features to be added"})

local page = window:AddPage({Title = "Bypasses"})
if deleted then
	page:AddToggle({Caption = "No damage", Default = false, Callback = function(b)
		vals.NoLocalDamage = b
	end})
	page:AddLabel({Caption = "NOTE: If your executor is bad (Solara, Xeno), better DON'T USE No Damage"})
	page:AddLabel({Caption = "Using No damage on a bad executor will have high risk of getting banned"})

	page:AddSeparator()
end

page:AddToggle({Caption = "Auto hide", Default = false, Callback = function(b)
	vals.AutoHide = b
end})
page:AddToggle({Caption = "Spectate entity while auto hiding", Default = false, Callback = function(b)
	vals.SpectateEntity = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Anti Searchlights", Default = false, Callback = function(b)
	vals.AntiSearchlights = b
end})
page:AddToggle({Caption = "Anti Eyefestation", Default = false, Callback = function(b)
	vals.AntiEyefestation = b
end})

local page = window:AddPage({Title = "Interact"})
page:AddToggle({Caption = "Auto loot currency", Default = false, Callback = function(b)
	vals.AutoGrabCurrency = b
end})
page:AddSeparator()
page:AddToggle({Caption = "Instant proximity prompt interact", Default = false, Callback = function(b)
	vals.InstantInteract = b
end})
page:AddToggle({Caption = "Notify monsters", Default = false, Callback = function(b)
	vals.NotifyMonsters = b
end})
page:AddSlider({Caption = "Extra proximity prompt activation range", Default = 0, Min = 0, Max = 100, Step = 0.25, Callback = function(b)
	vals.ExtraPrompt = b

	for prompt, original in originalDistances do
		prompt.MaxActivationDistance = original * ((b / 100) + 1)
	end
end, CustomTextDisplay = function(x)
	return "+ " .. math.floor(x) .. "%"
end})

page:AddSeparator()

page:AddToggle({Caption = "Open doors no matter what your camera rotation is", Default = false, Callback = function(b)
	vals.BetterDoors = b
end})
page:AddToggle({Caption = "Auto input door code (uses bruteforcing)", Default = false, Callback = function(b)
	vals.AutoInputCode = b
end})
page:AddToggle({Caption = "Teleport to enter code", Default = false, Callback = function(b)
	vals.TeleportToDoorLock = b
end})
page:AddButton({Caption = "Bruteforce closest door codelock (use keybind :D)", Callback = function(b)
	for _, door in doorCodes do
		print(door:GetFullName(), (door.Parent.Position - plr.Character:GetPivot().Position).Magnitude)
		if door and door.Parent and (door.Parent.Position - plr.Character:GetPivot().Position).Magnitude < 9.5 then
			bruteforce(door, true)
		end
	end
end})

local page = window:AddPage({Title = "Visual"})

local activated = false
page:AddToggle({Caption = "Rainbow ESP (MIGHT CAUSE FPS ISSUES)", Default = false, Callback = function(b)
	if not activated then activated = true return end
	espLib.ESPValues.RGBESP = b
end})

page:AddSeparator()

for i, v in vals.ESP do
	page:AddToggle({Caption = i:gsub("ESP", " ESP"):gsub("  ESP", " ESP"), Default = v, Callback = function(b)
		espLib.ESPValues[i] = b
	end})
end

local page = window:AddPage({Title = "Trolling"})
