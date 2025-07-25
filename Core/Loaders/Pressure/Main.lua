local defaults = {
	ESP = {
	},

	AutoInputCode = false,
	TeleportToDoorLock = false,

	NoLocalDamage = false,
	GodMode = false,

	AntiSearchlights = false,

	ExtraPrompt = 0,
	InstantInteract = false,
	BetterDoors = false
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
local network = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/Network/Main.lua", true))()

local fireproximityprompt = function(...)
	return network.Other:FireProximityPrompt(...)
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
		if not dontCreateClone then
			copy = object:Clone()
			copies[copy] = object
		end

		blockedEvents[object.Name] = object
	end

	while not closed do
		if not pcall(parentUpdate, object, ((not reversed and (not vals[condition])) or (reversed and vals[condition])) and oldParent or nil) then
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

local function fireBlockedEvent(eventName, ...)
	local event = blockedEvents[eventName] or copies[eventName] or eventName

	if event then
		if not event.Parent then
			event.Parent = game:GetService("TestService")
		end

		task.delay(0, changedEvent.Fire, changedEvent)

		if event:IsA("RemoteEvent") or event:IsA("UnreliableRemoteEvent") then
			return event:FireServer(...)
		else
			return event:InvokeServer(...)
		end
	end
end

local oldValues = table.clone(vals)

task.spawn(function()
	local idx = 0
	while task.wait(0.1) and not closed do
		idx = (idx + 1) % 149

		for i, v in vals do
			if oldValues[i] ~= v then
				changedEvent:Fire()
				break
			end
		end

		for i, v in vals do
			oldValues[i] = v
		end

		if idx == 0 then
			changedEvent:Fire()
		end
	end
end)

local plr = game:GetService("Players").LocalPlayer
local events = game:GetService("ReplicatedStorage").Events

task.spawn(blockInstance, events.LocalDamage, "NoLocalDamage")
task.spawn(blockInstance, events.ResetStatus, "GodMode")

local lockers = { }
local searchlights = { }
local doors = { }
local doorCodes = { }

local function bruteforce(obj, dontTP)
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
		for i=0, string.rep("9", (obj:FindFirstAncestorOfClass("Model"):GetAttribute("MaxIndex") or 4)) do
			if obj.Parent.KeycardUnlocking.Playing or obj.Parent.KeycardUnlock.Playing or obj:FindFirstAncestorOfClass("Model").Parent:FindFirstChild("OpenValue", math.huge).Value then
				atStart = i < 75
				break
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

local function object(obj)
	if obj and obj.Parent then
		if obj:IsA("Model") then

		elseif obj:IsA("ProximityPrompt") then
			originalDistances[obj] = obj.MaxActivationDistance
			obj.MaxActivationDistance *= (vals.ExtraPrompt / 100) + 1

			if obj.Parent.Name == "Root" and obj.Parent.Parent:IsA("Model") then
				doors[#doors + 1] = obj
			end
		elseif obj:IsA("RemoteEvent") then
			if obj.Parent and obj.Parent:IsA("Part") and obj.Name == "RemoteEvent" and obj.Parent.Name:lower():match("searchlight") then
				task.spawn(blockInstance, obj, "AntiSearchlights")
				searchlights[#searchlights + 1] = obj
			end
		elseif obj:IsA("RemoteFunction") then
			if obj.Parent and obj.Parent.Name == "Main" and obj.Name == "RemoteFunction" and obj.Parent.Parent and obj.Parent.Parent:FindFirstChild("Keypad0") then
				doorCodes[#doorCodes + 1] = obj
			end
			
			if obj.Name == "Enter" and obj.Parent and obj.Parent:IsA("Folder") and obj.Parent.Parent and obj.Parent.Parent.Name == "Locker" then
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
		fireproximityprompt(prompt)
	end
end)

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
end)

task.spawn(function()
	local state = false
	while task.wait(1) and not closed do
		state = not state
		
		if vals.SpamSearchlights then
			for _, event in searchlights do
				if event and event.Parent then
					local part = event.Parent.Eyes:FindFirstChildWhichIsA("BasePart")

					if part then
						fireBlockedEvent(event, part, state)
					end
				end
			end
		end
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
local gm; gm = page:AddToggle({Caption = "God Mode", Default = false, Callback = function(b)
	vals.GodMode = b
	fireBlockedEvent("ResetStatus")

	if b then
		for _, v in lockers do
			if v and v.Parent and v:FindFirstChild("Folder") and v.Folder:FindFirstChild("Enter") and not v.Folder.PlayerIn.Value then
				local oldPos = plr.Character:GetPivot()

				repeat
					plr.Character:PivotTo(v:GetPivot())
					v.Folder.Enter:InvokeServer(true)
				until v.Folder.PlayerIn.Value or closed -- wont crash because invokeserver yields

				render()
				plr.Character:PivotTo(oldPos)

				return
			end
		end

		gm:Set(false)
		lib.Notifications:Notification({Title = "God Mode", Text = "Failed to turn on the god mode:\nNo available lockers"})
	end
end})

page:AddToggle({Caption = "No damage", Default = false, Callback = function(b)
	vals.NoLocalDamage = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Anti searchlights", Default = false, Callback = function(b)
	vals.AntiSearchlights = b
end})

local page = window:AddPage({Title = "Interact"})
page:AddToggle({Caption = "Instant proximity prompt interact", Default = false, Callback = function(b)
	vals.InstantInteract = b
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
page:AddToggle({Caption = "Spam searchlights", Default = false, Callback = function(b)
	vals.SpamSearchlights = b
	
	if not b then
		renderWait(0.25)
		
		for _, event in searchlights do
			if event and event.Parent then
				for _, part in event.Parent.Eyes:GetChildren() do
					if part and part:IsA("BasePart") then
						fireBlockedEvent(event, part, false)
					end
				end
			end
		end
	end
end})
