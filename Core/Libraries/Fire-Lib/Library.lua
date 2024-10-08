local Instance1 = Instance.new("ScreenGui", game.TestService) --FireLib5.0
Instance1.Enabled = true
Instance1.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
Instance1.IgnoreGuiInset = true
Instance1.ClipToDeviceSafeArea = true
Instance1.DisplayOrder = 999999999
Instance1.Name = "FireLib5.0"
Instance1.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

local Instance2 = Instance.new("Folder", Instance1) --Sounds
Instance2.Name = "Sounds"

local Instance3 = Instance.new("Folder", Instance2) --SoundsFolder
Instance3.Name = "SoundsFolder"

local Instance4 = Instance.new("Sound", Instance3) --Notification
Instance4.Pitch = 1
Instance4.EmitterSize = 10
Instance4.RollOffMode = Enum.RollOffMode.Inverse
Instance4.LoopRegion = NumberRange.new(0, 60000)
Instance4.TimePosition = 0
Instance4.PlaybackSpeed = 1
Instance4.RollOffMaxDistance = 10000
Instance4.Volume = 0.5
Instance4.PlaybackRegion = NumberRange.new(0, 60000)
Instance4.SoundId = "rbxassetid://18783839518"
Instance4.Playing = false
Instance4.Name = "Notification"
Instance4.RollOffMinDistance = 10
Instance4.Looped = false
Instance4.MinDistance = 10
Instance4.MaxDistance = 10000
Instance4.PlaybackRegionsEnabled = false
Instance4.PlayOnRemove = false

local Instance5 = Instance.new("Sound", Instance3) --MouseHover
Instance5.Pitch = 1
Instance5.EmitterSize = 10
Instance5.RollOffMode = Enum.RollOffMode.Inverse
Instance5.LoopRegion = NumberRange.new(0, 60000)
Instance5.TimePosition = 0
Instance5.PlaybackSpeed = 1
Instance5.RollOffMaxDistance = 10000
Instance5.Volume = 0.5
Instance5.PlaybackRegion = NumberRange.new(0, 60000)
Instance5.SoundId = "rbxassetid://9113884125"
Instance5.Playing = false
Instance5.Name = "MouseHover"
Instance5.RollOffMinDistance = 10
Instance5.Looped = false
Instance5.MinDistance = 10
Instance5.MaxDistance = 10000
Instance5.PlaybackRegionsEnabled = false
Instance5.PlayOnRemove = false

local Instance6 = Instance.new("Sound", Instance3) --Click
Instance6.Pitch = 1
Instance6.EmitterSize = 10
Instance6.RollOffMode = Enum.RollOffMode.Inverse
Instance6.LoopRegion = NumberRange.new(0, 60000)
Instance6.TimePosition = 0
Instance6.PlaybackSpeed = 1
Instance6.RollOffMaxDistance = 10000
Instance6.Volume = 0.5
Instance6.PlaybackRegion = NumberRange.new(0, 60000)
Instance6.SoundId = "rbxassetid://15675032796"
Instance6.Playing = false
Instance6.Name = "Click"
Instance6.RollOffMinDistance = 10
Instance6.Looped = false
Instance6.MinDistance = 10
Instance6.MaxDistance = 10000
Instance6.PlaybackRegionsEnabled = false
Instance6.PlayOnRemove = false

local Instance7 = Instance.new("ModuleScript", Instance1) --ModuleScript
Instance7.Name = "ModuleScript"

local Instance8 = Instance.new("Frame", Instance1) --Holder
Instance8.Visible = true
Instance8.SelectionOrder = 0
Instance8.Name = "Holder"
Instance8.Active = false
Instance8.AutomaticSize = Enum.AutomaticSize.None
Instance8.AnchorPoint = Vector2.new(0.5, 0.5)
Instance8.Style = Enum.FrameStyle.Custom
Instance8.LayoutOrder = 0
Instance8.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance8.ZIndex = 10000
Instance8.Size = UDim2.new(1, 0, 1, 0)
Instance8.Draggable = false
Instance8.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance8.Selectable = false
Instance8.ClipsDescendants = false
Instance8.BorderColor3 = Color3.new(0, 0, 0)
Instance8.BorderSizePixel = 0
Instance8.Rotation = 0
Instance8.BackgroundTransparency = 1
Instance8.BorderMode = Enum.BorderMode.Outline
Instance8.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance9 = Instance.new("TextButton", Instance8) --Window
Instance9.LayoutOrder = 0
Instance9.TextWrapped = false
Instance9.LineHeight = 1
Instance9.Active = true
Instance9.TextStrokeTransparency = 1
Instance9.TextTruncate = Enum.TextTruncate.None
Instance9.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance9.ZIndex = 10001
Instance9.TextWrap = false
Instance9.Draggable = false
Instance9.RichText = false
Instance9.Modal = false
Instance9.SelectionOrder = 0
Instance9.Selectable = true
Instance9.AutoButtonColor = false
Instance9.TextXAlignment = Enum.TextXAlignment.Center
Instance9.Name = "Window"
Instance9.TextYAlignment = Enum.TextYAlignment.Center
Instance9.TextScaled = false
Instance9.TextDirection = Enum.TextDirection.Auto
Instance9.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance9.Visible = false
Instance9.BorderMode = Enum.BorderMode.Outline
Instance9.TextTransparency = 0
Instance9.FontSize = Enum.FontSize.Size14
Instance9.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance9.BackgroundColor3 = Color3.new(1, 0.333333, 0)
Instance9.AnchorPoint = Vector2.new(0.5, 0.5)
Instance9.TextSize = 14
Instance9.TextColor3 = Color3.new(0, 0, 0)
Instance9.Selected = false
Instance9.AutomaticSize = Enum.AutomaticSize.None
Instance9.Size = UDim2.new(0.699999988079071, 0, 0.7749999761581421, 0)
Instance9.ClipsDescendants = false
Instance9.BorderColor3 = Color3.new(0, 0, 0)
Instance9.Text = ""
Instance9.BorderSizePixel = 0
Instance9.Rotation = 0
Instance9.BackgroundTransparency = 0
Instance9.MaxVisibleGraphemes = -1
Instance9.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance9.Style = Enum.ButtonStyle.Custom

local Instance10 = Instance.new("UIStroke", Instance9) --UIStroke
Instance10.Enabled = true
Instance10.Color = Color3.new(0, 0, 0)
Instance10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance10.Thickness = 1
Instance10.Transparency = 0
Instance10.Name = "UIStroke"
Instance10.LineJoinMode = Enum.LineJoinMode.Miter

local Instance11 = Instance.new("Frame", Instance9) --HolderFrame
Instance11.Visible = true
Instance11.SelectionOrder = 0
Instance11.Name = "HolderFrame"
Instance11.Active = false
Instance11.AutomaticSize = Enum.AutomaticSize.None
Instance11.AnchorPoint = Vector2.new(0, 0)
Instance11.Style = Enum.FrameStyle.Custom
Instance11.LayoutOrder = 0
Instance11.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance11.ZIndex = 10002
Instance11.Size = UDim2.new(1, -4, 1, -4)
Instance11.Draggable = false
Instance11.Position = UDim2.new(0, 2, 0, 2)
Instance11.Selectable = false
Instance11.ClipsDescendants = false
Instance11.BorderColor3 = Color3.new(0, 0, 0)
Instance11.BorderSizePixel = 0
Instance11.Rotation = 0
Instance11.BackgroundTransparency = 0
Instance11.BorderMode = Enum.BorderMode.Outline
Instance11.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance12 = Instance.new("TextLabel", Instance11) --Title
Instance12.LayoutOrder = 0
Instance12.TextWrapped = true
Instance12.LineHeight = 1
Instance12.Active = false
Instance12.TextStrokeTransparency = 1
Instance12.TextTruncate = Enum.TextTruncate.None
Instance12.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance12.ZIndex = 10003
Instance12.BorderSizePixel = 0
Instance12.Draggable = false
Instance12.RichText = false
Instance12.TextWrap = true
Instance12.TextTransparency = 0
Instance12.TextYAlignment = Enum.TextYAlignment.Center
Instance12.TextScaled = true
Instance12.TextXAlignment = Enum.TextXAlignment.Center
Instance12.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance12.Name = "Title"
Instance12.BorderMode = Enum.BorderMode.Outline
Instance12.Selectable = false
Instance12.TextDirection = Enum.TextDirection.Auto
Instance12.Visible = true
Instance12.FontSize = Enum.FontSize.Size14
Instance12.AnchorPoint = Vector2.new(0, 0)
Instance12.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance12.TextSize = 14
Instance12.AutomaticSize = Enum.AutomaticSize.None
Instance12.Size = UDim2.new(1, 0, 0.06499999761581421, 0)
Instance12.TextColor3 = Color3.new(1, 1, 1)
Instance12.ClipsDescendants = false
Instance12.BorderColor3 = Color3.new(0, 0, 0)
Instance12.Text = "Fire Library | 5.0"
Instance12.SelectionOrder = 0
Instance12.BackgroundColor3 = Color3.new(1, 1, 1)
Instance12.Rotation = 0
Instance12.BackgroundTransparency = 1
Instance12.Position = UDim2.new(0, 0, 0.012500000186264515, 0)
Instance12.MaxVisibleGraphemes = -1

local Instance13 = Instance.new("Frame", Instance11) --Separator
Instance13.Visible = true
Instance13.SelectionOrder = 0
Instance13.Name = "Separator"
Instance13.Active = false
Instance13.AutomaticSize = Enum.AutomaticSize.None
Instance13.AnchorPoint = Vector2.new(0, 0)
Instance13.Style = Enum.FrameStyle.Custom
Instance13.LayoutOrder = 0
Instance13.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance13.ZIndex = 10003
Instance13.Size = UDim2.new(1, 0, 0, 2)
Instance13.Draggable = false
Instance13.Position = UDim2.new(0, 0, 0.15600000321865082, 0)
Instance13.Selectable = false
Instance13.ClipsDescendants = false
Instance13.BorderColor3 = Color3.new(0, 0, 0)
Instance13.BorderSizePixel = 0
Instance13.Rotation = 0
Instance13.BackgroundTransparency = 0
Instance13.BorderMode = Enum.BorderMode.Outline
Instance13.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance14 = Instance.new("ScrollingFrame", Instance11) --PageButtons
Instance14.LayoutOrder = 0
Instance14.Active = true
Instance14.ScrollingDirection = Enum.ScrollingDirection.X
Instance14.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance14.ZIndex = 10003
Instance14.CanvasSize = UDim2.new(0, 0, 0, 0)
Instance14.Draggable = false
Instance14.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance14.CanvasPosition = Vector2.new(0, 0)
Instance14.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
Instance14.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
Instance14.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
Instance14.VerticalScrollBarInset = Enum.ScrollBarInset.None
Instance14.BorderMode = Enum.BorderMode.Outline
Instance14.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
Instance14.AutomaticCanvasSize = Enum.AutomaticSize.X
Instance14.Selectable = true
Instance14.AnchorPoint = Vector2.new(0, 0)
Instance14.Name = "PageButtons"
Instance14.Visible = true
Instance14.Size = UDim2.new(1, 0, 0.06499999761581421, 0)
Instance14.ScrollBarImageColor3 = Color3.new(0, 0, 0)
Instance14.BorderSizePixel = 0
Instance14.ScrollBarImageTransparency = 0
Instance14.ClipsDescendants = true
Instance14.BorderColor3 = Color3.new(0, 0, 0)
Instance14.ScrollBarThickness = 0
Instance14.SelectionOrder = 0
Instance14.Rotation = 0
Instance14.BackgroundTransparency = 1
Instance14.Position = UDim2.new(0, 0, 0.09099999815225601, 0)
Instance14.ScrollingEnabled = true
Instance14.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
Instance14.AutomaticSize = Enum.AutomaticSize.None
Instance14.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance15 = Instance.new("UIListLayout", Instance14) --UIListLayout
Instance15.FillDirection = Enum.FillDirection.Horizontal
Instance15.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance15.HorizontalFlex = Enum.UIFlexAlignment.None
Instance15.VerticalFlex = Enum.UIFlexAlignment.None
Instance15.VerticalAlignment = Enum.VerticalAlignment.Top
Instance15.SortOrder = Enum.SortOrder.LayoutOrder
Instance15.Name = "UIListLayout"
Instance15.Padding = UDim.new(0, 0)
Instance15.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance16 = Instance.new("Frame", Instance14) --PageButton
Instance16.Visible = false
Instance16.SelectionOrder = 0
Instance16.Name = "PageButton"
Instance16.Active = false
Instance16.AutomaticSize = Enum.AutomaticSize.None
Instance16.AnchorPoint = Vector2.new(0, 0)
Instance16.Style = Enum.FrameStyle.Custom
Instance16.LayoutOrder = 0
Instance16.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance16.ZIndex = 1
Instance16.Size = UDim2.new(0.22200000286102295, 0, 1, 0)
Instance16.Draggable = false
Instance16.Position = UDim2.new(0, 0, 0, 0)
Instance16.Selectable = false
Instance16.ClipsDescendants = false
Instance16.BorderColor3 = Color3.new(0, 0, 0)
Instance16.BorderSizePixel = 0
Instance16.Rotation = 0
Instance16.BackgroundTransparency = 0
Instance16.BorderMode = Enum.BorderMode.Outline
Instance16.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance17 = Instance.new("Frame", Instance16) --Selection
Instance17.Visible = false
Instance17.SelectionOrder = 0
Instance17.Name = "Selection"
Instance17.Active = false
Instance17.AutomaticSize = Enum.AutomaticSize.None
Instance17.AnchorPoint = Vector2.new(0, 0)
Instance17.Style = Enum.FrameStyle.Custom
Instance17.LayoutOrder = 0
Instance17.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance17.ZIndex = 10005
Instance17.Size = UDim2.new(1, 0, 0, 2)
Instance17.Draggable = false
Instance17.Position = UDim2.new(0, 0, 1, -2)
Instance17.Selectable = false
Instance17.ClipsDescendants = false
Instance17.BorderColor3 = Color3.new(0, 0, 0)
Instance17.BorderSizePixel = 0
Instance17.Rotation = 0
Instance17.BackgroundTransparency = 0
Instance17.BorderMode = Enum.BorderMode.Outline
Instance17.BackgroundColor3 = Color3.new(1, 0.333333, 0)

local Instance18 = Instance.new("TextLabel", Instance16) --Text
Instance18.LayoutOrder = 0
Instance18.TextWrapped = true
Instance18.LineHeight = 1
Instance18.Active = true
Instance18.TextStrokeTransparency = 1
Instance18.TextTruncate = Enum.TextTruncate.None
Instance18.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance18.ZIndex = 10005
Instance18.BorderSizePixel = 0
Instance18.Draggable = false
Instance18.RichText = false
Instance18.TextWrap = true
Instance18.TextTransparency = 0
Instance18.TextYAlignment = Enum.TextYAlignment.Center
Instance18.TextScaled = true
Instance18.TextXAlignment = Enum.TextXAlignment.Center
Instance18.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance18.Name = "Text"
Instance18.BorderMode = Enum.BorderMode.Outline
Instance18.Selectable = false
Instance18.TextDirection = Enum.TextDirection.Auto
Instance18.Visible = true
Instance18.FontSize = Enum.FontSize.Size14
Instance18.AnchorPoint = Vector2.new(0, 0.5)
Instance18.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance18.TextSize = 14
Instance18.AutomaticSize = Enum.AutomaticSize.None
Instance18.Size = UDim2.new(1, 0, 0.4749999940395355, 0)
Instance18.TextColor3 = Color3.new(1, 1, 1)
Instance18.ClipsDescendants = false
Instance18.BorderColor3 = Color3.new(0, 0, 0)
Instance18.Text = "Page Button"
Instance18.SelectionOrder = 0
Instance18.BackgroundColor3 = Color3.new(1, 1, 1)
Instance18.Rotation = 0
Instance18.BackgroundTransparency = 1
Instance18.Position = UDim2.new(0, 0, 0.5, 0)
Instance18.MaxVisibleGraphemes = -1

local Instance19 = Instance.new("TextButton", Instance16) --Trigger
Instance19.LayoutOrder = 0
Instance19.TextWrapped = false
Instance19.LineHeight = 1
Instance19.Active = true
Instance19.TextStrokeTransparency = 1
Instance19.TextTruncate = Enum.TextTruncate.None
Instance19.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance19.ZIndex = 20000
Instance19.TextWrap = false
Instance19.Draggable = false
Instance19.RichText = false
Instance19.Modal = false
Instance19.SelectionOrder = 0
Instance19.Selectable = true
Instance19.AutoButtonColor = true
Instance19.TextXAlignment = Enum.TextXAlignment.Center
Instance19.Name = "Trigger"
Instance19.TextYAlignment = Enum.TextYAlignment.Center
Instance19.TextScaled = false
Instance19.TextDirection = Enum.TextDirection.Auto
Instance19.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance19.Visible = true
Instance19.BorderMode = Enum.BorderMode.Outline
Instance19.TextTransparency = 0
Instance19.FontSize = Enum.FontSize.Size14
Instance19.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance19.BackgroundColor3 = Color3.new(1, 1, 1)
Instance19.AnchorPoint = Vector2.new(0, 0)
Instance19.TextSize = 14
Instance19.TextColor3 = Color3.new(0, 0, 0)
Instance19.Selected = false
Instance19.AutomaticSize = Enum.AutomaticSize.None
Instance19.Size = UDim2.new(1, 0, 1, 0)
Instance19.ClipsDescendants = false
Instance19.BorderColor3 = Color3.new(0, 0, 0)
Instance19.Text = ""
Instance19.BorderSizePixel = 0
Instance19.Rotation = 0
Instance19.BackgroundTransparency = 1
Instance19.MaxVisibleGraphemes = -1
Instance19.Position = UDim2.new(0, 0, 0, 0)
Instance19.Style = Enum.ButtonStyle.Custom

local Instance20 = Instance.new("Frame", Instance11) --PageDisplay
Instance20.Visible = true
Instance20.SelectionOrder = 0
Instance20.Name = "PageDisplay"
Instance20.Active = false
Instance20.AutomaticSize = Enum.AutomaticSize.None
Instance20.AnchorPoint = Vector2.new(0, 0)
Instance20.Style = Enum.FrameStyle.Custom
Instance20.LayoutOrder = 0
Instance20.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance20.ZIndex = 10003
Instance20.Size = UDim2.new(1, 0, 0.843999981880188, -1)
Instance20.Draggable = false
Instance20.Position = UDim2.new(0, 0, 0.15600000321865082, 1)
Instance20.Selectable = false
Instance20.ClipsDescendants = false
Instance20.BorderColor3 = Color3.new(0, 0, 0)
Instance20.BorderSizePixel = 0
Instance20.Rotation = 0
Instance20.BackgroundTransparency = 1
Instance20.BorderMode = Enum.BorderMode.Outline
Instance20.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance21 = Instance.new("ScrollingFrame", Instance20) --Page
Instance21.LayoutOrder = 0
Instance21.Active = true
Instance21.ScrollingDirection = Enum.ScrollingDirection.Y
Instance21.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance21.ZIndex = 10004
Instance21.CanvasSize = UDim2.new(0, 0, 0.20000000298023224, 0)
Instance21.Draggable = false
Instance21.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance21.CanvasPosition = Vector2.new(0, 0)
Instance21.ElasticBehavior = Enum.ElasticBehavior.Always
Instance21.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance21.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
Instance21.VerticalScrollBarInset = Enum.ScrollBarInset.Always
Instance21.BorderMode = Enum.BorderMode.Outline
Instance21.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
Instance21.AutomaticCanvasSize = Enum.AutomaticSize.Y
Instance21.Selectable = true
Instance21.AnchorPoint = Vector2.new(0, 0)
Instance21.Name = "Page"
Instance21.Visible = false
Instance21.Size = UDim2.new(1, 0, 1, 0)
Instance21.ScrollBarImageColor3 = Color3.new(1, 0.333333, 0)
Instance21.BorderSizePixel = 0
Instance21.ScrollBarImageTransparency = 0
Instance21.ClipsDescendants = true
Instance21.BorderColor3 = Color3.new(0, 0, 0)
Instance21.ScrollBarThickness = 4
Instance21.SelectionOrder = 0
Instance21.Rotation = 0
Instance21.BackgroundTransparency = 1
Instance21.Position = UDim2.new(0, 0, 0, 0)
Instance21.ScrollingEnabled = true
Instance21.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance21.AutomaticSize = Enum.AutomaticSize.None
Instance21.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance22 = Instance.new("UIListLayout", Instance21) --UIListLayout
Instance22.FillDirection = Enum.FillDirection.Vertical
Instance22.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance22.HorizontalFlex = Enum.UIFlexAlignment.None
Instance22.VerticalFlex = Enum.UIFlexAlignment.None
Instance22.VerticalAlignment = Enum.VerticalAlignment.Top
Instance22.SortOrder = Enum.SortOrder.LayoutOrder
Instance22.Name = "UIListLayout"
Instance22.Padding = UDim.new(0, 0)
Instance22.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance23 = Instance.new("Frame", Instance21) --Label
Instance23.Visible = false
Instance23.SelectionOrder = 0
Instance23.Name = "Label"
Instance23.Active = false
Instance23.AutomaticSize = Enum.AutomaticSize.None
Instance23.AnchorPoint = Vector2.new(0, 0)
Instance23.Style = Enum.FrameStyle.Custom
Instance23.LayoutOrder = 0
Instance23.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance23.ZIndex = 10005
Instance23.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance23.Draggable = false
Instance23.Position = UDim2.new(0, 0, 0, 0)
Instance23.Selectable = false
Instance23.ClipsDescendants = false
Instance23.BorderColor3 = Color3.new(0, 0, 0)
Instance23.BorderSizePixel = 0
Instance23.Rotation = 0
Instance23.BackgroundTransparency = 1
Instance23.BorderMode = Enum.BorderMode.Outline
Instance23.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance24 = Instance.new("TextLabel", Instance23) --Text
Instance24.LayoutOrder = 0
Instance24.TextWrapped = true
Instance24.LineHeight = 1
Instance24.Active = true
Instance24.TextStrokeTransparency = 1
Instance24.TextTruncate = Enum.TextTruncate.None
Instance24.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance24.ZIndex = 10006
Instance24.BorderSizePixel = 0
Instance24.Draggable = false
Instance24.RichText = false
Instance24.TextWrap = true
Instance24.TextTransparency = 0
Instance24.TextYAlignment = Enum.TextYAlignment.Center
Instance24.TextScaled = true
Instance24.TextXAlignment = Enum.TextXAlignment.Left
Instance24.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance24.Name = "Text"
Instance24.BorderMode = Enum.BorderMode.Outline
Instance24.Selectable = false
Instance24.TextDirection = Enum.TextDirection.Auto
Instance24.Visible = true
Instance24.FontSize = Enum.FontSize.Size14
Instance24.AnchorPoint = Vector2.new(0.5, 0.5)
Instance24.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance24.TextSize = 14
Instance24.AutomaticSize = Enum.AutomaticSize.None
Instance24.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance24.TextColor3 = Color3.new(1, 1, 1)
Instance24.ClipsDescendants = false
Instance24.BorderColor3 = Color3.new(0, 0, 0)
Instance24.Text = "LabelExample"
Instance24.SelectionOrder = 0
Instance24.BackgroundColor3 = Color3.new(1, 1, 1)
Instance24.Rotation = 0
Instance24.BackgroundTransparency = 1
Instance24.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance24.MaxVisibleGraphemes = -1

local Instance25 = Instance.new("Frame", Instance23) --Separator
Instance25.Visible = true
Instance25.SelectionOrder = 0
Instance25.Name = "Separator"
Instance25.Active = false
Instance25.AutomaticSize = Enum.AutomaticSize.None
Instance25.AnchorPoint = Vector2.new(0, 0)
Instance25.Style = Enum.FrameStyle.Custom
Instance25.LayoutOrder = 0
Instance25.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance25.ZIndex = 10001
Instance25.Size = UDim2.new(1, 0, 0, 1)
Instance25.Draggable = false
Instance25.Position = UDim2.new(0, 0, 0, 0)
Instance25.Selectable = false
Instance25.ClipsDescendants = false
Instance25.BorderColor3 = Color3.new(0, 0, 0)
Instance25.BorderSizePixel = 0
Instance25.Rotation = 0
Instance25.BackgroundTransparency = 0
Instance25.BorderMode = Enum.BorderMode.Outline
Instance25.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance26 = Instance.new("TextButton", Instance21) --Toggle
Instance26.LayoutOrder = 0
Instance26.TextWrapped = false
Instance26.LineHeight = 1
Instance26.Active = true
Instance26.TextStrokeTransparency = 1
Instance26.TextTruncate = Enum.TextTruncate.None
Instance26.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance26.ZIndex = 10005
Instance26.TextWrap = false
Instance26.Draggable = false
Instance26.RichText = false
Instance26.Modal = false
Instance26.SelectionOrder = 0
Instance26.Selectable = true
Instance26.AutoButtonColor = true
Instance26.TextXAlignment = Enum.TextXAlignment.Center
Instance26.Name = "Toggle"
Instance26.TextYAlignment = Enum.TextYAlignment.Center
Instance26.TextScaled = false
Instance26.TextDirection = Enum.TextDirection.Auto
Instance26.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance26.Visible = false
Instance26.BorderMode = Enum.BorderMode.Outline
Instance26.TextTransparency = 0
Instance26.FontSize = Enum.FontSize.Size14
Instance26.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance26.BackgroundColor3 = Color3.new(1, 1, 1)
Instance26.AnchorPoint = Vector2.new(0, 0)
Instance26.TextSize = 14
Instance26.TextColor3 = Color3.new(0, 0, 0)
Instance26.Selected = false
Instance26.AutomaticSize = Enum.AutomaticSize.None
Instance26.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance26.ClipsDescendants = false
Instance26.BorderColor3 = Color3.new(0, 0, 0)
Instance26.Text = ""
Instance26.BorderSizePixel = 0
Instance26.Rotation = 0
Instance26.BackgroundTransparency = 1
Instance26.MaxVisibleGraphemes = -1
Instance26.Position = UDim2.new(0, 0, 0, 0)
Instance26.Style = Enum.ButtonStyle.Custom

local Instance27 = Instance.new("Frame", Instance26) --ToggleOuter
Instance27.Visible = true
Instance27.SelectionOrder = 0
Instance27.Name = "ToggleOuter"
Instance27.Active = false
Instance27.AutomaticSize = Enum.AutomaticSize.None
Instance27.AnchorPoint = Vector2.new(0, 0.5)
Instance27.Style = Enum.FrameStyle.Custom
Instance27.LayoutOrder = 0
Instance27.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance27.ZIndex = 10006
Instance27.Size = UDim2.new(0.05000000074505806, -1, 1, 0)
Instance27.Draggable = false
Instance27.Position = UDim2.new(0.05000000074505806, 0, 0.5, 0)
Instance27.Selectable = false
Instance27.ClipsDescendants = false
Instance27.BorderColor3 = Color3.new(0, 0, 0)
Instance27.BorderSizePixel = 0
Instance27.Rotation = 0
Instance27.BackgroundTransparency = 0
Instance27.BorderMode = Enum.BorderMode.Outline
Instance27.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance28 = Instance.new("UIAspectRatioConstraint", Instance27) --UIAspectRatioConstraint
Instance28.DominantAxis = Enum.DominantAxis.Width
Instance28.AspectRatio = 1
Instance28.Name = "UIAspectRatioConstraint"
Instance28.AspectType = Enum.AspectType.FitWithinMaxSize

local Instance29 = Instance.new("UIStroke", Instance27) --UIStroke
Instance29.Enabled = true
Instance29.Color = Color3.new(0, 0, 0)
Instance29.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance29.Thickness = 1
Instance29.Transparency = 0
Instance29.Name = "UIStroke"
Instance29.LineJoinMode = Enum.LineJoinMode.Miter

local Instance30 = Instance.new("Frame", Instance27) --Frame
Instance30.Visible = true
Instance30.SelectionOrder = 0
Instance30.Name = "Frame"
Instance30.Active = false
Instance30.AutomaticSize = Enum.AutomaticSize.None
Instance30.AnchorPoint = Vector2.new(0, 0)
Instance30.Style = Enum.FrameStyle.Custom
Instance30.LayoutOrder = 0
Instance30.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance30.ZIndex = 10007
Instance30.Size = UDim2.new(1, -4, 1, -4)
Instance30.Draggable = false
Instance30.Position = UDim2.new(0, 2, 0, 2)
Instance30.Selectable = false
Instance30.ClipsDescendants = false
Instance30.BorderColor3 = Color3.new(0, 0, 0)
Instance30.BorderSizePixel = 0
Instance30.Rotation = 0
Instance30.BackgroundTransparency = 0
Instance30.BorderMode = Enum.BorderMode.Outline
Instance30.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance31 = Instance.new("ImageLabel", Instance30) --ImageLabel
Instance31.Visible = true
Instance31.Active = false
Instance31.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance31.ZIndex = 10008
Instance31.BorderSizePixel = 0
Instance31.SliceCenter = Rect.new(0, 0, 0, 0)
Instance31.Draggable = false
Instance31.ScaleType = Enum.ScaleType.Stretch
Instance31.BackgroundColor3 = Color3.new(1, 1, 1)
Instance31.ImageTransparency = 0
Instance31.AnchorPoint = Vector2.new(0.5, 0.5)
Instance31.Image = "rbxassetid://12690727184"
Instance31.TileSize = UDim2.new(1, 0, 1, 0)
Instance31.ImageRectSize = Vector2.new(0, 0)
Instance31.SelectionOrder = 0
Instance31.Selectable = false
Instance31.Size = UDim2.new(0.8999999761581421, 0, 0.8999999761581421, 0)
Instance31.Name = "ImageLabel"
Instance31.ResampleMode = Enum.ResamplerMode.Default
Instance31.ClipsDescendants = false
Instance31.BorderColor3 = Color3.new(0, 0, 0)
Instance31.ImageColor3 = Color3.new(1, 0.333333, 0)
Instance31.LayoutOrder = 0
Instance31.BorderMode = Enum.BorderMode.Outline
Instance31.Rotation = 0
Instance31.ImageRectOffset = Vector2.new(0, 0)
Instance31.BackgroundTransparency = 1
Instance31.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance31.SliceScale = 1
Instance31.AutomaticSize = Enum.AutomaticSize.None

local Instance32 = Instance.new("TextLabel", Instance26) --Text
Instance32.LayoutOrder = 0
Instance32.TextWrapped = true
Instance32.LineHeight = 1
Instance32.Active = true
Instance32.TextStrokeTransparency = 1
Instance32.TextTruncate = Enum.TextTruncate.None
Instance32.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance32.ZIndex = 10006
Instance32.BorderSizePixel = 0
Instance32.Draggable = false
Instance32.RichText = false
Instance32.TextWrap = true
Instance32.TextTransparency = 0
Instance32.TextYAlignment = Enum.TextYAlignment.Center
Instance32.TextScaled = true
Instance32.TextXAlignment = Enum.TextXAlignment.Left
Instance32.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance32.Name = "Text"
Instance32.BorderMode = Enum.BorderMode.Outline
Instance32.Selectable = false
Instance32.TextDirection = Enum.TextDirection.Auto
Instance32.Visible = true
Instance32.FontSize = Enum.FontSize.Size14
Instance32.AnchorPoint = Vector2.new(0.5, 0.5)
Instance32.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance32.TextSize = 14
Instance32.AutomaticSize = Enum.AutomaticSize.None
Instance32.Size = UDim2.new(0.824999988079071, 0, 0.4000000059604645, 0)
Instance32.TextColor3 = Color3.new(1, 1, 1)
Instance32.ClipsDescendants = false
Instance32.BorderColor3 = Color3.new(0, 0, 0)
Instance32.Text = "ToggleExample"
Instance32.SelectionOrder = 0
Instance32.BackgroundColor3 = Color3.new(1, 1, 1)
Instance32.Rotation = 0
Instance32.BackgroundTransparency = 1
Instance32.Position = UDim2.new(0.5249999761581421, 0, 0.5, 0)
Instance32.MaxVisibleGraphemes = -1

local Instance33 = Instance.new("Frame", Instance26) --Separator
Instance33.Visible = true
Instance33.SelectionOrder = 0
Instance33.Name = "Separator"
Instance33.Active = false
Instance33.AutomaticSize = Enum.AutomaticSize.None
Instance33.AnchorPoint = Vector2.new(0, 0)
Instance33.Style = Enum.FrameStyle.Custom
Instance33.LayoutOrder = 0
Instance33.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance33.ZIndex = 10006
Instance33.Size = UDim2.new(1, 0, 0, 1)
Instance33.Draggable = false
Instance33.Position = UDim2.new(0, 0, 0, 0)
Instance33.Selectable = false
Instance33.ClipsDescendants = false
Instance33.BorderColor3 = Color3.new(0, 0, 0)
Instance33.BorderSizePixel = 0
Instance33.Rotation = 0
Instance33.BackgroundTransparency = 0
Instance33.BorderMode = Enum.BorderMode.Outline
Instance33.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance34 = Instance.new("TextButton", Instance26) --Trigger
Instance34.LayoutOrder = 0
Instance34.TextWrapped = false
Instance34.LineHeight = 1
Instance34.Active = true
Instance34.TextStrokeTransparency = 1
Instance34.TextTruncate = Enum.TextTruncate.None
Instance34.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance34.ZIndex = 20000
Instance34.TextWrap = false
Instance34.Draggable = false
Instance34.RichText = false
Instance34.Modal = false
Instance34.SelectionOrder = 0
Instance34.Selectable = true
Instance34.AutoButtonColor = true
Instance34.TextXAlignment = Enum.TextXAlignment.Center
Instance34.Name = "Trigger"
Instance34.TextYAlignment = Enum.TextYAlignment.Center
Instance34.TextScaled = false
Instance34.TextDirection = Enum.TextDirection.Auto
Instance34.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance34.Visible = true
Instance34.BorderMode = Enum.BorderMode.Outline
Instance34.TextTransparency = 0
Instance34.FontSize = Enum.FontSize.Size14
Instance34.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance34.BackgroundColor3 = Color3.new(1, 1, 1)
Instance34.AnchorPoint = Vector2.new(0, 0)
Instance34.TextSize = 14
Instance34.TextColor3 = Color3.new(0, 0, 0)
Instance34.Selected = false
Instance34.AutomaticSize = Enum.AutomaticSize.None
Instance34.Size = UDim2.new(1, 0, 1, 0)
Instance34.ClipsDescendants = false
Instance34.BorderColor3 = Color3.new(0, 0, 0)
Instance34.Text = ""
Instance34.BorderSizePixel = 0
Instance34.Rotation = 0
Instance34.BackgroundTransparency = 1
Instance34.MaxVisibleGraphemes = -1
Instance34.Position = UDim2.new(0, 0, 0, 0)
Instance34.Style = Enum.ButtonStyle.Custom

local Instance35 = Instance.new("TextButton", Instance21) --Slider
Instance35.LayoutOrder = 0
Instance35.TextWrapped = false
Instance35.LineHeight = 1
Instance35.Active = true
Instance35.TextStrokeTransparency = 1
Instance35.TextTruncate = Enum.TextTruncate.None
Instance35.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance35.ZIndex = 10005
Instance35.TextWrap = false
Instance35.Draggable = false
Instance35.RichText = false
Instance35.Modal = false
Instance35.SelectionOrder = 0
Instance35.Selectable = true
Instance35.AutoButtonColor = true
Instance35.TextXAlignment = Enum.TextXAlignment.Center
Instance35.Name = "Slider"
Instance35.TextYAlignment = Enum.TextYAlignment.Center
Instance35.TextScaled = false
Instance35.TextDirection = Enum.TextDirection.Auto
Instance35.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance35.Visible = false
Instance35.BorderMode = Enum.BorderMode.Outline
Instance35.TextTransparency = 0
Instance35.FontSize = Enum.FontSize.Size14
Instance35.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance35.BackgroundColor3 = Color3.new(1, 1, 1)
Instance35.AnchorPoint = Vector2.new(0, 0)
Instance35.TextSize = 14
Instance35.TextColor3 = Color3.new(0, 0, 0)
Instance35.Selected = false
Instance35.AutomaticSize = Enum.AutomaticSize.None
Instance35.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance35.ClipsDescendants = false
Instance35.BorderColor3 = Color3.new(0, 0, 0)
Instance35.Text = ""
Instance35.BorderSizePixel = 0
Instance35.Rotation = 0
Instance35.BackgroundTransparency = 1
Instance35.MaxVisibleGraphemes = -1
Instance35.Position = UDim2.new(0, 0, 0, 0)
Instance35.Style = Enum.ButtonStyle.Custom

local Instance36 = Instance.new("TextLabel", Instance35) --Text
Instance36.LayoutOrder = 0
Instance36.TextWrapped = true
Instance36.LineHeight = 1
Instance36.Active = true
Instance36.TextStrokeTransparency = 1
Instance36.TextTruncate = Enum.TextTruncate.None
Instance36.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance36.ZIndex = 10006
Instance36.BorderSizePixel = 0
Instance36.Draggable = false
Instance36.RichText = false
Instance36.TextWrap = true
Instance36.TextTransparency = 0
Instance36.TextYAlignment = Enum.TextYAlignment.Center
Instance36.TextScaled = true
Instance36.TextXAlignment = Enum.TextXAlignment.Left
Instance36.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance36.Name = "Text"
Instance36.BorderMode = Enum.BorderMode.Outline
Instance36.Selectable = false
Instance36.TextDirection = Enum.TextDirection.Auto
Instance36.Visible = true
Instance36.FontSize = Enum.FontSize.Size14
Instance36.AnchorPoint = Vector2.new(0.5, 0.5)
Instance36.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance36.TextSize = 14
Instance36.AutomaticSize = Enum.AutomaticSize.None
Instance36.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance36.TextColor3 = Color3.new(1, 1, 1)
Instance36.ClipsDescendants = false
Instance36.BorderColor3 = Color3.new(0, 0, 0)
Instance36.Text = "SliderExample"
Instance36.SelectionOrder = 0
Instance36.BackgroundColor3 = Color3.new(1, 1, 1)
Instance36.Rotation = 0
Instance36.BackgroundTransparency = 1
Instance36.Position = UDim2.new(0.5, 0, 0.25, 0)
Instance36.MaxVisibleGraphemes = -1

local Instance37 = Instance.new("Frame", Instance35) --Separator
Instance37.Visible = true
Instance37.SelectionOrder = 0
Instance37.Name = "Separator"
Instance37.Active = false
Instance37.AutomaticSize = Enum.AutomaticSize.None
Instance37.AnchorPoint = Vector2.new(0, 0)
Instance37.Style = Enum.FrameStyle.Custom
Instance37.LayoutOrder = 0
Instance37.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance37.ZIndex = 10006
Instance37.Size = UDim2.new(1, 0, 0, 1)
Instance37.Draggable = false
Instance37.Position = UDim2.new(0, 0, 0, 0)
Instance37.Selectable = false
Instance37.ClipsDescendants = false
Instance37.BorderColor3 = Color3.new(0, 0, 0)
Instance37.BorderSizePixel = 0
Instance37.Rotation = 0
Instance37.BackgroundTransparency = 0
Instance37.BorderMode = Enum.BorderMode.Outline
Instance37.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance38 = Instance.new("Frame", Instance35) --SliderOuter
Instance38.Visible = true
Instance38.SelectionOrder = 0
Instance38.Name = "SliderOuter"
Instance38.Active = false
Instance38.AutomaticSize = Enum.AutomaticSize.None
Instance38.AnchorPoint = Vector2.new(0, 0)
Instance38.Style = Enum.FrameStyle.Custom
Instance38.LayoutOrder = 0
Instance38.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance38.ZIndex = 10006
Instance38.Size = UDim2.new(0.8999999761581421, -2, 0.4000000059604645, 0)
Instance38.Draggable = false
Instance38.Position = UDim2.new(0.05000000074505806, 1, 0.5, 0)
Instance38.Selectable = false
Instance38.ClipsDescendants = false
Instance38.BorderColor3 = Color3.new(0, 0, 0)
Instance38.BorderSizePixel = 0
Instance38.Rotation = 0
Instance38.BackgroundTransparency = 0
Instance38.BorderMode = Enum.BorderMode.Outline
Instance38.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance39 = Instance.new("UIStroke", Instance38) --UIStroke
Instance39.Enabled = true
Instance39.Color = Color3.new(0, 0, 0)
Instance39.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance39.Thickness = 1
Instance39.Transparency = 0
Instance39.Name = "UIStroke"
Instance39.LineJoinMode = Enum.LineJoinMode.Miter

local Instance40 = Instance.new("Frame", Instance38) --Bar
Instance40.Visible = true
Instance40.SelectionOrder = 0
Instance40.Name = "Bar"
Instance40.Active = false
Instance40.AutomaticSize = Enum.AutomaticSize.None
Instance40.AnchorPoint = Vector2.new(0, 0)
Instance40.Style = Enum.FrameStyle.Custom
Instance40.LayoutOrder = 0
Instance40.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance40.ZIndex = 10007
Instance40.Size = UDim2.new(1, -4, 1, -4)
Instance40.Draggable = false
Instance40.Position = UDim2.new(0, 2, 0, 2)
Instance40.Selectable = false
Instance40.ClipsDescendants = false
Instance40.BorderColor3 = Color3.new(0, 0, 0)
Instance40.BorderSizePixel = 0
Instance40.Rotation = 0
Instance40.BackgroundTransparency = 0
Instance40.BorderMode = Enum.BorderMode.Outline
Instance40.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance41 = Instance.new("Frame", Instance40) --Fill
Instance41.Visible = true
Instance41.SelectionOrder = 0
Instance41.Name = "Fill"
Instance41.Active = false
Instance41.AutomaticSize = Enum.AutomaticSize.None
Instance41.AnchorPoint = Vector2.new(0, 0)
Instance41.Style = Enum.FrameStyle.Custom
Instance41.LayoutOrder = 0
Instance41.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance41.ZIndex = 10008
Instance41.Size = UDim2.new(0.5, 0, 1, 0)
Instance41.Draggable = false
Instance41.Position = UDim2.new(0, 0, 0, 0)
Instance41.Selectable = false
Instance41.ClipsDescendants = false
Instance41.BorderColor3 = Color3.new(0, 0, 0)
Instance41.BorderSizePixel = 0
Instance41.Rotation = 0
Instance41.BackgroundTransparency = 0
Instance41.BorderMode = Enum.BorderMode.Outline
Instance41.BackgroundColor3 = Color3.new(1, 0.333333, 0)

local Instance42 = Instance.new("TextLabel", Instance40) --Progress
Instance42.LayoutOrder = 0
Instance42.TextWrapped = true
Instance42.LineHeight = 1
Instance42.Active = false
Instance42.TextStrokeTransparency = 1
Instance42.TextTruncate = Enum.TextTruncate.None
Instance42.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance42.ZIndex = 10009
Instance42.BorderSizePixel = 0
Instance42.Draggable = false
Instance42.RichText = false
Instance42.TextWrap = true
Instance42.TextTransparency = 0
Instance42.TextYAlignment = Enum.TextYAlignment.Center
Instance42.TextScaled = true
Instance42.TextXAlignment = Enum.TextXAlignment.Center
Instance42.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance42.Name = "Progress"
Instance42.BorderMode = Enum.BorderMode.Outline
Instance42.Selectable = false
Instance42.TextDirection = Enum.TextDirection.Auto
Instance42.Visible = true
Instance42.FontSize = Enum.FontSize.Size14
Instance42.AnchorPoint = Vector2.new(0, 0)
Instance42.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance42.TextSize = 14
Instance42.AutomaticSize = Enum.AutomaticSize.None
Instance42.Size = UDim2.new(1, 0, 1, 0)
Instance42.TextColor3 = Color3.new(1, 1, 1)
Instance42.ClipsDescendants = false
Instance42.BorderColor3 = Color3.new(0, 0, 0)
Instance42.Text = "50 / 100"
Instance42.SelectionOrder = 0
Instance42.BackgroundColor3 = Color3.new(1, 1, 1)
Instance42.Rotation = 0
Instance42.BackgroundTransparency = 1
Instance42.Position = UDim2.new(0, 0, 0, 0)
Instance42.MaxVisibleGraphemes = -1

local Instance43 = Instance.new("TextButton", Instance35) --Trigger
Instance43.LayoutOrder = 0
Instance43.TextWrapped = false
Instance43.LineHeight = 1
Instance43.Active = true
Instance43.TextStrokeTransparency = 1
Instance43.TextTruncate = Enum.TextTruncate.None
Instance43.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance43.ZIndex = 20000
Instance43.TextWrap = false
Instance43.Draggable = false
Instance43.RichText = false
Instance43.Modal = false
Instance43.SelectionOrder = 0
Instance43.Selectable = true
Instance43.AutoButtonColor = true
Instance43.TextXAlignment = Enum.TextXAlignment.Center
Instance43.Name = "Trigger"
Instance43.TextYAlignment = Enum.TextYAlignment.Center
Instance43.TextScaled = false
Instance43.TextDirection = Enum.TextDirection.Auto
Instance43.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance43.Visible = true
Instance43.BorderMode = Enum.BorderMode.Outline
Instance43.TextTransparency = 0
Instance43.FontSize = Enum.FontSize.Size14
Instance43.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance43.BackgroundColor3 = Color3.new(1, 1, 1)
Instance43.AnchorPoint = Vector2.new(0, 0)
Instance43.TextSize = 14
Instance43.TextColor3 = Color3.new(0, 0, 0)
Instance43.Selected = false
Instance43.AutomaticSize = Enum.AutomaticSize.None
Instance43.Size = UDim2.new(1, 0, 1, 0)
Instance43.ClipsDescendants = false
Instance43.BorderColor3 = Color3.new(0, 0, 0)
Instance43.Text = ""
Instance43.BorderSizePixel = 0
Instance43.Rotation = 0
Instance43.BackgroundTransparency = 1
Instance43.MaxVisibleGraphemes = -1
Instance43.Position = UDim2.new(0, 0, 0, 0)
Instance43.Style = Enum.ButtonStyle.Custom

local Instance44 = Instance.new("Frame", Instance21) --ColorPicker
Instance44.Visible = false
Instance44.SelectionOrder = 0
Instance44.Name = "ColorPicker"
Instance44.Active = false
Instance44.AutomaticSize = Enum.AutomaticSize.None
Instance44.AnchorPoint = Vector2.new(0, 0)
Instance44.Style = Enum.FrameStyle.Custom
Instance44.LayoutOrder = 0
Instance44.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance44.ZIndex = 10005
Instance44.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance44.Draggable = false
Instance44.Position = UDim2.new(0, 0, 0, 0)
Instance44.Selectable = false
Instance44.ClipsDescendants = false
Instance44.BorderColor3 = Color3.new(0, 0, 0)
Instance44.BorderSizePixel = 0
Instance44.Rotation = 0
Instance44.BackgroundTransparency = 1
Instance44.BorderMode = Enum.BorderMode.Outline
Instance44.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance45 = Instance.new("Frame", Instance44) --Separator
Instance45.Visible = true
Instance45.SelectionOrder = 0
Instance45.Name = "Separator"
Instance45.Active = false
Instance45.AutomaticSize = Enum.AutomaticSize.None
Instance45.AnchorPoint = Vector2.new(0, 0)
Instance45.Style = Enum.FrameStyle.Custom
Instance45.LayoutOrder = 0
Instance45.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance45.ZIndex = 10006
Instance45.Size = UDim2.new(1, 0, 0, 1)
Instance45.Draggable = false
Instance45.Position = UDim2.new(0, 0, 0, 0)
Instance45.Selectable = false
Instance45.ClipsDescendants = false
Instance45.BorderColor3 = Color3.new(0, 0, 0)
Instance45.BorderSizePixel = 0
Instance45.Rotation = 0
Instance45.BackgroundTransparency = 0
Instance45.BorderMode = Enum.BorderMode.Outline
Instance45.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance46 = Instance.new("TextLabel", Instance44) --Text
Instance46.LayoutOrder = 0
Instance46.TextWrapped = true
Instance46.LineHeight = 1
Instance46.Active = true
Instance46.TextStrokeTransparency = 1
Instance46.TextTruncate = Enum.TextTruncate.None
Instance46.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance46.ZIndex = 10006
Instance46.BorderSizePixel = 0
Instance46.Draggable = false
Instance46.RichText = false
Instance46.TextWrap = true
Instance46.TextTransparency = 0
Instance46.TextYAlignment = Enum.TextYAlignment.Center
Instance46.TextScaled = true
Instance46.TextXAlignment = Enum.TextXAlignment.Left
Instance46.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance46.Name = "Text"
Instance46.BorderMode = Enum.BorderMode.Outline
Instance46.Selectable = false
Instance46.TextDirection = Enum.TextDirection.Auto
Instance46.Visible = true
Instance46.FontSize = Enum.FontSize.Size14
Instance46.AnchorPoint = Vector2.new(0, 0.5)
Instance46.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance46.TextSize = 14
Instance46.AutomaticSize = Enum.AutomaticSize.None
Instance46.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance46.TextColor3 = Color3.new(1, 1, 1)
Instance46.ClipsDescendants = false
Instance46.BorderColor3 = Color3.new(0, 0, 0)
Instance46.Text = "ColorPickerExample"
Instance46.SelectionOrder = 0
Instance46.BackgroundColor3 = Color3.new(1, 1, 1)
Instance46.Rotation = 0
Instance46.BackgroundTransparency = 1
Instance46.Position = UDim2.new(0.05000000074505806, 0, 0.25, 0)
Instance46.MaxVisibleGraphemes = -1

local Instance47 = Instance.new("Frame", Instance46) --Color
Instance47.Visible = true
Instance47.SelectionOrder = 0
Instance47.Name = "Color"
Instance47.Active = false
Instance47.AutomaticSize = Enum.AutomaticSize.None
Instance47.AnchorPoint = Vector2.new(0, 0.5)
Instance47.Style = Enum.FrameStyle.Custom
Instance47.LayoutOrder = 0
Instance47.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance47.ZIndex = 10007
Instance47.Size = UDim2.new(0.699999988079071, 0, 0.699999988079071, 0)
Instance47.Draggable = false
Instance47.Position = UDim2.new(0.9700000286102295, 0, 0.5, 0)
Instance47.Selectable = false
Instance47.ClipsDescendants = false
Instance47.BorderColor3 = Color3.new(0, 0, 0)
Instance47.BorderSizePixel = 0
Instance47.Rotation = 0
Instance47.BackgroundTransparency = 0
Instance47.BorderMode = Enum.BorderMode.Outline
Instance47.BackgroundColor3 = Color3.new(0.498039, 0.498039, 0.498039)

local Instance48 = Instance.new("UIAspectRatioConstraint", Instance47) --UIAspectRatioConstraint
Instance48.DominantAxis = Enum.DominantAxis.Width
Instance48.AspectRatio = 1
Instance48.Name = "UIAspectRatioConstraint"
Instance48.AspectType = Enum.AspectType.FitWithinMaxSize

local Instance49 = Instance.new("UIStroke", Instance47) --UIStroke
Instance49.Enabled = true
Instance49.Color = Color3.new(0, 0, 0)
Instance49.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance49.Thickness = 1
Instance49.Transparency = 0
Instance49.Name = "UIStroke"
Instance49.LineJoinMode = Enum.LineJoinMode.Miter

local Instance50 = Instance.new("Frame", Instance44) --RGB
Instance50.Visible = true
Instance50.SelectionOrder = 0
Instance50.Name = "RGB"
Instance50.Active = false
Instance50.AutomaticSize = Enum.AutomaticSize.None
Instance50.AnchorPoint = Vector2.new(0.5, 0)
Instance50.Style = Enum.FrameStyle.Custom
Instance50.LayoutOrder = 0
Instance50.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance50.ZIndex = 10006
Instance50.Size = UDim2.new(0.9300000071525574, 0, 0.4000000059604645, 0)
Instance50.Draggable = false
Instance50.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance50.Selectable = false
Instance50.ClipsDescendants = false
Instance50.BorderColor3 = Color3.new(0, 0, 0)
Instance50.BorderSizePixel = 0
Instance50.Rotation = 0
Instance50.BackgroundTransparency = 1
Instance50.BorderMode = Enum.BorderMode.Outline
Instance50.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance51 = Instance.new("UIListLayout", Instance50) --UIListLayout
Instance51.FillDirection = Enum.FillDirection.Horizontal
Instance51.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance51.HorizontalFlex = Enum.UIFlexAlignment.None
Instance51.VerticalFlex = Enum.UIFlexAlignment.None
Instance51.VerticalAlignment = Enum.VerticalAlignment.Top
Instance51.SortOrder = Enum.SortOrder.LayoutOrder
Instance51.Name = "UIListLayout"
Instance51.Padding = UDim.new(0, 0)
Instance51.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance52 = Instance.new("Frame", Instance50) --RHolder
Instance52.Visible = true
Instance52.SelectionOrder = 0
Instance52.Name = "RHolder"
Instance52.Active = false
Instance52.AutomaticSize = Enum.AutomaticSize.None
Instance52.AnchorPoint = Vector2.new(0, 0)
Instance52.Style = Enum.FrameStyle.Custom
Instance52.LayoutOrder = 0
Instance52.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance52.ZIndex = 10007
Instance52.Size = UDim2.new(0.3330000042915344, 0, 1, 0)
Instance52.Draggable = false
Instance52.Position = UDim2.new(0, 0, 0, 0)
Instance52.Selectable = false
Instance52.ClipsDescendants = false
Instance52.BorderColor3 = Color3.new(0, 0, 0)
Instance52.BorderSizePixel = 0
Instance52.Rotation = 0
Instance52.BackgroundTransparency = 1
Instance52.BorderMode = Enum.BorderMode.Outline
Instance52.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance53 = Instance.new("TextButton", Instance52) --SliderOuter
Instance53.LayoutOrder = 0
Instance53.TextWrapped = false
Instance53.LineHeight = 1
Instance53.Active = true
Instance53.TextStrokeTransparency = 1
Instance53.TextTruncate = Enum.TextTruncate.None
Instance53.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance53.ZIndex = 10001
Instance53.TextWrap = false
Instance53.Draggable = false
Instance53.RichText = false
Instance53.Modal = false
Instance53.SelectionOrder = 0
Instance53.Selectable = true
Instance53.AutoButtonColor = false
Instance53.TextXAlignment = Enum.TextXAlignment.Center
Instance53.Name = "SliderOuter"
Instance53.TextYAlignment = Enum.TextYAlignment.Center
Instance53.TextScaled = false
Instance53.TextDirection = Enum.TextDirection.Auto
Instance53.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance53.Visible = true
Instance53.BorderMode = Enum.BorderMode.Outline
Instance53.TextTransparency = 0
Instance53.FontSize = Enum.FontSize.Size14
Instance53.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance53.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Instance53.AnchorPoint = Vector2.new(0.5, 0)
Instance53.TextSize = 14
Instance53.TextColor3 = Color3.new(0, 0, 0)
Instance53.Selected = false
Instance53.AutomaticSize = Enum.AutomaticSize.None
Instance53.Size = UDim2.new(0.8999999761581421, 0, 1, 0)
Instance53.ClipsDescendants = false
Instance53.BorderColor3 = Color3.new(0, 0, 0)
Instance53.Text = "Button"
Instance53.BorderSizePixel = 0
Instance53.Rotation = 0
Instance53.BackgroundTransparency = 0
Instance53.MaxVisibleGraphemes = -1
Instance53.Position = UDim2.new(0.5, 0, 0, 0)
Instance53.Style = Enum.ButtonStyle.Custom

local Instance54 = Instance.new("Frame", Instance53) --Bar
Instance54.Visible = true
Instance54.SelectionOrder = 0
Instance54.Name = "Bar"
Instance54.Active = false
Instance54.AutomaticSize = Enum.AutomaticSize.None
Instance54.AnchorPoint = Vector2.new(0, 0)
Instance54.Style = Enum.FrameStyle.Custom
Instance54.LayoutOrder = 0
Instance54.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance54.ZIndex = 10009
Instance54.Size = UDim2.new(1, -4, 1, -4)
Instance54.Draggable = false
Instance54.Position = UDim2.new(0, 2, 0, 2)
Instance54.Selectable = false
Instance54.ClipsDescendants = false
Instance54.BorderColor3 = Color3.new(0, 0, 0)
Instance54.BorderSizePixel = 0
Instance54.Rotation = 0
Instance54.BackgroundTransparency = 0
Instance54.BorderMode = Enum.BorderMode.Outline
Instance54.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance55 = Instance.new("Frame", Instance54) --Fill
Instance55.Visible = true
Instance55.SelectionOrder = 0
Instance55.Name = "Fill"
Instance55.Active = false
Instance55.AutomaticSize = Enum.AutomaticSize.None
Instance55.AnchorPoint = Vector2.new(0, 0)
Instance55.Style = Enum.FrameStyle.Custom
Instance55.LayoutOrder = 0
Instance55.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance55.ZIndex = 10010
Instance55.Size = UDim2.new(0.5, 0, 1, 0)
Instance55.Draggable = false
Instance55.Position = UDim2.new(0, 0, 0, 0)
Instance55.Selectable = false
Instance55.ClipsDescendants = false
Instance55.BorderColor3 = Color3.new(0, 0, 0)
Instance55.BorderSizePixel = 0
Instance55.Rotation = 0
Instance55.BackgroundTransparency = 0
Instance55.BorderMode = Enum.BorderMode.Outline
Instance55.BackgroundColor3 = Color3.new(0.498039, 0, 0)

local Instance56 = Instance.new("TextLabel", Instance54) --Progress
Instance56.LayoutOrder = 0
Instance56.TextWrapped = true
Instance56.LineHeight = 1
Instance56.Active = false
Instance56.TextStrokeTransparency = 1
Instance56.TextTruncate = Enum.TextTruncate.None
Instance56.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance56.ZIndex = 10011
Instance56.BorderSizePixel = 0
Instance56.Draggable = false
Instance56.RichText = false
Instance56.TextWrap = true
Instance56.TextTransparency = 0
Instance56.TextYAlignment = Enum.TextYAlignment.Center
Instance56.TextScaled = true
Instance56.TextXAlignment = Enum.TextXAlignment.Center
Instance56.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance56.Name = "Progress"
Instance56.BorderMode = Enum.BorderMode.Outline
Instance56.Selectable = false
Instance56.TextDirection = Enum.TextDirection.Auto
Instance56.Visible = true
Instance56.FontSize = Enum.FontSize.Size14
Instance56.AnchorPoint = Vector2.new(0, 0)
Instance56.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance56.TextSize = 14
Instance56.AutomaticSize = Enum.AutomaticSize.None
Instance56.Size = UDim2.new(1, 0, 1, 0)
Instance56.TextColor3 = Color3.new(1, 1, 1)
Instance56.ClipsDescendants = false
Instance56.BorderColor3 = Color3.new(0, 0, 0)
Instance56.Text = "127 / 255"
Instance56.SelectionOrder = 0
Instance56.BackgroundColor3 = Color3.new(1, 1, 1)
Instance56.Rotation = 0
Instance56.BackgroundTransparency = 1
Instance56.Position = UDim2.new(0, 0, 0, 0)
Instance56.MaxVisibleGraphemes = -1

local Instance57 = Instance.new("UIStroke", Instance53) --UIStroke
Instance57.Enabled = true
Instance57.Color = Color3.new(0, 0, 0)
Instance57.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance57.Thickness = 1
Instance57.Transparency = 0
Instance57.Name = "UIStroke"
Instance57.LineJoinMode = Enum.LineJoinMode.Miter

local Instance58 = Instance.new("Frame", Instance50) --GHolder
Instance58.Visible = true
Instance58.SelectionOrder = 0
Instance58.Name = "GHolder"
Instance58.Active = false
Instance58.AutomaticSize = Enum.AutomaticSize.None
Instance58.AnchorPoint = Vector2.new(0, 0)
Instance58.Style = Enum.FrameStyle.Custom
Instance58.LayoutOrder = 0
Instance58.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance58.ZIndex = 10007
Instance58.Size = UDim2.new(0.3330000042915344, 0, 1, 0)
Instance58.Draggable = false
Instance58.Position = UDim2.new(0, 0, 0, 0)
Instance58.Selectable = false
Instance58.ClipsDescendants = false
Instance58.BorderColor3 = Color3.new(0, 0, 0)
Instance58.BorderSizePixel = 0
Instance58.Rotation = 0
Instance58.BackgroundTransparency = 1
Instance58.BorderMode = Enum.BorderMode.Outline
Instance58.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance59 = Instance.new("TextButton", Instance58) --SliderOuter
Instance59.LayoutOrder = 0
Instance59.TextWrapped = false
Instance59.LineHeight = 1
Instance59.Active = true
Instance59.TextStrokeTransparency = 1
Instance59.TextTruncate = Enum.TextTruncate.None
Instance59.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance59.ZIndex = 10001
Instance59.TextWrap = false
Instance59.Draggable = false
Instance59.RichText = false
Instance59.Modal = false
Instance59.SelectionOrder = 0
Instance59.Selectable = true
Instance59.AutoButtonColor = false
Instance59.TextXAlignment = Enum.TextXAlignment.Center
Instance59.Name = "SliderOuter"
Instance59.TextYAlignment = Enum.TextYAlignment.Center
Instance59.TextScaled = false
Instance59.TextDirection = Enum.TextDirection.Auto
Instance59.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance59.Visible = true
Instance59.BorderMode = Enum.BorderMode.Outline
Instance59.TextTransparency = 0
Instance59.FontSize = Enum.FontSize.Size14
Instance59.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance59.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Instance59.AnchorPoint = Vector2.new(0.5, 0)
Instance59.TextSize = 14
Instance59.TextColor3 = Color3.new(0, 0, 0)
Instance59.Selected = false
Instance59.AutomaticSize = Enum.AutomaticSize.None
Instance59.Size = UDim2.new(0.8999999761581421, 0, 1, 0)
Instance59.ClipsDescendants = false
Instance59.BorderColor3 = Color3.new(0, 0, 0)
Instance59.Text = "Button"
Instance59.BorderSizePixel = 0
Instance59.Rotation = 0
Instance59.BackgroundTransparency = 0
Instance59.MaxVisibleGraphemes = -1
Instance59.Position = UDim2.new(0.5, 0, 0, 0)
Instance59.Style = Enum.ButtonStyle.Custom

local Instance60 = Instance.new("Frame", Instance59) --Bar
Instance60.Visible = true
Instance60.SelectionOrder = 0
Instance60.Name = "Bar"
Instance60.Active = false
Instance60.AutomaticSize = Enum.AutomaticSize.None
Instance60.AnchorPoint = Vector2.new(0, 0)
Instance60.Style = Enum.FrameStyle.Custom
Instance60.LayoutOrder = 0
Instance60.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance60.ZIndex = 10009
Instance60.Size = UDim2.new(1, -4, 1, -4)
Instance60.Draggable = false
Instance60.Position = UDim2.new(0, 2, 0, 2)
Instance60.Selectable = false
Instance60.ClipsDescendants = false
Instance60.BorderColor3 = Color3.new(0, 0, 0)
Instance60.BorderSizePixel = 0
Instance60.Rotation = 0
Instance60.BackgroundTransparency = 0
Instance60.BorderMode = Enum.BorderMode.Outline
Instance60.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance61 = Instance.new("Frame", Instance60) --Fill
Instance61.Visible = true
Instance61.SelectionOrder = 0
Instance61.Name = "Fill"
Instance61.Active = false
Instance61.AutomaticSize = Enum.AutomaticSize.None
Instance61.AnchorPoint = Vector2.new(0, 0)
Instance61.Style = Enum.FrameStyle.Custom
Instance61.LayoutOrder = 0
Instance61.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance61.ZIndex = 10010
Instance61.Size = UDim2.new(0.5, 0, 1, 0)
Instance61.Draggable = false
Instance61.Position = UDim2.new(0, 0, 0, 0)
Instance61.Selectable = false
Instance61.ClipsDescendants = false
Instance61.BorderColor3 = Color3.new(0, 0, 0)
Instance61.BorderSizePixel = 0
Instance61.Rotation = 0
Instance61.BackgroundTransparency = 0
Instance61.BorderMode = Enum.BorderMode.Outline
Instance61.BackgroundColor3 = Color3.new(0, 0.498039, 0)

local Instance62 = Instance.new("TextLabel", Instance60) --Progress
Instance62.LayoutOrder = 0
Instance62.TextWrapped = true
Instance62.LineHeight = 1
Instance62.Active = false
Instance62.TextStrokeTransparency = 1
Instance62.TextTruncate = Enum.TextTruncate.None
Instance62.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance62.ZIndex = 10011
Instance62.BorderSizePixel = 0
Instance62.Draggable = false
Instance62.RichText = false
Instance62.TextWrap = true
Instance62.TextTransparency = 0
Instance62.TextYAlignment = Enum.TextYAlignment.Center
Instance62.TextScaled = true
Instance62.TextXAlignment = Enum.TextXAlignment.Center
Instance62.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance62.Name = "Progress"
Instance62.BorderMode = Enum.BorderMode.Outline
Instance62.Selectable = false
Instance62.TextDirection = Enum.TextDirection.Auto
Instance62.Visible = true
Instance62.FontSize = Enum.FontSize.Size14
Instance62.AnchorPoint = Vector2.new(0, 0)
Instance62.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance62.TextSize = 14
Instance62.AutomaticSize = Enum.AutomaticSize.None
Instance62.Size = UDim2.new(1, 0, 1, 0)
Instance62.TextColor3 = Color3.new(1, 1, 1)
Instance62.ClipsDescendants = false
Instance62.BorderColor3 = Color3.new(0, 0, 0)
Instance62.Text = "127 / 255"
Instance62.SelectionOrder = 0
Instance62.BackgroundColor3 = Color3.new(1, 1, 1)
Instance62.Rotation = 0
Instance62.BackgroundTransparency = 1
Instance62.Position = UDim2.new(0, 0, 0, 0)
Instance62.MaxVisibleGraphemes = -1

local Instance63 = Instance.new("UIStroke", Instance59) --UIStroke
Instance63.Enabled = true
Instance63.Color = Color3.new(0, 0, 0)
Instance63.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance63.Thickness = 1
Instance63.Transparency = 0
Instance63.Name = "UIStroke"
Instance63.LineJoinMode = Enum.LineJoinMode.Miter

local Instance64 = Instance.new("Frame", Instance50) --BHolder
Instance64.Visible = true
Instance64.SelectionOrder = 0
Instance64.Name = "BHolder"
Instance64.Active = false
Instance64.AutomaticSize = Enum.AutomaticSize.None
Instance64.AnchorPoint = Vector2.new(0, 0)
Instance64.Style = Enum.FrameStyle.Custom
Instance64.LayoutOrder = 0
Instance64.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance64.ZIndex = 10007
Instance64.Size = UDim2.new(0.3330000042915344, 0, 1, 0)
Instance64.Draggable = false
Instance64.Position = UDim2.new(0, 0, 0, 0)
Instance64.Selectable = false
Instance64.ClipsDescendants = false
Instance64.BorderColor3 = Color3.new(0, 0, 0)
Instance64.BorderSizePixel = 0
Instance64.Rotation = 0
Instance64.BackgroundTransparency = 1
Instance64.BorderMode = Enum.BorderMode.Outline
Instance64.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance65 = Instance.new("TextButton", Instance64) --SliderOuter
Instance65.LayoutOrder = 0
Instance65.TextWrapped = false
Instance65.LineHeight = 1
Instance65.Active = true
Instance65.TextStrokeTransparency = 1
Instance65.TextTruncate = Enum.TextTruncate.None
Instance65.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance65.ZIndex = 10001
Instance65.TextWrap = false
Instance65.Draggable = false
Instance65.RichText = false
Instance65.Modal = false
Instance65.SelectionOrder = 0
Instance65.Selectable = true
Instance65.AutoButtonColor = false
Instance65.TextXAlignment = Enum.TextXAlignment.Center
Instance65.Name = "SliderOuter"
Instance65.TextYAlignment = Enum.TextYAlignment.Center
Instance65.TextScaled = false
Instance65.TextDirection = Enum.TextDirection.Auto
Instance65.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance65.Visible = true
Instance65.BorderMode = Enum.BorderMode.Outline
Instance65.TextTransparency = 0
Instance65.FontSize = Enum.FontSize.Size14
Instance65.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance65.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Instance65.AnchorPoint = Vector2.new(0.5, 0)
Instance65.TextSize = 14
Instance65.TextColor3 = Color3.new(0, 0, 0)
Instance65.Selected = false
Instance65.AutomaticSize = Enum.AutomaticSize.None
Instance65.Size = UDim2.new(0.8999999761581421, 0, 1, 0)
Instance65.ClipsDescendants = false
Instance65.BorderColor3 = Color3.new(0, 0, 0)
Instance65.Text = "Button"
Instance65.BorderSizePixel = 0
Instance65.Rotation = 0
Instance65.BackgroundTransparency = 0
Instance65.MaxVisibleGraphemes = -1
Instance65.Position = UDim2.new(0.5, 0, 0, 0)
Instance65.Style = Enum.ButtonStyle.Custom

local Instance66 = Instance.new("Frame", Instance65) --Bar
Instance66.Visible = true
Instance66.SelectionOrder = 0
Instance66.Name = "Bar"
Instance66.Active = false
Instance66.AutomaticSize = Enum.AutomaticSize.None
Instance66.AnchorPoint = Vector2.new(0, 0)
Instance66.Style = Enum.FrameStyle.Custom
Instance66.LayoutOrder = 0
Instance66.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance66.ZIndex = 10009
Instance66.Size = UDim2.new(1, -4, 1, -4)
Instance66.Draggable = false
Instance66.Position = UDim2.new(0, 2, 0, 2)
Instance66.Selectable = false
Instance66.ClipsDescendants = false
Instance66.BorderColor3 = Color3.new(0, 0, 0)
Instance66.BorderSizePixel = 0
Instance66.Rotation = 0
Instance66.BackgroundTransparency = 0
Instance66.BorderMode = Enum.BorderMode.Outline
Instance66.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance67 = Instance.new("Frame", Instance66) --Fill
Instance67.Visible = true
Instance67.SelectionOrder = 0
Instance67.Name = "Fill"
Instance67.Active = false
Instance67.AutomaticSize = Enum.AutomaticSize.None
Instance67.AnchorPoint = Vector2.new(0, 0)
Instance67.Style = Enum.FrameStyle.Custom
Instance67.LayoutOrder = 0
Instance67.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance67.ZIndex = 10010
Instance67.Size = UDim2.new(0.5, 0, 1, 0)
Instance67.Draggable = false
Instance67.Position = UDim2.new(0, 0, 0, 0)
Instance67.Selectable = false
Instance67.ClipsDescendants = false
Instance67.BorderColor3 = Color3.new(0, 0, 0)
Instance67.BorderSizePixel = 0
Instance67.Rotation = 0
Instance67.BackgroundTransparency = 0
Instance67.BorderMode = Enum.BorderMode.Outline
Instance67.BackgroundColor3 = Color3.new(0, 0, 0.498039)

local Instance68 = Instance.new("TextLabel", Instance66) --Progress
Instance68.LayoutOrder = 0
Instance68.TextWrapped = true
Instance68.LineHeight = 1
Instance68.Active = false
Instance68.TextStrokeTransparency = 1
Instance68.TextTruncate = Enum.TextTruncate.None
Instance68.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance68.ZIndex = 10011
Instance68.BorderSizePixel = 0
Instance68.Draggable = false
Instance68.RichText = false
Instance68.TextWrap = true
Instance68.TextTransparency = 0
Instance68.TextYAlignment = Enum.TextYAlignment.Center
Instance68.TextScaled = true
Instance68.TextXAlignment = Enum.TextXAlignment.Center
Instance68.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance68.Name = "Progress"
Instance68.BorderMode = Enum.BorderMode.Outline
Instance68.Selectable = false
Instance68.TextDirection = Enum.TextDirection.Auto
Instance68.Visible = true
Instance68.FontSize = Enum.FontSize.Size14
Instance68.AnchorPoint = Vector2.new(0, 0)
Instance68.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance68.TextSize = 14
Instance68.AutomaticSize = Enum.AutomaticSize.None
Instance68.Size = UDim2.new(1, 0, 1, 0)
Instance68.TextColor3 = Color3.new(1, 1, 1)
Instance68.ClipsDescendants = false
Instance68.BorderColor3 = Color3.new(0, 0, 0)
Instance68.Text = "127 / 255"
Instance68.SelectionOrder = 0
Instance68.BackgroundColor3 = Color3.new(1, 1, 1)
Instance68.Rotation = 0
Instance68.BackgroundTransparency = 1
Instance68.Position = UDim2.new(0, 0, 0, 0)
Instance68.MaxVisibleGraphemes = -1

local Instance69 = Instance.new("UIStroke", Instance65) --UIStroke
Instance69.Enabled = true
Instance69.Color = Color3.new(0, 0, 0)
Instance69.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance69.Thickness = 1
Instance69.Transparency = 0
Instance69.Name = "UIStroke"
Instance69.LineJoinMode = Enum.LineJoinMode.Miter

local Instance70 = Instance.new("TextButton", Instance21) --Button
Instance70.LayoutOrder = 0
Instance70.TextWrapped = false
Instance70.LineHeight = 1
Instance70.Active = true
Instance70.TextStrokeTransparency = 1
Instance70.TextTruncate = Enum.TextTruncate.None
Instance70.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance70.ZIndex = 10005
Instance70.TextWrap = false
Instance70.Draggable = false
Instance70.RichText = false
Instance70.Modal = false
Instance70.SelectionOrder = 0
Instance70.Selectable = true
Instance70.AutoButtonColor = true
Instance70.TextXAlignment = Enum.TextXAlignment.Center
Instance70.Name = "Button"
Instance70.TextYAlignment = Enum.TextYAlignment.Center
Instance70.TextScaled = false
Instance70.TextDirection = Enum.TextDirection.Auto
Instance70.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance70.Visible = false
Instance70.BorderMode = Enum.BorderMode.Outline
Instance70.TextTransparency = 0
Instance70.FontSize = Enum.FontSize.Size14
Instance70.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance70.BackgroundColor3 = Color3.new(1, 1, 1)
Instance70.AnchorPoint = Vector2.new(0, 0)
Instance70.TextSize = 14
Instance70.TextColor3 = Color3.new(0, 0, 0)
Instance70.Selected = false
Instance70.AutomaticSize = Enum.AutomaticSize.None
Instance70.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance70.ClipsDescendants = false
Instance70.BorderColor3 = Color3.new(0, 0, 0)
Instance70.Text = ""
Instance70.BorderSizePixel = 0
Instance70.Rotation = 0
Instance70.BackgroundTransparency = 1
Instance70.MaxVisibleGraphemes = -1
Instance70.Position = UDim2.new(0, 0, 0, 0)
Instance70.Style = Enum.ButtonStyle.Custom

local Instance71 = Instance.new("Frame", Instance70) --ToggleOuter
Instance71.Visible = true
Instance71.SelectionOrder = 0
Instance71.Name = "ToggleOuter"
Instance71.Active = false
Instance71.AutomaticSize = Enum.AutomaticSize.None
Instance71.AnchorPoint = Vector2.new(0, 0.5)
Instance71.Style = Enum.FrameStyle.Custom
Instance71.LayoutOrder = 0
Instance71.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance71.ZIndex = 10006
Instance71.Size = UDim2.new(0.05000000074505806, -1, 1, 0)
Instance71.Draggable = false
Instance71.Position = UDim2.new(0.05000000074505806, 0, 0.5, 0)
Instance71.Selectable = false
Instance71.ClipsDescendants = false
Instance71.BorderColor3 = Color3.new(0, 0, 0)
Instance71.BorderSizePixel = 0
Instance71.Rotation = 0
Instance71.BackgroundTransparency = 0
Instance71.BorderMode = Enum.BorderMode.Outline
Instance71.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance72 = Instance.new("UIAspectRatioConstraint", Instance71) --UIAspectRatioConstraint
Instance72.DominantAxis = Enum.DominantAxis.Width
Instance72.AspectRatio = 1
Instance72.Name = "UIAspectRatioConstraint"
Instance72.AspectType = Enum.AspectType.FitWithinMaxSize

local Instance73 = Instance.new("Frame", Instance71) --Frame
Instance73.Visible = true
Instance73.SelectionOrder = 0
Instance73.Name = "Frame"
Instance73.Active = false
Instance73.AutomaticSize = Enum.AutomaticSize.None
Instance73.AnchorPoint = Vector2.new(0, 0)
Instance73.Style = Enum.FrameStyle.Custom
Instance73.LayoutOrder = 0
Instance73.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance73.ZIndex = 10007
Instance73.Size = UDim2.new(1, -4, 1, -4)
Instance73.Draggable = false
Instance73.Position = UDim2.new(0, 2, 0, 2)
Instance73.Selectable = false
Instance73.ClipsDescendants = false
Instance73.BorderColor3 = Color3.new(0, 0, 0)
Instance73.BorderSizePixel = 0
Instance73.Rotation = 0
Instance73.BackgroundTransparency = 0
Instance73.BorderMode = Enum.BorderMode.Outline
Instance73.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance74 = Instance.new("ImageLabel", Instance73) --ImageLabel
Instance74.Visible = true
Instance74.Active = false
Instance74.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance74.ZIndex = 10008
Instance74.BorderSizePixel = 0
Instance74.SliceCenter = Rect.new(0, 0, 0, 0)
Instance74.Draggable = false
Instance74.ScaleType = Enum.ScaleType.Stretch
Instance74.BackgroundColor3 = Color3.new(1, 1, 1)
Instance74.ImageTransparency = 0
Instance74.AnchorPoint = Vector2.new(0.5, 0.5)
Instance74.Image = "http://www.roblox.com/asset/?id=5715427603"
Instance74.TileSize = UDim2.new(1, 0, 1, 0)
Instance74.ImageRectSize = Vector2.new(0, 0)
Instance74.SelectionOrder = 0
Instance74.Selectable = false
Instance74.Size = UDim2.new(0.8999999761581421, 0, 0.8999999761581421, 0)
Instance74.Name = "ImageLabel"
Instance74.ResampleMode = Enum.ResamplerMode.Default
Instance74.ClipsDescendants = false
Instance74.BorderColor3 = Color3.new(0, 0, 0)
Instance74.ImageColor3 = Color3.new(1, 0.333333, 0)
Instance74.LayoutOrder = 0
Instance74.BorderMode = Enum.BorderMode.Outline
Instance74.Rotation = 0
Instance74.ImageRectOffset = Vector2.new(0, 0)
Instance74.BackgroundTransparency = 1
Instance74.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance74.SliceScale = 1
Instance74.AutomaticSize = Enum.AutomaticSize.None

local Instance75 = Instance.new("UIStroke", Instance71) --UIStroke
Instance75.Enabled = true
Instance75.Color = Color3.new(0, 0, 0)
Instance75.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance75.Thickness = 1
Instance75.Transparency = 0
Instance75.Name = "UIStroke"
Instance75.LineJoinMode = Enum.LineJoinMode.Miter

local Instance76 = Instance.new("TextLabel", Instance70) --Text
Instance76.LayoutOrder = 0
Instance76.TextWrapped = true
Instance76.LineHeight = 1
Instance76.Active = true
Instance76.TextStrokeTransparency = 1
Instance76.TextTruncate = Enum.TextTruncate.None
Instance76.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance76.ZIndex = 10006
Instance76.BorderSizePixel = 0
Instance76.Draggable = false
Instance76.RichText = false
Instance76.TextWrap = true
Instance76.TextTransparency = 0
Instance76.TextYAlignment = Enum.TextYAlignment.Center
Instance76.TextScaled = true
Instance76.TextXAlignment = Enum.TextXAlignment.Left
Instance76.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance76.Name = "Text"
Instance76.BorderMode = Enum.BorderMode.Outline
Instance76.Selectable = false
Instance76.TextDirection = Enum.TextDirection.Auto
Instance76.Visible = true
Instance76.FontSize = Enum.FontSize.Size14
Instance76.AnchorPoint = Vector2.new(0.5, 0.5)
Instance76.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance76.TextSize = 14
Instance76.AutomaticSize = Enum.AutomaticSize.None
Instance76.Size = UDim2.new(0.824999988079071, 0, 0.4000000059604645, 0)
Instance76.TextColor3 = Color3.new(1, 1, 1)
Instance76.ClipsDescendants = false
Instance76.BorderColor3 = Color3.new(0, 0, 0)
Instance76.Text = "ButtonExample"
Instance76.SelectionOrder = 0
Instance76.BackgroundColor3 = Color3.new(1, 1, 1)
Instance76.Rotation = 0
Instance76.BackgroundTransparency = 1
Instance76.Position = UDim2.new(0.5249999761581421, 0, 0.5, 0)
Instance76.MaxVisibleGraphemes = -1

local Instance77 = Instance.new("Frame", Instance70) --Separator
Instance77.Visible = true
Instance77.SelectionOrder = 0
Instance77.Name = "Separator"
Instance77.Active = false
Instance77.AutomaticSize = Enum.AutomaticSize.None
Instance77.AnchorPoint = Vector2.new(0, 0)
Instance77.Style = Enum.FrameStyle.Custom
Instance77.LayoutOrder = 0
Instance77.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance77.ZIndex = 10006
Instance77.Size = UDim2.new(1, 0, 0, 1)
Instance77.Draggable = false
Instance77.Position = UDim2.new(0, 0, 0, 0)
Instance77.Selectable = false
Instance77.ClipsDescendants = false
Instance77.BorderColor3 = Color3.new(0, 0, 0)
Instance77.BorderSizePixel = 0
Instance77.Rotation = 0
Instance77.BackgroundTransparency = 0
Instance77.BorderMode = Enum.BorderMode.Outline
Instance77.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance78 = Instance.new("TextButton", Instance70) --Trigger
Instance78.LayoutOrder = 0
Instance78.TextWrapped = false
Instance78.LineHeight = 1
Instance78.Active = true
Instance78.TextStrokeTransparency = 1
Instance78.TextTruncate = Enum.TextTruncate.None
Instance78.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance78.ZIndex = 20000
Instance78.TextWrap = false
Instance78.Draggable = false
Instance78.RichText = false
Instance78.Modal = false
Instance78.SelectionOrder = 0
Instance78.Selectable = true
Instance78.AutoButtonColor = true
Instance78.TextXAlignment = Enum.TextXAlignment.Center
Instance78.Name = "Trigger"
Instance78.TextYAlignment = Enum.TextYAlignment.Center
Instance78.TextScaled = false
Instance78.TextDirection = Enum.TextDirection.Auto
Instance78.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance78.Visible = true
Instance78.BorderMode = Enum.BorderMode.Outline
Instance78.TextTransparency = 0
Instance78.FontSize = Enum.FontSize.Size14
Instance78.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance78.BackgroundColor3 = Color3.new(1, 1, 1)
Instance78.AnchorPoint = Vector2.new(0, 0)
Instance78.TextSize = 14
Instance78.TextColor3 = Color3.new(0, 0, 0)
Instance78.Selected = false
Instance78.AutomaticSize = Enum.AutomaticSize.None
Instance78.Size = UDim2.new(1, 0, 1, 0)
Instance78.ClipsDescendants = false
Instance78.BorderColor3 = Color3.new(0, 0, 0)
Instance78.Text = ""
Instance78.BorderSizePixel = 0
Instance78.Rotation = 0
Instance78.BackgroundTransparency = 1
Instance78.MaxVisibleGraphemes = -1
Instance78.Position = UDim2.new(0, 0, 0, 0)
Instance78.Style = Enum.ButtonStyle.Custom

local Instance79 = Instance.new("TextButton", Instance21) --TextBox
Instance79.LayoutOrder = 0
Instance79.TextWrapped = false
Instance79.LineHeight = 1
Instance79.Active = true
Instance79.TextStrokeTransparency = 1
Instance79.TextTruncate = Enum.TextTruncate.None
Instance79.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance79.ZIndex = 10005
Instance79.TextWrap = false
Instance79.Draggable = false
Instance79.RichText = false
Instance79.Modal = false
Instance79.SelectionOrder = 0
Instance79.Selectable = true
Instance79.AutoButtonColor = true
Instance79.TextXAlignment = Enum.TextXAlignment.Center
Instance79.Name = "TextBox"
Instance79.TextYAlignment = Enum.TextYAlignment.Center
Instance79.TextScaled = false
Instance79.TextDirection = Enum.TextDirection.Auto
Instance79.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance79.Visible = false
Instance79.BorderMode = Enum.BorderMode.Outline
Instance79.TextTransparency = 0
Instance79.FontSize = Enum.FontSize.Size14
Instance79.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance79.BackgroundColor3 = Color3.new(1, 1, 1)
Instance79.AnchorPoint = Vector2.new(0, 0)
Instance79.TextSize = 14
Instance79.TextColor3 = Color3.new(0, 0, 0)
Instance79.Selected = false
Instance79.AutomaticSize = Enum.AutomaticSize.None
Instance79.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance79.ClipsDescendants = false
Instance79.BorderColor3 = Color3.new(0, 0, 0)
Instance79.Text = ""
Instance79.BorderSizePixel = 0
Instance79.Rotation = 0
Instance79.BackgroundTransparency = 1
Instance79.MaxVisibleGraphemes = -1
Instance79.Position = UDim2.new(0, 0, 0, 0)
Instance79.Style = Enum.ButtonStyle.Custom

local Instance80 = Instance.new("TextLabel", Instance79) --Text
Instance80.LayoutOrder = 0
Instance80.TextWrapped = true
Instance80.LineHeight = 1
Instance80.Active = true
Instance80.TextStrokeTransparency = 1
Instance80.TextTruncate = Enum.TextTruncate.None
Instance80.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance80.ZIndex = 10006
Instance80.BorderSizePixel = 0
Instance80.Draggable = false
Instance80.RichText = false
Instance80.TextWrap = true
Instance80.TextTransparency = 0
Instance80.TextYAlignment = Enum.TextYAlignment.Center
Instance80.TextScaled = true
Instance80.TextXAlignment = Enum.TextXAlignment.Left
Instance80.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance80.Name = "Text"
Instance80.BorderMode = Enum.BorderMode.Outline
Instance80.Selectable = false
Instance80.TextDirection = Enum.TextDirection.Auto
Instance80.Visible = true
Instance80.FontSize = Enum.FontSize.Size14
Instance80.AnchorPoint = Vector2.new(0.5, 0.5)
Instance80.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance80.TextSize = 14
Instance80.AutomaticSize = Enum.AutomaticSize.None
Instance80.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance80.TextColor3 = Color3.new(1, 1, 1)
Instance80.ClipsDescendants = false
Instance80.BorderColor3 = Color3.new(0, 0, 0)
Instance80.Text = "TextBoxExample"
Instance80.SelectionOrder = 0
Instance80.BackgroundColor3 = Color3.new(1, 1, 1)
Instance80.Rotation = 0
Instance80.BackgroundTransparency = 1
Instance80.Position = UDim2.new(0.5, 0, 0.25, 0)
Instance80.MaxVisibleGraphemes = -1

local Instance81 = Instance.new("Frame", Instance79) --Separator
Instance81.Visible = true
Instance81.SelectionOrder = 0
Instance81.Name = "Separator"
Instance81.Active = false
Instance81.AutomaticSize = Enum.AutomaticSize.None
Instance81.AnchorPoint = Vector2.new(0, 0)
Instance81.Style = Enum.FrameStyle.Custom
Instance81.LayoutOrder = 0
Instance81.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance81.ZIndex = 10006
Instance81.Size = UDim2.new(1, 0, 0, 1)
Instance81.Draggable = false
Instance81.Position = UDim2.new(0, 0, 0, 0)
Instance81.Selectable = false
Instance81.ClipsDescendants = false
Instance81.BorderColor3 = Color3.new(0, 0, 0)
Instance81.BorderSizePixel = 0
Instance81.Rotation = 0
Instance81.BackgroundTransparency = 0
Instance81.BorderMode = Enum.BorderMode.Outline
Instance81.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance82 = Instance.new("Frame", Instance79) --TextBoxOuter
Instance82.Visible = true
Instance82.SelectionOrder = 0
Instance82.Name = "TextBoxOuter"
Instance82.Active = false
Instance82.AutomaticSize = Enum.AutomaticSize.None
Instance82.AnchorPoint = Vector2.new(0, 0)
Instance82.Style = Enum.FrameStyle.Custom
Instance82.LayoutOrder = 0
Instance82.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance82.ZIndex = 10006
Instance82.Size = UDim2.new(0.8999999761581421, -2, 0.4000000059604645, 0)
Instance82.Draggable = false
Instance82.Position = UDim2.new(0.05000000074505806, 1, 0.5, 0)
Instance82.Selectable = false
Instance82.ClipsDescendants = false
Instance82.BorderColor3 = Color3.new(0, 0, 0)
Instance82.BorderSizePixel = 0
Instance82.Rotation = 0
Instance82.BackgroundTransparency = 0
Instance82.BorderMode = Enum.BorderMode.Outline
Instance82.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance83 = Instance.new("UIStroke", Instance82) --UIStroke
Instance83.Enabled = true
Instance83.Color = Color3.new(0, 0, 0)
Instance83.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance83.Thickness = 1
Instance83.Transparency = 0
Instance83.Name = "UIStroke"
Instance83.LineJoinMode = Enum.LineJoinMode.Miter

local Instance84 = Instance.new("Frame", Instance82) --TextBoxBackground
Instance84.Visible = true
Instance84.SelectionOrder = 0
Instance84.Name = "TextBoxBackground"
Instance84.Active = false
Instance84.AutomaticSize = Enum.AutomaticSize.None
Instance84.AnchorPoint = Vector2.new(0, 0)
Instance84.Style = Enum.FrameStyle.Custom
Instance84.LayoutOrder = 0
Instance84.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance84.ZIndex = 10007
Instance84.Size = UDim2.new(1, -4, 1, -4)
Instance84.Draggable = false
Instance84.Position = UDim2.new(0, 2, 0, 2)
Instance84.Selectable = false
Instance84.ClipsDescendants = false
Instance84.BorderColor3 = Color3.new(0, 0, 0)
Instance84.BorderSizePixel = 0
Instance84.Rotation = 0
Instance84.BackgroundTransparency = 0
Instance84.BorderMode = Enum.BorderMode.Outline
Instance84.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance85 = Instance.new("TextBox", Instance82) --TextBox
Instance85.Visible = true
Instance85.FontSize = Enum.FontSize.Size14
Instance85.LineHeight = 1
Instance85.Active = true
Instance85.ClearTextOnFocus = false
Instance85.TextStrokeTransparency = 1
Instance85.SelectionStart = -1
Instance85.TextTransparency = 0
Instance85.BackgroundColor3 = Color3.new(1, 1, 1)
Instance85.TextTruncate = Enum.TextTruncate.None
Instance85.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance85.ZIndex = 10008
Instance85.BorderSizePixel = 0
Instance85.TextEditable = true
Instance85.Draggable = false
Instance85.RichText = false
Instance85.TextXAlignment = Enum.TextXAlignment.Left
Instance85.Size = UDim2.new(1, 0, 1, 0)
Instance85.AutomaticSize = Enum.AutomaticSize.None
Instance85.SelectionOrder = 0
Instance85.PlaceholderColor3 = Color3.new(0.603922, 0.603922, 0.603922)
Instance85.TextYAlignment = Enum.TextYAlignment.Center
Instance85.TextScaled = true
Instance85.TextWrap = true
Instance85.TextColor3 = Color3.new(1, 1, 1)
Instance85.Position = UDim2.new(0, 0, 0, 0)
Instance85.BorderMode = Enum.BorderMode.Outline
Instance85.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance85.LayoutOrder = 0
Instance85.MultiLine = false
Instance85.AnchorPoint = Vector2.new(0, 0)
Instance85.TextSize = 14
Instance85.TextDirection = Enum.TextDirection.Auto
Instance85.CursorPosition = 1
Instance85.PlaceholderText = "Something in here"
Instance85.ShowNativeInput = true
Instance85.Selectable = true
Instance85.BackgroundTransparency = 1
Instance85.ClipsDescendants = false
Instance85.BorderColor3 = Color3.new(0, 0, 0)
Instance85.Text = ""
Instance85.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance85.Rotation = 0
Instance85.Name = "TextBox"
Instance85.MaxVisibleGraphemes = -1
Instance85.TextWrapped = true

local Instance86 = Instance.new("UIPadding", Instance85) --UIPadding
Instance86.PaddingTop = UDim.new(0, 0)
Instance86.PaddingRight = UDim.new(0, 0)
Instance86.PaddingLeft = UDim.new(0.0199999996, 0)
Instance86.Name = "UIPadding"
Instance86.PaddingBottom = UDim.new(0, 0)

local Instance87 = Instance.new("TextButton", Instance79) --Trigger
Instance87.LayoutOrder = 0
Instance87.TextWrapped = false
Instance87.LineHeight = 1
Instance87.Active = true
Instance87.TextStrokeTransparency = 1
Instance87.TextTruncate = Enum.TextTruncate.None
Instance87.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance87.ZIndex = 20000
Instance87.TextWrap = false
Instance87.Draggable = false
Instance87.RichText = false
Instance87.Modal = false
Instance87.SelectionOrder = 0
Instance87.Selectable = true
Instance87.AutoButtonColor = true
Instance87.TextXAlignment = Enum.TextXAlignment.Center
Instance87.Name = "Trigger"
Instance87.TextYAlignment = Enum.TextYAlignment.Center
Instance87.TextScaled = false
Instance87.TextDirection = Enum.TextDirection.Auto
Instance87.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance87.Visible = true
Instance87.BorderMode = Enum.BorderMode.Outline
Instance87.TextTransparency = 0
Instance87.FontSize = Enum.FontSize.Size14
Instance87.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance87.BackgroundColor3 = Color3.new(1, 1, 1)
Instance87.AnchorPoint = Vector2.new(0, 0)
Instance87.TextSize = 14
Instance87.TextColor3 = Color3.new(0, 0, 0)
Instance87.Selected = false
Instance87.AutomaticSize = Enum.AutomaticSize.None
Instance87.Size = UDim2.new(1, 0, 1, 0)
Instance87.ClipsDescendants = false
Instance87.BorderColor3 = Color3.new(0, 0, 0)
Instance87.Text = ""
Instance87.BorderSizePixel = 0
Instance87.Rotation = 0
Instance87.BackgroundTransparency = 1
Instance87.MaxVisibleGraphemes = -1
Instance87.Position = UDim2.new(0, 0, 0, 0)
Instance87.Style = Enum.ButtonStyle.Custom

local Instance88 = Instance.new("TextButton", Instance21) --Input
Instance88.LayoutOrder = 0
Instance88.TextWrapped = false
Instance88.LineHeight = 1
Instance88.Active = true
Instance88.TextStrokeTransparency = 1
Instance88.TextTruncate = Enum.TextTruncate.None
Instance88.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance88.ZIndex = 10005
Instance88.TextWrap = false
Instance88.Draggable = false
Instance88.RichText = false
Instance88.Modal = false
Instance88.SelectionOrder = 0
Instance88.Selectable = true
Instance88.AutoButtonColor = true
Instance88.TextXAlignment = Enum.TextXAlignment.Center
Instance88.Name = "Input"
Instance88.TextYAlignment = Enum.TextYAlignment.Center
Instance88.TextScaled = false
Instance88.TextDirection = Enum.TextDirection.Auto
Instance88.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance88.Visible = false
Instance88.BorderMode = Enum.BorderMode.Outline
Instance88.TextTransparency = 0
Instance88.FontSize = Enum.FontSize.Size14
Instance88.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance88.BackgroundColor3 = Color3.new(1, 1, 1)
Instance88.AnchorPoint = Vector2.new(0, 0)
Instance88.TextSize = 14
Instance88.TextColor3 = Color3.new(0, 0, 0)
Instance88.Selected = false
Instance88.AutomaticSize = Enum.AutomaticSize.None
Instance88.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance88.ClipsDescendants = false
Instance88.BorderColor3 = Color3.new(0, 0, 0)
Instance88.Text = ""
Instance88.BorderSizePixel = 0
Instance88.Rotation = 0
Instance88.BackgroundTransparency = 1
Instance88.MaxVisibleGraphemes = -1
Instance88.Position = UDim2.new(0, 0, 0, 0)
Instance88.Style = Enum.ButtonStyle.Custom

local Instance89 = Instance.new("Frame", Instance88) --InputOuter
Instance89.Visible = true
Instance89.SelectionOrder = 0
Instance89.Name = "InputOuter"
Instance89.Active = false
Instance89.AutomaticSize = Enum.AutomaticSize.None
Instance89.AnchorPoint = Vector2.new(0, 0.5)
Instance89.Style = Enum.FrameStyle.Custom
Instance89.LayoutOrder = 0
Instance89.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance89.ZIndex = 10006
Instance89.Size = UDim2.new(0.20000000298023224, -1, 0.5, 0)
Instance89.Draggable = false
Instance89.Position = UDim2.new(0.05000000074505806, 0, 0.5, 0)
Instance89.Selectable = false
Instance89.ClipsDescendants = false
Instance89.BorderColor3 = Color3.new(0, 0, 0)
Instance89.BorderSizePixel = 0
Instance89.Rotation = 0
Instance89.BackgroundTransparency = 0
Instance89.BorderMode = Enum.BorderMode.Outline
Instance89.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance90 = Instance.new("UIStroke", Instance89) --UIStroke
Instance90.Enabled = true
Instance90.Color = Color3.new(0, 0, 0)
Instance90.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance90.Thickness = 1
Instance90.Transparency = 0
Instance90.Name = "UIStroke"
Instance90.LineJoinMode = Enum.LineJoinMode.Miter

local Instance91 = Instance.new("Frame", Instance89) --Frame
Instance91.Visible = true
Instance91.SelectionOrder = 0
Instance91.Name = "Frame"
Instance91.Active = false
Instance91.AutomaticSize = Enum.AutomaticSize.None
Instance91.AnchorPoint = Vector2.new(0, 0)
Instance91.Style = Enum.FrameStyle.Custom
Instance91.LayoutOrder = 0
Instance91.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance91.ZIndex = 10007
Instance91.Size = UDim2.new(1, -4, 1, -4)
Instance91.Draggable = false
Instance91.Position = UDim2.new(0, 2, 0, 2)
Instance91.Selectable = false
Instance91.ClipsDescendants = false
Instance91.BorderColor3 = Color3.new(0, 0, 0)
Instance91.BorderSizePixel = 0
Instance91.Rotation = 0
Instance91.BackgroundTransparency = 0
Instance91.BorderMode = Enum.BorderMode.Outline
Instance91.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance92 = Instance.new("TextLabel", Instance91) --Input
Instance92.LayoutOrder = 0
Instance92.TextWrapped = true
Instance92.LineHeight = 1
Instance92.Active = false
Instance92.TextStrokeTransparency = 1
Instance92.TextTruncate = Enum.TextTruncate.None
Instance92.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance92.ZIndex = 10008
Instance92.BorderSizePixel = 0
Instance92.Draggable = false
Instance92.RichText = false
Instance92.TextWrap = true
Instance92.TextTransparency = 0
Instance92.TextYAlignment = Enum.TextYAlignment.Center
Instance92.TextScaled = true
Instance92.TextXAlignment = Enum.TextXAlignment.Center
Instance92.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance92.Name = "Input"
Instance92.BorderMode = Enum.BorderMode.Outline
Instance92.Selectable = false
Instance92.TextDirection = Enum.TextDirection.Auto
Instance92.Visible = true
Instance92.FontSize = Enum.FontSize.Size14
Instance92.AnchorPoint = Vector2.new(0.5, 0.5)
Instance92.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance92.TextSize = 14
Instance92.AutomaticSize = Enum.AutomaticSize.None
Instance92.Size = UDim2.new(0.925000011920929, 0, 0.800000011920929, 0)
Instance92.TextColor3 = Color3.new(1, 0.333333, 0)
Instance92.ClipsDescendants = false
Instance92.BorderColor3 = Color3.new(0, 0, 0)
Instance92.Text = "A"
Instance92.SelectionOrder = 0
Instance92.BackgroundColor3 = Color3.new(1, 1, 1)
Instance92.Rotation = 0
Instance92.BackgroundTransparency = 1
Instance92.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance92.MaxVisibleGraphemes = -1

local Instance93 = Instance.new("TextLabel", Instance88) --Text
Instance93.LayoutOrder = 0
Instance93.TextWrapped = true
Instance93.LineHeight = 1
Instance93.Active = true
Instance93.TextStrokeTransparency = 1
Instance93.TextTruncate = Enum.TextTruncate.None
Instance93.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance93.ZIndex = 10006
Instance93.BorderSizePixel = 0
Instance93.Draggable = false
Instance93.RichText = false
Instance93.TextWrap = true
Instance93.TextTransparency = 0
Instance93.TextYAlignment = Enum.TextYAlignment.Center
Instance93.TextScaled = true
Instance93.TextXAlignment = Enum.TextXAlignment.Left
Instance93.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance93.Name = "Text"
Instance93.BorderMode = Enum.BorderMode.Outline
Instance93.Selectable = false
Instance93.TextDirection = Enum.TextDirection.Auto
Instance93.Visible = true
Instance93.FontSize = Enum.FontSize.Size14
Instance93.AnchorPoint = Vector2.new(0.5, 0.5)
Instance93.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance93.TextSize = 14
Instance93.AutomaticSize = Enum.AutomaticSize.None
Instance93.Size = UDim2.new(0.699999988079071, 0, 0.4000000059604645, 0)
Instance93.TextColor3 = Color3.new(1, 1, 1)
Instance93.ClipsDescendants = false
Instance93.BorderColor3 = Color3.new(0, 0, 0)
Instance93.Text = "InputExample"
Instance93.SelectionOrder = 0
Instance93.BackgroundColor3 = Color3.new(1, 1, 1)
Instance93.Rotation = 0
Instance93.BackgroundTransparency = 1
Instance93.Position = UDim2.new(0.625, 0, 0.5, 0)
Instance93.MaxVisibleGraphemes = -1

local Instance94 = Instance.new("Frame", Instance88) --Separator
Instance94.Visible = true
Instance94.SelectionOrder = 0
Instance94.Name = "Separator"
Instance94.Active = false
Instance94.AutomaticSize = Enum.AutomaticSize.None
Instance94.AnchorPoint = Vector2.new(0, 0)
Instance94.Style = Enum.FrameStyle.Custom
Instance94.LayoutOrder = 0
Instance94.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance94.ZIndex = 10006
Instance94.Size = UDim2.new(1, 0, 0, 1)
Instance94.Draggable = false
Instance94.Position = UDim2.new(0, 0, 0, 0)
Instance94.Selectable = false
Instance94.ClipsDescendants = false
Instance94.BorderColor3 = Color3.new(0, 0, 0)
Instance94.BorderSizePixel = 0
Instance94.Rotation = 0
Instance94.BackgroundTransparency = 0
Instance94.BorderMode = Enum.BorderMode.Outline
Instance94.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance95 = Instance.new("TextButton", Instance88) --Trigger
Instance95.LayoutOrder = 0
Instance95.TextWrapped = false
Instance95.LineHeight = 1
Instance95.Active = true
Instance95.TextStrokeTransparency = 1
Instance95.TextTruncate = Enum.TextTruncate.None
Instance95.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance95.ZIndex = 20000
Instance95.TextWrap = false
Instance95.Draggable = false
Instance95.RichText = false
Instance95.Modal = false
Instance95.SelectionOrder = 0
Instance95.Selectable = true
Instance95.AutoButtonColor = true
Instance95.TextXAlignment = Enum.TextXAlignment.Center
Instance95.Name = "Trigger"
Instance95.TextYAlignment = Enum.TextYAlignment.Center
Instance95.TextScaled = false
Instance95.TextDirection = Enum.TextDirection.Auto
Instance95.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance95.Visible = true
Instance95.BorderMode = Enum.BorderMode.Outline
Instance95.TextTransparency = 0
Instance95.FontSize = Enum.FontSize.Size14
Instance95.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance95.BackgroundColor3 = Color3.new(1, 1, 1)
Instance95.AnchorPoint = Vector2.new(0, 0)
Instance95.TextSize = 14
Instance95.TextColor3 = Color3.new(0, 0, 0)
Instance95.Selected = false
Instance95.AutomaticSize = Enum.AutomaticSize.None
Instance95.Size = UDim2.new(1, 0, 1, 0)
Instance95.ClipsDescendants = false
Instance95.BorderColor3 = Color3.new(0, 0, 0)
Instance95.Text = ""
Instance95.BorderSizePixel = 0
Instance95.Rotation = 0
Instance95.BackgroundTransparency = 1
Instance95.MaxVisibleGraphemes = -1
Instance95.Position = UDim2.new(0, 0, 0, 0)
Instance95.Style = Enum.ButtonStyle.Custom

local Instance96 = Instance.new("Frame", Instance21) --Separator
Instance96.Visible = false
Instance96.SelectionOrder = 0
Instance96.Name = "Separator"
Instance96.Active = false
Instance96.AutomaticSize = Enum.AutomaticSize.None
Instance96.AnchorPoint = Vector2.new(0, 0)
Instance96.Style = Enum.FrameStyle.Custom
Instance96.LayoutOrder = 0
Instance96.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance96.ZIndex = 10005
Instance96.Size = UDim2.new(1, 0, 0.02500000037252903, 0)
Instance96.Draggable = false
Instance96.Position = UDim2.new(0, 0, 0, 0)
Instance96.Selectable = false
Instance96.ClipsDescendants = false
Instance96.BorderColor3 = Color3.new(0, 0, 0)
Instance96.BorderSizePixel = 0
Instance96.Rotation = 0
Instance96.BackgroundTransparency = 1
Instance96.BorderMode = Enum.BorderMode.Outline
Instance96.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance97 = Instance.new("Frame", Instance96) --Separator
Instance97.Visible = true
Instance97.SelectionOrder = 0
Instance97.Name = "Separator"
Instance97.Active = false
Instance97.AutomaticSize = Enum.AutomaticSize.None
Instance97.AnchorPoint = Vector2.new(0, 0.5)
Instance97.Style = Enum.FrameStyle.Custom
Instance97.LayoutOrder = 0
Instance97.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance97.ZIndex = 10001
Instance97.Size = UDim2.new(1, 0, 0, 1)
Instance97.Draggable = false
Instance97.Position = UDim2.new(0, 0, 0.5, 0)
Instance97.Selectable = false
Instance97.ClipsDescendants = false
Instance97.BorderColor3 = Color3.new(0, 0, 0)
Instance97.BorderSizePixel = 0
Instance97.Rotation = 0
Instance97.BackgroundTransparency = 0
Instance97.BorderMode = Enum.BorderMode.Outline
Instance97.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance98 = Instance.new("TextButton", Instance21) --Dropdown
Instance98.LayoutOrder = 0
Instance98.TextWrapped = false
Instance98.LineHeight = 1
Instance98.Active = true
Instance98.TextStrokeTransparency = 1
Instance98.TextTruncate = Enum.TextTruncate.None
Instance98.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance98.ZIndex = 10005
Instance98.TextWrap = false
Instance98.Draggable = false
Instance98.RichText = false
Instance98.Modal = false
Instance98.SelectionOrder = 0
Instance98.Selectable = true
Instance98.AutoButtonColor = true
Instance98.TextXAlignment = Enum.TextXAlignment.Center
Instance98.Name = "Dropdown"
Instance98.TextYAlignment = Enum.TextYAlignment.Center
Instance98.TextScaled = false
Instance98.TextDirection = Enum.TextDirection.Auto
Instance98.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance98.Visible = false
Instance98.BorderMode = Enum.BorderMode.Outline
Instance98.TextTransparency = 0
Instance98.FontSize = Enum.FontSize.Size14
Instance98.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance98.BackgroundColor3 = Color3.new(1, 1, 1)
Instance98.AnchorPoint = Vector2.new(0, 0)
Instance98.TextSize = 14
Instance98.TextColor3 = Color3.new(0, 0, 0)
Instance98.Selected = false
Instance98.AutomaticSize = Enum.AutomaticSize.None
Instance98.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance98.ClipsDescendants = false
Instance98.BorderColor3 = Color3.new(0, 0, 0)
Instance98.Text = ""
Instance98.BorderSizePixel = 0
Instance98.Rotation = 0
Instance98.BackgroundTransparency = 1
Instance98.MaxVisibleGraphemes = -1
Instance98.Position = UDim2.new(0, 0, 0, 0)
Instance98.Style = Enum.ButtonStyle.Custom

local Instance99 = Instance.new("TextLabel", Instance98) --Text
Instance99.LayoutOrder = 0
Instance99.TextWrapped = true
Instance99.LineHeight = 1
Instance99.Active = true
Instance99.TextStrokeTransparency = 1
Instance99.TextTruncate = Enum.TextTruncate.None
Instance99.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance99.ZIndex = 10006
Instance99.BorderSizePixel = 0
Instance99.Draggable = false
Instance99.RichText = false
Instance99.TextWrap = true
Instance99.TextTransparency = 0
Instance99.TextYAlignment = Enum.TextYAlignment.Center
Instance99.TextScaled = true
Instance99.TextXAlignment = Enum.TextXAlignment.Left
Instance99.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance99.Name = "Text"
Instance99.BorderMode = Enum.BorderMode.Outline
Instance99.Selectable = false
Instance99.TextDirection = Enum.TextDirection.Auto
Instance99.Visible = true
Instance99.FontSize = Enum.FontSize.Size14
Instance99.AnchorPoint = Vector2.new(0.5, 0)
Instance99.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance99.TextSize = 14
Instance99.AutomaticSize = Enum.AutomaticSize.None
Instance99.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance99.TextColor3 = Color3.new(1, 1, 1)
Instance99.ClipsDescendants = false
Instance99.BorderColor3 = Color3.new(0, 0, 0)
Instance99.Text = "DropdownExample"
Instance99.SelectionOrder = 0
Instance99.BackgroundColor3 = Color3.new(1, 1, 1)
Instance99.Rotation = 0
Instance99.BackgroundTransparency = 1
Instance99.Position = UDim2.new(0.5, 0, 0.05000000074505806, 0)
Instance99.MaxVisibleGraphemes = -1

local Instance100 = Instance.new("Frame", Instance98) --Separator
Instance100.Visible = true
Instance100.SelectionOrder = 0
Instance100.Name = "Separator"
Instance100.Active = false
Instance100.AutomaticSize = Enum.AutomaticSize.None
Instance100.AnchorPoint = Vector2.new(0, 0)
Instance100.Style = Enum.FrameStyle.Custom
Instance100.LayoutOrder = 0
Instance100.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance100.ZIndex = 10006
Instance100.Size = UDim2.new(1, 0, 0, 1)
Instance100.Draggable = false
Instance100.Position = UDim2.new(0, 0, 0, 0)
Instance100.Selectable = false
Instance100.ClipsDescendants = false
Instance100.BorderColor3 = Color3.new(0, 0, 0)
Instance100.BorderSizePixel = 0
Instance100.Rotation = 0
Instance100.BackgroundTransparency = 0
Instance100.BorderMode = Enum.BorderMode.Outline
Instance100.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance101 = Instance.new("Frame", Instance98) --DropdownOuter
Instance101.Visible = true
Instance101.SelectionOrder = 0
Instance101.Name = "DropdownOuter"
Instance101.Active = false
Instance101.AutomaticSize = Enum.AutomaticSize.None
Instance101.AnchorPoint = Vector2.new(0, 0)
Instance101.Style = Enum.FrameStyle.Custom
Instance101.LayoutOrder = 0
Instance101.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance101.ZIndex = 10006
Instance101.Size = UDim2.new(0.8999999761581421, -2, 0.4000000059604645, 0)
Instance101.Draggable = false
Instance101.Position = UDim2.new(0.05000000074505806, 1, 0.5, 0)
Instance101.Selectable = false
Instance101.ClipsDescendants = false
Instance101.BorderColor3 = Color3.new(0, 0, 0)
Instance101.BorderSizePixel = 0
Instance101.Rotation = 0
Instance101.BackgroundTransparency = 0
Instance101.BorderMode = Enum.BorderMode.Outline
Instance101.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance102 = Instance.new("UIStroke", Instance101) --UIStroke
Instance102.Enabled = true
Instance102.Color = Color3.new(0, 0, 0)
Instance102.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance102.Thickness = 1
Instance102.Transparency = 0
Instance102.Name = "UIStroke"
Instance102.LineJoinMode = Enum.LineJoinMode.Miter

local Instance103 = Instance.new("Frame", Instance101) --ContentHolder
Instance103.Visible = true
Instance103.SelectionOrder = 0
Instance103.Name = "ContentHolder"
Instance103.Active = false
Instance103.AutomaticSize = Enum.AutomaticSize.None
Instance103.AnchorPoint = Vector2.new(0, 0)
Instance103.Style = Enum.FrameStyle.Custom
Instance103.LayoutOrder = 0
Instance103.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance103.ZIndex = 10007
Instance103.Size = UDim2.new(1, -4, 1, -4)
Instance103.Draggable = false
Instance103.Position = UDim2.new(0, 2, 0, 2)
Instance103.Selectable = false
Instance103.ClipsDescendants = false
Instance103.BorderColor3 = Color3.new(0, 0, 0)
Instance103.BorderSizePixel = 0
Instance103.Rotation = 0
Instance103.BackgroundTransparency = 0
Instance103.BorderMode = Enum.BorderMode.Outline
Instance103.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance104 = Instance.new("ScrollingFrame", Instance103) --Values
Instance104.LayoutOrder = 0
Instance104.Active = true
Instance104.ScrollingDirection = Enum.ScrollingDirection.XY
Instance104.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance104.ZIndex = 10008
Instance104.CanvasSize = UDim2.new(0, 0, 0, 0)
Instance104.Draggable = false
Instance104.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance104.CanvasPosition = Vector2.new(0, 0)
Instance104.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
Instance104.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
Instance104.HorizontalScrollBarInset = Enum.ScrollBarInset.None
Instance104.VerticalScrollBarInset = Enum.ScrollBarInset.None
Instance104.BorderMode = Enum.BorderMode.Outline
Instance104.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
Instance104.AutomaticCanvasSize = Enum.AutomaticSize.Y
Instance104.Selectable = true
Instance104.AnchorPoint = Vector2.new(0, 0)
Instance104.Name = "Values"
Instance104.Visible = false
Instance104.Size = UDim2.new(1, 0, 1, 0)
Instance104.ScrollBarImageColor3 = Color3.new(0, 0, 0)
Instance104.BorderSizePixel = 0
Instance104.ScrollBarImageTransparency = 0
Instance104.ClipsDescendants = true
Instance104.BorderColor3 = Color3.new(0, 0, 0)
Instance104.ScrollBarThickness = 0
Instance104.SelectionOrder = 0
Instance104.Rotation = 0
Instance104.BackgroundTransparency = 1
Instance104.Position = UDim2.new(0, 0, 0, 0)
Instance104.ScrollingEnabled = true
Instance104.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
Instance104.AutomaticSize = Enum.AutomaticSize.None
Instance104.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance105 = Instance.new("UIListLayout", Instance104) --UIListLayout
Instance105.FillDirection = Enum.FillDirection.Vertical
Instance105.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance105.HorizontalFlex = Enum.UIFlexAlignment.None
Instance105.VerticalFlex = Enum.UIFlexAlignment.None
Instance105.VerticalAlignment = Enum.VerticalAlignment.Top
Instance105.SortOrder = Enum.SortOrder.LayoutOrder
Instance105.Name = "UIListLayout"
Instance105.Padding = UDim.new(0, 0)
Instance105.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance106 = Instance.new("TextButton", Instance104) --ListButton
Instance106.LayoutOrder = 0
Instance106.TextWrapped = true
Instance106.LineHeight = 1
Instance106.Active = true
Instance106.TextStrokeTransparency = 1
Instance106.TextTruncate = Enum.TextTruncate.None
Instance106.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance106.ZIndex = 10009
Instance106.TextWrap = true
Instance106.Draggable = false
Instance106.RichText = false
Instance106.Modal = false
Instance106.SelectionOrder = 0
Instance106.Selectable = true
Instance106.AutoButtonColor = true
Instance106.TextXAlignment = Enum.TextXAlignment.Left
Instance106.Name = "ListButton"
Instance106.TextYAlignment = Enum.TextYAlignment.Center
Instance106.TextScaled = true
Instance106.TextDirection = Enum.TextDirection.Auto
Instance106.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance106.Visible = false
Instance106.BorderMode = Enum.BorderMode.Outline
Instance106.TextTransparency = 0
Instance106.FontSize = Enum.FontSize.Size14
Instance106.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance106.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Instance106.AnchorPoint = Vector2.new(0, 0)
Instance106.TextSize = 14
Instance106.TextColor3 = Color3.new(1, 1, 1)
Instance106.Selected = false
Instance106.AutomaticSize = Enum.AutomaticSize.None
Instance106.Size = UDim2.new(1, 0, 0.15399999916553497, 0)
Instance106.ClipsDescendants = false
Instance106.BorderColor3 = Color3.new(0, 0, 0)
Instance106.Text = "ListButton"
Instance106.BorderSizePixel = 0
Instance106.Rotation = 0
Instance106.BackgroundTransparency = 0
Instance106.MaxVisibleGraphemes = -1
Instance106.Position = UDim2.new(0, 0, 0, 0)
Instance106.Style = Enum.ButtonStyle.Custom

local Instance107 = Instance.new("UIPadding", Instance106) --UIPadding
Instance107.PaddingTop = UDim.new(0, 0)
Instance107.PaddingRight = UDim.new(0, 0)
Instance107.PaddingLeft = UDim.new(0.0500000007, 0)
Instance107.Name = "UIPadding"
Instance107.PaddingBottom = UDim.new(0, 0)

local Instance108 = Instance.new("TextLabel", Instance101) --Default
Instance108.LayoutOrder = 0
Instance108.TextWrapped = true
Instance108.LineHeight = 1
Instance108.Active = false
Instance108.TextStrokeTransparency = 1
Instance108.TextTruncate = Enum.TextTruncate.None
Instance108.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance108.ZIndex = 10008
Instance108.BorderSizePixel = 0
Instance108.Draggable = false
Instance108.RichText = false
Instance108.TextWrap = true
Instance108.TextTransparency = 0
Instance108.TextYAlignment = Enum.TextYAlignment.Center
Instance108.TextScaled = true
Instance108.TextXAlignment = Enum.TextXAlignment.Center
Instance108.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance108.Name = "Default"
Instance108.BorderMode = Enum.BorderMode.Outline
Instance108.Selectable = false
Instance108.TextDirection = Enum.TextDirection.Auto
Instance108.Visible = true
Instance108.FontSize = Enum.FontSize.Size14
Instance108.AnchorPoint = Vector2.new(0, 0)
Instance108.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance108.TextSize = 14
Instance108.AutomaticSize = Enum.AutomaticSize.None
Instance108.Size = UDim2.new(1, 0, 1, 0)
Instance108.TextColor3 = Color3.new(1, 0.333333, 0)
Instance108.ClipsDescendants = false
Instance108.BorderColor3 = Color3.new(0, 0, 0)
Instance108.Text = "DefaultValue"
Instance108.SelectionOrder = 0
Instance108.BackgroundColor3 = Color3.new(1, 1, 1)
Instance108.Rotation = 0
Instance108.BackgroundTransparency = 1
Instance108.Position = UDim2.new(0, 0, 0, 0)
Instance108.MaxVisibleGraphemes = -1

local Instance109 = Instance.new("TextButton", Instance98) --Trigger
Instance109.LayoutOrder = 0
Instance109.TextWrapped = false
Instance109.LineHeight = 1
Instance109.Active = true
Instance109.TextStrokeTransparency = 1
Instance109.TextTruncate = Enum.TextTruncate.None
Instance109.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance109.ZIndex = 20000
Instance109.TextWrap = false
Instance109.Draggable = false
Instance109.RichText = false
Instance109.Modal = false
Instance109.SelectionOrder = 0
Instance109.Selectable = true
Instance109.AutoButtonColor = true
Instance109.TextXAlignment = Enum.TextXAlignment.Center
Instance109.Name = "Trigger"
Instance109.TextYAlignment = Enum.TextYAlignment.Center
Instance109.TextScaled = false
Instance109.TextDirection = Enum.TextDirection.Auto
Instance109.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance109.Visible = true
Instance109.BorderMode = Enum.BorderMode.Outline
Instance109.TextTransparency = 0
Instance109.FontSize = Enum.FontSize.Size14
Instance109.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance109.BackgroundColor3 = Color3.new(1, 1, 1)
Instance109.AnchorPoint = Vector2.new(0, 0)
Instance109.TextSize = 14
Instance109.TextColor3 = Color3.new(0, 0, 0)
Instance109.Selected = false
Instance109.AutomaticSize = Enum.AutomaticSize.None
Instance109.Size = UDim2.new(1, 0, 1, 0)
Instance109.ClipsDescendants = false
Instance109.BorderColor3 = Color3.new(0, 0, 0)
Instance109.Text = ""
Instance109.BorderSizePixel = 0
Instance109.Rotation = 0
Instance109.BackgroundTransparency = 1
Instance109.MaxVisibleGraphemes = -1
Instance109.Position = UDim2.new(0, 0, 0, 0)
Instance109.Style = Enum.ButtonStyle.Custom

local Instance110 = Instance.new("Frame", Instance21) --Frame
Instance110.Visible = true
Instance110.SelectionOrder = 0
Instance110.Name = "Frame"
Instance110.Active = false
Instance110.AutomaticSize = Enum.AutomaticSize.None
Instance110.AnchorPoint = Vector2.new(0, 0)
Instance110.Style = Enum.FrameStyle.Custom
Instance110.LayoutOrder = 0
Instance110.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance110.ZIndex = 999999
Instance110.Size = UDim2.new(1, 0, 0, 1)
Instance110.Draggable = false
Instance110.Position = UDim2.new(0, 0, 0, 0)
Instance110.Selectable = false
Instance110.ClipsDescendants = false
Instance110.BorderColor3 = Color3.new(0, 0, 0)
Instance110.BorderSizePixel = 0
Instance110.Rotation = 0
Instance110.BackgroundTransparency = 0.9900000095367432
Instance110.BorderMode = Enum.BorderMode.Outline
Instance110.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance111 = Instance.new("UIGradient", Instance11) --UIGradient
Instance111.Offset = Vector2.new(0, 0)
Instance111.Color = ColorSequence.new({
    [1] = ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
    [2] = ColorSequenceKeypoint.new(0.3499999940395355, Color3.new(1, 1, 1)),
    [3] = ColorSequenceKeypoint.new(1, Color3.new(0.588235, 0.588235, 0.588235))
})
Instance111.Rotation = 75
Instance111.Transparency = NumberSequence.new({
    [1] = NumberSequenceKeypoint.new(0, 0, 0),
    [2] = NumberSequenceKeypoint.new(1, 0, 0)
})
Instance111.Name = "UIGradient"
Instance111.Enabled = true

local Instance112 = Instance.new("Frame", Instance11) --StarterFade
Instance112.Visible = false
Instance112.SelectionOrder = 0
Instance112.Name = "StarterFade"
Instance112.Active = false
Instance112.AutomaticSize = Enum.AutomaticSize.None
Instance112.AnchorPoint = Vector2.new(0, 0)
Instance112.Style = Enum.FrameStyle.Custom
Instance112.LayoutOrder = 0
Instance112.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance112.ZIndex = 9520
Instance112.Size = UDim2.new(1, 0, 1, 0)
Instance112.Draggable = false
Instance112.Position = UDim2.new(0, 0, 0, 0)
Instance112.Selectable = false
Instance112.ClipsDescendants = false
Instance112.BorderColor3 = Color3.new(0, 0, 0)
Instance112.BorderSizePixel = 0
Instance112.Rotation = 0
Instance112.BackgroundTransparency = 0
Instance112.BorderMode = Enum.BorderMode.Outline
Instance112.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance113 = Instance.new("UIGradient", Instance9) --UIGradient
Instance113.Offset = Vector2.new(0, 0)
Instance113.Color = ColorSequence.new({
    [1] = ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
    [2] = ColorSequenceKeypoint.new(1, Color3.new(0.784314, 0.784314, 0.784314))
})
Instance113.Rotation = 45
Instance113.Transparency = NumberSequence.new({
    [1] = NumberSequenceKeypoint.new(0, 0, 0),
    [2] = NumberSequenceKeypoint.new(1, 0, 0)
})
Instance113.Name = "UIGradient"
Instance113.Enabled = true

local Instance114 = Instance.new("UIAspectRatioConstraint", Instance8) --UIAspectRatioConstraint
Instance114.DominantAxis = Enum.DominantAxis.Width
Instance114.AspectRatio = 1
Instance114.Name = "UIAspectRatioConstraint"
Instance114.AspectType = Enum.AspectType.FitWithinMaxSize

local Instance115 = Instance.new("Frame", Instance8) --MobileMaximize
Instance115.Visible = false
Instance115.SelectionOrder = 0
Instance115.Name = "MobileMaximize"
Instance115.Active = false
Instance115.AutomaticSize = Enum.AutomaticSize.None
Instance115.AnchorPoint = Vector2.new(0.5, 0)
Instance115.Style = Enum.FrameStyle.Custom
Instance115.LayoutOrder = 0
Instance115.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance115.ZIndex = 100001
Instance115.Size = UDim2.new(0, 50, 0, 50)
Instance115.Draggable = false
Instance115.Position = UDim2.new(0.5, 0, 0.800000011920929, 0)
Instance115.Selectable = false
Instance115.ClipsDescendants = false
Instance115.BorderColor3 = Color3.new(0, 0, 0)
Instance115.BorderSizePixel = 0
Instance115.Rotation = 0
Instance115.BackgroundTransparency = 1
Instance115.BorderMode = Enum.BorderMode.Outline
Instance115.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance116 = Instance.new("TextButton", Instance115) --DragButton
Instance116.LayoutOrder = 0
Instance116.TextWrapped = false
Instance116.LineHeight = 1
Instance116.Active = true
Instance116.TextStrokeTransparency = 1
Instance116.TextTruncate = Enum.TextTruncate.None
Instance116.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance116.ZIndex = 100002
Instance116.TextWrap = false
Instance116.Draggable = false
Instance116.RichText = false
Instance116.Modal = false
Instance116.SelectionOrder = 0
Instance116.Selectable = true
Instance116.AutoButtonColor = true
Instance116.TextXAlignment = Enum.TextXAlignment.Center
Instance116.Name = "DragButton"
Instance116.TextYAlignment = Enum.TextYAlignment.Center
Instance116.TextScaled = false
Instance116.TextDirection = Enum.TextDirection.Auto
Instance116.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance116.Visible = true
Instance116.BorderMode = Enum.BorderMode.Outline
Instance116.TextTransparency = 0
Instance116.FontSize = Enum.FontSize.Size14
Instance116.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance116.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Instance116.AnchorPoint = Vector2.new(0, 0)
Instance116.TextSize = 14
Instance116.TextColor3 = Color3.new(0, 0, 0)
Instance116.Selected = false
Instance116.AutomaticSize = Enum.AutomaticSize.None
Instance116.Size = UDim2.new(1, 0, 1, 0)
Instance116.ClipsDescendants = false
Instance116.BorderColor3 = Color3.new(0, 0, 0)
Instance116.Text = ""
Instance116.BorderSizePixel = 0
Instance116.Rotation = 45
Instance116.BackgroundTransparency = 0
Instance116.MaxVisibleGraphemes = -1
Instance116.Position = UDim2.new(0, 0, 0, 0)
Instance116.Style = Enum.ButtonStyle.Custom

local Instance117 = Instance.new("TextLabel", Instance116) --Text
Instance117.LayoutOrder = 0
Instance117.TextWrapped = true
Instance117.LineHeight = 1
Instance117.Active = false
Instance117.TextStrokeTransparency = 1
Instance117.TextTruncate = Enum.TextTruncate.None
Instance117.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance117.ZIndex = 100003
Instance117.BorderSizePixel = 0
Instance117.Draggable = false
Instance117.RichText = false
Instance117.TextWrap = true
Instance117.TextTransparency = 0
Instance117.TextYAlignment = Enum.TextYAlignment.Center
Instance117.TextScaled = true
Instance117.TextXAlignment = Enum.TextXAlignment.Center
Instance117.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance117.Name = "Text"
Instance117.BorderMode = Enum.BorderMode.Outline
Instance117.Selectable = false
Instance117.TextDirection = Enum.TextDirection.Auto
Instance117.Visible = true
Instance117.FontSize = Enum.FontSize.Size14
Instance117.AnchorPoint = Vector2.new(0, 0)
Instance117.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance117.TextSize = 14
Instance117.AutomaticSize = Enum.AutomaticSize.None
Instance117.Size = UDim2.new(1, 0, 1, 0)
Instance117.TextColor3 = Color3.new(1, 1, 1)
Instance117.ClipsDescendants = false
Instance117.BorderColor3 = Color3.new(0, 0, 0)
Instance117.Text = "+"
Instance117.SelectionOrder = 0
Instance117.BackgroundColor3 = Color3.new(1, 1, 1)
Instance117.Rotation = -45
Instance117.BackgroundTransparency = 1
Instance117.Position = UDim2.new(0, 0, 0, 0)
Instance117.MaxVisibleGraphemes = -1

local Instance118 = Instance.new("UIStroke", Instance116) --UIStroke
Instance118.Enabled = true
Instance118.Color = Color3.new(0, 0, 0)
Instance118.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance118.Thickness = 3
Instance118.Transparency = 0
Instance118.Name = "UIStroke"
Instance118.LineJoinMode = Enum.LineJoinMode.Round

local Instance119 = Instance.new("UICorner", Instance116) --UICorner
Instance119.Name = "UICorner"
Instance119.CornerRadius = UDim.new(0.200000003, 0)

local Instance120 = Instance.new("Frame", Instance1) --Notification
Instance120.Visible = true
Instance120.SelectionOrder = 0
Instance120.Name = "Notification"
Instance120.Active = false
Instance120.AutomaticSize = Enum.AutomaticSize.None
Instance120.AnchorPoint = Vector2.new(0, 0)
Instance120.Style = Enum.FrameStyle.Custom
Instance120.LayoutOrder = 0
Instance120.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance120.ZIndex = 10030
Instance120.Size = UDim2.new(0.125, 0, 1, 0)
Instance120.Draggable = false
Instance120.Position = UDim2.new(0, 0, 0, 0)
Instance120.Selectable = false
Instance120.ClipsDescendants = false
Instance120.BorderColor3 = Color3.new(0, 0, 0)
Instance120.BorderSizePixel = 0
Instance120.Rotation = 0
Instance120.BackgroundTransparency = 1
Instance120.BorderMode = Enum.BorderMode.Outline
Instance120.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance121 = Instance.new("Frame", Instance120) --NotificationHolder
Instance121.Visible = false
Instance121.SelectionOrder = 0
Instance121.Name = "NotificationHolder"
Instance121.Active = false
Instance121.AutomaticSize = Enum.AutomaticSize.None
Instance121.AnchorPoint = Vector2.new(0, 0)
Instance121.Style = Enum.FrameStyle.Custom
Instance121.LayoutOrder = 0
Instance121.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance121.ZIndex = 10031
Instance121.Size = UDim2.new(1, 0, 0.11500000208616257, 0)
Instance121.Draggable = false
Instance121.Position = UDim2.new(0, 0, 0, 0)
Instance121.Selectable = false
Instance121.ClipsDescendants = false
Instance121.BorderColor3 = Color3.new(0, 0, 0)
Instance121.BorderSizePixel = 0
Instance121.Rotation = 0
Instance121.BackgroundTransparency = 1
Instance121.BorderMode = Enum.BorderMode.Outline
Instance121.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance122 = Instance.new("Frame", Instance121) --NotificationOrange
Instance122.Visible = true
Instance122.SelectionOrder = 0
Instance122.Name = "NotificationOrange"
Instance122.Active = false
Instance122.AutomaticSize = Enum.AutomaticSize.None
Instance122.AnchorPoint = Vector2.new(0, 0)
Instance122.Style = Enum.FrameStyle.Custom
Instance122.LayoutOrder = 0
Instance122.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance122.ZIndex = 10032
Instance122.Size = UDim2.new(1, 0, 1, 0)
Instance122.Draggable = false
Instance122.Position = UDim2.new(0, 0, 0, 0)
Instance122.Selectable = false
Instance122.ClipsDescendants = false
Instance122.BorderColor3 = Color3.new(0, 0, 0)
Instance122.BorderSizePixel = 0
Instance122.Rotation = 0
Instance122.BackgroundTransparency = 0
Instance122.BorderMode = Enum.BorderMode.Outline
Instance122.BackgroundColor3 = Color3.new(1, 0.333333, 0)

local Instance123 = Instance.new("UIStroke", Instance122) --UIStroke
Instance123.Enabled = true
Instance123.Color = Color3.new(0, 0, 0)
Instance123.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance123.Thickness = 1
Instance123.Transparency = 0
Instance123.Name = "UIStroke"
Instance123.LineJoinMode = Enum.LineJoinMode.Miter

local Instance124 = Instance.new("Frame", Instance122) --NotificationMain
Instance124.Visible = true
Instance124.SelectionOrder = 0
Instance124.Name = "NotificationMain"
Instance124.Active = false
Instance124.AutomaticSize = Enum.AutomaticSize.None
Instance124.AnchorPoint = Vector2.new(0, 0)
Instance124.Style = Enum.FrameStyle.Custom
Instance124.LayoutOrder = 0
Instance124.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance124.ZIndex = 10033
Instance124.Size = UDim2.new(1, -5, 1, -2)
Instance124.Draggable = false
Instance124.Position = UDim2.new(0, 0, 0, 2)
Instance124.Selectable = false
Instance124.ClipsDescendants = false
Instance124.BorderColor3 = Color3.new(0, 0, 0)
Instance124.BorderSizePixel = 0
Instance124.Rotation = 0
Instance124.BackgroundTransparency = 0
Instance124.BorderMode = Enum.BorderMode.Outline
Instance124.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance125 = Instance.new("Frame", Instance124) --Bar
Instance125.Visible = true
Instance125.SelectionOrder = 0
Instance125.Name = "Bar"
Instance125.Active = false
Instance125.AutomaticSize = Enum.AutomaticSize.None
Instance125.AnchorPoint = Vector2.new(0, 0)
Instance125.Style = Enum.FrameStyle.Custom
Instance125.LayoutOrder = 0
Instance125.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance125.ZIndex = 10034
Instance125.Size = UDim2.new(1, 0, 0, 5)
Instance125.Draggable = false
Instance125.Position = UDim2.new(0, 0, 1, -5)
Instance125.Selectable = false
Instance125.ClipsDescendants = false
Instance125.BorderColor3 = Color3.new(0, 0, 0)
Instance125.BorderSizePixel = 0
Instance125.Rotation = 0
Instance125.BackgroundTransparency = 0
Instance125.BorderMode = Enum.BorderMode.Outline
Instance125.BackgroundColor3 = Color3.new(0.529412, 0.156863, 0)

local Instance126 = Instance.new("Frame", Instance125) --Fill
Instance126.Visible = true
Instance126.SelectionOrder = 0
Instance126.Name = "Fill"
Instance126.Active = false
Instance126.AutomaticSize = Enum.AutomaticSize.None
Instance126.AnchorPoint = Vector2.new(0, 0)
Instance126.Style = Enum.FrameStyle.Custom
Instance126.LayoutOrder = 0
Instance126.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance126.ZIndex = 10035
Instance126.Size = UDim2.new(0.5, 0, 1, 0)
Instance126.Draggable = false
Instance126.Position = UDim2.new(0.5, 0, 0, 0)
Instance126.Selectable = false
Instance126.ClipsDescendants = false
Instance126.BorderColor3 = Color3.new(0, 0, 0)
Instance126.BorderSizePixel = 0
Instance126.Rotation = 0
Instance126.BackgroundTransparency = 0
Instance126.BorderMode = Enum.BorderMode.Outline
Instance126.BackgroundColor3 = Color3.new(1, 0.333333, 0)

local Instance127 = Instance.new("TextLabel", Instance124) --Title
Instance127.LayoutOrder = 0
Instance127.TextWrapped = true
Instance127.LineHeight = 1
Instance127.Active = false
Instance127.TextStrokeTransparency = 1
Instance127.TextTruncate = Enum.TextTruncate.None
Instance127.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance127.ZIndex = 10034
Instance127.BorderSizePixel = 0
Instance127.Draggable = false
Instance127.RichText = false
Instance127.TextWrap = true
Instance127.TextTransparency = 0
Instance127.TextYAlignment = Enum.TextYAlignment.Center
Instance127.TextScaled = true
Instance127.TextXAlignment = Enum.TextXAlignment.Center
Instance127.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance127.Name = "Title"
Instance127.BorderMode = Enum.BorderMode.Outline
Instance127.Selectable = false
Instance127.TextDirection = Enum.TextDirection.Auto
Instance127.Visible = true
Instance127.FontSize = Enum.FontSize.Size14
Instance127.AnchorPoint = Vector2.new(0, 0)
Instance127.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance127.TextSize = 14
Instance127.AutomaticSize = Enum.AutomaticSize.None
Instance127.Size = UDim2.new(1, 0, 0.14300000667572021, 0)
Instance127.TextColor3 = Color3.new(1, 1, 1)
Instance127.ClipsDescendants = false
Instance127.BorderColor3 = Color3.new(0, 0, 0)
Instance127.Text = "Title"
Instance127.SelectionOrder = 0
Instance127.BackgroundColor3 = Color3.new(1, 1, 1)
Instance127.Rotation = 0
Instance127.BackgroundTransparency = 1
Instance127.Position = UDim2.new(0, 0, 0.02500000037252903, 0)
Instance127.MaxVisibleGraphemes = -1

local Instance128 = Instance.new("Frame", Instance124) --Separator
Instance128.Visible = true
Instance128.SelectionOrder = 0
Instance128.Name = "Separator"
Instance128.Active = false
Instance128.AutomaticSize = Enum.AutomaticSize.None
Instance128.AnchorPoint = Vector2.new(0, 0)
Instance128.Style = Enum.FrameStyle.Custom
Instance128.LayoutOrder = 0
Instance128.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance128.ZIndex = 10034
Instance128.Size = UDim2.new(1, 0, 0, 1)
Instance128.Draggable = false
Instance128.Position = UDim2.new(0, 0, 0.20000000298023224, -1)
Instance128.Selectable = false
Instance128.ClipsDescendants = false
Instance128.BorderColor3 = Color3.new(0, 0, 0)
Instance128.BorderSizePixel = 0
Instance128.Rotation = 0
Instance128.BackgroundTransparency = 0
Instance128.BorderMode = Enum.BorderMode.Outline
Instance128.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance129 = Instance.new("Frame", Instance124) --Lines
Instance129.Visible = true
Instance129.SelectionOrder = 0
Instance129.Name = "Lines"
Instance129.Active = false
Instance129.AutomaticSize = Enum.AutomaticSize.None
Instance129.AnchorPoint = Vector2.new(0, 0)
Instance129.Style = Enum.FrameStyle.Custom
Instance129.LayoutOrder = 0
Instance129.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance129.ZIndex = 10034
Instance129.Size = UDim2.new(1, 0, 0.800000011920929, -5)
Instance129.Draggable = false
Instance129.Position = UDim2.new(0, 0, 0.20000000298023224, 0)
Instance129.Selectable = false
Instance129.ClipsDescendants = false
Instance129.BorderColor3 = Color3.new(0, 0, 0)
Instance129.BorderSizePixel = 0
Instance129.Rotation = 0
Instance129.BackgroundTransparency = 1
Instance129.BorderMode = Enum.BorderMode.Outline
Instance129.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance130 = Instance.new("UIListLayout", Instance129) --UIListLayout
Instance130.FillDirection = Enum.FillDirection.Vertical
Instance130.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance130.HorizontalFlex = Enum.UIFlexAlignment.None
Instance130.VerticalFlex = Enum.UIFlexAlignment.None
Instance130.VerticalAlignment = Enum.VerticalAlignment.Top
Instance130.SortOrder = Enum.SortOrder.LayoutOrder
Instance130.Name = "UIListLayout"
Instance130.Padding = UDim.new(0, 0)
Instance130.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance131 = Instance.new("TextLabel", Instance129) --1
Instance131.LayoutOrder = 0
Instance131.TextWrapped = true
Instance131.LineHeight = 1
Instance131.Active = false
Instance131.TextStrokeTransparency = 1
Instance131.TextTruncate = Enum.TextTruncate.None
Instance131.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance131.ZIndex = 10035
Instance131.BorderSizePixel = 0
Instance131.Draggable = false
Instance131.RichText = false
Instance131.TextWrap = true
Instance131.TextTransparency = 0
Instance131.TextYAlignment = Enum.TextYAlignment.Top
Instance131.TextScaled = false
Instance131.TextXAlignment = Enum.TextXAlignment.Left
Instance131.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance131.Name = "1"
Instance131.BorderMode = Enum.BorderMode.Outline
Instance131.Selectable = false
Instance131.TextDirection = Enum.TextDirection.Auto
Instance131.Visible = true
Instance131.FontSize = Enum.FontSize.Size10
Instance131.AnchorPoint = Vector2.new(0, 0)
Instance131.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance131.TextSize = 10
Instance131.AutomaticSize = Enum.AutomaticSize.None
Instance131.Size = UDim2.new(1, 0, 1, 0)
Instance131.TextColor3 = Color3.new(1, 1, 1)
Instance131.ClipsDescendants = false
Instance131.BorderColor3 = Color3.new(0, 0, 0)
Instance131.Text = "Line"
Instance131.SelectionOrder = 0
Instance131.BackgroundColor3 = Color3.new(1, 1, 1)
Instance131.Rotation = 0
Instance131.BackgroundTransparency = 1
Instance131.Position = UDim2.new(0, 0, 0, 0)
Instance131.MaxVisibleGraphemes = -1

local Instance132 = Instance.new("UIListLayout", Instance120) --UIListLayout
Instance132.FillDirection = Enum.FillDirection.Vertical
Instance132.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance132.HorizontalFlex = Enum.UIFlexAlignment.None
Instance132.VerticalFlex = Enum.UIFlexAlignment.None
Instance132.VerticalAlignment = Enum.VerticalAlignment.Bottom
Instance132.SortOrder = Enum.SortOrder.LayoutOrder
Instance132.Name = "UIListLayout"
Instance132.Padding = UDim.new(0.00999999978, 1)
Instance132.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance133 = Instance.new("Frame", Instance120) --ChooseNotificationHolder
Instance133.Visible = false
Instance133.SelectionOrder = 0
Instance133.Name = "ChooseNotificationHolder"
Instance133.Active = false
Instance133.AutomaticSize = Enum.AutomaticSize.None
Instance133.AnchorPoint = Vector2.new(0, 0)
Instance133.Style = Enum.FrameStyle.Custom
Instance133.LayoutOrder = 0
Instance133.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance133.ZIndex = 10031
Instance133.Size = UDim2.new(1, 0, 0.11500000208616257, 0)
Instance133.Draggable = false
Instance133.Position = UDim2.new(0, 0, 0, 0)
Instance133.Selectable = false
Instance133.ClipsDescendants = false
Instance133.BorderColor3 = Color3.new(0, 0, 0)
Instance133.BorderSizePixel = 0
Instance133.Rotation = 0
Instance133.BackgroundTransparency = 1
Instance133.BorderMode = Enum.BorderMode.Outline
Instance133.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance134 = Instance.new("Frame", Instance133) --NotificationOrange
Instance134.Visible = true
Instance134.SelectionOrder = 0
Instance134.Name = "NotificationOrange"
Instance134.Active = false
Instance134.AutomaticSize = Enum.AutomaticSize.None
Instance134.AnchorPoint = Vector2.new(0, 0)
Instance134.Style = Enum.FrameStyle.Custom
Instance134.LayoutOrder = 0
Instance134.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance134.ZIndex = 10032
Instance134.Size = UDim2.new(1, 0, 1, 0)
Instance134.Draggable = false
Instance134.Position = UDim2.new(0, 0, 0, 0)
Instance134.Selectable = false
Instance134.ClipsDescendants = false
Instance134.BorderColor3 = Color3.new(0, 0, 0)
Instance134.BorderSizePixel = 0
Instance134.Rotation = 0
Instance134.BackgroundTransparency = 0
Instance134.BorderMode = Enum.BorderMode.Outline
Instance134.BackgroundColor3 = Color3.new(1, 0.333333, 0)

local Instance135 = Instance.new("UIStroke", Instance134) --UIStroke
Instance135.Enabled = true
Instance135.Color = Color3.new(0, 0, 0)
Instance135.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance135.Thickness = 1
Instance135.Transparency = 0
Instance135.Name = "UIStroke"
Instance135.LineJoinMode = Enum.LineJoinMode.Miter

local Instance136 = Instance.new("Frame", Instance134) --NotificationMain
Instance136.Visible = true
Instance136.SelectionOrder = 0
Instance136.Name = "NotificationMain"
Instance136.Active = false
Instance136.AutomaticSize = Enum.AutomaticSize.None
Instance136.AnchorPoint = Vector2.new(0, 0)
Instance136.Style = Enum.FrameStyle.Custom
Instance136.LayoutOrder = 0
Instance136.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance136.ZIndex = 10033
Instance136.Size = UDim2.new(1, -5, 1, -2)
Instance136.Draggable = false
Instance136.Position = UDim2.new(0, 0, 0, 2)
Instance136.Selectable = false
Instance136.ClipsDescendants = false
Instance136.BorderColor3 = Color3.new(0, 0, 0)
Instance136.BorderSizePixel = 0
Instance136.Rotation = 0
Instance136.BackgroundTransparency = 0
Instance136.BorderMode = Enum.BorderMode.Outline
Instance136.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance137 = Instance.new("Frame", Instance136) --Bar
Instance137.Visible = true
Instance137.SelectionOrder = 0
Instance137.Name = "Bar"
Instance137.Active = false
Instance137.AutomaticSize = Enum.AutomaticSize.None
Instance137.AnchorPoint = Vector2.new(0, 0)
Instance137.Style = Enum.FrameStyle.Custom
Instance137.LayoutOrder = 0
Instance137.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance137.ZIndex = 10034
Instance137.Size = UDim2.new(1, 0, 0, 5)
Instance137.Draggable = false
Instance137.Position = UDim2.new(0, 0, 1, -5)
Instance137.Selectable = false
Instance137.ClipsDescendants = false
Instance137.BorderColor3 = Color3.new(0, 0, 0)
Instance137.BorderSizePixel = 0
Instance137.Rotation = 0
Instance137.BackgroundTransparency = 0
Instance137.BorderMode = Enum.BorderMode.Outline
Instance137.BackgroundColor3 = Color3.new(0.529412, 0.156863, 0)

local Instance138 = Instance.new("Frame", Instance137) --Fill
Instance138.Visible = true
Instance138.SelectionOrder = 0
Instance138.Name = "Fill"
Instance138.Active = false
Instance138.AutomaticSize = Enum.AutomaticSize.None
Instance138.AnchorPoint = Vector2.new(0, 0)
Instance138.Style = Enum.FrameStyle.Custom
Instance138.LayoutOrder = 0
Instance138.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance138.ZIndex = 10035
Instance138.Size = UDim2.new(0.5, 0, 1, 0)
Instance138.Draggable = false
Instance138.Position = UDim2.new(0.5, 0, 0, 0)
Instance138.Selectable = false
Instance138.ClipsDescendants = false
Instance138.BorderColor3 = Color3.new(0, 0, 0)
Instance138.BorderSizePixel = 0
Instance138.Rotation = 0
Instance138.BackgroundTransparency = 0
Instance138.BorderMode = Enum.BorderMode.Outline
Instance138.BackgroundColor3 = Color3.new(1, 0.333333, 0)

local Instance139 = Instance.new("TextLabel", Instance136) --Title
Instance139.LayoutOrder = 0
Instance139.TextWrapped = true
Instance139.LineHeight = 1
Instance139.Active = false
Instance139.TextStrokeTransparency = 1
Instance139.TextTruncate = Enum.TextTruncate.None
Instance139.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance139.ZIndex = 10034
Instance139.BorderSizePixel = 0
Instance139.Draggable = false
Instance139.RichText = false
Instance139.TextWrap = true
Instance139.TextTransparency = 0
Instance139.TextYAlignment = Enum.TextYAlignment.Center
Instance139.TextScaled = true
Instance139.TextXAlignment = Enum.TextXAlignment.Center
Instance139.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance139.Name = "Title"
Instance139.BorderMode = Enum.BorderMode.Outline
Instance139.Selectable = false
Instance139.TextDirection = Enum.TextDirection.Auto
Instance139.Visible = true
Instance139.FontSize = Enum.FontSize.Size14
Instance139.AnchorPoint = Vector2.new(0, 0)
Instance139.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance139.TextSize = 14
Instance139.AutomaticSize = Enum.AutomaticSize.None
Instance139.Size = UDim2.new(0.800000011920929, 0, 0.14300000667572021, 0)
Instance139.TextColor3 = Color3.new(1, 1, 1)
Instance139.ClipsDescendants = false
Instance139.BorderColor3 = Color3.new(0, 0, 0)
Instance139.Text = "Title"
Instance139.SelectionOrder = 0
Instance139.BackgroundColor3 = Color3.new(1, 1, 1)
Instance139.Rotation = 0
Instance139.BackgroundTransparency = 1
Instance139.Position = UDim2.new(0, 0, 0.02500000037252903, 0)
Instance139.MaxVisibleGraphemes = -1

local Instance140 = Instance.new("Frame", Instance136) --Separator
Instance140.Visible = true
Instance140.SelectionOrder = 0
Instance140.Name = "Separator"
Instance140.Active = false
Instance140.AutomaticSize = Enum.AutomaticSize.None
Instance140.AnchorPoint = Vector2.new(0, 0)
Instance140.Style = Enum.FrameStyle.Custom
Instance140.LayoutOrder = 0
Instance140.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance140.ZIndex = 10034
Instance140.Size = UDim2.new(1, 0, 0, 1)
Instance140.Draggable = false
Instance140.Position = UDim2.new(0, 0, 0.20000000298023224, -1)
Instance140.Selectable = false
Instance140.ClipsDescendants = false
Instance140.BorderColor3 = Color3.new(0, 0, 0)
Instance140.BorderSizePixel = 0
Instance140.Rotation = 0
Instance140.BackgroundTransparency = 0
Instance140.BorderMode = Enum.BorderMode.Outline
Instance140.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance141 = Instance.new("Frame", Instance136) --Lines
Instance141.Visible = true
Instance141.SelectionOrder = 0
Instance141.Name = "Lines"
Instance141.Active = false
Instance141.AutomaticSize = Enum.AutomaticSize.None
Instance141.AnchorPoint = Vector2.new(0, 0)
Instance141.Style = Enum.FrameStyle.Custom
Instance141.LayoutOrder = 0
Instance141.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance141.ZIndex = 10034
Instance141.Size = UDim2.new(1, 0, 0.800000011920929, -5)
Instance141.Draggable = false
Instance141.Position = UDim2.new(0, 0, 0.20000000298023224, 0)
Instance141.Selectable = false
Instance141.ClipsDescendants = false
Instance141.BorderColor3 = Color3.new(0, 0, 0)
Instance141.BorderSizePixel = 0
Instance141.Rotation = 0
Instance141.BackgroundTransparency = 1
Instance141.BorderMode = Enum.BorderMode.Outline
Instance141.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance142 = Instance.new("UIListLayout", Instance141) --UIListLayout
Instance142.FillDirection = Enum.FillDirection.Vertical
Instance142.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance142.HorizontalFlex = Enum.UIFlexAlignment.None
Instance142.VerticalFlex = Enum.UIFlexAlignment.None
Instance142.VerticalAlignment = Enum.VerticalAlignment.Top
Instance142.SortOrder = Enum.SortOrder.LayoutOrder
Instance142.Name = "UIListLayout"
Instance142.Padding = UDim.new(0, 0)
Instance142.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance143 = Instance.new("TextLabel", Instance141) --1
Instance143.LayoutOrder = 0
Instance143.TextWrapped = true
Instance143.LineHeight = 1
Instance143.Active = false
Instance143.TextStrokeTransparency = 1
Instance143.TextTruncate = Enum.TextTruncate.None
Instance143.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance143.ZIndex = 10035
Instance143.BorderSizePixel = 0
Instance143.Draggable = false
Instance143.RichText = false
Instance143.TextWrap = true
Instance143.TextTransparency = 0
Instance143.TextYAlignment = Enum.TextYAlignment.Top
Instance143.TextScaled = false
Instance143.TextXAlignment = Enum.TextXAlignment.Left
Instance143.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance143.Name = "1"
Instance143.BorderMode = Enum.BorderMode.Outline
Instance143.Selectable = false
Instance143.TextDirection = Enum.TextDirection.Auto
Instance143.Visible = true
Instance143.FontSize = Enum.FontSize.Size10
Instance143.AnchorPoint = Vector2.new(0, 0)
Instance143.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance143.TextSize = 10
Instance143.AutomaticSize = Enum.AutomaticSize.None
Instance143.Size = UDim2.new(1, 0, 1, 0)
Instance143.TextColor3 = Color3.new(1, 1, 1)
Instance143.ClipsDescendants = false
Instance143.BorderColor3 = Color3.new(0, 0, 0)
Instance143.Text = "Line"
Instance143.SelectionOrder = 0
Instance143.BackgroundColor3 = Color3.new(1, 1, 1)
Instance143.Rotation = 0
Instance143.BackgroundTransparency = 1
Instance143.Position = UDim2.new(0, 0, 0, 0)
Instance143.MaxVisibleGraphemes = -1

local Instance144 = Instance.new("ImageButton", Instance136) --Yes
Instance144.LayoutOrder = 0
Instance144.Active = true
Instance144.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance144.ZIndex = 10034
Instance144.SliceCenter = Rect.new(0, 0, 0, 0)
Instance144.Draggable = false
Instance144.ScaleType = Enum.ScaleType.Fit
Instance144.Modal = false
Instance144.AutoButtonColor = true
Instance144.ResampleMode = Enum.ResamplerMode.Default
Instance144.BackgroundColor3 = Color3.new(1, 1, 1)
Instance144.BorderSizePixel = 0
Instance144.ImageTransparency = 0
Instance144.Name = "Yes"
Instance144.Selectable = true
Instance144.AnchorPoint = Vector2.new(0, 0)
Instance144.Image = "rbxassetid://12690727184"
Instance144.TileSize = UDim2.new(1, 0, 1, 0)
Instance144.ImageRectSize = Vector2.new(0, 0)
Instance144.Selected = false
Instance144.Size = UDim2.new(0.10000000149011612, 0, 0.14300000667572021, 0)
Instance144.Visible = true
Instance144.HoverImage = ""
Instance144.ImageColor3 = Color3.new(1, 1, 1)
Instance144.ClipsDescendants = false
Instance144.BorderColor3 = Color3.new(0, 0, 0)
Instance144.BorderMode = Enum.BorderMode.Outline
Instance144.PressedImage = ""
Instance144.Rotation = 0
Instance144.ImageRectOffset = Vector2.new(0, 0)
Instance144.BackgroundTransparency = 1
Instance144.Position = UDim2.new(0.800000011920929, 0, 0.02500000037252903, 0)
Instance144.SliceScale = 1
Instance144.AutomaticSize = Enum.AutomaticSize.None
Instance144.SelectionOrder = 0
Instance144.Style = Enum.ButtonStyle.Custom

local Instance145 = Instance.new("ImageButton", Instance136) --No
Instance145.LayoutOrder = 0
Instance145.Active = true
Instance145.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance145.ZIndex = 10034
Instance145.SliceCenter = Rect.new(0, 0, 0, 0)
Instance145.Draggable = false
Instance145.ScaleType = Enum.ScaleType.Fit
Instance145.Modal = false
Instance145.AutoButtonColor = true
Instance145.ResampleMode = Enum.ResamplerMode.Default
Instance145.BackgroundColor3 = Color3.new(1, 1, 1)
Instance145.BorderSizePixel = 0
Instance145.ImageTransparency = 0
Instance145.Name = "No"
Instance145.Selectable = true
Instance145.AnchorPoint = Vector2.new(0, 0)
Instance145.Image = "rbxassetid://168705076"
Instance145.TileSize = UDim2.new(1, 0, 1, 0)
Instance145.ImageRectSize = Vector2.new(0, 0)
Instance145.Selected = false
Instance145.Size = UDim2.new(0.10000000149011612, 0, 0.14300000667572021, 0)
Instance145.Visible = true
Instance145.HoverImage = ""
Instance145.ImageColor3 = Color3.new(1, 1, 1)
Instance145.ClipsDescendants = false
Instance145.BorderColor3 = Color3.new(0, 0, 0)
Instance145.BorderMode = Enum.BorderMode.Outline
Instance145.PressedImage = ""
Instance145.Rotation = 0
Instance145.ImageRectOffset = Vector2.new(0, 0)
Instance145.BackgroundTransparency = 1
Instance145.Position = UDim2.new(0.8999999761581421, 0, 0.02500000037252903, 0)
Instance145.SliceScale = 1
Instance145.AutomaticSize = Enum.AutomaticSize.None
Instance145.SelectionOrder = 0
Instance145.Style = Enum.ButtonStyle.Custom


----------

local require; local moduleScripts = {}

moduleScripts[Instance7] = function()
    local script = Instance7
    local function getGlobalTable()
    return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end
if getGlobalTable()._FIRELIB then
    task.spawn(function()
        task.wait()
        script.Parent:Destroy()
    end)
    return getGlobalTable()._FIRELIB
end
local writefile, readfile, makefolder = getfenv().writefile, getfenv().readfile, getfenv().makefolder or getfenv().createfolder
local configsEnabled = typeof(writefile) == "function" and typeof(readfile) == "function"

local versions
if not pcall(function()
		local str = game.HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Data/Versions.json"))
		versions = {
			["FireLibraryVersion"] = str[2],
			["FireHubVersion"] = str[1]
		}
	end) then
	versions = {
		["FireLibraryVersion"] = "5.0",
		["FireHubVersion"] = "4.0.2"
	}
end

getGlobalTable()._FLVersions = versions
local isMobile = game.UserInputService.TouchEnabled and not game.UserInputService.KeyboardEnabled
local uiHolder = getfenv().gethui and getfenv().gethui() or pcall(function() return game.CoreGui:GetFullName() end) and game.CoreGui:FindFirstChild("RobloxGui") or game.Players.LocalPlayer.PlayerGui
script.Parent.Parent = uiHolder

local function playSound(soundName)
    task.spawn(function()
        local sCopy = script.Parent.Sounds.SoundsFolder:FindFirstChild(soundName)
        if not sCopy then return end
        sCopy = sCopy:Clone()
        sCopy.Parent = script.Parent.Sounds
        sCopy.Volume = 0.5
        sCopy.Looped = false
        sCopy.TimePosition = 0
        sCopy:Play()
        task.wait(sCopy.TimeLength)
        sCopy:Destroy()
    end)
end

local function setupSlider(slider, holder, options)
    local val = options.Default
    local prevVal = val
    local customTextDisplay = function(val, max)
        if typeof(options.CustomTextDisplay) == "function" then
            local res = options.CustomTextDisplay(val, max)
            if typeof(res) == "string" or typeof(res) == "number" then
                return tostring(res)
            end
        end
        return val .. " / " .. max
    end
    holder = holder or slider.Parent:IsA("Button") and slider.Parent or slider:FindFirstChildOfClass("TextButton") or slider
    local sliderDrag = holder
    local sliderBar = slider.SliderOuter.Bar.Fill
    local dragging = false

    sliderDrag.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
            dragging = true 
        end 
    end)
    sliderDrag.InputEnded:Connect(function(input) 
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
            dragging = false 
        end 
    end)

    local function round(Number, Factor)
        local Result = math.floor(Number/Factor + (math.sign(Number) * 0.5)) * Factor
        if Result < 0 then Result = Result + Factor end
        return Result
    end

    local newVal
    local function set(num)
        newVal = math.round((math.clamp(round(num, options.Step), options.Min, options.Max))*1000)/1000
        if newVal then
            sliderBar:TweenSize(UDim2.fromScale((newVal - options.Min) / (options.Max - options.Min), 1), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
            val = newVal
            sliderBar.Parent.Progress.Text = customTextDisplay(val, options.Max)
            if newVal ~= prevVal then
                coroutine.wrap(playSound)("MouseHover")
                coroutine.wrap(options.Callback)(newVal)
                prevVal = newVal
                newVal = nil
            end
        end
    end

    game.UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or Enum.UserInputType.Touch) then 
            local sizeScale = math.clamp((input.Position.X - sliderBar.Parent.AbsolutePosition.X) / sliderBar.Parent.AbsoluteSize.X, 0, 1)
            set(options.Min + ((options.Max - options.Min) * sizeScale)) 
        end
    end)

    set(val)

    return set
end

local delta, dragInput
local function update(input, gui, dragStart, startPos)
    delta = input.Position - dragStart
    gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), nil, nil, 0.3, true)
    delta = nil    
end

local function makeDraggable(gui)
    local dragging, dragStart, startPos, delta

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game.UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input, gui, dragStart, startPos)
        end
    end)
end

local function getOptions(options) -- cuz i was lazy to always insert the same line of code
    -- also idk how properly call that function
    return typeof(options) == "table" and options or {}
end
local function getCallback(options)
    return typeof(options.Function) == "function" and options.Function or typeof(options.Callback) == "function" and options.Callback or function() end
end
local function getText(options)
    return typeof(options.Title) == "string" and options.Title or typeof(options.Caption) == "string" and options.Caption or typeof(options.Name) == "string" and options.Name or typeof(options.Text) == "string" and options.Text or typeof(options.Description) == "string" and options.Description or typeof(options.Content) == "string" and options.Content
end

local lib; lib = {
    SetThemeColor = setmetatable({}, {
        __call = function(self, themeId, themeCol)
            themeId = tostring(themeId)
        end,
        __newindex = function(self, themeId, themeCol)
            themeId = tostring(themeId)

        end,
        __index = function(self, themeId)
            themeId = tostring(themeId)
        end,
    }),
    Notifications = {
        _AnimateNotification = {
            In = function(notification)
                if not notification or not notification.Parent then return end
                playSound("Notification")
                local size = notification.Size
                notification.Size = UDim2.fromScale()
                notification.Visible = true
                notification:TweenSize(size, nil, nil, 0.3, true)
                notification.NotificationOrange.Position = UDim2.new(-1, -1, 0, 0)
                notification.NotificationOrange.NotificationMain.Position = UDim2.new(-1, 0, 0, 2)
                task.wait(0.32)
                if not notification or not notification.Parent then return end
                notification.NotificationOrange:TweenPosition(UDim2.fromScale(0,0), nil, nil, 0.3, true)
                notification.NotificationOrange.NotificationMain:TweenPosition(UDim2.fromOffset(0, 2), nil, nil, 0.45, true)
            end,
            Out = function(notification)
                if not notification or not notification.Parent then return end
                notification.NotificationOrange.NotificationMain:TweenPosition(UDim2.new(-1, 0, 0, 2), nil, nil, 0.45, true)
                notification.NotificationOrange:TweenPosition(UDim2.new(-1, -1, 0, 0), nil, nil, 0.3, true)
                task.wait(0.32)
                if not notification or not notification.Parent then return end
                notification:TweenSize(UDim2.fromScale(0, 0), nil, nil, 0.3, true)
                task.wait(0.31)
                if not notification or not notification.Parent then return end
                notification:Destroy()
            end
        },
        Notification = function(self, options)
            task.spawn(function()
                local notification = script.Parent.Notification.NotificationHolder:Clone()
                notification.Parent = script.Parent.Notification
                notification.Name = ""
                notification.NotificationOrange.NotificationMain.Bar.Fill.Size = UDim2.fromScale(1,1)
                notification.NotificationOrange.NotificationMain.Bar.Fill.Position = UDim2.fromScale(0,0)
                notification.NotificationOrange.NotificationMain.Title.Text = typeof(options.Title) == "string" and options.Title or typeof(options.Name) == "string" and options.Name or "Notification"
                local text = typeof(options.Text) == "string" and options.Text or typeof(options.Description) == "string" and options.Description or typeof(options.Content) == "string" and options.Content or ""
                notification.NotificationOrange.NotificationMain.Lines["1"].Text = text
                coroutine.wrap(self._AnimateNotification.In)(notification)
                local time = tonumber(options.Time) or tonumber(options.Delay) or tonumber(options.Length) or 5
                notification.NotificationOrange.NotificationMain.Bar.Fill:TweenSizeAndPosition(UDim2.fromScale(0, 1), UDim2.fromScale(1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, time, true)
                task.wait(time)
                coroutine.wrap(self._AnimateNotification.Out)(notification)
            end)
        end,
        ChooseNotification = function(self, options)
            task.spawn(function()
                local notification = script.Parent.Notification.ChooseNotificationHolder:Clone()
                notification.Parent = script.Parent.Notification
                notification.Name = ""
                notification.NotificationOrange.NotificationMain.Bar.Fill.Size = UDim2.fromScale(1,1)
                notification.NotificationOrange.NotificationMain.Bar.Fill.Position = UDim2.fromScale(0,0)
                notification.NotificationOrange.NotificationMain.Title.Text = typeof(options.Title) == "string" and options.Title or typeof(options.Name) == "string" and options.Name or "Notification"
                local text = typeof(options.Text) == "string" and options.Text or typeof(options.Description) == "string" and options.Description or typeof(options.Content) == "string" and options.Content or ""
                notification.NotificationOrange.NotificationMain.Lines["1"].Text = text
                local done = false
                notification.NotificationOrange.NotificationMain.Yes.MouseButton1Click:Connect(function()
                    if done then return end
                    coroutine.wrap(self._AnimateNotification.Out)(notification)
                    done = true
                    getCallback(options)(true)
                end)
                notification.NotificationOrange.NotificationMain.No.MouseButton1Click:Connect(function()
                    if done then return end
                    coroutine.wrap(self._AnimateNotification.Out)(notification)
                    done = true
                    getCallback(options)(false)
                end)
                coroutine.wrap(self._AnimateNotification.In)(notification)
                local time = tonumber(options.Time) or tonumber(options.Delay) or tonumber(options.Length) or 5
                notification.NotificationOrange.NotificationMain.Bar.Fill:TweenSizeAndPosition(UDim2.fromScale(0, 1), UDim2.fromScale(1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, time, true)
                task.wait(time)
                coroutine.wrap(self._AnimateNotification.Out)(notification)
            end)
        end
    },
    Versions = versions,
    MakeWindow = function(self, options)
        local configStructure = {}
        local configEvent = Instance.new("BindableEvent")
        local counter = {}
        local function count(name, layer)
            counter[layer] = counter[layer] or {}
            counter[layer][name] = (tonumber(counter[layer][name]) or 0) + 1
            return name..counter[layer][name]
        end
        options = getOptions(options)
        for i=1, 5 do
            game["Run Service"].RenderStepped:Wait()
        end
        local session = {}
        local cons = {}
        local window = script.Parent.Holder.Window:Clone()
        window.Parent = script.Parent.Holder
        local fadeTime = 1
        local size = window.Size
        window.Name = ""
        window.HolderFrame.Title.Text = getText(options) or "Fire Library | "..versions.FireLibraryVersion
        window.Visible = true
        window.Position = UDim2.fromScale(0.5, 0.5)
        window.HolderFrame.StarterFade.Visible = true
        window.Size = UDim2.fromScale(0,0)
        local maximize = script.Parent.Holder.MobileMaximize:Clone()
        maximize.Parent = script.Parent.Holder
        maximize.Name = ""
        maximize.Visible = false
        makeDraggable(maximize.DragButton)
        makeDraggable(window)

        local cd = false
        local windowFuncs = {
            Opened = true,
            Close = function(self)
                task.spawn(function()
                    while cd and task.wait() do end
                    self.Opened = false
                    self:Hide()
                    task.wait(fadeTime + 0.01)
                    window:Destroy()
                end)
            end,
            Show = function(self)
                if cd then return false end
                task.spawn(function()
                    -- for some reason window:TweenSize does not work :|
                    cd = true
                    maximize.Visible = false
                    window.Visible = true
                    game.TweenService:Create(window, TweenInfo.new(fadeTime / 2.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = size}):Play()
                    game.TweenService:Create(window.HolderFrame.StarterFade, TweenInfo.new(fadeTime, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                    task.wait(fadeTime + 0.01)
                    cd = false
                    window.HolderFrame.StarterFade.ZIndex -= 1000
                    window.HolderFrame.StarterFade.Visible = false
                end)
                return true
            end,
            Toggle = function(self, state)
                if state == nil then
                    state = window.Visible
                else
                    state = not state
                end
                if state then
                    return self:Hide()
                else
                    return self:Show()
                end
            end,
            Hide = function(self)
                if cd then return false end
                task.spawn(function()
                    cd = true
                    maximize.Visible = isMobile
                    window.HolderFrame.StarterFade.Visible = true
                    window.HolderFrame.StarterFade.ZIndex += 1000
                    game.TweenService:Create(window, TweenInfo.new(fadeTime, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Size = UDim2.fromScale(0,0)}):Play()
                    game.TweenService:Create(window.HolderFrame.StarterFade, TweenInfo.new(fadeTime / 2.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                    task.wait(fadeTime + 0.01)
                    cd = false
                    window.Visible = false
                end)
                return true
            end,
            AddPage = function(self, options)
                options = getOptions(options)
                local text = getText(options) or "Page"
                local counterTextPage = count(text, 1)
                local order = math.clamp(tonumber(options.Order) or 1, 0, 999)
                configStructure[counterTextPage] = {}
                local struct = configStructure[counterTextPage]
                local pageButton = window.HolderFrame.PageButtons.PageButton:Clone()
                pageButton.Parent = window.HolderFrame.PageButtons
                pageButton.Visible = true
                pageButton.Name = ""
                pageButton.LayoutOrder = -order
                
                pageButton:FindFirstChild("Text").Text = text
                cons[#cons+1] = pageButton.Trigger.MouseEnter:Connect(function()
                    playSound("MouseHover")
                end)
                pageButton.Size = UDim2.fromScale((#pageButton:FindFirstChild("Text").Text / 65) + 0.05, 1)
                local page = window.HolderFrame.PageDisplay.Page:Clone()
                page.Parent = window.HolderFrame.PageDisplay
                page.Name = ""
                cons[#cons+1] = pageButton.Trigger.MouseButton1Click:Connect(function()
                    playSound("Click")
                    if pageButton.Selection.Visible then
                        page.Visible = false
                        pageButton.Selection.Visible = false
                    else
                        for i,v in page.Parent:GetChildren() do
                            if v and v:IsA(page.ClassName) then
                                v.Visible = false
                            end
                        end
                        page.Visible = true
                        for i,v in pageButton.Parent:GetChildren() do
                            if v and v:IsA(pageButton.ClassName) then
                                v.Selection.Visible = false
                            end
                        end
                        pageButton.Selection.Visible = true
                    end
                end)

                local pageFuncs = {
                    AddSlider = function(self, options)
                        options = getOptions(options)
                        options.Min = tonumber(options.Min or options.Minimum) or 0
                        options.Max = tonumber(options.Max or options.Maximum) or 100
                        options.Callback = getCallback(options)
                        local text = getText(options) or "Slider"
                        local counterText = count(text, 2)
                        if options.Min > options.Max then
                            local max, min = options.Max, options.Min
                            options.Min = max
                            options.Max = min
                        elseif options.Min == options.Max then
                            local cb = options.Callback
                            options.Callback = function()
                                cb(options.Min)
                            end
                            return self:AddButton(options)
                        end
                        local funcs = {Options = options}
                        options.Step = tonumber(options.Step) or tonumber(options.Per) or (options.Max - options.Min) / 25
                        options.Default = tonumber(options.Default) or tonumber(options.Base) or options.Min
                        local cb = options.Callback

                        --

                        local slider = page.Slider:Clone()
                        slider.Parent = page
                        slider.Name = ""
                        slider.Visible = true
                        slider:FindFirstChild("Text").Text = text
                        funcs.Object = slider

                        local set = setupSlider(slider, nil, options)
                        set(options.Default)
                        options.Callback = function(newVal)
                            if funcs.Value == newVal then return end
                            funcs.Value = newVal
                            set(newVal)
                            struct[counterText] = newVal
                            return cb(newVal)
                        end
                        options.Set = set

                        --

                        function funcs:Set(value)
                            if not self or not self.Object then return end
                            self.Options.Set(tonumber(value) or self.Value)
                        end
                        function funcs:SetCustomTextDisplay(func)
                            if not self or not self.Object then return end
                            self.Options.CustomTextDisplay = func
                        end
                        function funcs:SetStep(val)
                            if not self or not self.Object then return end
                            self.Options.Step = tonumber(val) or self.Options.Step
                        end
                        function funcs:SetMinimum(val)
                            if not self or not self.Object then return end
                            self.Options.Min = tonumber(val) or self.Options.Min
                        end
                        function funcs:SetMaximum(val)
                            if not self or not self.Object then return end
                            self.Options.Max = tonumber(val) or self.Options.Max
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        funcs.SetMax = funcs.SetMaximum
                        funcs.SetMin = funcs.SetMinimum

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddSeparator = function(self)
                        local sep = page.Separator:Clone()
                        sep.Parent = page
                        sep.Visible = true
                        sep.Name = ""

                        local funcs = {}
                        funcs.Object = sep
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end

                        return sep
                    end,
                    AddButton = function(self, options)
                        options = getOptions(options)

                        local button = page.Button:Clone()
                        button.Parent = page
                        button.Visible = true
                        button.Name = ""
                        button:FindFirstChild("Text").Text = getText(options) or "Button"
                        cons[#cons+1] = button.Trigger.MouseEnter:Connect(function()
                            playSound("MouseHover")
                        end)
                        cons[#cons+1] = button.Trigger.MouseButton1Click:Connect(function()
                            playSound("Click")
                            getCallback(options)()
                        end)
                        local funcs = {}
                        funcs.Object = button

                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        return funcs
                    end,
                    AddToggle = function(self, options)
                        options = getOptions(options)

                        local state = typeof(options.Default) == "boolean" and options.Default or typeof(options.Base) == "boolean" and options.Base or false
                        local toggle = page.Toggle:Clone()
                        toggle.Parent = page
                        toggle.Visible = true
                        toggle.Name = ""
                        local text = getText(options) or "Toggle"
                        local counterText = count(text, 2)
                        toggle:FindFirstChild("Text").Text = text
                        cons[#cons+1] = toggle.Trigger.MouseEnter:Connect(function()
                            playSound("MouseHover")
                        end)
                        local funcs = {Options = options}
                        local cb = function(bool)
                            funcs.Value = bool
                            state = bool
                            toggle.ToggleOuter.Frame.ImageLabel.Visible = bool
                            struct[counterText] = bool
                            getCallback(options)(bool)
                        end
                        cb(state)
                        options.CB = cb
                        toggle.ToggleOuter.Frame.ImageLabel.Visible = state
                        cons[#cons+1] = toggle.Trigger.MouseButton1Click:Connect(function()
                            playSound("Click")
                            state = not state
                            cb(state)
                        end)

                        funcs.Object = toggle

                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Set(val)
                            if not self or not self.Object then return end
                            self.Object.ToggleOuter.Frame.ImageLabel.Visible = val
                            self.Options.CB(not not val)
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddLabel = function(self, options)
                        options = getOptions(options)

                        local label = page.Label:Clone()
                        label.Parent = page
                        label.Visible = true
                        label.Name = ""
                        label:FindFirstChild("Text").Text = getText(options) or "Label"

                        local funcs = {}
                        funcs.Object = label

                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        return funcs
                    end,
                    AddTextBox = function(self, options)
                        options = getOptions(options)

                        local tb = page.TextBox:Clone()
                        tb.Parent = page
                        tb.Visible = true
                        tb.Name = ""
                        local text = getText(options) or "Text Box"
                        local counterText = count(text, 2)
                        tb:FindFirstChild("Text").Text = text
                        tb.TextBoxOuter.TextBox.PlaceholderText = typeof(options.Placeholder) == "string" and options.Placeholder or typeof(options.PlaceholderText) == "string" and options.PlaceholderText or ""
                        tb.TextBoxOuter.TextBox.Text = typeof(options.Default) == "string" and options.Default or typeof(options.Base) == "string" and options.Base or ""
                        cons[#cons+1] = tb.Trigger.MouseButton1Click:Connect(function()
                            playSound("MouseHover")
                            tb.TextBoxOuter.TextBox:CaptureFocus()
                        end)
                        local funcs = {Value = tb.TextBoxOuter.TextBox.Text}
                        local function cb(txt)
                            funcs.Value = txt
                            tb.TextBoxOuter.TextBox.Text = txt
                            struct[counterText] = txt
                            getCallback(options)(txt)
                        end
                        options.CB = cb
                        cons[#cons+1] = tb.TextBoxOuter.TextBox.FocusLost:Connect(function(enter)
                            if (options.Enter or options.NeedEnter or options.NeedsEnter) and enter or not (options.Enter or options.NeedEnter or options.NeedsEnter) then
                                playSound("Click")
                                cb(tb.TextBoxOuter.TextBox.Text)
                            end
                        end)

                        funcs.Object = tb
                        funcs.Options = options

                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Set(txt)
                            if not self or not self.Object then return end
                            self.Object.TextBoxOuter.TextBox.Text = tostring(txt)
                            getCallback(self.Options)(tostring(txt))
                        end
                        function funcs:SetPlaceholder(txt)
                            if not self or not self.Object then return end
                            self.Object.TextBoxOuter.TextBox.PlaceholderText = tostring(txt)
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end
                        funcs.SetPlaceholderText = funcs.SetPlaceholder

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddInput = function(self, options)
                        options = getOptions(options)
                        options.Default = typeof(options.Default) == "string" and options.Default or typeof(options.Base) == "string" and options.Base or "LeftAlt"

                        local blockedCodes = {
                            Enum.KeyCode.Unknown,
                            Enum.KeyCode.Power,
                            Enum.KeyCode.Left,
                            Enum.KeyCode.Right,
                            Enum.KeyCode.Up,
                            Enum.KeyCode.Down,
                            Enum.KeyCode.F11,
                            Enum.KeyCode.F9,
                            Enum.KeyCode.CapsLock,
                            Enum.KeyCode.ScrollLock,
                            Enum.KeyCode.NumLock
                        }
                        local funcs = {}
                        local text = getText(options) or "Input"
                        local counterText = count(text, 2)
                        local input = page.Input:Clone()
                        local function cb(inpt)
                            if tonumber(inpt) then
                                inpt = Enum.KeyCode:FromValue(inpt)
                            end
                            funcs.Value = inpt
                            input.InputOuter.Frame.Input.Text = inpt.Name
                            struct[counterText] = inpt.Value
                            getCallback(options)(inpt)
                        end
                        options.CB = cb
                        local focused = false
                        local con
                        input.Parent = page
                        input.Visible = not isMobile
                        input.Name = ""
                        input:FindFirstChild("Text").Text = text
                        local inpt = Enum.KeyCode:FromName(options.Default) or Enum.KeyCode:FromValue(options.Default)
                        input.InputOuter.Frame.Input.Text = inpt.Name
                        cons[#cons+1] = input.Trigger.MouseButton1Click:Connect(function()
                            playSound("Click")
                            focused = not focused
                            input.InputOuter.Frame.Input.Text = "..."
                            if focused then
                                con = game.UserInputService.InputBegan:Connect(function(s, chat)
                                    if chat or table.find(blockedCodes, s.KeyCode) then return end
                                    focused = false
                                    con:Disconnect()
                                    con = nil
                                    inpt = s.KeyCode
                                    cb(inpt)
                                end)
                            else
                                input.InputOuter.Frame.Input.Text = inpt.Name
                                if con then
                                    con:Disconnect()
                                    con = nil
                                end
                            end
                        end)
                        cons[#cons+1] = input.Trigger.MouseEnter:Connect(function()
                            playSound("MouseHover")
                        end)

                        funcs.Object = input

                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Set(input)
                            if not self or not self.Object or (typeof(input) ~= "EnumItem" or input.EnumType ~= Enum.KeyCode or not tonumber(input)) then return end
                            if tonumber(input) then
                                input = Enum.KeyCode:FromValue(input)
                            end
                            if not input then return end
                            self.Object.InputOuter.Frame.Input.Text = input.Name
                            self.Options.CB(input)
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddDropdown = function(self, options)
                        options = getOptions()
                        options.Default = typeof(options.Default) == "string" and options.Default or typeof(options.Base) == "string" and options.Base or "None"
                        local dd = page.Dropdown:Clone()
                        dd.Parent = page
                        dd.Visible = true
                        dd.Name = ""
                        local text = getText(options) or "Dropdown"
                        local counterText = count(text, 2)
                        dd:FindFirstChild("Text").Text = text
                        local selected = options.Default
                        dd.DropdownOuter.Default.Text = selected
                        local open = false
                        local function toggle(state)
                            state = state == nil and not open or not not state
                            open = state
                            dd.Size = state and UDim2.fromScale(1, 0.4) or UDim2.fromScale(1, 0.1)
                            dd.DropdownOuter.Default.Visible = not state
                            dd.DropdownOuter.ContentHolder.Values.Visible = state
                            dd:FindFirstChild("Text").Size = state and UDim2.fromScale(0.9, 0.1) or UDim2.fromScale(0.9, 0.4)
                            dd:FindFirstChild("Text").Position = state and UDim2.fromScale(0.5, 0.013) or UDim2.fromScale(0.5, 0.05)
                            dd.DropdownOuter.Size = state and UDim2.new(0.9, -2, 0.8, 0) or UDim2.new(0.9, -2, 0.4, 0)
                            dd.DropdownOuter.Position = state and UDim2.new(0.05, 1, 0.125, 0) or UDim2.new(0.05, 1, 0.5)
                        end
                        local function cb(newVal)
                            selected = newVal
                            dd.DropdownOuter.Default.Text = newVal
                            struct[counterText] = newVal
                            for i,v in dd.DropdownOuter.ContentHolder.Values:GetChildren() do
                                if v.Text == newVal then
                                    v.TextColor = Color3.fromRGB(255, 125, 0)
                                else
                                    v.TextColor = Color3.new(1,1,1)
                                end
                            end
                            getCallback(options)(newVal)
                        end
                        toggle(false)
                        dd.Trigger.MouseButton1Click:Connect(toggle)
                        for i,v in typeof(options.Selections) == "table" and options.Selections or typeof(options.Rows) == "table" and options.Rows or {} do
                            if typeof(v) == "string" then
                                local row = dd.DropdownOuter.ContentHolder.Values.ListButton:Clone()
                                row.Parent = dd.DropdownOuter.ContentHolder.Values
                                row.Name = ""
                                row.Text = v
                                row.Visible = true
                                if v == selected then
                                    row.TextColor3 = Color3.fromRGB(255, 125, 0)
                                end
                                row.MouseButton1Click:Connect(function()
                                    toggle(false)
                                    coroutine.wrap(cb)(v)
                                    for i,v in row.Parent:GetChildren() do
                                        v.TextColor3 = Color3.new(1,1,1)
                                    end
                                    row.TextColor3 = Color3.fromRGB(255, 125, 0)
                                end)
                            end
                        end

                        local funcs = {}
                        funcs.Object = dd
                        funcs.TGL = toggle
                        funcs.CB = cb

                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end
                        function funcs:Set(txt)
                            if not self or not self.Object then return end
                            self.CB(txt)
                        end
                        function funcs:Toggle(state)
                            if not self or not self.Object then return end
                            self.TGL(state)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddToggleDropdown = function(self, options)
                        options = getOptions()
                        options.Default = typeof(options.Default) == "table" and options.Default or typeof(options.Base) == "table" and options.Base or {}
                        local dd = page.Dropdown:Clone()
                        dd.Parent = page
                        dd.Visible = true
                        dd.Name = ""
                        local text = getText(options) or "Toggle Dropdown"
                        local counterText = count(text, 2)
                        dd:FindFirstChild("Text").Text = text
                        local selected = options.Default
                        local function getSelectedText()
                            local bools = {}
                            for i,v in selected do
                                table.insert(bools, i)
                            end
                            return table.concat(bools, ", ")
                        end
                        dd.DropdownOuter.Default.Text = getSelectedText()
                        local open = false
                        local function toggle(state)
                            state = state == nil and not open or not not state
                            open = state
                            dd.Size = state and UDim2.fromScale(1, 0.4) or UDim2.fromScale(1, 0.1)
                            dd.DropdownOuter.Default.Visible = not state
                            dd.DropdownOuter.ContentHolder.Values.Visible = state
                            dd:FindFirstChild("Text").Size = state and UDim2.fromScale(0.9, 0.1) or UDim2.fromScale(0.9, 0.4)
                            dd:FindFirstChild("Text").Position = state and UDim2.fromScale(0.5, 0.013) or UDim2.fromScale(0.5, 0.05)
                            dd.DropdownOuter.Size = state and UDim2.new(0.9, -2, 0.8, 0) or UDim2.new(0.9, -2, 0.4, 0)
                            dd.DropdownOuter.Position = state and UDim2.new(0.05, 1, 0.125, 0) or UDim2.new(0.05, 1, 0.5)
                        end
                        local function cb(newVal)
                            selected = newVal
                            dd.DropdownOuter.Default.Text = getSelectedText()
                            struct[counterText] = newVal
                            for i,v in dd.DropdownOuter.ContentHolder.Values:GetChildren() do
                                if v.Text == newVal then
                                    v.TextColor = Color3.fromRGB(255, 125, 0)
                                else
                                    v.TextColor = Color3.new(1,1,1)
                                end
                            end
                            getCallback(options)(newVal)
                        end
                        toggle(false)
                        dd.Trigger.MouseButton1Click:Connect(toggle)
                        for i,v in selected do
                            if typeof(i) == "string" and typeof(v) == "boolean" then
                                local row = dd.DropdownOuter.ContentHolder.Values.ListButton:Clone()
                                row.Parent = dd.DropdownOuter.ContentHolder.Values
                                row.Name = ""
                                row.Text = i
                                local state = v
                                row.Visible = true
                                row.TextColor3 = state and Color3.fromRGB(255, 125, 0) or not Color3.fromRGB(255, 255, 255)
                                row.MouseButton1Click:Connect(function()
                                    state = not state
                                    row.TextColor3 = state and Color3.fromRGB(255, 125, 0) or not Color3.fromRGB(255, 255, 255)
                                    selected[i] = state
                                    coroutine.wrap(cb)(selected)
                                end)
                            end
                        end

                        local funcs = {}
                        funcs.Object = dd
                        funcs.TGL = toggle
                        funcs.CB = cb

                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end
                        function funcs:Set(txt)
                            if not self or not self.Object then return end
                            self.CB(txt)
                        end
                        function funcs:Toggle(state)
                            if not self or not self.Object then return end
                            self.TGL(state)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddColorPicker = function(self, options)
                        options = getOptions(options)
                        options.Default = typeof(options.Default) == "Color3" and options.Default or typeof(options.Base) == "Color3" and options.Base or Color3.fromRGB(255, 255, 255)

                        local cp = page.ColorPicker:Clone()
                        cp.Parent = page
                        cp.Visible = true
                        cp.Name = ""
                        local text = getText(options) or "Color Picker"
                        local counterText = count(text, 2)
                        cp:FindFirstChild("Text").Text = text

                        local col = options.Default
                        cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                        cp.RGB.RHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.new(col.R, 0, 0)
                        cp.RGB.GHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.new(0, col.G, 0)
                        cp.RGB.BHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.new(0, 0, col.B)
                        local funcs = {Value = col}
                        local Rs, Gs, Bs
                        local function cb(col)
                            funcs.Value = col
                            Rs(math.round(col.R * 255))
                            Gs(math.round(col.G * 255))
                            Bs(math.round(col.B * 255))
                            struct[counterText] = {col.R * 255, col.G * 255, col.B * 255}
                            getCallback(options)(col)
                        end
                        options.CB = cb
                        Rs, Gs, Bs = 
                            setupSlider(cp.RGB.RHolder, nil, {Min = 0, Max = 255, Step = 1, Default = math.round(col.R * 255), Callback = function(v)
                                if v == col.R then return end
                                col = Color3.new(v/255, col.G, col.B)
                                cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                                cp.RGB.RHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.fromRGB(v, 0, 0)
                                cb(col)
                            end}),
                        setupSlider(cp.RGB.GHolder, nil, {Min = 0, Max = 255, Step = 1, Default = math.round(col.G * 255), Callback = function(v)
                            if v == col.G then return end
                            col = Color3.new(col.R, v/255, col.B)
                            cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                            cp.RGB.GHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.fromRGB(0, v, 0)
                            cb(col)
                        end}),
                        setupSlider(cp.RGB.BHolder, nil, {Min = 0, Max = 255, Step = 1, Default = math.round(col.B * 255), Callback = function(v)
                            if v == col.B then return end
                            col = Color3.new(col.R, col.G, v/255)
                            cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                            cp.RGB.BHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.fromRGB(0, 0, v)
                            cb(col)
                        end})

                        funcs.Object = cp
                        funcs.Options = options

                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Set(obj)
                            if not self or not self.Object or typeof(obj) ~= "Color3" then return end
                            self.Options.CB(obj)
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(Color3.fromRGB(val[1], val[2], val[3]))
                        end)

                        return funcs
                    end,
                }
                pageFuncs.AddSwitch = pageFuncs.AddToggle
                for i,v in pageFuncs do
                    if i:sub(1,3) == "Add" then
                        pageFuncs[i:gsub("Add", "Create")] = v
                        pageFuncs[i:gsub("Add", "")] = v
                    end
                end

                return pageFuncs
            end,
        }
        windowFuncs.Shutdown = windowFuncs.Close
        windowFuncs.Minimize = windowFuncs.Hide
        windowFuncs.Maximize = windowFuncs.Show
        windowFuncs:Show()

        local page = windowFuncs:AddPage({Title = "Main", Order = 999})
        local toggleKey = Enum.KeyCode.LeftAlt
        page:AddButton({Text = "Hide UI", Callback = function()
            if windowFuncs:Minimize() then
                lib.Notifications:Notification({Title = "UI Hidden", Text = "Press "..toggleKey.Name.." to show the UI"})
            end
        end})
        page:AddInput({Text = "Toggle UI Key", Default = toggleKey.Name, Callback = function(kk)
            toggleKey = kk
        end})
        cons[#cons+1] = game.UserInputService.InputBegan:Connect(function(input)
            if game.UserInputService:GetFocusedTextBox() or input.KeyCode ~= toggleKey then return end
            windowFuncs:Toggle()
        end)
        local closeCallback = function()
            maximize:Destroy()
            for i,v in cons do
                if v and v.Connected then
                    v:Disconnect()
                end
            end;
            (typeof(options.CloseCallback) == "function" and options.CloseCallback or getCallback(options))()
        end
        maximize.DragButton.MouseButton1Click:Connect(function()
            windowFuncs:Show()
        end)
        page:AddButton({Text = "Close UI", Callback = function()
            lib.Notifications:ChooseNotification({Title = "Are you sure?", Text = "Are you sure that you want to close\n"..window.HolderFrame.Title.Text.."?", Callback = function(b)
                if b then
                    windowFuncs:Close()
                    closeCallback()
                end
            end})
        end})
        if configsEnabled then
            page:AddSeparator()
            local currentConfig = ""
            page:AddTextBox({Text = "Config name", NeedEnter = false, Callback = function(text)
                currentConfig = text
            end, IgnoreConfigs = true})
            local suffix = ""
            local prefix = ""
            if makefolder then
                makefolder("FireLib")
                prefix = "FireLib\\"
                suffix = "-Config.json"
            else
                suffix = "-FireLib_Config.json"
            end
            page:AddButton({Text = "Save", Callback = function()
                writefile(prefix..currentConfig..suffix, game.HttpService:JSONEncode(configStructure))
            end})
            page:AddButton({Text = "Load", Callback = function()
                local got = readfile(prefix..currentConfig..suffix)
                if got then
                    got = game.HttpService:JSONDecode(got)
                end
                if not got then return end
                configEvent:Fire(got)
            end})
        end

        return windowFuncs
    end,
}

lib.CreateWindow = lib.MakeWindow
lib.AddWindow = lib.MakeWindow
lib.Notifications.Notify = lib.Notifications.Notification
lib.Notifications.SelectNotification = lib.Notifications.ChooseNotification
lib.Notifications.SelectionNotification = lib.Notifications.ChooseNotification

if isMobile then
    script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Lines['1'].TextSize -= 3
    script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain.Lines['1'].TextSize -= 3
end

getGlobalTable()._FIRELIB = lib

return lib
end

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

local screenGui = Instance1
return require(screenGui.ModuleScript)
