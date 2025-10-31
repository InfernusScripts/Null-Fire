# CodeBox📜 library documentation
- [Q] What does it do?
- [A] It is an LSP (or Code Editor) written on pure lua!

### Getting the library
```lua
local codeBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/CodeBox/Main.lua"))()
```

### Setup
```lua
local syntaxColors = { -- optional, if you won't pass it in codeBox:new or codeBox:fromTextBox, it'll apply a beautiful theme for you!
	Text = Color3.fromRGB(212, 212, 212),
	Background = Color3.fromRGB(31, 31, 31),
	Selection = Color3.fromRGB(200, 200, 255),
	SelectionBack = Color3.fromRGB(45, 50, 65),
	Operator = Color3.fromRGB(212, 212, 212),
	Number = Color3.fromRGB(181, 206, 168),
	String = Color3.fromRGB(206, 145, 120),
	Comment = Color3.fromRGB(106, 153, 85),
	Keyword = Color3.fromRGB(178, 95, 195),
	Error = Color3.fromRGB(255, 0, 0),
	FindBackground = Color3.fromRGB(255, 190, 110),
	MatchingWord = Color3.fromRGB(100, 80, 100),
	BuiltIn = Color3.fromRGB(142, 220, 254),
	CurrentLine = Color3.fromRGB(45, 45, 45),
	LocalMethod = Color3.fromRGB(158, 220, 254),
	LocalProperty = Color3.fromRGB(158, 220, 254),
	Nil = Color3.fromRGB(86, 156, 214),
	Bool = Color3.fromRGB(86, 156, 214),
	Function = Color3.fromRGB(220, 220, 170),
	Local = Color3.fromRGB(86, 156, 214),
	Self = Color3.fromRGB(86, 156, 214),
	FunctionName = Color3.fromRGB(220, 220, 170),
	Bracket = Color3.fromRGB(255, 220, 22),

	Transparency = 0,
	Font = Enum.Font.Code, -- don't touch this and WidthDivider, other fonts are just broken
	WidthDivider = 2
}

local highlightFunctions = { -- if not defined, it will use Luau's environment
    ["print"] = true,
    ["error"] = true,
    -- ...
}

local editor = codeBox:new(syntaxColors, highlightFunctions) -- creates a new CodeBox with theme from Visual Studio Code!!!!
editor.Parent = ...

--

local editor = codeBox:fromTextBox(myTextBox, syntaxColors, highlightFunctions)
-- NOTE: myTextBox will be deleted and replaced with editor instead
```

### Functions
```lua
editor.Text = "Hi!!"
editor:ApplyTheme()
editor:MoveCursor(cursorX, cursorY) -- indexes start from 0, not 1
editor:JumpToCursor() -- scrolls contents until mouse is visible
editor.CursorX, editor.CursorY
editor.Editing -- true if focused into the CodeBox
editor:SetEditing(true or false)
editor:AppendText("hi") -- appends text at cursor position
editor:GetSelectionText()
editor.TextEditable
editor.Autocompleting -- true if autocomplete box is visible
editor.EditBoxCopying -- true if any text is selected
editor.AutocompleteEnabled -- if false, autocomplete box will be never visible
```
