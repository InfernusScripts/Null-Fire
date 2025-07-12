local defaults = {
        Autoplay = false,
        AutoplayMethod = 1,
        Limit = 50,

        CalculateRenders = 5,
        RapidRenders = 1,

        HoldDuration = 0,
        RandomAdd = 0,
        PerfectSick = true
}

local vals = table.clone(defaults)
local cons = { }

local function getGlobalTable()
        return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

getGlobalTable().FireHubLoaded = true

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Fire-Lib/Main.lua"))()
local closed = false
local plr = game:GetService("Players").LocalPlayer

local rs = game:GetService("RunService")
local function r(times)
        local dt = 0

        for i=1, tonumber(times) or 1 do
                dt += rs.RenderStepped:Wait()
        end

        return dt
end

local function getClosest(toIterate)
        local c, d = nil, math.huge

        for _, v in toIterate:GetChildren() do
                local m = (v:GetPivot().Position - plr.Character:GetPivot().Position).Magnitude
                if m < d then
                        c, d = v, m
                end
        end

        return c, d
end

local function getMyStage()
        if workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Stages") then
                return getClosest(workspace.Map.Stages)
        end
end

local function getMySide()
        local stage = getMyStage()
        if stage then
                local node = getClosest(stage.Nodes)
                if node then
                        return node.Name:sub(1, node.Name:find("_") - 1)
                end
        end
end

local side = getMySide() or "Left"
task.spawn(function()
        while not closed and task.wait(1) and r() do
                side = getMySide() or side
        end
end)

local lanes = 0
local scrollSpeeds = { }

local function appendScrollSpeed(newSpeed, dontUseCache)
        if (not dontUseCache or #scrollSpeeds == 0) and newSpeed > 0 then        
                table.insert(scrollSpeeds, 1, newSpeed)
        end

        while #scrollSpeeds > vals.Limit do
                table.remove(scrollSpeeds, #scrollSpeeds)
        end

        local sum = 0
        for _, v in scrollSpeeds do
                sum += v
        end

        return math.max(sum / #scrollSpeeds, newSpeed)
end

local function getDistance(x, y)
        return math.abs(math.max(x, y) - math.min(x, y))
end

local binds = {
        [4] = {
                [1] = "A",
                [2] = "S",
                [3] = "W",
                [4] = "D",
        },
        [5] = {
                [1] = "D",
                [2] = "F",
                [3] = "Space",
                [4] = "J",
                [5] = "K",
        },
        [6] = {
                [1] = "S",
                [2] = "D",
                [3] = "F",
                [4] = "J",
                [5] = "K",
                [6] = "L",
        },
        [7] = {
                [1] = "S",
                [2] = "D",
                [3] = "F",
                [4] = "Space",
                [5] = "J",
                [6] = "K",
                [7] = "L",
        },
        [8] = {
                [1] = "A",
                [2] = "S",
                [3] = "D",
                [4] = "F",
                [5] = "J",
                [6] = "K",
                [7] = "L",
                [8] = "Semicolon",
        },
        [9] = {
                [1] = "A",
                [2] = "S",
                [3] = "D",
                [4] = "F",
                [5] = "Space",
                [6] = "J",
                [7] = "K",
                [8] = "L",
                [9] = "Semicolon",
        }
}

local vim = game:GetService("VirtualInputManager")
local keys = { }
local downKeys = { }

local keypress = getfenv().keypress
local keyrelease = getfenv().keyrelesae

local sendEvent = keypress and keyrelease and (function(key, isDown)
        downKeys[key] = isDown;
        (isDown and keypress or keyrelease)(key)
end) or (function(key, isDown)
        downKeys[key] = isDown
        vim:SendKeyEvent(isDown, key, false, game)
end)

local function pressKey(key, duration)
        if downKeys[key] then
                sendEvent(key, false)
        end

	local myId = (keys[key] or 0) + 1
	keys[key] = myId

        sendEvent(key, true)

        if duration and duration > 0 then
                task.wait(duration)
        end

	if keys[key] == myId then
        	sendEvent(key, false)
	end
end

local hit = { }
local function hitNote(note, scrollSpeed, key)
        if not vals.Autoplay or hit[note] or not note or not note.Parent then return end
        hit[note] = true

        local time = 0
        for _, v in note:GetChildren() do
                if v and v.Size ~= UDim2.fromScale(1, 1) then
                        time = (v.Size.Y.Scale / (scrollSpeed / 4)) + 0.125
                        break
                end
        end

        time += (math.random(-vals.RandomAdd, vals.RandomAdd) + vals.HoldDuration) / 1000
        if time <= 0 and (vals.RandomAdd ~= 0 or vals.HoldDuration ~= 0) then
                time = 0.001
        end

        task.spawn(pressKey, key, time > 0 and time)
				      task.wait(0.15)
				
				      if note and note.Parent then
				      				      hit[note] = false
				      end
end

local offsets = {
        Sick = 0.05,
        Good = 0.1,
        Ok = 0.15,
        Bad = 0.2,
        Miss = 0.4
}

local chances = {
        {"Sick", 100},
        {"Good", 0},
        {"Ok", 0},
        {"Bad", 0},
        {"Miss", 0}
}

local function rollChance()
    local total = 0
    local allZeros = true

    for _, chance in chances do
        if chance[2] ~= 0 then
            allZeros = false
        				
            if chance[2] == 100 then
                return chance[1]
            end
        				
            total += chance[2]
        end
    end

    if allZeros then
        return "Sick"
    end

    local rnd, cum = math.random(total), 0
				
    for _, chance in chances do
        if chance[2] ~= 0 then
            cum += chance[2]
        				
            if rnd <= cum then
                return chance[1]
            end
        end
    end

    return "Sick" -- mb
end

local function calculate(note, renders, dontUseCache)
        local originalY = note.Position.Y.Scale
        local deltaTime = r(renders)
        local newY = note.Position.Y.Scale

        local distance = getDistance(originalY, newY)
        local scrollSpeed = appendScrollSpeed(distance / deltaTime, dontUseCache)
        --scrollSpeed = 16

        local distanceToTarget = getDistance(newY, 0.5)
        return distanceToTarget / scrollSpeed, scrollSpeed
end

local function calculateMethod(note, laneIndex)
        local timeToReachTarget, scrollSpeed = calculate(note, vals.CalculateRenders)
        local rolled = rollChance()
        
        if rolled == "Sick" and vals.PerfectSick then
                task.wait(timeToReachTarget - 0.0085)
        else
                task.wait(timeToReachTarget - offsets[rolled] + 0.0125)
        end
        
        hitNote(note, scrollSpeed, Enum.KeyCode:FromName(binds[lanes][laneIndex]))
end

local function rapidDistanceCheckMethod(note, laneIndex)
  local rolled = rollChance()
				local got = offsets[rolled]
        
				while note and note.Parent do
					    			local timeToReachTarget, scrollSpeed = calculate(note, vals.RapidRenders)
        if timeToReachTarget <= got - 0.01 then
                if rolled == "Sick" and vals.PerfectSick then
                        task.wait(timeToReachTarget)
                end
                
            				hitNote(note, scrollSpeed, Enum.KeyCode:FromName(binds[lanes][laneIndex]))
        end
				end
end

local function onNoteAdded(note, laneIndex)
        if vals.AutoplayMethod == 1 then
                calculateMethod(note, laneIndex)
        elseif vals.AutoplayMethod == 2 then
                rapidDistanceCheckMethod(note, laneIndex)
        else
                task.spawn(calculateMethod, note, laneIndex)
                task.spawn(rapidDistanceCheckMethod, note, laneIndex)
        end
end

local function onLaneAdded(lane)
        if lane and lane:IsA("Frame") and tonumber(lane.Name:gsub("Lane", "") .. "") then
                local laneIndex = tonumber(lane.Name:gsub("Lane", "") .. "")
                lanes = math.max(laneIndex, lanes)

                local notes = lane:WaitForChild("Notes", 9e9)
                cons[#cons + 1] = notes.ChildAdded:Connect(function(note)
                        onNoteAdded(note, laneIndex)
                end)

                for _, note in notes:GetChildren() do
                        task.spawn(onNoteAdded, note, laneIndex)
                end
        end
end

local function onScreenAdded(screen)
        if screen and screen.Name == "Window" then
                lanes = 0
                local myField = screen:WaitForChild("Game", 9e9):WaitForChild("Fields", 9e9):WaitForChild(side, 9e9):WaitForChild("Inner", 9e9)

                cons[#cons + 1] = myField.ChildAdded:Connect(onLaneAdded)
                for _, lane in myField:GetChildren() do
                        onLaneAdded(lane)
                end
        end
end

if plr.PlayerGui:FindFirstChild("Window") then
        onScreenAdded(plr.PlayerGui.Window)
end

cons[#cons + 1] = plr.PlayerGui.ChildAdded:Connect(onScreenAdded)

local window = lib:MakeWindow({Title = "NullFire: Funky Friday", CloseCallback = function()
        for i,v in defaults do
                vals[i] = v
        end
        getGlobalTable().FireHubLoaded = false
        closed = true
        r(3)
        for i,v in cons do
                v:Disconnect()
        end
end}, true)

local page = window:AddPage({Title = "Auto play"})
page:AddLabel({Caption = "Works best with downscroll"})
page:AddSeparator()

page:AddToggle({Caption = "Autoplay", Callback = function(bool)
        vals.Autoplay = bool
end, Default = false})

for _, chance in chances do
        page:AddSlider({Caption = chance[1] .. " chance", Min = 0, Max = 100, Step = 1, Default = chance[2], Callback = function(val)
                chance[2] = val
        end, CustomTextDisplay = function(val)
                return val .. "%"
        end})
end

local page = window:AddPage({Title = "Keys"})
for keys = 4, 9 do
        local bind = binds[keys]

        page:AddLabel({Caption = keys .. " key mode bind setup"})
        for key, val in bind do
                page:AddInput({Text = "Lane #" .. key, Default = val, Callback = function(kc)
                        bind[key] = kc.KeyCode.Name
                end})
        end

        if keys ~= 9 then
                page:AddSeparator()
        end
end

local page = window:AddPage({Title = "Advanced"})

page:AddSlider({Caption = "Note hold duration", Min = 0, Max = 1000, Step = 1, Default = 0, Callback = function(val)
        vals.HoldDuration = val
end, CustomTextDisplay = function(val)
        return val .. " ms"
end})
page:AddSlider({Caption = "Random note hold duration", Min = 0, Max = 250, Step = 1, Default = 0, Callback = function(val)
        vals.RandomAdd = val
end, CustomTextDisplay = function(val)
        return val ~= 0 and "From -" .. val .. " to +" .. val .. " ms" or "No random"
end})

page:AddSeparator()

page:AddSlider({Caption = "Scroll speed accuracy buffer", Min = 1, Max = 50, Step = 1, Default = vals.Limit, Callback = function(val)
        vals.Limit = val
end, CustomTextDisplay = function(val)
        return (val == 1 and "A single" or val) .. " value" .. (tostring(val):sub(-1) == "1" and "" or "s")
end})
page:AddSlider({Caption = "Calculate method time", Min = 1, Max = 10, Step = 1, Default = vals.CalculateRenders, Callback = function(val)
        vals.CalculateRenders = val
end, CustomTextDisplay = function(val)
        return val .. " frame" .. (tostring(val):sub(-1) == "1" and "" or "s")
end})
page:AddSlider({Caption = "Rapid check delay", Min = 1, Max = 10, Step = 1, Default = vals.RapidRenders, Callback = function(val)
        vals.RapidRenders = val
end, CustomTextDisplay = function(val)
        return val .. " frame" .. (tostring(val):sub(-1) == "1" and "" or "s")
end})

page:AddSeparator()

local methods = {"Calculate [ Least laggy + Only accurate at 2+ scroll speed ]", "Rapid checks [ The golden middle ]", "Hybrid [ Calculate + Rapid; The most accurate with FPS price ]"}
page:AddDropdown({Caption = "Autoplay method", Rows = methods, Callback = function(val)
        vals.AutoplayMethod = val
end, Default = 2})

page:AddToggle({Caption = "Perfect sick [ Sick hits way closer to 0ms ]", Callback = function(bool)
        vals.PerfectSick = bool
end, Default = vals.PerfectSick})

local page = window:AddPage({Title = "Info"})
page:AddLabel({Caption = "Autoplay method \"Calculate\":"})
page:AddLabel({Caption = "When the note spawns, it gets approximate time to be hit"})
page:AddSeparator()
page:AddLabel({Caption = "Autoplay method \"Rapid check\":"})
page:AddLabel({Caption = "Every X frames it doing a check, if note can be hitten"})
page:AddSeparator()
page:AddLabel({Caption = "Autoplay method \"Hybrid\":"})
page:AddLabel({Caption = "The most laggy one; Doing calculate & rapid checks"})
page:AddSeparator()
page:AddLabel({Caption = "Scroll speed accuracy buffer is used for adjusting note hit accuracy"})
page:AddLabel({Caption = "Note hold duration: how long for the key will be pressed, when hitthing the note"})
