# Fire~Lib🔥 documentantion
Why not?

# Setup
```lua
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Fire-Hub/main/Core/UI-Library"))()
```
Now we can use the library!

# Creating a window
```lua
local window = lib:MakeWindow({Title = "Fire~Lib: Example", CloseCallback = function()
	print("Closed!")
end})
```

After we got a window, we need to put stuff in it
### Showing / Hiding / Toggling / Closing the window
```lua
window:Hide() -- Will hide the window
window:Show() -- Will show the window

--

window:Toggle() -- Will hide the window if it is visible or will show it if it is not
window:Toggle(true) -- Will show the window
window:Toggle(false) -- Will hide the window

--

window:Close() -- Will close the window, it will be no longer able to be shown again. Calls CloseCallback. In our situation it will print "Closed!" into F9 console
```

# Adding the page
```lua
local page = window:AddPage({Title = "Example page!"})
```
Alright, we got a page, now we can add some stuff here!
(There's secret argument, called "order", max order is 999 and min is 1. The higher order, the closer page will be to the "Main" page)

### Sliders
```lua
local slider = page:AddSlider({Caption = "Walk Speed", Callback = function(number)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = number
end, Default = 16, Min = 0, Max = 100, Step = 1})
-- slider:Set, slider:SetText, slider:SetMinimum... some nerd stuff, im lazy to type it in there. You can see it using `for i,v in slider do print(i)`.
```
every slider and not only function must be called through ":" - `slider:Destroy()`

### Separator
```lua
page:AddSeparator()
-- yup, nothing more.
-- oh, also, you can hide / show it and delete
```

### Buttons
```lua
local button = page:AddButton({Caption = "Kill", Callback = function()
	plr.Character.Humanoid.Health = 0
end})
```
Yeah, yeah, print all button function 

### Toggle
```lua
page:AddToggle({Caption = "Toggle", Callback = function(bool)
	print(bool and "Enabled" or "Disabled")
end, Default = false})
```

### Label
```lua
page:AddLabel({Caption = "Some text here!"})
```

### Text Box
```lua
page:AddTextBox({Caption = "Print stuff to console", Default = "Nothing!", Callback = function(text)
	print(text)
end, NeedEnter = true})
```
NeedEnter: If is true, it will require enter be pressed to make the callback work, else it will call callback when textbox focus is lost

### Input
Took that from Fire~Lib source, cuz idk what i can do with it
```lua
page:AddInput({Text = "Toggle UI Key", Default = toggleKey.Name, Callback = function(kk)
	toggleKey = kk
end, IgnoreConfigs = true})
```

### Dropdown [BROKEN]
I never used dropdown, so the example can be a bit inaccurate
```lua
page:AddDropdown({Text = "Dropdown", Default = "First", Rows = {"First", "Second", "Third"}, Callback = function(name)
	-- "name" will be "First", "Second" or "Third"
end})
```

### Toggle Dropdown [POSSIBLY BROKEN]
This one is kinda new, and I think it kinda has some use, so I've added that
```lua
page:AddToggleDropdown({Text = "Toggle Dropdown", Default = {["First"] = false, ["Second"] = true}, Callback = function(new)
	print("First:",tostring(new.First),"\nSecond:",tostring(new.Second))
end})
```

### Color Picker
Same situation as dropdown: I've never used that
```lua
page:AddColorPicker({Text = "Color Picker", Default = Color3.new(1, 0, 0.5), Callback = function(color)
	workspace.Baseplate.Color = color
end})
```

# Notifications
Notifications is really useful stuff, like notify monsters when they spawn!

### Base Notification
```lua
lib.Notifications:Notification({Title = "Monster!", Text = "Oh no! The monster has spawned!", Time = 20})
```
Time: The time (in seconds) for notification to stay on the screen

### Choose Notification (Yes/No)
```lua
lib.Notifications:ChooseNotification({Title = "English (✅) or Spanish (❌)", Text = "ENGLISH OR SPANISH?", Callback = function(bool)
	print(bool and "English" or "Spanish")
end, Time = 999})
```

# Full Example
```lua
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Fire-Hub/main/Core/UI-Library"))()

local window = lib:MakeWindow({Title = "Fire~Lib: Example", CloseCallback = function()
	print("Closed!")
end})

local page = window:AddPage({Title = "Example page!"})

local slider = page:AddSlider({Caption = "Walk Speed", Callback = function(number)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = number
end, Default = 16, Min = 0, Max = 100, Step = 1})

local button = page:AddButton({Caption = "Kill", Callback = function()
	plr.Character.Humanoid.Health = 0
end})

page:AddSeparator()

page:AddToggle({Caption = "Toggle", Callback = function(bool)
	print(bool and "Enabled" or "Disabled")
end, Default = false})

page:AddLabel({Caption = "Some text here!"})

page:AddTextBox({Caption = "Print stuff to console", Default = "Nothing!", Callback = function(text)
	print(text)
end, NeedEnter = true})

page:AddInput({Text = "Toggle UI Key", Default = toggleKey.Name, Callback = function(kk)
	toggleKey = kk
end, IgnoreConfigs = true})

page:AddDropdown({Text = "Dropdown", Default = "First", Rows = {"First", "Second", "Third"}, Callback = function(name)
	print("You scored "..name.." place!")
end})

page:AddToggleDropdown({Text = "Toggle Dropdown", Default = {["First"] = false, ["Second"] = true}, Callback = function(new)
	print("First:",tostring(new.First),"\nSecond:",tostring(new.Second))
end})

page:AddColorPicker({Text = "Color Picker", Default = Color3.new(1, 0, 0.5), Callback = function(color)
	workspace.Baseplate.Color = color
end})

lib.Notifications:Notification({Title = "Loaded!", Text = "Test UI Loaded!", Time = 20})
```