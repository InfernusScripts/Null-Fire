local Instance1
local n = "SideTextUI_1488"
local h = pcall(function()
	return game:GetService("CoreGui"):GetFullName()
end) and game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui", 9e9)

if not h:FindFirstChild(n) then
	Instance1 = Instance.new("ScreenGui", h) --SideTextUI
	Instance1.Enabled = true
	Instance1.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
	Instance1.IgnoreGuiInset = false
	Instance1.ClipToDeviceSafeArea = true
	Instance1.DisplayOrder = 999999999
	Instance1.Name = n
	Instance1.ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets

	local Instance2 = Instance.new("TextLabel", Instance1) --Left
	Instance2.LayoutOrder = 0
	Instance2.TextWrapped = true
	Instance2.LineHeight = 1
	Instance2.Active = false
	Instance2.TextStrokeTransparency = 0
	Instance2.TextTruncate = Enum.TextTruncate.None
	Instance2.SizeConstraint = Enum.SizeConstraint.RelativeXY
	Instance2.ZIndex = 1
	Instance2.BorderSizePixel = 0
	Instance2.Draggable = false
	Instance2.RichText = false
	Instance2.TextWrap = true
	Instance2.TextTransparency = 0
	Instance2.TextYAlignment = Enum.TextYAlignment.Center
	Instance2.TextScaled = true
	Instance2.TextXAlignment = Enum.TextXAlignment.Left
	Instance2.FontFace = Font.new("rbxasset://fonts/families/PressStart2P.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
	Instance2.Name = "Left"
	Instance2.BorderMode = Enum.BorderMode.Outline
	Instance2.Selectable = false
	Instance2.TextDirection = Enum.TextDirection.Auto
	Instance2.Visible = true
	Instance2.FontSize = Enum.FontSize.Size14
	Instance2.AnchorPoint = Vector2.new(0, 0.5)
	Instance2.TextStrokeColor3 = Color3.new(0, 0, 0)
	Instance2.TextSize = 14
	Instance2.AutomaticSize = Enum.AutomaticSize.None
	Instance2.Size = UDim2.new(0.949999988079071, 0, 0, 0)
	Instance2.TextColor3 = Color3.new(1, 1, 1)
	Instance2.ClipsDescendants = false
	Instance2.BorderColor3 = Color3.new(0, 0, 0)
	Instance2.Text = ""
	Instance2.SelectionOrder = 0
	Instance2.BackgroundColor3 = Color3.new(1, 1, 1)
	Instance2.Rotation = 0
	Instance2.BackgroundTransparency = 1
	Instance2.Position = UDim2.new(0.02500000037252903, 0, 0.5, 0)
	Instance2.MaxVisibleGraphemes = -1

	local Instance3 = Instance.new("TextLabel", Instance1) --Right
	Instance3.LayoutOrder = 0
	Instance3.TextWrapped = true
	Instance3.LineHeight = 1
	Instance3.Active = false
	Instance3.TextStrokeTransparency = 0
	Instance3.TextTruncate = Enum.TextTruncate.None
	Instance3.SizeConstraint = Enum.SizeConstraint.RelativeXY
	Instance3.ZIndex = 1
	Instance3.BorderSizePixel = 0
	Instance3.Draggable = false
	Instance3.RichText = false
	Instance3.TextWrap = true
	Instance3.TextTransparency = 0
	Instance3.TextYAlignment = Enum.TextYAlignment.Center
	Instance3.TextScaled = true
	Instance3.TextXAlignment = Enum.TextXAlignment.Right
	Instance3.FontFace = Font.new("rbxasset://fonts/families/PressStart2P.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
	Instance3.Name = "Right"
	Instance3.BorderMode = Enum.BorderMode.Outline
	Instance3.Selectable = false
	Instance3.TextDirection = Enum.TextDirection.Auto
	Instance3.Visible = true
	Instance3.FontSize = Enum.FontSize.Size14
	Instance3.AnchorPoint = Vector2.new(0, 0.5)
	Instance3.TextStrokeColor3 = Color3.new(0, 0, 0)
	Instance3.TextSize = 14
	Instance3.AutomaticSize = Enum.AutomaticSize.None
	Instance3.Size = UDim2.new(0.949999988079071, 0, 0, 0)
	Instance3.TextColor3 = Color3.new(1, 1, 1)
	Instance3.ClipsDescendants = false
	Instance3.BorderColor3 = Color3.new(0, 0, 0)
	Instance3.Text = ""
	Instance3.SelectionOrder = 0
	Instance3.BackgroundColor3 = Color3.new(1, 1, 1)
	Instance3.Rotation = 0
	Instance3.BackgroundTransparency = 1
	Instance3.Position = UDim2.new(0, 0, 0.5, 0)
	Instance3.MaxVisibleGraphemes = -1

	local Instance4 = Instance.new("TextLabel", Instance1) --Bottom
	Instance4.LayoutOrder = 0
	Instance4.TextWrapped = true
	Instance4.LineHeight = 1
	Instance4.Active = false
	Instance4.TextStrokeTransparency = 0
	Instance4.TextTruncate = Enum.TextTruncate.None
	Instance4.SizeConstraint = Enum.SizeConstraint.RelativeXY
	Instance4.ZIndex = 1
	Instance4.BorderSizePixel = 0
	Instance4.Draggable = false
	Instance4.RichText = false
	Instance4.TextWrap = true
	Instance4.TextTransparency = 0
	Instance4.TextYAlignment = Enum.TextYAlignment.Top
	Instance4.TextScaled = true
	Instance4.TextXAlignment = Enum.TextXAlignment.Center
	Instance4.FontFace = Font.new("rbxasset://fonts/families/PressStart2P.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
	Instance4.Name = "Bottom"
	Instance4.BorderMode = Enum.BorderMode.Outline
	Instance4.Selectable = false
	Instance4.TextDirection = Enum.TextDirection.Auto
	Instance4.Visible = true
	Instance4.FontSize = Enum.FontSize.Size14
	Instance4.AnchorPoint = Vector2.new(0, 1)
	Instance4.TextStrokeColor3 = Color3.new(0, 0, 0)
	Instance4.TextSize = 14
	Instance4.AutomaticSize = Enum.AutomaticSize.None
	Instance4.Size = UDim2.new(0.949999988079071, 0, 0, 0)
	Instance4.TextColor3 = Color3.new(1, 1, 1)
	Instance4.ClipsDescendants = false
	Instance4.BorderColor3 = Color3.new(0, 0, 0)
	Instance4.Text = ""
	Instance4.SelectionOrder = 0
	Instance4.BackgroundColor3 = Color3.new(1, 1, 1)
	Instance4.Rotation = 0
	Instance4.BackgroundTransparency = 1
	Instance4.Position = UDim2.new(0.02500000037252903, 0, 0.9750000238418579, 0)
	Instance4.MaxVisibleGraphemes = -1

	local Instance5 = Instance.new("TextLabel", Instance1) --Top
	Instance5.LayoutOrder = 0
	Instance5.TextWrapped = true
	Instance5.LineHeight = 1
	Instance5.Active = false
	Instance5.TextStrokeTransparency = 0
	Instance5.TextTruncate = Enum.TextTruncate.None
	Instance5.SizeConstraint = Enum.SizeConstraint.RelativeXY
	Instance5.ZIndex = 1
	Instance5.BorderSizePixel = 0
	Instance5.Draggable = false
	Instance5.RichText = false
	Instance5.TextWrap = true
	Instance5.TextTransparency = 0
	Instance5.TextYAlignment = Enum.TextYAlignment.Top
	Instance5.TextScaled = true
	Instance5.TextXAlignment = Enum.TextXAlignment.Center
	Instance5.FontFace = Font.new("rbxasset://fonts/families/PressStart2P.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
	Instance5.Name = "Top"
	Instance5.BorderMode = Enum.BorderMode.Outline
	Instance5.Selectable = false
	Instance5.TextDirection = Enum.TextDirection.Auto
	Instance5.Visible = true
	Instance5.FontSize = Enum.FontSize.Size14
	Instance5.AnchorPoint = Vector2.new(0, 0)
	Instance5.TextStrokeColor3 = Color3.new(0, 0, 0)
	Instance5.TextSize = 14
	Instance5.AutomaticSize = Enum.AutomaticSize.None
	Instance5.Size = UDim2.new(0.949999988079071, 0, 0, 0)
	Instance5.TextColor3 = Color3.new(1, 1, 1)
	Instance5.ClipsDescendants = false
	Instance5.BorderColor3 = Color3.new(0, 0, 0)
	Instance5.Text = ""
	Instance5.SelectionOrder = 0
	Instance5.BackgroundColor3 = Color3.new(1, 1, 1)
	Instance5.Rotation = 0
	Instance5.BackgroundTransparency = 1
	Instance5.Position = UDim2.new(0.02500000037252903, 0, 0.02500000037252903, 0)
	Instance5.MaxVisibleGraphemes = -1
else
	Instance1 = h:FindFirstChild(n)
end

pcall(function()
	Instance1.OnTopOfCoreBlur = true
end)

----------

local require; local moduleScripts = {}

local oldRequire = getfenv().require
getfenv().require = function(scr)
	if typeof(scr) ~= "Instance" or (not scr:IsA("ModuleScript") and not moduleScripts[scr]) then return oldRequire(scr) end
	if moduleScripts[scr] then
		return moduleScripts[scr]()
	else
		return oldRequire(scr)
	end
end

require = getfenv().require

-- Your code down below --

local fc; fc = function(action, side, ...)
	side = tostring(side or nil)
	action = tostring(action or nil)

	if action == "UpdateLine" then
		local side = Instance1:FindFirstChild(side)
		if not side then
			return warn("No side '"..side.."' found")
		end
		if side.Text ~= "" then
			side.Text ..= "\n"..(tostring(...))
		else
			side.Text = tostring(...)
		end
		side.Size = UDim2.fromScale(0.95, (#side.Text:split("\n"))*0.025)
	elseif action == "ClearText" then
		if side ~= "nil" and side ~= "all" and side ~= "All" then
			local side = Instance1:FindFirstChild(side)
			if not side then
				return warn("No side '"..side.."' found")
			end

			side.Text = ""
			side.Size = UDim2.fromScale(0.95, 0)
		else
			for i,v in Instance1:GetChildren() do
				v.Text = ""
				v.Size = UDim2.fromScale(0.95, 0)
			end
		end
	elseif action == "SetText" then
		if side ~= "nil" and side ~= "all" and side ~= "All" then
			local side = Instance1:FindFirstChild(side)
			if not side then
				return warn("No side '"..side.."' found")
			end
			side.Text = tostring(...)
			side.Size = UDim2.fromScale(0.95, (#side.Text:split("\n"))*0.025)
		else
			for i,side in Instance1:GetChildren() do
				side.Text = tostring(...)
				side.Size = UDim2.fromScale(0.95, (#side.Text:split("\n"))*0.025)
			end
		end
	elseif action == "GetText" then
		if side ~= "nil" and side ~= "all" and side ~= "All" then
			local side = Instance1:FindFirstChild(side)
			if not side then
				return warn("No side '"..side.."' found")
			end
			return side.Text
		else
			local r = {}
			for i,v in Instance1:GetChildren() do
				r[v.Name] = v.Text
			end
			return table.freeze(r)
		end
	else
		warn("Unknown action '"..action.."'")
	end
end

return fc
