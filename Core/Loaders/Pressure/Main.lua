local defaults = {
	ESP = {
	},

	AutoInputCode = false
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

local roomCodes = { }
local function object(obj)
	if obj and obj.Parent then
		if obj:IsA("Model") then
			if obj.Name == "PasswordPaper" then
				while obj and obj.Parent and not getRoom(obj) and not closed do
					warn("waiting")
					render()
				end
				
				if obj and obj.Parent and not closed then
					print("code:", obj.Code.SurfaceGui.TextLabel.Text, getRoom(obj))
					roomCodes[getRoom(obj)] = obj.Code.SurfaceGui.TextLabel.Text
				end
			end
		elseif obj:IsA("RemoteFunction") then
			if obj:FindFirstAncestorOfClass("Model") and obj:FindFirstAncestorOfClass("Model").Name == "Lock" then
				print("Is lock")
				while obj and obj.Parent and not roomCodes[getRoom(obj) or false] and not closed do
					render()
				end
					
				if obj and obj.Parent and waitUntil(obj, "AutoInputCode") and obj ~= nil and obj.Parent ~= nil and not closed then -- double check because after waitUntil object state might change
					print("inputting the code")
					obj:InvokeServer(roomCodes[getRoom(obj)])
				end
			end
		end
	end
end

for _, v in workspace:GetDescendants() do
	task.spawn(object, v)
end

workspace.DescendantAdded:Connect(object)

local window = lib:MakeWindow({Title = "NullFire - Pressure", CloseCallback = function()
	for i, v in defaults.ESP do
		espLib.ESPValues[i] = v
	end

	for i, v in defaults do
		vals[i] = v
	end
	
	getGlobalTable().FireHubLoaded = false
	closed = true
	render(3)
	
	for i, v in cons do
		if v.Connected then
			v:Disconnect()
		end
	end
end}, true)

local page = window:AddPage({Title = "! READ ME NOW !"})
page:AddLabel({Caption = "Because pressure has been updated, NullFire got patched"})
page:AddLabel({Caption = "At this moment script being fully rewrited"})
page:AddLabel({Caption = "Expect more features to be added"})

local page = window:AddPage({Title = "Interact"})
page:AddToggle({Caption = "Auto input door code", Default = false, Callback = function(b)
	vals.AutoInputCode = b
end})
page:AddLabel({Caption = "THE FUNCTION WAS NOT TESTED CUZ OF MY FUCKING LUCK"})
page:AddLabel({Caption = "(I never got doors with paper code)"})


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
