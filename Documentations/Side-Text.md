# Side-Text🥵 documentation
Just useful thing for showing some info players need!

### Getting the library
```lua
local txtf = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Side-Text/Main.lua"))()
```
Alright, we got the side text library.

## There's no setup

### Usage
```lua
txtf("UpdateLine", "Left", "Hello") -- Will update the text in "Left" sidetext
txtf("UpdateLine", "Left", "Hi") -- Because "Left" sidetext is not empty, it will set text to
--[[Hello
Hi]]
txtf("UpdateLine", "All", "Ohio") -- Same as these two before, but will update text for ALL sides
txtf("UpdateLine", nil, "Ohio") -- Same as these three before, but also will update text for ALL sides

--

txtf("ClearText", "Left") -- Will clear the text at "Left" side
txtf("ClearText") -- Will clear the text for ALL sides
txtf("ClearText", "All") -- Also will clear the text for ALL sides

--

txtf("SetText", "Bottom", "Hi\n\nSwag") -- Similar to UpdateLine, but it will change text completely
txtf("SetText", "All", "Yup") -- Yea, will change text for all sidetexts too
txtf("SetText", nil, "ofc") -- Aaaaand this too

local text: string = txtf("GetText", "Bottom") -- Will get the text from "Bottom" side

print(text) --[[Hi

Swag]]

local text: table = txtf("GetText") -- Will get the text from all sides and will return a table
for i,v in text do print(i,v) end --[[
Left ofc
Right ofc
Bottom ofc
Top ofc
]]
```
