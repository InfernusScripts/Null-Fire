# 📜 CodeBox Documentation

## 📝 Overview

CodeBox is a powerful, feature-rich code editor library built for Roblox environments. Whether you're scripting in-exploits or developing within Roblox Studios, this editor supports **unlimited characters**, ensuring you can handle massive codebases without performance drops. With modern keybinds, smooth syntax highlighting, and an intuitive interface, it's designed to feel familiar and efficient. Not laggy at all, even with large files—perfect for pro-level coding. 🚀

Easy to integrate into your projects with simple one-line requires. No hassle, just pure productivity! 💻

## ✨ Features

- **Syntax Highlighting**: Full Lua support with customizable themes (Galaxy, VSCode, Roblox Studio, and more).
- **Autocomplete**: Intelligent suggestions for keywords, functions, and globals—always ready to speed up your workflow.
- **Unlimited Characters**: Handle files of any size without lag or crashes.
- **Modern Keybinds**: Vim-like controls (Ctrl+F find/replace, Ctrl+A select all, etc.).
- **Themes & Customization**: Swap between built-in themes or create your own.
- **Find & Replace**: Powerful search with regex-like simplicity.
- **Autofill**: Automatic bracket/quote completion and indentation on new lines.
- **Scrolling & Navigation**: Smooth horizontal/vertical scrolling, line numbers, and cursor jumping.
- **Accessibility**: Touch and keyboard input support for all devices.
- **Lightweight & Efficient**: Optimized for performance, no bloat.
- **No License Restrictions**: Do whatever you want with it—no strings attached! 🔓

## 📦 Installation & Usage

### 🔧 Accessing the Module

- **In Exploit Environments**:  
  ```lua
  local codeBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/CodeBox/Main.lua"))()
  ```

- **Normally in Roblox**:  
  ```lua
  local codeBox = require(game.Path.To.CodeBox)
  ```

### 🏁 Creating a New Editor

```lua
local editor = codeBox:new("Galaxy")  -- Use a theme name or your custom theme table
editor.Parent = workspace  -- Set where the CodeBox appears
editor.Text = "print('Hello, World!')"  -- Set initial code
```

For a quick demo in-game:

```lua
local codeBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/CodeBox/Main.lua"))()
local editor = codeBox:new()
editor.Text = "print('Hello, World!')"

-- It will automatically create an UI holder
```

### 🔄 Converting a TextBox

If you have an existing `TextBox`, effortlessly transform it into a full code editor:

```lua
local textBox = Instance.new("TextBox")  -- Your existing TextBox
local editor = codeBox:fromTextBox(textBox, "VSCode")  -- Converts it, with theme
editor.Size = UDim2.fromScale(0.5, 0.4)  -- Adjust as needed
```

## 🎨 API Reference

### Properties (Readable/Writable)

- **`Text`**: The full code content as a string. Get/set with `editor.Text = "code here"`.
- **`TextEditorMode`**: Boolean. Set to `true` for plain text mode (disables autocomplete, syntax, autofill). Default: `false`.
- **`CodeEditorMode`**: Boolean. Opposite of `TextEditorMode`. Default: `true`.
- **`Size`**: UDim2 for editor GUI size.
- **`Position`**: UDim2 for editor GUI position.
- **`Parent`**: Instance where the editor GUI is parented.
- **`Visible`**: Boolean for visibility.
- Any other GUI properties (e.g., `BackgroundColor3`, `ZIndex`) can be set directly.

### Methods

- **`SetText(text: string)`**: Sets the editor's code content.
- **`GetText(): string`**: Returns the current code as a string.
- **`ApplyTheme(theme: table or string)`**: Applies a theme (e.g., `ApplyTheme("VSCode")`).
- **`JumpToLine(line: number)`**: Scrolls to and selects the specified line.
- **`FindNext(query: string, [wrap: boolean])`**: Searches for the next occurrence of `query`.
- **`ReplaceSelection(replace: string)`**: Replaces the current selection.
- **`CommentLine(line: number)`**: Toggles comment (--) on the specified line.
- **`GetSelectionText()`**: Returns the text in the current selection.
- **`ScrollDelta(x: number, y: number)`**: Scrolls by delta amounts.
- **`MoveCursor(x: number, y: number)`**: Moves cursor to position.
- **`Refresh()`**: Forces a visual refresh.
- **`ConnectEditBoxEvent()` / `DisconnectEditBoxEvent()`**: Manual control over input handling (usually automatic).

### Events

- **`TextChanged`**: Fires when text changes. Connect like `editor.TextChanged:Connect(function(newText) print(newText) end)`.
- **`CursorMoved`**: Fires on cursor movement, providing line and column info.

### Built-in Themes

Use these names in `new()` or `ApplyTheme()`:

- **Galaxy** (default): Purple cosmic vibe ✨
- **VSCode**: Classic dark theme
- **RobloxStudio**: Official Roblox look
- **Light**: Bright and airy
- **Neon**: Glowing colors 🚀
- **Monokai**: Retro hacker style
- **Retro**: Old-school green-on-black
- **Dracula**: Slick red-and-black
- **GitHub**: Modern web-style
- **Nord**: Minimalist arctic palette
- **Electro**: Electric purple accents

Custom themes are tables like: `{ Text = Color3.new(1,1,1), Background = Color3.new(0,0,0), ... }`

### Example: Custom Theme & Events

```lua
local customTheme = {
    Text = Color3.fromRGB(255, 255, 255),
    Background = Color3.fromRGB(45, 45, 45),
    Operator = Color3.fromRGB(0, 255, 0),  -- Green operators
    Number = Color3.fromRGB(255, 165, 0),  -- Orange numbers
    String = Color3.fromRGB(255, 99, 71),  -- Red strings
    Keyword = Color3.fromRGB(138, 43, 226), -- Blue keywords
    Font = Enum.Font.Code,
    Transparency = 0,
    WidthDivider = 2
}

local editor = codeBox:new(customTheme)
editor.Parent = game.Players.LocalPlayer.PlayerGui.Gui
editor.Text = [[
for i = 1, 10 do
    print("Hello, line " .. i)
end
]]

-- Listen for text changes
editor.TextChanged:Connect(function(updatedText)
    print("Text updated! Length:", #updatedText)
    -- Optional: Save to a file or validate syntax
end)

-- Listen for cursor movement
editor.CursorMoved:Connect(function()
    print("Cursor at line:", editor.CursorY + 1, "col:", editor.CursorX)
end)

-- Jump to line 3
editor:JumpToLine(3)

-- Select and get some text (e.g., simulate selection from line 2, col 10 to 20)
editor:MoveCursor(10, 1)  -- Move to start of selection
editor.SelectionRange = {{10, 1}, {20, 1}}  -- Select range
local selectedCode = editor:GetSelectionText()
print("Selected code:", selectedCode)

-- Toggle to plain text mode (disables fancy features)
editor.TextEditorMode = true  -- Now acts like a basic TextBox

-- Re-enable code features
editor.CodeEditorMode = true

-- Toggle autofill off/on
editor.AutoFill = false  -- No more auto-brackets
```

## 📄 More Examples

### Example: Search and Replace

```lua
local editor = codeBox:new("Dracula")
editor.Parent = game.Players.LocalPlayer.PlayerGui.Gui
editor.Text = [[
print("Old text here")
print("Another old string")
print("Old text again")
]]

-- Find the next "old"
editor:JumpToLine(1)
editor:FindNext("old")  -- Highlights the first occurrence

-- Replace the selection with "new"
editor:ReplaceSelection("new")

-- Find and replace all (loop through matches)
editor:FindNext("old")
while editor:FindNext("old", true) do
    if editor:IsValidRange() then
        editor:ReplaceSelection("new")
    end
end
print("Replaced all 'old' with 'new'!")

editor:Refresh()  -- Update display
```

### Example: Converting an Existing TextBox

```lua
-- Assume you have an existing TextBox in a GUI
local oldTextBox = script.Parent.TextBox  -- Your TextBox
oldTextBox.Text = "Existing plain text..."

local oldText = oldTextBox.Text

local editor = codeBox:fromTextBox(oldTextBox, "Nord", ENV)  -- Converts it, uses custom ENV if needed
editor.Size = oldTextBox.Size  -- Keep original size
editor.Position = oldTextBox.Position

-- Preserve children (e.g., labels or buttons inside oldTextBox)
-- They are automatically moved during conversion

-- Now use as code editor
editor.Text = "-- Converted to code!\n" .. oldText
editor:ApplyTheme("Light")  -- Switch to light theme
print("TextBox converted to editor with text:", editor:GetText())
```

### Example: Integrating with a Larger Project (e.g., Script Debugger)

```lua
local codeBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/CodeBox/Main.lua"))()

-- Create a simple GUI frame for the editor
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DebuggerGUI"
screenGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.fromScale(0.8, 0.6)
mainFrame.Position = UDim2.fromScale(0.1, 0.2)
mainFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
mainFrame.Parent = screenGui

-- Embed the editor inside the frame
local editor = codeBox:new("Monokai")
editor.Parent = mainFrame
editor.Size = UDim2.fromScale(1, 0.9)  -- Take most space
editor.Position = UDim2.fromScale(0, 0)

-- Add a "Load Script" button below
local loadButton = Instance.new("TextButton")
loadButton.Size = UDim2.fromScale(0.3, 0.1)
loadButton.Position = UDim2.fromScale(0.35, 0.9)
loadButton.Text = "Load & Run"
loadButton.Parent = mainFrame

loadButton.MouseButton1Click:Connect(function()
    local code = editor:GetText()
    -- Load and run the code (safely!)
    local success, result = pcall(loadstring, code)
    if success then
        result()
        print("Script executed successfully! 📜")
    else
        warn("Error running script:", result)
        editor:FindNext("error")  -- Highlight potential error spots
    end
end)

-- Initial code for debugging
editor.Text = [[
-- Paste your debug script here
local part = Instance.new("Part")
part.Parent = workspace
part.Position = Vector3.new(0, 10, 0)
print("Part created!")
]]

-- Event: Save on text change
editor.TextChanged:Connect(function(text)
    print("Code saved to variable:", text:sub(1, 50) .. "...")  -- Log first 50 chars
end)

print("Debugger GUI with CodeBox ready! 🔧")
```

### Example: Disabling Features for Simplicity

```lua
local editor = codeBox:new("Retro")
editor.Parent = game:GetService("Players").LocalPlayer.PlayerGui

-- Disable autocomplete and syntax for a minimalist view
editor.AutocompleteEnabled = false
editor.SyntaxHighlight = false
editor.AutoFill = false
editor.LinesVisible = false  -- Hide line numbers
editor.ShowFooter = false    -- Hide status bar (Ln/Col)

editor.Text = "Simple text editing mode active.\nNo highlights, just clean typing."

-- Re-enable selectively
editor:ConnectEditBoxEvent()  -- Manual input if needed (auto by default)

print("Minimalist editor created:", editor:GetText())
```

## 📄 License

This module has **no license**. Feel free to use, modify, distribute, sell, or do whatever you like with it. Infinity stones included. 🔮

## 🛠 Support & Credits

Created by @cherry_peashooter on Discord. For issues or features, check the GitHub repo at [InfernusScripts/Null-Fire](https://github.com/InfernusScripts/Null-Fire). Inspired by DEX Explorer. Enjoy coding! 🎉