-- [[ GENERATED WITH InfernoHub/Scriptify STUDIO PLUGIN ]] --
-- Scriptify Version: 1.1

--

-- Create objects
local parent = nil;
local objects = {
    ["Instance0"] = Instance.new("ScreenGui"); -- Fire Library
    ["Instance1"] = Instance.new("Frame"); -- Holder
    ["Instance2"] = Instance.new("TextButton"); -- Window
    ["Instance3"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance4"] = Instance.new("Frame"); -- HolderFrame
    ["Instance5"] = Instance.new("TextLabel"); -- Title
    ["Instance6"] = Instance.new("Frame"); -- Separator
    ["Instance7"] = Instance.new("ScrollingFrame"); -- PageButtons
    ["Instance8"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance9"] = Instance.new("Frame"); -- PageButton
    ["Instance10"] = Instance.new("Frame"); -- Selection
    ["Instance11"] = Instance.new("TextLabel"); -- Text
    ["Instance12"] = Instance.new("TextButton"); -- Trigger
    ["Instance13"] = Instance.new("Frame"); -- PageDisplay
    ["Instance14"] = Instance.new("ScrollingFrame"); -- Page
    ["Instance15"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance16"] = Instance.new("Frame"); -- Label
    ["Instance17"] = Instance.new("TextLabel"); -- Text
    ["Instance18"] = Instance.new("Frame"); -- Separator2
    ["Instance19"] = Instance.new("Frame"); -- Separator
    ["Instance20"] = Instance.new("Frame"); -- ColorPicker
    ["Instance21"] = Instance.new("Frame"); -- Separator2
    ["Instance22"] = Instance.new("TextLabel"); -- Text
    ["Instance23"] = Instance.new("Frame"); -- Color
    ["Instance24"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance25"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance26"] = Instance.new("Frame"); -- RGB
    ["Instance27"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance28"] = Instance.new("Frame"); -- RHolder
    ["Instance29"] = Instance.new("TextButton"); -- SliderOuter
    ["Instance30"] = Instance.new("Frame"); -- Bar
    ["Instance31"] = Instance.new("Frame"); -- Fill
    ["Instance32"] = Instance.new("TextLabel"); -- Progress
    ["Instance33"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance34"] = Instance.new("Frame"); -- GHolder
    ["Instance35"] = Instance.new("TextButton"); -- SliderOuter
    ["Instance36"] = Instance.new("Frame"); -- Bar
    ["Instance37"] = Instance.new("Frame"); -- Fill
    ["Instance38"] = Instance.new("TextLabel"); -- Progress
    ["Instance39"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance40"] = Instance.new("Frame"); -- BHolder
    ["Instance41"] = Instance.new("TextButton"); -- SliderOuter
    ["Instance42"] = Instance.new("Frame"); -- Bar
    ["Instance43"] = Instance.new("Frame"); -- Fill
    ["Instance44"] = Instance.new("TextLabel"); -- Progress
    ["Instance45"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance46"] = Instance.new("Frame"); -- Separator
    ["Instance47"] = Instance.new("Frame"); -- Separator
    ["Instance48"] = Instance.new("Frame"); -- Separator
    ["Instance49"] = Instance.new("Frame"); -- Frame
    ["Instance50"] = Instance.new("Frame"); -- Button
    ["Instance51"] = Instance.new("Frame"); -- ButtonOuter
    ["Instance52"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance53"] = Instance.new("Frame"); -- Frame
    ["Instance54"] = Instance.new("ImageLabel"); -- ImageLabel
    ["Instance55"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance56"] = Instance.new("Frame"); -- Separator
    ["Instance57"] = Instance.new("Frame"); -- Separator2
    ["Instance58"] = Instance.new("TextButton"); -- Trigger
    ["Instance59"] = Instance.new("TextLabel"); -- Text
    ["Instance60"] = Instance.new("TextButton"); -- KeybindTrigger
    ["Instance61"] = Instance.new("Frame"); -- InputOuter
    ["Instance62"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance63"] = Instance.new("Frame"); -- Frame
    ["Instance64"] = Instance.new("TextLabel"); -- Input
    ["Instance65"] = Instance.new("Frame"); -- Dropdown
    ["Instance66"] = Instance.new("Frame"); -- DropdownOuter
    ["Instance67"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance68"] = Instance.new("Frame"); -- ContentHolder
    ["Instance69"] = Instance.new("ScrollingFrame"); -- Values
    ["Instance70"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance71"] = Instance.new("TextButton"); -- ListButton
    ["Instance72"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance73"] = Instance.new("TextLabel"); -- Default
    ["Instance74"] = Instance.new("Frame"); -- Separator2
    ["Instance75"] = Instance.new("Frame"); -- Separator
    ["Instance76"] = Instance.new("TextButton"); -- Trigger
    ["Instance77"] = Instance.new("TextLabel"); -- Text
    ["Instance78"] = Instance.new("Frame"); -- Input
    ["Instance79"] = Instance.new("Frame"); -- InputOuter
    ["Instance80"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance81"] = Instance.new("Frame"); -- Frame
    ["Instance82"] = Instance.new("TextLabel"); -- Input
    ["Instance83"] = Instance.new("Frame"); -- Separator2
    ["Instance84"] = Instance.new("Frame"); -- Separator
    ["Instance85"] = Instance.new("TextButton"); -- Trigger
    ["Instance86"] = Instance.new("TextLabel"); -- Text
    ["Instance87"] = Instance.new("Frame"); -- Slider
    ["Instance88"] = Instance.new("Frame"); -- Separator
    ["Instance89"] = Instance.new("Frame"); -- Separator2
    ["Instance90"] = Instance.new("Frame"); -- SliderOuter
    ["Instance91"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance92"] = Instance.new("Frame"); -- Bar
    ["Instance93"] = Instance.new("Frame"); -- Fill
    ["Instance94"] = Instance.new("TextLabel"); -- Progress
    ["Instance95"] = Instance.new("TextButton"); -- Trigger
    ["Instance96"] = Instance.new("TextLabel"); -- Text
    ["Instance97"] = Instance.new("Frame"); -- TextBox
    ["Instance98"] = Instance.new("Frame"); -- Separator
    ["Instance99"] = Instance.new("Frame"); -- Separator2
    ["Instance100"] = Instance.new("Frame"); -- TextBoxOuter
    ["Instance101"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance102"] = Instance.new("Frame"); -- TextBoxBackground
    ["Instance103"] = Instance.new("TextBox"); -- TextBox
    ["Instance104"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance105"] = Instance.new("TextButton"); -- Trigger
    ["Instance106"] = Instance.new("TextLabel"); -- Text
    ["Instance107"] = Instance.new("Frame"); -- Toggle
    ["Instance108"] = Instance.new("Frame"); -- Separator
    ["Instance109"] = Instance.new("Frame"); -- Separator2
    ["Instance110"] = Instance.new("Frame"); -- ToggleOuter
    ["Instance111"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance112"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance113"] = Instance.new("Frame"); -- Frame
    ["Instance114"] = Instance.new("Frame"); -- ImageHolder
    ["Instance115"] = Instance.new("ImageLabel"); -- ImageLabel
    ["Instance116"] = Instance.new("TextLabel"); -- Text
    ["Instance117"] = Instance.new("TextButton"); -- KeybindTrigger
    ["Instance118"] = Instance.new("TextButton"); -- Trigger
    ["Instance119"] = Instance.new("Frame"); -- InputOuter
    ["Instance120"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance121"] = Instance.new("Frame"); -- Frame
    ["Instance122"] = Instance.new("TextLabel"); -- Input
    ["Instance123"] = Instance.new("Frame"); -- GroupboxZone
    ["Instance124"] = Instance.new("Frame"); -- LeftGroupboxHolder
    ["Instance125"] = Instance.new("Frame"); -- Display
    ["Instance126"] = Instance.new("Frame"); -- TopNeon
    ["Instance127"] = Instance.new("Frame"); -- ContentHolder
    ["Instance128"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance129"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance130"] = Instance.new("TextLabel"); -- Title
    ["Instance131"] = Instance.new("Frame"); -- RightGroupboxHolder
    ["Instance132"] = Instance.new("Frame"); -- Display
    ["Instance133"] = Instance.new("Frame"); -- TopNeon
    ["Instance134"] = Instance.new("Frame"); -- ContentHolder
    ["Instance135"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance136"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance137"] = Instance.new("TextLabel"); -- Title
    ["Instance138"] = Instance.new("UIGradient"); -- UIGradient
    ["Instance139"] = Instance.new("Frame"); -- StarterFade
    ["Instance140"] = Instance.new("Frame"); -- KeySystem
    ["Instance141"] = Instance.new("TextButton"); -- TextBox
    ["Instance142"] = Instance.new("TextLabel"); -- Text
    ["Instance143"] = Instance.new("Frame"); -- Separator
    ["Instance144"] = Instance.new("Frame"); -- TextBoxOuter
    ["Instance145"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance146"] = Instance.new("Frame"); -- TextBoxBackground
    ["Instance147"] = Instance.new("TextBox"); -- TextBox
    ["Instance148"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance149"] = Instance.new("TextButton"); -- Trigger
    ["Instance150"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance151"] = Instance.new("TextButton"); -- Copy
    ["Instance152"] = Instance.new("Frame"); -- ToggleOuter
    ["Instance153"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance154"] = Instance.new("Frame"); -- Frame
    ["Instance155"] = Instance.new("ImageLabel"); -- ImageLabel
    ["Instance156"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance157"] = Instance.new("TextLabel"); -- Text
    ["Instance158"] = Instance.new("TextButton"); -- Trigger
    ["Instance159"] = Instance.new("Frame"); -- Label
    ["Instance160"] = Instance.new("TextLabel"); -- Text
    ["Instance161"] = Instance.new("TextButton"); -- Redeem
    ["Instance162"] = Instance.new("Frame"); -- ToggleOuter
    ["Instance163"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance164"] = Instance.new("Frame"); -- Frame
    ["Instance165"] = Instance.new("ImageLabel"); -- ImageLabel
    ["Instance166"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance167"] = Instance.new("TextLabel"); -- Text
    ["Instance168"] = Instance.new("TextButton"); -- Trigger
    ["Instance169"] = Instance.new("Frame"); -- Separator
    ["Instance170"] = Instance.new("Frame"); -- Distance
    ["Instance171"] = Instance.new("TextButton"); -- CloseUI
    ["Instance172"] = Instance.new("Frame"); -- ToggleOuter
    ["Instance173"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance174"] = Instance.new("Frame"); -- Frame
    ["Instance175"] = Instance.new("ImageLabel"); -- ImageLabel
    ["Instance176"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance177"] = Instance.new("TextLabel"); -- Text
    ["Instance178"] = Instance.new("TextButton"); -- Trigger
    ["Instance179"] = Instance.new("ImageLabel"); -- Stripes
    ["Instance180"] = Instance.new("UIGradient"); -- UIGradient
    ["Instance181"] = Instance.new("ImageLabel"); -- Stripes
    ["Instance182"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance183"] = Instance.new("Frame"); -- MobileMaximize
    ["Instance184"] = Instance.new("TextButton"); -- DragButton
    ["Instance185"] = Instance.new("TextLabel"); -- Text
    ["Instance186"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance187"] = Instance.new("UICorner"); -- UICorner
    ["Instance188"] = Instance.new("Frame"); -- Notification
    ["Instance189"] = Instance.new("Frame"); -- NotificationHolder
    ["Instance190"] = Instance.new("Frame"); -- NotificationColored
    ["Instance191"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance192"] = Instance.new("Frame"); -- NotificationMain
    ["Instance193"] = Instance.new("Frame"); -- Bar
    ["Instance194"] = Instance.new("Frame"); -- Fill
    ["Instance195"] = Instance.new("TextLabel"); -- Title
    ["Instance196"] = Instance.new("Frame"); -- Separator
    ["Instance197"] = Instance.new("Frame"); -- Lines
    ["Instance198"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance199"] = Instance.new("TextLabel"); -- 1
    ["Instance200"] = Instance.new("ImageLabel"); -- Stripes
    ["Instance201"] = Instance.new("ImageLabel"); -- Stripes
    ["Instance202"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance203"] = Instance.new("Frame"); -- ChooseNotificationHolder
    ["Instance204"] = Instance.new("Frame"); -- NotificationColored
    ["Instance205"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance206"] = Instance.new("Frame"); -- NotificationMain
    ["Instance207"] = Instance.new("Frame"); -- Bar
    ["Instance208"] = Instance.new("Frame"); -- Fill
    ["Instance209"] = Instance.new("TextLabel"); -- Title
    ["Instance210"] = Instance.new("Frame"); -- Separator
    ["Instance211"] = Instance.new("Frame"); -- Lines
    ["Instance212"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance213"] = Instance.new("TextLabel"); -- 1
    ["Instance214"] = Instance.new("ImageButton"); -- Yes
    ["Instance215"] = Instance.new("ImageButton"); -- No
    ["Instance216"] = Instance.new("ImageLabel"); -- Stripes
    ["Instance217"] = Instance.new("ImageLabel"); -- Stripes
    ["Instance218"] = Instance.new("ModuleScript"); -- ModuleScript
    ["Instance219"] = Instance.new("Frame"); -- LeftHolder
    ["Instance220"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance221"] = Instance.new("TextButton"); -- Keybinds
    ["Instance222"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance223"] = Instance.new("Frame"); -- HolderFrame
    ["Instance224"] = Instance.new("TextLabel"); -- Title
    ["Instance225"] = Instance.new("UIGradient"); -- UIGradient
    ["Instance226"] = Instance.new("ImageLabel"); -- Stripes
    ["Instance227"] = Instance.new("Frame"); -- List
    ["Instance228"] = Instance.new("UIListLayout"); -- UIListLayout
    ["Instance229"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance230"] = Instance.new("UIPadding"); -- UIPadding
    ["Instance231"] = Instance.new("Frame"); -- Separator
    ["Instance232"] = Instance.new("UIGradient"); -- UIGradient
    ["Instance233"] = Instance.new("ImageLabel"); -- Stripes
    ["Instance234"] = Instance.new("Folder"); -- Sounds
    ["Instance235"] = Instance.new("Folder"); -- SoundsFolder
    ["Instance236"] = Instance.new("Sound"); -- Notification
    ["Instance237"] = Instance.new("Sound"); -- MouseHover
    ["Instance238"] = Instance.new("Sound"); -- Click
};

do -- Set properties
    objects["Instance0"]["Enabled"] = false;
    objects["Instance0"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
    objects["Instance0"]["DisplayOrder"] = 999999999;
    objects["Instance0"]["Parent"] = parent;
    objects["Instance0"]["IgnoreGuiInset"] = true;
    objects["Instance0"]["Name"] = "Fire Library";

    objects["Instance1"]["Parent"] = objects["Instance0"];
    objects["Instance1"]["BackgroundTransparency"] = 1;
    objects["Instance1"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance1"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance1"]["Name"] = "Holder";
    objects["Instance1"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance1"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance1"]["ZIndex"] = 10000;
    objects["Instance1"]["BorderSizePixel"] = 0;
    objects["Instance1"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance2"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance2"]["TextSize"] = 14;
    objects["Instance2"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance2"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance2"]["Text"] = "";
    objects["Instance2"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance2"]["AutoButtonColor"] = false;
    objects["Instance2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance2"]["Parent"] = objects["Instance1"];
    objects["Instance2"]["Name"] = "Window";
    objects["Instance2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance2"]["Size"] = UDim2.new(0.699999988, 0, 0.774999976, 0);
    objects["Instance2"]["ZIndex"] = 10001;
    objects["Instance2"]["BorderSizePixel"] = 0;
    objects["Instance2"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance3"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance3"]["Parent"] = objects["Instance2"];

    objects["Instance4"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance4"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance4"]["Name"] = "HolderFrame";
    objects["Instance4"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance4"]["Parent"] = objects["Instance2"];
    objects["Instance4"]["ZIndex"] = 10002;
    objects["Instance4"]["BorderSizePixel"] = 0;
    objects["Instance4"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance5"]["TextWrapped"] = true;
    objects["Instance5"]["Parent"] = objects["Instance4"];
    objects["Instance5"]["ZIndex"] = 10003;
    objects["Instance5"]["BorderSizePixel"] = 0;
    objects["Instance5"]["Size"] = UDim2.new(1, 0, 0.0649999976, 0);
    objects["Instance5"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance5"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance5"]["Text"] = "Fire Library | 5.0";
    objects["Instance5"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance5"]["BackgroundTransparency"] = 1;
    objects["Instance5"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance5"]["Name"] = "Title";
    objects["Instance5"]["Position"] = UDim2.new(0, 0, 0.0125000002, 0);
    objects["Instance5"]["TextSize"] = 14;
    objects["Instance5"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance5"]["TextScaled"] = true;
    objects["Instance5"]["TextWrap"] = true;

    objects["Instance6"]["Size"] = UDim2.new(1, 0, 0, 2);
    objects["Instance6"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance6"]["Name"] = "Separator";
    objects["Instance6"]["Position"] = UDim2.new(0, 0, 0.156000003, 0);
    objects["Instance6"]["Parent"] = objects["Instance4"];
    objects["Instance6"]["ZIndex"] = 10003;
    objects["Instance6"]["BorderSizePixel"] = 0;
    objects["Instance6"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance7"]["Visible"] = false;
    objects["Instance7"]["Active"] = true;
    objects["Instance7"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
    objects["Instance7"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
    objects["Instance7"]["ZIndex"] = 10003;
    objects["Instance7"]["BorderSizePixel"] = 0;
    objects["Instance7"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
    objects["Instance7"]["ScrollBarImageColor3"] = Color3.new(0, 0, 0);
    objects["Instance7"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance7"]["ScrollBarThickness"] = 0;
    objects["Instance7"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance7"]["Name"] = "PageButtons";
    objects["Instance7"]["Position"] = UDim2.new(0, 0, 0.0909999982, 0);
    objects["Instance7"]["BackgroundTransparency"] = 1;
    objects["Instance7"]["Parent"] = objects["Instance4"];
    objects["Instance7"]["Size"] = UDim2.new(1, 0, 0.0649999976, 0);
    objects["Instance7"]["HorizontalScrollBarInset"] = Enum.ScrollBarInset.Always;

    objects["Instance8"]["Parent"] = objects["Instance7"];
    objects["Instance8"]["FillDirection"] = Enum.FillDirection.Horizontal;
    objects["Instance8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance9"]["BackgroundTransparency"] = 1;
    objects["Instance9"]["Name"] = "PageButton";
    objects["Instance9"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance9"]["Parent"] = objects["Instance7"];
    objects["Instance9"]["Size"] = UDim2.new(0.222000003, 0, 1, 0);
    objects["Instance9"]["BorderSizePixel"] = 0;
    objects["Instance9"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance10"]["Visible"] = false;
    objects["Instance10"]["Parent"] = objects["Instance9"];
    objects["Instance10"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance10"]["Name"] = "Selection";
    objects["Instance10"]["Position"] = UDim2.new(0, 0, 1, -2);
    objects["Instance10"]["Size"] = UDim2.new(1, 0, 0, 2);
    objects["Instance10"]["ZIndex"] = 10005;
    objects["Instance10"]["BorderSizePixel"] = 0;
    objects["Instance10"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance11"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance11"]["Active"] = true;
    objects["Instance11"]["Parent"] = objects["Instance9"];
    objects["Instance11"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance11"]["ZIndex"] = 10005;
    objects["Instance11"]["BorderSizePixel"] = 0;
    objects["Instance11"]["Size"] = UDim2.new(1, 0, 0.474999994, 0);
    objects["Instance11"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance11"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance11"]["Text"] = "Page Button";
    objects["Instance11"]["TextWrapped"] = true;
    objects["Instance11"]["BackgroundTransparency"] = 1;
    objects["Instance11"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance11"]["Name"] = "Text";
    objects["Instance11"]["Position"] = UDim2.new(0, 0, 0.5, 0);
    objects["Instance11"]["TextSize"] = 14;
    objects["Instance11"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance11"]["TextScaled"] = true;
    objects["Instance11"]["TextWrap"] = true;

    objects["Instance12"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance12"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance12"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance12"]["Text"] = "";
    objects["Instance12"]["TextSize"] = 14;
    objects["Instance12"]["Name"] = "Trigger";
    objects["Instance12"]["Parent"] = objects["Instance9"];
    objects["Instance12"]["BackgroundTransparency"] = 1;
    objects["Instance12"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance12"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance12"]["ZIndex"] = 20000;
    objects["Instance12"]["BorderSizePixel"] = 0;
    objects["Instance12"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance13"]["Parent"] = objects["Instance4"];
    objects["Instance13"]["BackgroundTransparency"] = 1;
    objects["Instance13"]["Size"] = UDim2.new(1, 0, 0.843999982, -1);
    objects["Instance13"]["Name"] = "PageDisplay";
    objects["Instance13"]["Position"] = UDim2.new(0, 0, 0.156000003, 1);
    objects["Instance13"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance13"]["ZIndex"] = 10003;
    objects["Instance13"]["BorderSizePixel"] = 0;
    objects["Instance13"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance14"]["Active"] = true;
    objects["Instance14"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance14"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
    objects["Instance14"]["ZIndex"] = 10004;
    objects["Instance14"]["BorderSizePixel"] = 0;
    objects["Instance14"]["CanvasSize"] = UDim2.new(0, 0, 0.200000003, 0);
    objects["Instance14"]["ScrollBarImageColor3"] = Color3.new(0.764706, 0.0980392, 1.09804);
    objects["Instance14"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance14"]["ScrollBarThickness"] = 4;
    objects["Instance14"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
    objects["Instance14"]["Name"] = "Page";
    objects["Instance14"]["TopImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png";
    objects["Instance14"]["Parent"] = objects["Instance13"];
    objects["Instance14"]["BackgroundTransparency"] = 1;
    objects["Instance14"]["BottomImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png";
    objects["Instance14"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance14"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance15"]["Parent"] = objects["Instance14"];
    objects["Instance15"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance16"]["BackgroundTransparency"] = 1;
    objects["Instance16"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance16"]["Name"] = "Label";
    objects["Instance16"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance16"]["Parent"] = objects["Instance14"];
    objects["Instance16"]["ZIndex"] = 15005;
    objects["Instance16"]["BorderSizePixel"] = 0;
    objects["Instance16"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance17"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance17"]["Active"] = true;
    objects["Instance17"]["Parent"] = objects["Instance16"];
    objects["Instance17"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance17"]["ZIndex"] = 15006;
    objects["Instance17"]["BorderSizePixel"] = 0;
    objects["Instance17"]["Size"] = UDim2.new(0.899999976, 0, 0.400000006, 0);
    objects["Instance17"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance17"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance17"]["Text"] = "LabelExample";
    objects["Instance17"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance17"]["TextWrapped"] = true;
    objects["Instance17"]["BackgroundTransparency"] = 1;
    objects["Instance17"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance17"]["Name"] = "Text";
    objects["Instance17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance17"]["TextSize"] = 14;
    objects["Instance17"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance17"]["TextScaled"] = true;
    objects["Instance17"]["TextWrap"] = true;

    objects["Instance18"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance18"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance18"]["Name"] = "Separator2";
    objects["Instance18"]["Position"] = UDim2.new(0, 0, 1, -1);
    objects["Instance18"]["Parent"] = objects["Instance16"];
    objects["Instance18"]["ZIndex"] = 15006;
    objects["Instance18"]["BorderSizePixel"] = 0;
    objects["Instance18"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance19"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance19"]["Name"] = "Separator";
    objects["Instance19"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance19"]["Parent"] = objects["Instance16"];
    objects["Instance19"]["ZIndex"] = 15006;
    objects["Instance19"]["BorderSizePixel"] = 0;
    objects["Instance19"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance20"]["BackgroundTransparency"] = 1;
    objects["Instance20"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance20"]["Name"] = "ColorPicker";
    objects["Instance20"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance20"]["Parent"] = objects["Instance14"];
    objects["Instance20"]["ZIndex"] = 15005;
    objects["Instance20"]["BorderSizePixel"] = 0;
    objects["Instance20"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance21"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance21"]["Name"] = "Separator2";
    objects["Instance21"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance21"]["Parent"] = objects["Instance20"];
    objects["Instance21"]["ZIndex"] = 15006;
    objects["Instance21"]["BorderSizePixel"] = 0;
    objects["Instance21"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance22"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance22"]["Active"] = true;
    objects["Instance22"]["Parent"] = objects["Instance20"];
    objects["Instance22"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance22"]["ZIndex"] = 15006;
    objects["Instance22"]["BorderSizePixel"] = 0;
    objects["Instance22"]["Size"] = UDim2.new(0.899999976, 0, 0.400000006, 0);
    objects["Instance22"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance22"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance22"]["Text"] = "ColorPickerExample";
    objects["Instance22"]["Position"] = UDim2.new(0.0500000007, 0, 0.25, 0);
    objects["Instance22"]["TextWrapped"] = true;
    objects["Instance22"]["BackgroundTransparency"] = 1;
    objects["Instance22"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance22"]["Name"] = "Text";
    objects["Instance22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance22"]["TextSize"] = 14;
    objects["Instance22"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance22"]["TextScaled"] = true;
    objects["Instance22"]["TextWrap"] = true;

    objects["Instance23"]["Parent"] = objects["Instance22"];
    objects["Instance23"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance23"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance23"]["Name"] = "Color";
    objects["Instance23"]["Position"] = UDim2.new(0.970000029, 0, 0.5, 0);
    objects["Instance23"]["Size"] = UDim2.new(0.699999988, 0, 0.699999988, 0);
    objects["Instance23"]["ZIndex"] = 15007;
    objects["Instance23"]["BorderSizePixel"] = 0;
    objects["Instance23"]["BackgroundColor3"] = Color3.new(0.498039, 0.498039, 0.498039);

    objects["Instance24"]["Parent"] = objects["Instance23"];
    objects["Instance24"]["DominantAxis"] = Enum.DominantAxis.Height;

    objects["Instance25"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance25"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance25"]["Parent"] = objects["Instance23"];

    objects["Instance26"]["Parent"] = objects["Instance20"];
    objects["Instance26"]["BackgroundTransparency"] = 1;
    objects["Instance26"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance26"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance26"]["Name"] = "RGB";
    objects["Instance26"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance26"]["Size"] = UDim2.new(0.930000007, 0, 0.400000006, 0);
    objects["Instance26"]["ZIndex"] = 15006;
    objects["Instance26"]["BorderSizePixel"] = 0;
    objects["Instance26"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance27"]["Parent"] = objects["Instance26"];
    objects["Instance27"]["FillDirection"] = Enum.FillDirection.Horizontal;
    objects["Instance27"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance28"]["BackgroundTransparency"] = 1;
    objects["Instance28"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance28"]["Name"] = "RHolder";
    objects["Instance28"]["Size"] = UDim2.new(0.333000004, 0, 1, 0);
    objects["Instance28"]["Parent"] = objects["Instance26"];
    objects["Instance28"]["ZIndex"] = 15007;
    objects["Instance28"]["BorderSizePixel"] = 0;
    objects["Instance28"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance29"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance29"]["TextSize"] = 14;
    objects["Instance29"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance29"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance29"]["Text"] = "";
    objects["Instance29"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance29"]["AutoButtonColor"] = false;
    objects["Instance29"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance29"]["Parent"] = objects["Instance28"];
    objects["Instance29"]["Name"] = "SliderOuter";
    objects["Instance29"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance29"]["Size"] = UDim2.new(0.899999976, 0, 1, 0);
    objects["Instance29"]["ZIndex"] = 15008;
    objects["Instance29"]["BorderSizePixel"] = 0;
    objects["Instance29"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance30"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance30"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance30"]["Name"] = "Bar";
    objects["Instance30"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance30"]["Parent"] = objects["Instance29"];
    objects["Instance30"]["ZIndex"] = 15009;
    objects["Instance30"]["BorderSizePixel"] = 0;
    objects["Instance30"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance31"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance31"]["Name"] = "Fill";
    objects["Instance31"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance31"]["Parent"] = objects["Instance30"];
    objects["Instance31"]["ZIndex"] = 15010;
    objects["Instance31"]["BorderSizePixel"] = 0;
    objects["Instance31"]["BackgroundColor3"] = Color3.new(0.498039, 0, 0);

    objects["Instance32"]["BackgroundTransparency"] = 1;
    objects["Instance32"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance32"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance32"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance32"]["Parent"] = objects["Instance30"];
    objects["Instance32"]["Text"] = "127 / 255";
    objects["Instance32"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance32"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance32"]["TextSize"] = 14;
    objects["Instance32"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance32"]["Name"] = "Progress";
    objects["Instance32"]["TextWrapped"] = true;
    objects["Instance32"]["TextScaled"] = true;
    objects["Instance32"]["ZIndex"] = 15011;
    objects["Instance32"]["BorderSizePixel"] = 0;
    objects["Instance32"]["TextWrap"] = true;

    objects["Instance33"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance33"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance33"]["Parent"] = objects["Instance29"];

    objects["Instance34"]["BackgroundTransparency"] = 1;
    objects["Instance34"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance34"]["Name"] = "GHolder";
    objects["Instance34"]["Size"] = UDim2.new(0.333000004, 0, 1, 0);
    objects["Instance34"]["Parent"] = objects["Instance26"];
    objects["Instance34"]["ZIndex"] = 15007;
    objects["Instance34"]["BorderSizePixel"] = 0;
    objects["Instance34"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance35"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance35"]["TextSize"] = 14;
    objects["Instance35"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance35"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance35"]["Text"] = "";
    objects["Instance35"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance35"]["AutoButtonColor"] = false;
    objects["Instance35"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance35"]["Parent"] = objects["Instance34"];
    objects["Instance35"]["Name"] = "SliderOuter";
    objects["Instance35"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance35"]["Size"] = UDim2.new(0.899999976, 0, 1, 0);
    objects["Instance35"]["ZIndex"] = 15008;
    objects["Instance35"]["BorderSizePixel"] = 0;
    objects["Instance35"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance36"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance36"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance36"]["Name"] = "Bar";
    objects["Instance36"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance36"]["Parent"] = objects["Instance35"];
    objects["Instance36"]["ZIndex"] = 15009;
    objects["Instance36"]["BorderSizePixel"] = 0;
    objects["Instance36"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance37"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance37"]["Name"] = "Fill";
    objects["Instance37"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance37"]["Parent"] = objects["Instance36"];
    objects["Instance37"]["ZIndex"] = 15010;
    objects["Instance37"]["BorderSizePixel"] = 0;
    objects["Instance37"]["BackgroundColor3"] = Color3.new(0, 0.498039, 0);

    objects["Instance38"]["BackgroundTransparency"] = 1;
    objects["Instance38"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance38"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance38"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance38"]["Parent"] = objects["Instance36"];
    objects["Instance38"]["Text"] = "127 / 255";
    objects["Instance38"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance38"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance38"]["TextSize"] = 14;
    objects["Instance38"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance38"]["Name"] = "Progress";
    objects["Instance38"]["TextWrapped"] = true;
    objects["Instance38"]["TextScaled"] = true;
    objects["Instance38"]["ZIndex"] = 15011;
    objects["Instance38"]["BorderSizePixel"] = 0;
    objects["Instance38"]["TextWrap"] = true;

    objects["Instance39"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance39"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance39"]["Parent"] = objects["Instance35"];

    objects["Instance40"]["BackgroundTransparency"] = 1;
    objects["Instance40"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance40"]["Name"] = "BHolder";
    objects["Instance40"]["Size"] = UDim2.new(0.333000004, 0, 1, 0);
    objects["Instance40"]["Parent"] = objects["Instance26"];
    objects["Instance40"]["ZIndex"] = 15007;
    objects["Instance40"]["BorderSizePixel"] = 0;
    objects["Instance40"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance41"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance41"]["TextSize"] = 14;
    objects["Instance41"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance41"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance41"]["Text"] = "";
    objects["Instance41"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance41"]["AutoButtonColor"] = false;
    objects["Instance41"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance41"]["Parent"] = objects["Instance40"];
    objects["Instance41"]["Name"] = "SliderOuter";
    objects["Instance41"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance41"]["Size"] = UDim2.new(0.899999976, 0, 1, 0);
    objects["Instance41"]["ZIndex"] = 15008;
    objects["Instance41"]["BorderSizePixel"] = 0;
    objects["Instance41"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance42"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance42"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance42"]["Name"] = "Bar";
    objects["Instance42"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance42"]["Parent"] = objects["Instance41"];
    objects["Instance42"]["ZIndex"] = 15009;
    objects["Instance42"]["BorderSizePixel"] = 0;
    objects["Instance42"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance43"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance43"]["Name"] = "Fill";
    objects["Instance43"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance43"]["Parent"] = objects["Instance42"];
    objects["Instance43"]["ZIndex"] = 15010;
    objects["Instance43"]["BorderSizePixel"] = 0;
    objects["Instance43"]["BackgroundColor3"] = Color3.new(0, 0, 0.498039);

    objects["Instance44"]["BackgroundTransparency"] = 1;
    objects["Instance44"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance44"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance44"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance44"]["Parent"] = objects["Instance42"];
    objects["Instance44"]["Text"] = "127 / 255";
    objects["Instance44"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance44"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance44"]["TextSize"] = 14;
    objects["Instance44"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance44"]["Name"] = "Progress";
    objects["Instance44"]["TextWrapped"] = true;
    objects["Instance44"]["TextScaled"] = true;
    objects["Instance44"]["ZIndex"] = 15011;
    objects["Instance44"]["BorderSizePixel"] = 0;
    objects["Instance44"]["TextWrap"] = true;

    objects["Instance45"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance45"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance45"]["Parent"] = objects["Instance41"];

    objects["Instance46"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance46"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance46"]["Name"] = "Separator";
    objects["Instance46"]["Position"] = UDim2.new(0, 0, 1, -1);
    objects["Instance46"]["Parent"] = objects["Instance20"];
    objects["Instance46"]["ZIndex"] = 15006;
    objects["Instance46"]["BorderSizePixel"] = 0;
    objects["Instance46"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance47"]["BackgroundTransparency"] = 1;
    objects["Instance47"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance47"]["Name"] = "Separator";
    objects["Instance47"]["Size"] = UDim2.new(1, 0, 0.0250000004, 0);
    objects["Instance47"]["Parent"] = objects["Instance14"];
    objects["Instance47"]["ZIndex"] = 15005;
    objects["Instance47"]["BorderSizePixel"] = 0;
    objects["Instance47"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance48"]["Parent"] = objects["Instance47"];
    objects["Instance48"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance48"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance48"]["Name"] = "Separator";
    objects["Instance48"]["Position"] = UDim2.new(0, 0, 0.5, 0);
    objects["Instance48"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance48"]["ZIndex"] = 15001;
    objects["Instance48"]["BorderSizePixel"] = 0;
    objects["Instance48"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance49"]["LayoutOrder"] = 9999;
    objects["Instance49"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance49"]["BackgroundTransparency"] = 0.9900000095367432;
    objects["Instance49"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance49"]["Parent"] = objects["Instance14"];
    objects["Instance49"]["ZIndex"] = 99999;
    objects["Instance49"]["BorderSizePixel"] = 0;
    objects["Instance49"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance50"]["BackgroundTransparency"] = 1;
    objects["Instance50"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance50"]["Name"] = "Button";
    objects["Instance50"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance50"]["Parent"] = objects["Instance14"];
    objects["Instance50"]["ZIndex"] = 15005;
    objects["Instance50"]["BorderSizePixel"] = 0;
    objects["Instance50"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance51"]["Parent"] = objects["Instance50"];
    objects["Instance51"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance51"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance51"]["Name"] = "ButtonOuter";
    objects["Instance51"]["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0);
    objects["Instance51"]["Size"] = UDim2.new(0.0500000007, -1, 0.600000024, 0);
    objects["Instance51"]["ZIndex"] = 15006;
    objects["Instance51"]["BorderSizePixel"] = 0;
    objects["Instance51"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance52"]["Parent"] = objects["Instance51"];

    objects["Instance53"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance53"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance53"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance53"]["Parent"] = objects["Instance51"];
    objects["Instance53"]["ZIndex"] = 15007;
    objects["Instance53"]["BorderSizePixel"] = 0;
    objects["Instance53"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance54"]["ImageColor3"] = Color3.new(0.666667, 0, 1);
    objects["Instance54"]["Parent"] = objects["Instance53"];
    objects["Instance54"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance54"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance54"]["Image"] = "http://www.roblox.com/asset/?id=5715427603";
    objects["Instance54"]["BackgroundTransparency"] = 1;
    objects["Instance54"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance54"]["Size"] = UDim2.new(0.899999976, 0, 0.899999976, 0);
    objects["Instance54"]["ZIndex"] = 15008;
    objects["Instance54"]["BorderSizePixel"] = 0;
    objects["Instance54"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance55"]["Parent"] = objects["Instance51"];
    objects["Instance55"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance56"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance56"]["Name"] = "Separator";
    objects["Instance56"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance56"]["Parent"] = objects["Instance50"];
    objects["Instance56"]["ZIndex"] = 15006;
    objects["Instance56"]["BorderSizePixel"] = 0;
    objects["Instance56"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance57"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance57"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance57"]["Name"] = "Separator2";
    objects["Instance57"]["Position"] = UDim2.new(0, 0, 1, -1);
    objects["Instance57"]["Parent"] = objects["Instance50"];
    objects["Instance57"]["ZIndex"] = 15006;
    objects["Instance57"]["BorderSizePixel"] = 0;
    objects["Instance57"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance58"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance58"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance58"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance58"]["Text"] = "";
    objects["Instance58"]["TextSize"] = 14;
    objects["Instance58"]["Name"] = "Trigger";
    objects["Instance58"]["Parent"] = objects["Instance50"];
    objects["Instance58"]["BackgroundTransparency"] = 1;
    objects["Instance58"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance58"]["Size"] = UDim2.new(0.699999988, 0, 1, 0);
    objects["Instance58"]["ZIndex"] = 25000;
    objects["Instance58"]["BorderSizePixel"] = 0;
    objects["Instance58"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance59"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance59"]["Active"] = true;
    objects["Instance59"]["Parent"] = objects["Instance50"];
    objects["Instance59"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance59"]["ZIndex"] = 15006;
    objects["Instance59"]["BorderSizePixel"] = 0;
    objects["Instance59"]["Size"] = UDim2.new(0.824999988, 0, 0.400000006, 0);
    objects["Instance59"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance59"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance59"]["Text"] = "ButtonExample";
    objects["Instance59"]["Position"] = UDim2.new(0.524999976, 0, 0.5, 0);
    objects["Instance59"]["TextWrapped"] = true;
    objects["Instance59"]["BackgroundTransparency"] = 1;
    objects["Instance59"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance59"]["Name"] = "Text";
    objects["Instance59"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance59"]["TextSize"] = 14;
    objects["Instance59"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance59"]["TextScaled"] = true;
    objects["Instance59"]["TextWrap"] = true;

    objects["Instance60"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance60"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance60"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance60"]["Text"] = "";
    objects["Instance60"]["TextSize"] = 14;
    objects["Instance60"]["Name"] = "KeybindTrigger";
    objects["Instance60"]["Parent"] = objects["Instance50"];
    objects["Instance60"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance60"]["BackgroundTransparency"] = 1;
    objects["Instance60"]["Position"] = UDim2.new(0.699999988, 0, 0, 0);
    objects["Instance60"]["Size"] = UDim2.new(0.300000012, 0, 1, 0);
    objects["Instance60"]["ZIndex"] = 25000;
    objects["Instance60"]["BorderSizePixel"] = 0;
    objects["Instance60"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance61"]["Parent"] = objects["Instance50"];
    objects["Instance61"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance61"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance61"]["Name"] = "InputOuter";
    objects["Instance61"]["Position"] = UDim2.new(0.75, 0, 0.5, 0);
    objects["Instance61"]["Size"] = UDim2.new(0.200000003, -1, 0.5, 0);
    objects["Instance61"]["ZIndex"] = 15006;
    objects["Instance61"]["BorderSizePixel"] = 0;
    objects["Instance61"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance62"]["Parent"] = objects["Instance61"];
    objects["Instance62"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance63"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance63"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance63"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance63"]["Parent"] = objects["Instance61"];
    objects["Instance63"]["ZIndex"] = 15007;
    objects["Instance63"]["BorderSizePixel"] = 0;
    objects["Instance63"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance64"]["TextWrapped"] = true;
    objects["Instance64"]["Parent"] = objects["Instance63"];
    objects["Instance64"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance64"]["ZIndex"] = 15008;
    objects["Instance64"]["BorderSizePixel"] = 0;
    objects["Instance64"]["Size"] = UDim2.new(0.925000012, 0, 0.800000012, 0);
    objects["Instance64"]["TextColor3"] = Color3.new(0.666667, 0, 1);
    objects["Instance64"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance64"]["Text"] = "None";
    objects["Instance64"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance64"]["BackgroundTransparency"] = 1;
    objects["Instance64"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance64"]["Name"] = "Input";
    objects["Instance64"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance64"]["TextSize"] = 14;
    objects["Instance64"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance64"]["TextScaled"] = true;
    objects["Instance64"]["TextWrap"] = true;

    objects["Instance65"]["BackgroundTransparency"] = 1;
    objects["Instance65"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance65"]["Name"] = "Dropdown";
    objects["Instance65"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance65"]["Parent"] = objects["Instance14"];
    objects["Instance65"]["ZIndex"] = 15005;
    objects["Instance65"]["BorderSizePixel"] = 0;
    objects["Instance65"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance66"]["Size"] = UDim2.new(0.899999976, -2, 0.400000006, 0);
    objects["Instance66"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance66"]["Name"] = "DropdownOuter";
    objects["Instance66"]["Position"] = UDim2.new(0.0500000007, 1, 0.5, 0);
    objects["Instance66"]["Parent"] = objects["Instance65"];
    objects["Instance66"]["ZIndex"] = 35000;
    objects["Instance66"]["BorderSizePixel"] = 0;
    objects["Instance66"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance67"]["Parent"] = objects["Instance66"];
    objects["Instance67"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance68"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance68"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance68"]["Name"] = "ContentHolder";
    objects["Instance68"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance68"]["Parent"] = objects["Instance66"];
    objects["Instance68"]["ZIndex"] = 35002;
    objects["Instance68"]["BorderSizePixel"] = 0;
    objects["Instance68"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance69"]["Visible"] = false;
    objects["Instance69"]["Active"] = true;
    objects["Instance69"]["Parent"] = objects["Instance68"];
    objects["Instance69"]["ScrollBarThickness"] = 0;
    objects["Instance69"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance69"]["BackgroundTransparency"] = 1;
    objects["Instance69"]["ScrollBarImageColor3"] = Color3.new(0, 0, 0);
    objects["Instance69"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance69"]["Name"] = "Values";
    objects["Instance69"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    objects["Instance69"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance69"]["ZIndex"] = 35003;
    objects["Instance69"]["BorderSizePixel"] = 0;
    objects["Instance69"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);

    objects["Instance70"]["Parent"] = objects["Instance69"];
    objects["Instance70"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance71"]["TextWrapped"] = true;
    objects["Instance71"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance71"]["TextWrap"] = true;
    objects["Instance71"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance71"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance71"]["Text"] = "ListButton";
    objects["Instance71"]["TextSize"] = 14;
    objects["Instance71"]["TextScaled"] = true;
    objects["Instance71"]["Parent"] = objects["Instance69"];
    objects["Instance71"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance71"]["Name"] = "ListButton";
    objects["Instance71"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance71"]["Size"] = UDim2.new(1, 0, 0.153999999, 0);
    objects["Instance71"]["ZIndex"] = 35004;
    objects["Instance71"]["BorderSizePixel"] = 0;
    objects["Instance71"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance72"]["Parent"] = objects["Instance71"];
    objects["Instance72"]["PaddingLeft"] = UDim.new(0.0500000007, 0);

    objects["Instance73"]["BackgroundTransparency"] = 1;
    objects["Instance73"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance73"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance73"]["TextColor3"] = Color3.new(0.666667, 0, 1);
    objects["Instance73"]["Parent"] = objects["Instance66"];
    objects["Instance73"]["Text"] = "DefaultValue";
    objects["Instance73"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance73"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance73"]["TextSize"] = 14;
    objects["Instance73"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance73"]["Name"] = "Default";
    objects["Instance73"]["TextWrapped"] = true;
    objects["Instance73"]["TextScaled"] = true;
    objects["Instance73"]["ZIndex"] = 35003;
    objects["Instance73"]["BorderSizePixel"] = 0;
    objects["Instance73"]["TextWrap"] = true;

    objects["Instance74"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance74"]["Name"] = "Separator2";
    objects["Instance74"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance74"]["Parent"] = objects["Instance65"];
    objects["Instance74"]["ZIndex"] = 15006;
    objects["Instance74"]["BorderSizePixel"] = 0;
    objects["Instance74"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance75"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance75"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance75"]["Name"] = "Separator";
    objects["Instance75"]["Position"] = UDim2.new(0, 0, 1, -1);
    objects["Instance75"]["Parent"] = objects["Instance65"];
    objects["Instance75"]["ZIndex"] = 15006;
    objects["Instance75"]["BorderSizePixel"] = 0;
    objects["Instance75"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance76"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance76"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance76"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance76"]["Text"] = "";
    objects["Instance76"]["TextSize"] = 14;
    objects["Instance76"]["Name"] = "Trigger";
    objects["Instance76"]["Parent"] = objects["Instance65"];
    objects["Instance76"]["BackgroundTransparency"] = 1;
    objects["Instance76"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance76"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance76"]["ZIndex"] = 25000;
    objects["Instance76"]["BorderSizePixel"] = 0;
    objects["Instance76"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance77"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance77"]["Active"] = true;
    objects["Instance77"]["Parent"] = objects["Instance65"];
    objects["Instance77"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance77"]["ZIndex"] = 15006;
    objects["Instance77"]["BorderSizePixel"] = 0;
    objects["Instance77"]["Size"] = UDim2.new(0.899999976, 0, 0.400000006, 0);
    objects["Instance77"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance77"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance77"]["Text"] = "DropdownExample";
    objects["Instance77"]["Position"] = UDim2.new(0.5, 0, 0.0500000007, 0);
    objects["Instance77"]["TextWrapped"] = true;
    objects["Instance77"]["BackgroundTransparency"] = 1;
    objects["Instance77"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance77"]["Name"] = "Text";
    objects["Instance77"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance77"]["TextSize"] = 14;
    objects["Instance77"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance77"]["TextScaled"] = true;
    objects["Instance77"]["TextWrap"] = true;

    objects["Instance78"]["BackgroundTransparency"] = 1;
    objects["Instance78"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance78"]["Name"] = "Input";
    objects["Instance78"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance78"]["Parent"] = objects["Instance14"];
    objects["Instance78"]["ZIndex"] = 15005;
    objects["Instance78"]["BorderSizePixel"] = 0;
    objects["Instance78"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance79"]["Parent"] = objects["Instance78"];
    objects["Instance79"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance79"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance79"]["Name"] = "InputOuter";
    objects["Instance79"]["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0);
    objects["Instance79"]["Size"] = UDim2.new(0.200000003, -1, 0.5, 0);
    objects["Instance79"]["ZIndex"] = 15006;
    objects["Instance79"]["BorderSizePixel"] = 0;
    objects["Instance79"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance80"]["Parent"] = objects["Instance79"];
    objects["Instance80"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance81"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance81"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance81"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance81"]["Parent"] = objects["Instance79"];
    objects["Instance81"]["ZIndex"] = 15007;
    objects["Instance81"]["BorderSizePixel"] = 0;
    objects["Instance81"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance82"]["TextWrapped"] = true;
    objects["Instance82"]["Parent"] = objects["Instance81"];
    objects["Instance82"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance82"]["ZIndex"] = 15008;
    objects["Instance82"]["BorderSizePixel"] = 0;
    objects["Instance82"]["Size"] = UDim2.new(0.925000012, 0, 0.800000012, 0);
    objects["Instance82"]["TextColor3"] = Color3.new(0.666667, 0, 1);
    objects["Instance82"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance82"]["Text"] = "A";
    objects["Instance82"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance82"]["BackgroundTransparency"] = 1;
    objects["Instance82"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance82"]["Name"] = "Input";
    objects["Instance82"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance82"]["TextSize"] = 14;
    objects["Instance82"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance82"]["TextScaled"] = true;
    objects["Instance82"]["TextWrap"] = true;

    objects["Instance83"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance83"]["Name"] = "Separator2";
    objects["Instance83"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance83"]["Parent"] = objects["Instance78"];
    objects["Instance83"]["ZIndex"] = 15006;
    objects["Instance83"]["BorderSizePixel"] = 0;
    objects["Instance83"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance84"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance84"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance84"]["Name"] = "Separator";
    objects["Instance84"]["Position"] = UDim2.new(0, 0, 1, -1);
    objects["Instance84"]["Parent"] = objects["Instance78"];
    objects["Instance84"]["ZIndex"] = 15006;
    objects["Instance84"]["BorderSizePixel"] = 0;
    objects["Instance84"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance85"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance85"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance85"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance85"]["Text"] = "";
    objects["Instance85"]["TextSize"] = 14;
    objects["Instance85"]["Name"] = "Trigger";
    objects["Instance85"]["Parent"] = objects["Instance78"];
    objects["Instance85"]["BackgroundTransparency"] = 1;
    objects["Instance85"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance85"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance85"]["ZIndex"] = 25000;
    objects["Instance85"]["BorderSizePixel"] = 0;
    objects["Instance85"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance86"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance86"]["Active"] = true;
    objects["Instance86"]["Parent"] = objects["Instance78"];
    objects["Instance86"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance86"]["ZIndex"] = 15006;
    objects["Instance86"]["BorderSizePixel"] = 0;
    objects["Instance86"]["Size"] = UDim2.new(0.699999988, 0, 0.400000006, 0);
    objects["Instance86"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance86"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance86"]["Text"] = "InputExample";
    objects["Instance86"]["Position"] = UDim2.new(0.625, 0, 0.5, 0);
    objects["Instance86"]["TextWrapped"] = true;
    objects["Instance86"]["BackgroundTransparency"] = 1;
    objects["Instance86"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance86"]["Name"] = "Text";
    objects["Instance86"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance86"]["TextSize"] = 14;
    objects["Instance86"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance86"]["TextScaled"] = true;
    objects["Instance86"]["TextWrap"] = true;

    objects["Instance87"]["BackgroundTransparency"] = 1;
    objects["Instance87"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance87"]["Name"] = "Slider";
    objects["Instance87"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance87"]["Parent"] = objects["Instance14"];
    objects["Instance87"]["ZIndex"] = 15005;
    objects["Instance87"]["BorderSizePixel"] = 0;
    objects["Instance87"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance88"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance88"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance88"]["Name"] = "Separator";
    objects["Instance88"]["Position"] = UDim2.new(0, 0, 1, -1);
    objects["Instance88"]["Parent"] = objects["Instance87"];
    objects["Instance88"]["ZIndex"] = 15006;
    objects["Instance88"]["BorderSizePixel"] = 0;
    objects["Instance88"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance89"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance89"]["Name"] = "Separator2";
    objects["Instance89"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance89"]["Parent"] = objects["Instance87"];
    objects["Instance89"]["ZIndex"] = 15006;
    objects["Instance89"]["BorderSizePixel"] = 0;
    objects["Instance89"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance90"]["Size"] = UDim2.new(0.899999976, -2, 0.400000006, 0);
    objects["Instance90"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance90"]["Name"] = "SliderOuter";
    objects["Instance90"]["Position"] = UDim2.new(0.0500000007, 1, 0.5, 0);
    objects["Instance90"]["Parent"] = objects["Instance87"];
    objects["Instance90"]["ZIndex"] = 15006;
    objects["Instance90"]["BorderSizePixel"] = 0;
    objects["Instance90"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance91"]["Parent"] = objects["Instance90"];
    objects["Instance91"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance92"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance92"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance92"]["Name"] = "Bar";
    objects["Instance92"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance92"]["Parent"] = objects["Instance90"];
    objects["Instance92"]["ZIndex"] = 15007;
    objects["Instance92"]["BorderSizePixel"] = 0;
    objects["Instance92"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance93"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance93"]["Name"] = "Fill";
    objects["Instance93"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance93"]["Parent"] = objects["Instance92"];
    objects["Instance93"]["ZIndex"] = 15008;
    objects["Instance93"]["BorderSizePixel"] = 0;
    objects["Instance93"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance94"]["BackgroundTransparency"] = 1;
    objects["Instance94"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance94"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance94"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance94"]["Parent"] = objects["Instance92"];
    objects["Instance94"]["Text"] = "50 / 100";
    objects["Instance94"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance94"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance94"]["TextSize"] = 14;
    objects["Instance94"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance94"]["Name"] = "Progress";
    objects["Instance94"]["TextWrapped"] = true;
    objects["Instance94"]["TextScaled"] = true;
    objects["Instance94"]["ZIndex"] = 15009;
    objects["Instance94"]["BorderSizePixel"] = 0;
    objects["Instance94"]["TextWrap"] = true;

    objects["Instance95"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance95"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance95"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance95"]["Text"] = "";
    objects["Instance95"]["TextSize"] = 14;
    objects["Instance95"]["Name"] = "Trigger";
    objects["Instance95"]["Parent"] = objects["Instance87"];
    objects["Instance95"]["BackgroundTransparency"] = 1;
    objects["Instance95"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance95"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance95"]["ZIndex"] = 25000;
    objects["Instance95"]["BorderSizePixel"] = 0;
    objects["Instance95"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance96"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance96"]["Active"] = true;
    objects["Instance96"]["Parent"] = objects["Instance87"];
    objects["Instance96"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance96"]["ZIndex"] = 15006;
    objects["Instance96"]["BorderSizePixel"] = 0;
    objects["Instance96"]["Size"] = UDim2.new(0.899999976, 0, 0.400000006, 0);
    objects["Instance96"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance96"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance96"]["Text"] = "SliderExample";
    objects["Instance96"]["Position"] = UDim2.new(0.5, 0, 0.25, 0);
    objects["Instance96"]["TextWrapped"] = true;
    objects["Instance96"]["BackgroundTransparency"] = 1;
    objects["Instance96"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance96"]["Name"] = "Text";
    objects["Instance96"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance96"]["TextSize"] = 14;
    objects["Instance96"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance96"]["TextScaled"] = true;
    objects["Instance96"]["TextWrap"] = true;

    objects["Instance97"]["BackgroundTransparency"] = 1;
    objects["Instance97"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance97"]["Name"] = "TextBox";
    objects["Instance97"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance97"]["Parent"] = objects["Instance14"];
    objects["Instance97"]["ZIndex"] = 15005;
    objects["Instance97"]["BorderSizePixel"] = 0;
    objects["Instance97"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance98"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance98"]["Name"] = "Separator";
    objects["Instance98"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance98"]["Parent"] = objects["Instance97"];
    objects["Instance98"]["ZIndex"] = 15006;
    objects["Instance98"]["BorderSizePixel"] = 0;
    objects["Instance98"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance99"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance99"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance99"]["Name"] = "Separator2";
    objects["Instance99"]["Position"] = UDim2.new(0, 0, 1, -1);
    objects["Instance99"]["Parent"] = objects["Instance97"];
    objects["Instance99"]["ZIndex"] = 15006;
    objects["Instance99"]["BorderSizePixel"] = 0;
    objects["Instance99"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance100"]["Size"] = UDim2.new(0.899999976, -2, 0.400000006, 0);
    objects["Instance100"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance100"]["Name"] = "TextBoxOuter";
    objects["Instance100"]["Position"] = UDim2.new(0.0500000007, 1, 0.5, 0);
    objects["Instance100"]["Parent"] = objects["Instance97"];
    objects["Instance100"]["ZIndex"] = 15006;
    objects["Instance100"]["BorderSizePixel"] = 0;
    objects["Instance100"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance101"]["Parent"] = objects["Instance100"];
    objects["Instance101"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance102"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance102"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance102"]["Name"] = "TextBoxBackground";
    objects["Instance102"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance102"]["Parent"] = objects["Instance100"];
    objects["Instance102"]["ZIndex"] = 15007;
    objects["Instance102"]["BorderSizePixel"] = 0;
    objects["Instance102"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance103"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance103"]["Parent"] = objects["Instance100"];
    objects["Instance103"]["PlaceholderColor3"] = Color3.new(0.603922, 0.603922, 0.603922);
    objects["Instance103"]["ZIndex"] = 15008;
    objects["Instance103"]["BorderSizePixel"] = 0;
    objects["Instance103"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance103"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance103"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance103"]["Text"] = "";
    objects["Instance103"]["PlaceholderText"] = "Something in here";
    objects["Instance103"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance103"]["TextWrap"] = true;
    objects["Instance103"]["TextWrapped"] = true;
    objects["Instance103"]["BackgroundTransparency"] = 1;
    objects["Instance103"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance103"]["TextSize"] = 14;
    objects["Instance103"]["ClearTextOnFocus"] = false;
    objects["Instance103"]["TextScaled"] = true;
    objects["Instance103"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance104"]["Parent"] = objects["Instance103"];
    objects["Instance104"]["PaddingLeft"] = UDim.new(0.0199999996, 0);

    objects["Instance105"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance105"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance105"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance105"]["Text"] = "";
    objects["Instance105"]["TextSize"] = 14;
    objects["Instance105"]["Name"] = "Trigger";
    objects["Instance105"]["Parent"] = objects["Instance97"];
    objects["Instance105"]["BackgroundTransparency"] = 1;
    objects["Instance105"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance105"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance105"]["ZIndex"] = 25000;
    objects["Instance105"]["BorderSizePixel"] = 0;
    objects["Instance105"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance106"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance106"]["Active"] = true;
    objects["Instance106"]["Parent"] = objects["Instance97"];
    objects["Instance106"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance106"]["ZIndex"] = 15006;
    objects["Instance106"]["BorderSizePixel"] = 0;
    objects["Instance106"]["Size"] = UDim2.new(0.899999976, 0, 0.400000006, 0);
    objects["Instance106"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance106"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance106"]["Text"] = "TextBoxExample";
    objects["Instance106"]["Position"] = UDim2.new(0.5, 0, 0.25, 0);
    objects["Instance106"]["TextWrapped"] = true;
    objects["Instance106"]["BackgroundTransparency"] = 1;
    objects["Instance106"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance106"]["Name"] = "Text";
    objects["Instance106"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance106"]["TextSize"] = 14;
    objects["Instance106"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance106"]["TextScaled"] = true;
    objects["Instance106"]["TextWrap"] = true;

    objects["Instance107"]["BackgroundTransparency"] = 1;
    objects["Instance107"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance107"]["Name"] = "Toggle";
    objects["Instance107"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance107"]["Parent"] = objects["Instance14"];
    objects["Instance107"]["ZIndex"] = 15005;
    objects["Instance107"]["BorderSizePixel"] = 0;
    objects["Instance107"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance108"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance108"]["Name"] = "Separator";
    objects["Instance108"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance108"]["Parent"] = objects["Instance107"];
    objects["Instance108"]["ZIndex"] = 15006;
    objects["Instance108"]["BorderSizePixel"] = 0;
    objects["Instance108"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance109"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance109"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance109"]["Name"] = "Separator2";
    objects["Instance109"]["Position"] = UDim2.new(0, 0, 1, -1);
    objects["Instance109"]["Parent"] = objects["Instance107"];
    objects["Instance109"]["ZIndex"] = 15006;
    objects["Instance109"]["BorderSizePixel"] = 0;
    objects["Instance109"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance110"]["Parent"] = objects["Instance107"];
    objects["Instance110"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance110"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance110"]["Name"] = "ToggleOuter";
    objects["Instance110"]["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0);
    objects["Instance110"]["Size"] = UDim2.new(0.0500000007, -1, 0.600000024, 0);
    objects["Instance110"]["ZIndex"] = 15006;
    objects["Instance110"]["BorderSizePixel"] = 0;
    objects["Instance110"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance111"]["Parent"] = objects["Instance110"];
    objects["Instance111"]["DominantAxis"] = Enum.DominantAxis.Height;

    objects["Instance112"]["Parent"] = objects["Instance110"];
    objects["Instance112"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance113"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance113"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance113"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance113"]["Parent"] = objects["Instance110"];
    objects["Instance113"]["ZIndex"] = 15007;
    objects["Instance113"]["BorderSizePixel"] = 0;
    objects["Instance113"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance114"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance114"]["Name"] = "ImageHolder";
    objects["Instance114"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance114"]["Parent"] = objects["Instance113"];
    objects["Instance114"]["ZIndex"] = 15008;
    objects["Instance114"]["BorderSizePixel"] = 0;
    objects["Instance114"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance115"]["ImageColor3"] = Color3.new(0.666667, 0, 1);
    objects["Instance115"]["Parent"] = objects["Instance114"];
    objects["Instance115"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance115"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance115"]["Visible"] = false;
    objects["Instance115"]["BackgroundTransparency"] = 1;
    objects["Instance115"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance115"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance115"]["ZIndex"] = 15009;
    objects["Instance115"]["BorderSizePixel"] = 0;
    objects["Instance115"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance116"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance116"]["Active"] = true;
    objects["Instance116"]["Parent"] = objects["Instance107"];
    objects["Instance116"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance116"]["ZIndex"] = 15006;
    objects["Instance116"]["BorderSizePixel"] = 0;
    objects["Instance116"]["Size"] = UDim2.new(0.824999988, 0, 0.400000006, 0);
    objects["Instance116"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance116"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance116"]["Text"] = "ToggleExample";
    objects["Instance116"]["Position"] = UDim2.new(0.524999976, 0, 0.5, 0);
    objects["Instance116"]["TextWrapped"] = true;
    objects["Instance116"]["BackgroundTransparency"] = 1;
    objects["Instance116"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance116"]["Name"] = "Text";
    objects["Instance116"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance116"]["TextSize"] = 14;
    objects["Instance116"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance116"]["TextScaled"] = true;
    objects["Instance116"]["TextWrap"] = true;

    objects["Instance117"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance117"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance117"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance117"]["Text"] = "";
    objects["Instance117"]["TextSize"] = 14;
    objects["Instance117"]["Name"] = "KeybindTrigger";
    objects["Instance117"]["Parent"] = objects["Instance107"];
    objects["Instance117"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance117"]["BackgroundTransparency"] = 1;
    objects["Instance117"]["Position"] = UDim2.new(0.699999988, 0, 0, 0);
    objects["Instance117"]["Size"] = UDim2.new(0.300000012, 0, 1, 0);
    objects["Instance117"]["ZIndex"] = 25000;
    objects["Instance117"]["BorderSizePixel"] = 0;
    objects["Instance117"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance118"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance118"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance118"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance118"]["Text"] = "";
    objects["Instance118"]["TextSize"] = 14;
    objects["Instance118"]["Name"] = "Trigger";
    objects["Instance118"]["Parent"] = objects["Instance107"];
    objects["Instance118"]["BackgroundTransparency"] = 1;
    objects["Instance118"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance118"]["Size"] = UDim2.new(0.699999988, 0, 1, 0);
    objects["Instance118"]["ZIndex"] = 25000;
    objects["Instance118"]["BorderSizePixel"] = 0;
    objects["Instance118"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance119"]["Parent"] = objects["Instance107"];
    objects["Instance119"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance119"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance119"]["Name"] = "InputOuter";
    objects["Instance119"]["Position"] = UDim2.new(0.75, 0, 0.5, 0);
    objects["Instance119"]["Size"] = UDim2.new(0.200000003, -1, 0.5, 0);
    objects["Instance119"]["ZIndex"] = 15006;
    objects["Instance119"]["BorderSizePixel"] = 0;
    objects["Instance119"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance120"]["Parent"] = objects["Instance119"];
    objects["Instance120"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance121"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance121"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance121"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance121"]["Parent"] = objects["Instance119"];
    objects["Instance121"]["ZIndex"] = 15007;
    objects["Instance121"]["BorderSizePixel"] = 0;
    objects["Instance121"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance122"]["TextWrapped"] = true;
    objects["Instance122"]["Parent"] = objects["Instance121"];
    objects["Instance122"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance122"]["ZIndex"] = 15008;
    objects["Instance122"]["BorderSizePixel"] = 0;
    objects["Instance122"]["Size"] = UDim2.new(0.925000012, 0, 0.800000012, 0);
    objects["Instance122"]["TextColor3"] = Color3.new(0.666667, 0, 1);
    objects["Instance122"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance122"]["Text"] = "None";
    objects["Instance122"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance122"]["BackgroundTransparency"] = 1;
    objects["Instance122"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance122"]["Name"] = "Input";
    objects["Instance122"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance122"]["TextSize"] = 14;
    objects["Instance122"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance122"]["TextScaled"] = true;
    objects["Instance122"]["TextWrap"] = true;

    objects["Instance123"]["ClipsDescendants"] = true;
    objects["Instance123"]["Parent"] = objects["Instance14"];
    objects["Instance123"]["BackgroundTransparency"] = 1;
    objects["Instance123"]["Name"] = "GroupboxZone";
    objects["Instance123"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance123"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance123"]["ZIndex"] = 10005;
    objects["Instance123"]["BorderSizePixel"] = 0;
    objects["Instance123"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance124"]["BackgroundTransparency"] = 1;
    objects["Instance124"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance124"]["Name"] = "LeftGroupboxHolder";
    objects["Instance124"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance124"]["Parent"] = objects["Instance123"];
    objects["Instance124"]["ZIndex"] = 10006;
    objects["Instance124"]["BorderSizePixel"] = 0;
    objects["Instance124"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance125"]["ClipsDescendants"] = true;
    objects["Instance125"]["Parent"] = objects["Instance124"];
    objects["Instance125"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance125"]["Name"] = "Display";
    objects["Instance125"]["Position"] = UDim2.new(0, 5, 0, 5);
    objects["Instance125"]["Size"] = UDim2.new(1, -10, 1, -10);
    objects["Instance125"]["ZIndex"] = 10007;
    objects["Instance125"]["BorderSizePixel"] = 0;
    objects["Instance125"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance126"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance126"]["Name"] = "TopNeon";
    objects["Instance126"]["Size"] = UDim2.new(1, 0, 0, 2);
    objects["Instance126"]["Parent"] = objects["Instance125"];
    objects["Instance126"]["ZIndex"] = 10008;
    objects["Instance126"]["BorderSizePixel"] = 0;
    objects["Instance126"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance127"]["Parent"] = objects["Instance125"];
    objects["Instance127"]["BackgroundTransparency"] = 0.675000011920929;
    objects["Instance127"]["Size"] = UDim2.new(1, -4, 1, -22);
    objects["Instance127"]["Name"] = "ContentHolder";
    objects["Instance127"]["Position"] = UDim2.new(0, 2, 0, 20);
    objects["Instance127"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance127"]["ZIndex"] = 10008;
    objects["Instance127"]["BorderSizePixel"] = 0;
    objects["Instance127"]["BackgroundColor3"] = Color3.new(0, 0, 0);

    objects["Instance128"]["Parent"] = objects["Instance127"];
    objects["Instance128"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance129"]["Parent"] = objects["Instance125"];
    objects["Instance129"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance130"]["TextWrapped"] = true;
    objects["Instance130"]["Parent"] = objects["Instance125"];
    objects["Instance130"]["ZIndex"] = 10008;
    objects["Instance130"]["BorderSizePixel"] = 0;
    objects["Instance130"]["Size"] = UDim2.new(1, 0, 0, 14);
    objects["Instance130"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance130"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance130"]["Text"] = "Left Groupbox";
    objects["Instance130"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance130"]["BackgroundTransparency"] = 1;
    objects["Instance130"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance130"]["Name"] = "Title";
    objects["Instance130"]["Position"] = UDim2.new(0, 0, 0, 4);
    objects["Instance130"]["TextSize"] = 14;
    objects["Instance130"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance130"]["TextScaled"] = true;
    objects["Instance130"]["TextWrap"] = true;

    objects["Instance131"]["Parent"] = objects["Instance123"];
    objects["Instance131"]["BackgroundTransparency"] = 1;
    objects["Instance131"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance131"]["Name"] = "RightGroupboxHolder";
    objects["Instance131"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance131"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance131"]["ZIndex"] = 10006;
    objects["Instance131"]["BorderSizePixel"] = 0;
    objects["Instance131"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance132"]["ClipsDescendants"] = true;
    objects["Instance132"]["Parent"] = objects["Instance131"];
    objects["Instance132"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance132"]["Name"] = "Display";
    objects["Instance132"]["Position"] = UDim2.new(0, 5, 0, 5);
    objects["Instance132"]["Size"] = UDim2.new(1, -10, 1, -10);
    objects["Instance132"]["ZIndex"] = 10007;
    objects["Instance132"]["BorderSizePixel"] = 0;
    objects["Instance132"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance133"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance133"]["Name"] = "TopNeon";
    objects["Instance133"]["Size"] = UDim2.new(1, 0, 0, 2);
    objects["Instance133"]["Parent"] = objects["Instance132"];
    objects["Instance133"]["ZIndex"] = 10008;
    objects["Instance133"]["BorderSizePixel"] = 0;
    objects["Instance133"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance134"]["Parent"] = objects["Instance132"];
    objects["Instance134"]["BackgroundTransparency"] = 0.675000011920929;
    objects["Instance134"]["Size"] = UDim2.new(1, -4, 1, -22);
    objects["Instance134"]["Name"] = "ContentHolder";
    objects["Instance134"]["Position"] = UDim2.new(0, 2, 0, 20);
    objects["Instance134"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance134"]["ZIndex"] = 10008;
    objects["Instance134"]["BorderSizePixel"] = 0;
    objects["Instance134"]["BackgroundColor3"] = Color3.new(0, 0, 0);

    objects["Instance135"]["Parent"] = objects["Instance134"];
    objects["Instance135"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance136"]["Parent"] = objects["Instance132"];
    objects["Instance136"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance137"]["TextWrapped"] = true;
    objects["Instance137"]["Parent"] = objects["Instance132"];
    objects["Instance137"]["ZIndex"] = 10008;
    objects["Instance137"]["BorderSizePixel"] = 0;
    objects["Instance137"]["Size"] = UDim2.new(1, 0, 0, 14);
    objects["Instance137"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance137"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance137"]["Text"] = "Right Groupbox";
    objects["Instance137"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance137"]["BackgroundTransparency"] = 1;
    objects["Instance137"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance137"]["Name"] = "Title";
    objects["Instance137"]["Position"] = UDim2.new(0, 0, 0, 4);
    objects["Instance137"]["TextSize"] = 14;
    objects["Instance137"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance137"]["TextScaled"] = true;
    objects["Instance137"]["TextWrap"] = true;

    objects["Instance138"]["Rotation"] = 75;
    objects["Instance138"]["Parent"] = objects["Instance4"];
    objects["Instance138"]["Color"] = ColorSequence.new({
    [1] = ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1));
    [2] = ColorSequenceKeypoint.new(0.3499999940395355, Color3.new(1, 1, 1));
    [3] = ColorSequenceKeypoint.new(1, Color3.new(0.588235, 0.588235, 0.588235));
});

    objects["Instance139"]["Visible"] = false;
    objects["Instance139"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance139"]["Name"] = "StarterFade";
    objects["Instance139"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance139"]["Parent"] = objects["Instance4"];
    objects["Instance139"]["ZIndex"] = 99999;
    objects["Instance139"]["BorderSizePixel"] = 0;
    objects["Instance139"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance140"]["Visible"] = false;
    objects["Instance140"]["Parent"] = objects["Instance4"];
    objects["Instance140"]["BackgroundTransparency"] = 1;
    objects["Instance140"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance140"]["Name"] = "KeySystem";
    objects["Instance140"]["Position"] = UDim2.new(0, 0, 0.0780000016, 0);
    objects["Instance140"]["Size"] = UDim2.new(1, 0, 0.921999991, 0);
    objects["Instance140"]["ZIndex"] = 80000;
    objects["Instance140"]["BorderSizePixel"] = 0;
    objects["Instance140"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance141"]["LayoutOrder"] = 1;
    objects["Instance141"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance141"]["TextSize"] = 14;
    objects["Instance141"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance141"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance141"]["Text"] = "";
    objects["Instance141"]["Name"] = "TextBox";
    objects["Instance141"]["Parent"] = objects["Instance140"];
    objects["Instance141"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance141"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance141"]["BackgroundTransparency"] = 1;
    objects["Instance141"]["Position"] = UDim2.new(0, 0, 0.5, 0);
    objects["Instance141"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance141"]["ZIndex"] = 80001;
    objects["Instance141"]["BorderSizePixel"] = 0;
    objects["Instance141"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance142"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance142"]["Active"] = true;
    objects["Instance142"]["Parent"] = objects["Instance141"];
    objects["Instance142"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance142"]["ZIndex"] = 80002;
    objects["Instance142"]["BorderSizePixel"] = 0;
    objects["Instance142"]["Size"] = UDim2.new(0.899999976, 0, 0.400000006, 0);
    objects["Instance142"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance142"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance142"]["Text"] = "Input your key here:";
    objects["Instance142"]["Position"] = UDim2.new(0.5, 0, 0.25, 0);
    objects["Instance142"]["TextWrapped"] = true;
    objects["Instance142"]["BackgroundTransparency"] = 1;
    objects["Instance142"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance142"]["Name"] = "Text";
    objects["Instance142"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance142"]["TextSize"] = 14;
    objects["Instance142"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance142"]["TextScaled"] = true;
    objects["Instance142"]["TextWrap"] = true;

    objects["Instance143"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance143"]["Name"] = "Separator";
    objects["Instance143"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance143"]["Parent"] = objects["Instance141"];
    objects["Instance143"]["ZIndex"] = 80002;
    objects["Instance143"]["BorderSizePixel"] = 0;
    objects["Instance143"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance144"]["Size"] = UDim2.new(0.899999976, -2, 0.400000006, 0);
    objects["Instance144"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance144"]["Name"] = "TextBoxOuter";
    objects["Instance144"]["Position"] = UDim2.new(0.0500000007, 1, 0.5, 0);
    objects["Instance144"]["Parent"] = objects["Instance141"];
    objects["Instance144"]["ZIndex"] = 80002;
    objects["Instance144"]["BorderSizePixel"] = 0;
    objects["Instance144"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance145"]["Parent"] = objects["Instance144"];
    objects["Instance145"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance146"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance146"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance146"]["Name"] = "TextBoxBackground";
    objects["Instance146"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance146"]["Parent"] = objects["Instance144"];
    objects["Instance146"]["ZIndex"] = 80003;
    objects["Instance146"]["BorderSizePixel"] = 0;
    objects["Instance146"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance147"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance147"]["Parent"] = objects["Instance144"];
    objects["Instance147"]["PlaceholderColor3"] = Color3.new(0.603922, 0.603922, 0.603922);
    objects["Instance147"]["ZIndex"] = 80003;
    objects["Instance147"]["BorderSizePixel"] = 0;
    objects["Instance147"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance147"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance147"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance147"]["Text"] = "";
    objects["Instance147"]["PlaceholderText"] = "Your key here...";
    objects["Instance147"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance147"]["TextWrap"] = true;
    objects["Instance147"]["TextWrapped"] = true;
    objects["Instance147"]["BackgroundTransparency"] = 1;
    objects["Instance147"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance147"]["TextSize"] = 14;
    objects["Instance147"]["ClearTextOnFocus"] = false;
    objects["Instance147"]["TextScaled"] = true;
    objects["Instance147"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance148"]["Parent"] = objects["Instance147"];
    objects["Instance148"]["PaddingLeft"] = UDim.new(0.0199999996, 0);

    objects["Instance149"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance149"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance149"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance149"]["Text"] = "";
    objects["Instance149"]["TextSize"] = 14;
    objects["Instance149"]["Name"] = "Trigger";
    objects["Instance149"]["Parent"] = objects["Instance141"];
    objects["Instance149"]["BackgroundTransparency"] = 1;
    objects["Instance149"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance149"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance149"]["ZIndex"] = 80002;
    objects["Instance149"]["BorderSizePixel"] = 0;
    objects["Instance149"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance150"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
    objects["Instance150"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance150"]["Parent"] = objects["Instance140"];

    objects["Instance151"]["LayoutOrder"] = 3;
    objects["Instance151"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance151"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance151"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance151"]["Text"] = "";
    objects["Instance151"]["TextSize"] = 14;
    objects["Instance151"]["Name"] = "Copy";
    objects["Instance151"]["Parent"] = objects["Instance140"];
    objects["Instance151"]["BackgroundTransparency"] = 1;
    objects["Instance151"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance151"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance151"]["ZIndex"] = 80001;
    objects["Instance151"]["BorderSizePixel"] = 0;
    objects["Instance151"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance152"]["Parent"] = objects["Instance151"];
    objects["Instance152"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance152"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance152"]["Name"] = "ToggleOuter";
    objects["Instance152"]["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0);
    objects["Instance152"]["Size"] = UDim2.new(0.0500000007, -1, 0.600000024, 0);
    objects["Instance152"]["ZIndex"] = 80002;
    objects["Instance152"]["BorderSizePixel"] = 0;
    objects["Instance152"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance153"]["Parent"] = objects["Instance152"];
    objects["Instance153"]["DominantAxis"] = Enum.DominantAxis.Height;

    objects["Instance154"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance154"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance154"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance154"]["Parent"] = objects["Instance152"];
    objects["Instance154"]["ZIndex"] = 80003;
    objects["Instance154"]["BorderSizePixel"] = 0;
    objects["Instance154"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance155"]["ImageColor3"] = Color3.new(0.666667, 0, 1);
    objects["Instance155"]["Parent"] = objects["Instance154"];
    objects["Instance155"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance155"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance155"]["Image"] = "http://www.roblox.com/asset/?id=5715427603";
    objects["Instance155"]["BackgroundTransparency"] = 1;
    objects["Instance155"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance155"]["Size"] = UDim2.new(0.899999976, 0, 0.899999976, 0);
    objects["Instance155"]["ZIndex"] = 80004;
    objects["Instance155"]["BorderSizePixel"] = 0;
    objects["Instance155"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance156"]["Parent"] = objects["Instance152"];
    objects["Instance156"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance157"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance157"]["Active"] = true;
    objects["Instance157"]["Parent"] = objects["Instance151"];
    objects["Instance157"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance157"]["ZIndex"] = 80002;
    objects["Instance157"]["BorderSizePixel"] = 0;
    objects["Instance157"]["Size"] = UDim2.new(0.824999988, 0, 0.400000006, 0);
    objects["Instance157"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance157"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance157"]["Text"] = "Copy key";
    objects["Instance157"]["Position"] = UDim2.new(0.524999976, 0, 0.5, 0);
    objects["Instance157"]["TextWrapped"] = true;
    objects["Instance157"]["BackgroundTransparency"] = 1;
    objects["Instance157"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance157"]["Name"] = "Text";
    objects["Instance157"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance157"]["TextSize"] = 14;
    objects["Instance157"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance157"]["TextScaled"] = true;
    objects["Instance157"]["TextWrap"] = true;

    objects["Instance158"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance158"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance158"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance158"]["Text"] = "";
    objects["Instance158"]["TextSize"] = 14;
    objects["Instance158"]["Name"] = "Trigger";
    objects["Instance158"]["Parent"] = objects["Instance151"];
    objects["Instance158"]["BackgroundTransparency"] = 1;
    objects["Instance158"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance158"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance158"]["ZIndex"] = 80002;
    objects["Instance158"]["BorderSizePixel"] = 0;
    objects["Instance158"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance159"]["BackgroundTransparency"] = 1;
    objects["Instance159"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance159"]["Name"] = "Label";
    objects["Instance159"]["Size"] = UDim2.new(1, 0, 0.150000006, 0);
    objects["Instance159"]["Parent"] = objects["Instance140"];
    objects["Instance159"]["ZIndex"] = 80001;
    objects["Instance159"]["BorderSizePixel"] = 0;
    objects["Instance159"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance160"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance160"]["Active"] = true;
    objects["Instance160"]["Parent"] = objects["Instance159"];
    objects["Instance160"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance160"]["ZIndex"] = 10006;
    objects["Instance160"]["BorderSizePixel"] = 0;
    objects["Instance160"]["Size"] = UDim2.new(0.899999976, 0, 0.400000006, 0);
    objects["Instance160"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance160"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance160"]["Text"] = "Please, complete a key system:";
    objects["Instance160"]["TextWrapped"] = true;
    objects["Instance160"]["BackgroundTransparency"] = 1;
    objects["Instance160"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance160"]["Name"] = "Text";
    objects["Instance160"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance160"]["TextSize"] = 14;
    objects["Instance160"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance160"]["TextScaled"] = true;
    objects["Instance160"]["TextWrap"] = true;

    objects["Instance161"]["LayoutOrder"] = 4;
    objects["Instance161"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance161"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance161"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance161"]["Text"] = "";
    objects["Instance161"]["TextSize"] = 14;
    objects["Instance161"]["Name"] = "Redeem";
    objects["Instance161"]["Parent"] = objects["Instance140"];
    objects["Instance161"]["BackgroundTransparency"] = 1;
    objects["Instance161"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance161"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance161"]["ZIndex"] = 80001;
    objects["Instance161"]["BorderSizePixel"] = 0;
    objects["Instance161"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance162"]["Parent"] = objects["Instance161"];
    objects["Instance162"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance162"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance162"]["Name"] = "ToggleOuter";
    objects["Instance162"]["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0);
    objects["Instance162"]["Size"] = UDim2.new(0.0500000007, -1, 0.600000024, 0);
    objects["Instance162"]["ZIndex"] = 80002;
    objects["Instance162"]["BorderSizePixel"] = 0;
    objects["Instance162"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance163"]["Parent"] = objects["Instance162"];
    objects["Instance163"]["DominantAxis"] = Enum.DominantAxis.Height;

    objects["Instance164"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance164"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance164"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance164"]["Parent"] = objects["Instance162"];
    objects["Instance164"]["ZIndex"] = 80003;
    objects["Instance164"]["BorderSizePixel"] = 0;
    objects["Instance164"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance165"]["ImageColor3"] = Color3.new(0.666667, 0, 1);
    objects["Instance165"]["Parent"] = objects["Instance164"];
    objects["Instance165"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance165"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance165"]["Image"] = "http://www.roblox.com/asset/?id=5715427603";
    objects["Instance165"]["BackgroundTransparency"] = 1;
    objects["Instance165"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance165"]["Size"] = UDim2.new(0.899999976, 0, 0.899999976, 0);
    objects["Instance165"]["ZIndex"] = 80004;
    objects["Instance165"]["BorderSizePixel"] = 0;
    objects["Instance165"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance166"]["Parent"] = objects["Instance162"];
    objects["Instance166"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance167"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance167"]["Active"] = true;
    objects["Instance167"]["Parent"] = objects["Instance161"];
    objects["Instance167"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance167"]["ZIndex"] = 80002;
    objects["Instance167"]["BorderSizePixel"] = 0;
    objects["Instance167"]["Size"] = UDim2.new(0.824999988, 0, 0.400000006, 0);
    objects["Instance167"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance167"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance167"]["Text"] = "Redeem key";
    objects["Instance167"]["Position"] = UDim2.new(0.524999976, 0, 0.5, 0);
    objects["Instance167"]["TextWrapped"] = true;
    objects["Instance167"]["BackgroundTransparency"] = 1;
    objects["Instance167"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance167"]["Name"] = "Text";
    objects["Instance167"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance167"]["TextSize"] = 14;
    objects["Instance167"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance167"]["TextScaled"] = true;
    objects["Instance167"]["TextWrap"] = true;

    objects["Instance168"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance168"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance168"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance168"]["Text"] = "";
    objects["Instance168"]["TextSize"] = 14;
    objects["Instance168"]["Name"] = "Trigger";
    objects["Instance168"]["Parent"] = objects["Instance161"];
    objects["Instance168"]["BackgroundTransparency"] = 1;
    objects["Instance168"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance168"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance168"]["ZIndex"] = 80002;
    objects["Instance168"]["BorderSizePixel"] = 0;
    objects["Instance168"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance169"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance169"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance169"]["Name"] = "Separator";
    objects["Instance169"]["Position"] = UDim2.new(0, 0, 1, -1);
    objects["Instance169"]["Parent"] = objects["Instance161"];
    objects["Instance169"]["ZIndex"] = 80002;
    objects["Instance169"]["BorderSizePixel"] = 0;
    objects["Instance169"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance170"]["LayoutOrder"] = 999;
    objects["Instance170"]["Parent"] = objects["Instance140"];
    objects["Instance170"]["BackgroundTransparency"] = 1;
    objects["Instance170"]["Name"] = "Distance";
    objects["Instance170"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance170"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance170"]["ZIndex"] = 80001;
    objects["Instance170"]["BorderSizePixel"] = 0;
    objects["Instance170"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance171"]["LayoutOrder"] = 4;
    objects["Instance171"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance171"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance171"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance171"]["Text"] = "";
    objects["Instance171"]["TextSize"] = 14;
    objects["Instance171"]["Name"] = "CloseUI";
    objects["Instance171"]["Parent"] = objects["Instance140"];
    objects["Instance171"]["BackgroundTransparency"] = 1;
    objects["Instance171"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance171"]["Size"] = UDim2.new(1, 0, 0.100000001, 0);
    objects["Instance171"]["ZIndex"] = 80001;
    objects["Instance171"]["BorderSizePixel"] = 0;
    objects["Instance171"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance172"]["Parent"] = objects["Instance171"];
    objects["Instance172"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance172"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance172"]["Name"] = "ToggleOuter";
    objects["Instance172"]["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0);
    objects["Instance172"]["Size"] = UDim2.new(0.0500000007, -1, 0.600000024, 0);
    objects["Instance172"]["ZIndex"] = 80002;
    objects["Instance172"]["BorderSizePixel"] = 0;
    objects["Instance172"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance173"]["Parent"] = objects["Instance172"];
    objects["Instance173"]["DominantAxis"] = Enum.DominantAxis.Height;

    objects["Instance174"]["Size"] = UDim2.new(1, -4, 1, -4);
    objects["Instance174"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance174"]["Position"] = UDim2.new(0, 2, 0, 2);
    objects["Instance174"]["Parent"] = objects["Instance172"];
    objects["Instance174"]["ZIndex"] = 80003;
    objects["Instance174"]["BorderSizePixel"] = 0;
    objects["Instance174"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance175"]["ImageColor3"] = Color3.new(0.666667, 0, 1);
    objects["Instance175"]["Parent"] = objects["Instance174"];
    objects["Instance175"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance175"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance175"]["Image"] = "http://www.roblox.com/asset/?id=5715427603";
    objects["Instance175"]["BackgroundTransparency"] = 1;
    objects["Instance175"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance175"]["Size"] = UDim2.new(0.899999976, 0, 0.899999976, 0);
    objects["Instance175"]["ZIndex"] = 80004;
    objects["Instance175"]["BorderSizePixel"] = 0;
    objects["Instance175"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance176"]["Parent"] = objects["Instance172"];
    objects["Instance176"]["LineJoinMode"] = Enum.LineJoinMode.Miter;

    objects["Instance177"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance177"]["Active"] = true;
    objects["Instance177"]["Parent"] = objects["Instance171"];
    objects["Instance177"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance177"]["ZIndex"] = 80002;
    objects["Instance177"]["BorderSizePixel"] = 0;
    objects["Instance177"]["Size"] = UDim2.new(0.824999988, 0, 0.400000006, 0);
    objects["Instance177"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance177"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance177"]["Text"] = "Close UI";
    objects["Instance177"]["Position"] = UDim2.new(0.524999976, 0, 0.5, 0);
    objects["Instance177"]["TextWrapped"] = true;
    objects["Instance177"]["BackgroundTransparency"] = 1;
    objects["Instance177"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance177"]["Name"] = "Text";
    objects["Instance177"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance177"]["TextSize"] = 14;
    objects["Instance177"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance177"]["TextScaled"] = true;
    objects["Instance177"]["TextWrap"] = true;

    objects["Instance178"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance178"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance178"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance178"]["Text"] = "";
    objects["Instance178"]["TextSize"] = 14;
    objects["Instance178"]["Name"] = "Trigger";
    objects["Instance178"]["Parent"] = objects["Instance171"];
    objects["Instance178"]["BackgroundTransparency"] = 1;
    objects["Instance178"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance178"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance178"]["ZIndex"] = 80002;
    objects["Instance178"]["BorderSizePixel"] = 0;
    objects["Instance178"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance179"]["ImageColor3"] = Color3.new(0, 0, 0);
    objects["Instance179"]["ScaleType"] = Enum.ScaleType.Tile;
    objects["Instance179"]["ImageTransparency"] = 0.8999999761581421;
    objects["Instance179"]["Parent"] = objects["Instance4"];
    objects["Instance179"]["BackgroundTransparency"] = 1;
    objects["Instance179"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance179"]["Image"] = "rbxassetid://15562720000";
    objects["Instance179"]["Name"] = "Stripes";
    objects["Instance179"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance179"]["TileSize"] = UDim2.new(0, 30, 0, 30);
    objects["Instance179"]["ZIndex"] = 10002;
    objects["Instance179"]["BorderSizePixel"] = 0;
    objects["Instance179"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance180"]["Rotation"] = 45;
    objects["Instance180"]["Parent"] = objects["Instance2"];
    objects["Instance180"]["Color"] = ColorSequence.new({
    [1] = ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1));
    [2] = ColorSequenceKeypoint.new(1, Color3.new(0.784314, 0.784314, 0.784314));
});

    objects["Instance181"]["ScaleType"] = Enum.ScaleType.Tile;
    objects["Instance181"]["ImageTransparency"] = 0.75;
    objects["Instance181"]["Parent"] = objects["Instance2"];
    objects["Instance181"]["BackgroundTransparency"] = 1;
    objects["Instance181"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance181"]["Image"] = "rbxassetid://15562720000";
    objects["Instance181"]["Name"] = "Stripes";
    objects["Instance181"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance181"]["TileSize"] = UDim2.new(0, 30, 0, 30);
    objects["Instance181"]["ZIndex"] = 10001;
    objects["Instance181"]["BorderSizePixel"] = 0;
    objects["Instance181"]["BackgroundColor3"] = Color3.new(0.117647, 0.117647, 0.117647);

    objects["Instance182"]["Parent"] = objects["Instance1"];

    objects["Instance183"]["Visible"] = false;
    objects["Instance183"]["Parent"] = objects["Instance1"];
    objects["Instance183"]["BackgroundTransparency"] = 1;
    objects["Instance183"]["AnchorPoint"] = Vector2.new(0.5, 0);
    objects["Instance183"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance183"]["Name"] = "MobileMaximize";
    objects["Instance183"]["Position"] = UDim2.new(0.5, 0, 0.800000012, 0);
    objects["Instance183"]["Size"] = UDim2.new(0, 50, 0, 50);
    objects["Instance183"]["ZIndex"] = 100001;
    objects["Instance183"]["BorderSizePixel"] = 0;
    objects["Instance183"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance184"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance184"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance184"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance184"]["Text"] = "";
    objects["Instance184"]["TextSize"] = 14;
    objects["Instance184"]["Rotation"] = 45;
    objects["Instance184"]["Parent"] = objects["Instance183"];
    objects["Instance184"]["Name"] = "DragButton";
    objects["Instance184"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance184"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance184"]["ZIndex"] = 100002;
    objects["Instance184"]["BorderSizePixel"] = 0;
    objects["Instance184"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance185"]["TextWrapped"] = true;
    objects["Instance185"]["Parent"] = objects["Instance184"];
    objects["Instance185"]["ZIndex"] = 100003;
    objects["Instance185"]["BorderSizePixel"] = 0;
    objects["Instance185"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance185"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance185"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance185"]["Text"] = "+";
    objects["Instance185"]["BackgroundTransparency"] = 1;
    objects["Instance185"]["Rotation"] = -45;
    objects["Instance185"]["TextSize"] = 14;
    objects["Instance185"]["Name"] = "Text";
    objects["Instance185"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance185"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance185"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance185"]["TextScaled"] = true;
    objects["Instance185"]["TextWrap"] = true;

    objects["Instance186"]["Thickness"] = 3;
    objects["Instance186"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance186"]["Parent"] = objects["Instance184"];

    objects["Instance187"]["Parent"] = objects["Instance184"];
    objects["Instance187"]["CornerRadius"] = UDim.new(0.200000003, 0);

    objects["Instance188"]["BackgroundTransparency"] = 1;
    objects["Instance188"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance188"]["Name"] = "Notification";
    objects["Instance188"]["Size"] = UDim2.new(0, 200, 1, 0);
    objects["Instance188"]["Parent"] = objects["Instance0"];
    objects["Instance188"]["ZIndex"] = 100029;
    objects["Instance188"]["BorderSizePixel"] = 0;
    objects["Instance188"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance189"]["BackgroundTransparency"] = 1;
    objects["Instance189"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance189"]["Name"] = "NotificationHolder";
    objects["Instance189"]["Size"] = UDim2.new(1, 0, 0, 85);
    objects["Instance189"]["Parent"] = objects["Instance188"];
    objects["Instance189"]["ZIndex"] = 100030;
    objects["Instance189"]["BorderSizePixel"] = 0;
    objects["Instance189"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance190"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance190"]["Name"] = "NotificationColored";
    objects["Instance190"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance190"]["Parent"] = objects["Instance189"];
    objects["Instance190"]["ZIndex"] = 100031;
    objects["Instance190"]["BorderSizePixel"] = 0;
    objects["Instance190"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance191"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance191"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance191"]["Parent"] = objects["Instance190"];

    objects["Instance192"]["Size"] = UDim2.new(1, -5, 1, -2);
    objects["Instance192"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance192"]["Name"] = "NotificationMain";
    objects["Instance192"]["Position"] = UDim2.new(0, 0, 0, 2);
    objects["Instance192"]["Parent"] = objects["Instance190"];
    objects["Instance192"]["ZIndex"] = 100033;
    objects["Instance192"]["BorderSizePixel"] = 0;
    objects["Instance192"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance193"]["Size"] = UDim2.new(1, 0, 0, 5);
    objects["Instance193"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance193"]["Name"] = "Bar";
    objects["Instance193"]["Position"] = UDim2.new(0, 0, 1, -5);
    objects["Instance193"]["Parent"] = objects["Instance192"];
    objects["Instance193"]["ZIndex"] = 101034;
    objects["Instance193"]["BorderSizePixel"] = 0;
    objects["Instance193"]["BackgroundColor3"] = Color3.new(0.27451, 0, 0.607843);

    objects["Instance194"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance194"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance194"]["Name"] = "Fill";
    objects["Instance194"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance194"]["Parent"] = objects["Instance193"];
    objects["Instance194"]["ZIndex"] = 101035;
    objects["Instance194"]["BorderSizePixel"] = 0;
    objects["Instance194"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance195"]["TextWrapped"] = true;
    objects["Instance195"]["Parent"] = objects["Instance192"];
    objects["Instance195"]["ZIndex"] = 101034;
    objects["Instance195"]["BorderSizePixel"] = 0;
    objects["Instance195"]["Size"] = UDim2.new(1, 0, 0.143000007, 0);
    objects["Instance195"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance195"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance195"]["Text"] = "Title";
    objects["Instance195"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance195"]["BackgroundTransparency"] = 1;
    objects["Instance195"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance195"]["Name"] = "Title";
    objects["Instance195"]["Position"] = UDim2.new(0, 0, 0.0250000004, 0);
    objects["Instance195"]["TextSize"] = 14;
    objects["Instance195"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance195"]["TextScaled"] = true;
    objects["Instance195"]["TextWrap"] = true;

    objects["Instance196"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance196"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance196"]["Name"] = "Separator";
    objects["Instance196"]["Position"] = UDim2.new(0, 0, 0.200000003, -1);
    objects["Instance196"]["Parent"] = objects["Instance192"];
    objects["Instance196"]["ZIndex"] = 101034;
    objects["Instance196"]["BorderSizePixel"] = 0;
    objects["Instance196"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance197"]["Parent"] = objects["Instance192"];
    objects["Instance197"]["BackgroundTransparency"] = 1;
    objects["Instance197"]["Size"] = UDim2.new(1, 0, 0.800000012, -5);
    objects["Instance197"]["Name"] = "Lines";
    objects["Instance197"]["Position"] = UDim2.new(0, 0, 0.200000003, 0);
    objects["Instance197"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance197"]["ZIndex"] = 101034;
    objects["Instance197"]["BorderSizePixel"] = 0;
    objects["Instance197"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance198"]["Parent"] = objects["Instance197"];
    objects["Instance198"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance199"]["TextWrapped"] = true;
    objects["Instance199"]["Parent"] = objects["Instance197"];
    objects["Instance199"]["ZIndex"] = 101035;
    objects["Instance199"]["BorderSizePixel"] = 0;
    objects["Instance199"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance199"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance199"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance199"]["Text"] = "Line";
    objects["Instance199"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance199"]["BackgroundTransparency"] = 1;
    objects["Instance199"]["FontSize"] = Enum.FontSize.Size10;
    objects["Instance199"]["Name"] = "1";
    objects["Instance199"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance199"]["TextSize"] = 10;
    objects["Instance199"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    objects["Instance199"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance199"]["TextWrap"] = true;

    objects["Instance200"]["ImageColor3"] = Color3.new(0, 0, 0);
    objects["Instance200"]["ScaleType"] = Enum.ScaleType.Tile;
    objects["Instance200"]["ImageTransparency"] = 0.8999999761581421;
    objects["Instance200"]["Parent"] = objects["Instance192"];
    objects["Instance200"]["BackgroundTransparency"] = 1;
    objects["Instance200"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance200"]["Image"] = "rbxassetid://87577631610763";
    objects["Instance200"]["Name"] = "Stripes";
    objects["Instance200"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance200"]["TileSize"] = UDim2.new(0, 30, 0, 30);
    objects["Instance200"]["ZIndex"] = 100035;
    objects["Instance200"]["BorderSizePixel"] = 0;
    objects["Instance200"]["BackgroundColor3"] = Color3.new(0.117647, 0.117647, 0.117647);

    objects["Instance201"]["ScaleType"] = Enum.ScaleType.Tile;
    objects["Instance201"]["ImageTransparency"] = 0.75;
    objects["Instance201"]["Parent"] = objects["Instance190"];
    objects["Instance201"]["BackgroundTransparency"] = 1;
    objects["Instance201"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance201"]["Image"] = "rbxassetid://87577631610763";
    objects["Instance201"]["Name"] = "Stripes";
    objects["Instance201"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance201"]["TileSize"] = UDim2.new(0, 30, 0, 30);
    objects["Instance201"]["ZIndex"] = 100032;
    objects["Instance201"]["BorderSizePixel"] = 0;
    objects["Instance201"]["BackgroundColor3"] = Color3.new(0.117647, 0.117647, 0.117647);

    objects["Instance202"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
    objects["Instance202"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance202"]["Padding"] = UDim.new(0.00999999978, 1);
    objects["Instance202"]["Parent"] = objects["Instance188"];

    objects["Instance203"]["BackgroundTransparency"] = 1;
    objects["Instance203"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance203"]["Name"] = "ChooseNotificationHolder";
    objects["Instance203"]["Size"] = UDim2.new(1, 0, 0, 85);
    objects["Instance203"]["Parent"] = objects["Instance188"];
    objects["Instance203"]["ZIndex"] = 100030;
    objects["Instance203"]["BorderSizePixel"] = 0;
    objects["Instance203"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance204"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance204"]["Name"] = "NotificationColored";
    objects["Instance204"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance204"]["Parent"] = objects["Instance203"];
    objects["Instance204"]["ZIndex"] = 100031;
    objects["Instance204"]["BorderSizePixel"] = 0;
    objects["Instance204"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance205"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance205"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance205"]["Parent"] = objects["Instance204"];

    objects["Instance206"]["Size"] = UDim2.new(1, -5, 1, -2);
    objects["Instance206"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance206"]["Name"] = "NotificationMain";
    objects["Instance206"]["Position"] = UDim2.new(0, 0, 0, 2);
    objects["Instance206"]["Parent"] = objects["Instance204"];
    objects["Instance206"]["ZIndex"] = 100033;
    objects["Instance206"]["BorderSizePixel"] = 0;
    objects["Instance206"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance207"]["Size"] = UDim2.new(1, 0, 0, 5);
    objects["Instance207"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance207"]["Name"] = "Bar";
    objects["Instance207"]["Position"] = UDim2.new(0, 0, 1, -5);
    objects["Instance207"]["Parent"] = objects["Instance206"];
    objects["Instance207"]["ZIndex"] = 101034;
    objects["Instance207"]["BorderSizePixel"] = 0;
    objects["Instance207"]["BackgroundColor3"] = Color3.new(0.27451, 0, 0.607843);

    objects["Instance208"]["Size"] = UDim2.new(0.5, 0, 1, 0);
    objects["Instance208"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance208"]["Name"] = "Fill";
    objects["Instance208"]["Position"] = UDim2.new(0.5, 0, 0, 0);
    objects["Instance208"]["Parent"] = objects["Instance207"];
    objects["Instance208"]["ZIndex"] = 101035;
    objects["Instance208"]["BorderSizePixel"] = 0;
    objects["Instance208"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance209"]["TextWrapped"] = true;
    objects["Instance209"]["Parent"] = objects["Instance206"];
    objects["Instance209"]["ZIndex"] = 101034;
    objects["Instance209"]["BorderSizePixel"] = 0;
    objects["Instance209"]["Size"] = UDim2.new(0.800000012, 0, 0.143000007, 0);
    objects["Instance209"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance209"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance209"]["Text"] = "Title";
    objects["Instance209"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance209"]["BackgroundTransparency"] = 1;
    objects["Instance209"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance209"]["Name"] = "Title";
    objects["Instance209"]["Position"] = UDim2.new(0, 0, 0.0250000004, 0);
    objects["Instance209"]["TextSize"] = 14;
    objects["Instance209"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance209"]["TextScaled"] = true;
    objects["Instance209"]["TextWrap"] = true;

    objects["Instance210"]["Size"] = UDim2.new(1, 0, 0, 1);
    objects["Instance210"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance210"]["Name"] = "Separator";
    objects["Instance210"]["Position"] = UDim2.new(0, 0, 0.200000003, -1);
    objects["Instance210"]["Parent"] = objects["Instance206"];
    objects["Instance210"]["ZIndex"] = 101034;
    objects["Instance210"]["BorderSizePixel"] = 0;
    objects["Instance210"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance211"]["Parent"] = objects["Instance206"];
    objects["Instance211"]["BackgroundTransparency"] = 1;
    objects["Instance211"]["Size"] = UDim2.new(1, 0, 0.800000012, -5);
    objects["Instance211"]["Name"] = "Lines";
    objects["Instance211"]["Position"] = UDim2.new(0, 0, 0.200000003, 0);
    objects["Instance211"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance211"]["ZIndex"] = 101034;
    objects["Instance211"]["BorderSizePixel"] = 0;
    objects["Instance211"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance212"]["Parent"] = objects["Instance211"];
    objects["Instance212"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    objects["Instance213"]["TextWrapped"] = true;
    objects["Instance213"]["Parent"] = objects["Instance211"];
    objects["Instance213"]["ZIndex"] = 101035;
    objects["Instance213"]["BorderSizePixel"] = 0;
    objects["Instance213"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance213"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance213"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance213"]["Text"] = "Line";
    objects["Instance213"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance213"]["BackgroundTransparency"] = 1;
    objects["Instance213"]["FontSize"] = Enum.FontSize.Size10;
    objects["Instance213"]["Name"] = "1";
    objects["Instance213"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance213"]["TextSize"] = 10;
    objects["Instance213"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    objects["Instance213"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance213"]["TextWrap"] = true;

    objects["Instance214"]["ScaleType"] = Enum.ScaleType.Fit;
    objects["Instance214"]["Parent"] = objects["Instance206"];
    objects["Instance214"]["Size"] = UDim2.new(0.100000001, 0, 0.143000007, 0);
    objects["Instance214"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance214"]["Image"] = "rbxassetid://12690727184";
    objects["Instance214"]["BackgroundTransparency"] = 1;
    objects["Instance214"]["Position"] = UDim2.new(0.800000012, 0, 0.0250000004, 0);
    objects["Instance214"]["Name"] = "Yes";
    objects["Instance214"]["ZIndex"] = 101034;
    objects["Instance214"]["BorderSizePixel"] = 0;
    objects["Instance214"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance215"]["ScaleType"] = Enum.ScaleType.Fit;
    objects["Instance215"]["Parent"] = objects["Instance206"];
    objects["Instance215"]["Size"] = UDim2.new(0.100000001, 0, 0.143000007, 0);
    objects["Instance215"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance215"]["Image"] = "rbxassetid://168705076";
    objects["Instance215"]["BackgroundTransparency"] = 1;
    objects["Instance215"]["Position"] = UDim2.new(0.899999976, 0, 0.0250000004, 0);
    objects["Instance215"]["Name"] = "No";
    objects["Instance215"]["ZIndex"] = 101034;
    objects["Instance215"]["BorderSizePixel"] = 0;
    objects["Instance215"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance216"]["ImageColor3"] = Color3.new(0, 0, 0);
    objects["Instance216"]["ScaleType"] = Enum.ScaleType.Tile;
    objects["Instance216"]["ImageTransparency"] = 0.8999999761581421;
    objects["Instance216"]["Parent"] = objects["Instance206"];
    objects["Instance216"]["BackgroundTransparency"] = 1;
    objects["Instance216"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance216"]["Image"] = "rbxassetid://87577631610763";
    objects["Instance216"]["Name"] = "Stripes";
    objects["Instance216"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance216"]["TileSize"] = UDim2.new(0, 30, 0, 30);
    objects["Instance216"]["ZIndex"] = 100035;
    objects["Instance216"]["BorderSizePixel"] = 0;
    objects["Instance216"]["BackgroundColor3"] = Color3.new(0.117647, 0.117647, 0.117647);

    objects["Instance217"]["ScaleType"] = Enum.ScaleType.Tile;
    objects["Instance217"]["ImageTransparency"] = 0.75;
    objects["Instance217"]["Parent"] = objects["Instance204"];
    objects["Instance217"]["BackgroundTransparency"] = 1;
    objects["Instance217"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance217"]["Image"] = "rbxassetid://87577631610763";
    objects["Instance217"]["Name"] = "Stripes";
    objects["Instance217"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance217"]["TileSize"] = UDim2.new(0, 30, 0, 30);
    objects["Instance217"]["ZIndex"] = 100032;
    objects["Instance217"]["BorderSizePixel"] = 0;
    objects["Instance217"]["BackgroundColor3"] = Color3.new(0.117647, 0.117647, 0.117647);

    objects["Instance218"]["Parent"] = objects["Instance0"];

    objects["Instance219"]["Parent"] = objects["Instance0"];
    objects["Instance219"]["BackgroundTransparency"] = 1;
    objects["Instance219"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance219"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance219"]["Name"] = "LeftHolder";
    objects["Instance219"]["Position"] = UDim2.new(0, 0, 0.5, 0);
    objects["Instance219"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance219"]["ZIndex"] = 50000;
    objects["Instance219"]["BorderSizePixel"] = 0;
    objects["Instance219"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance220"]["Parent"] = objects["Instance219"];

    objects["Instance221"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance221"]["TextSize"] = 14;
    objects["Instance221"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance221"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance221"]["Text"] = "";
    objects["Instance221"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance221"]["AutoButtonColor"] = false;
    objects["Instance221"]["AnchorPoint"] = Vector2.new(0, 0.5);
    objects["Instance221"]["Parent"] = objects["Instance219"];
    objects["Instance221"]["Name"] = "Keybinds";
    objects["Instance221"]["Position"] = UDim2.new(0.100000001, 0, 0.5, 0);
    objects["Instance221"]["Size"] = UDim2.new(0, 200, 0, 45);
    objects["Instance221"]["ZIndex"] = 50001;
    objects["Instance221"]["BorderSizePixel"] = 0;
    objects["Instance221"]["BackgroundColor3"] = Color3.new(0.666667, 0, 1);

    objects["Instance222"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance222"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
    objects["Instance222"]["Parent"] = objects["Instance221"];

    objects["Instance223"]["Size"] = UDim2.new(1, 0, 1, -2);
    objects["Instance223"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance223"]["Name"] = "HolderFrame";
    objects["Instance223"]["Position"] = UDim2.new(0, 0, 0, 2);
    objects["Instance223"]["Parent"] = objects["Instance221"];
    objects["Instance223"]["ZIndex"] = 50002;
    objects["Instance223"]["BorderSizePixel"] = 0;
    objects["Instance223"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255);

    objects["Instance224"]["BackgroundTransparency"] = 1;
    objects["Instance224"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance224"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance224"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance224"]["Parent"] = objects["Instance223"];
    objects["Instance224"]["Text"] = "Keybinds";
    objects["Instance224"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance224"]["Size"] = UDim2.new(1, 0, 0, 20);
    objects["Instance224"]["TextSize"] = 14;
    objects["Instance224"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance224"]["Name"] = "Title";
    objects["Instance224"]["TextWrapped"] = true;
    objects["Instance224"]["TextScaled"] = true;
    objects["Instance224"]["ZIndex"] = 50003;
    objects["Instance224"]["BorderSizePixel"] = 0;
    objects["Instance224"]["TextWrap"] = true;

    objects["Instance225"]["Rotation"] = 75;
    objects["Instance225"]["Parent"] = objects["Instance223"];
    objects["Instance225"]["Color"] = ColorSequence.new({
    [1] = ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1));
    [2] = ColorSequenceKeypoint.new(0.3499999940395355, Color3.new(1, 1, 1));
    [3] = ColorSequenceKeypoint.new(1, Color3.new(0.588235, 0.588235, 0.588235));
});

    objects["Instance226"]["ImageColor3"] = Color3.new(0, 0, 0);
    objects["Instance226"]["ScaleType"] = Enum.ScaleType.Tile;
    objects["Instance226"]["ImageTransparency"] = 0.8999999761581421;
    objects["Instance226"]["Parent"] = objects["Instance223"];
    objects["Instance226"]["BackgroundTransparency"] = 1;
    objects["Instance226"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance226"]["Image"] = "rbxassetid://15562720000";
    objects["Instance226"]["Name"] = "Stripes";
    objects["Instance226"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance226"]["TileSize"] = UDim2.new(0, 30, 0, 30);
    objects["Instance226"]["ZIndex"] = 50002;
    objects["Instance226"]["BorderSizePixel"] = 0;
    objects["Instance226"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance227"]["Active"] = true;
    objects["Instance227"]["Selectable"] = true;
    objects["Instance227"]["BackgroundTransparency"] = 1;
    objects["Instance227"]["SelectionGroup"] = true;
    objects["Instance227"]["Size"] = UDim2.new(1, 0, 1, -20);
    objects["Instance227"]["BorderColor3"] = Color3.new(0.0666667, 0.0666667, 0.0666667);
    objects["Instance227"]["ClipsDescendants"] = true;
    objects["Instance227"]["Name"] = "List";
    objects["Instance227"]["Position"] = UDim2.new(0, 0, 0, 25);
    objects["Instance227"]["Parent"] = objects["Instance223"];
    objects["Instance227"]["ZIndex"] = 50003;
    objects["Instance227"]["BorderSizePixel"] = 0;
    objects["Instance227"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance228"]["Parent"] = objects["Instance227"];
    objects["Instance228"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
    objects["Instance228"]["Padding"] = UDim.new(0, 2);

    objects["Instance229"]["FontSize"] = Enum.FontSize.Size18;
    objects["Instance229"]["TextWrapped"] = true;
    objects["Instance229"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance229"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance229"]["Parent"] = objects["Instance227"];
    objects["Instance229"]["Text"] = "[A] Killaura";
    objects["Instance229"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance229"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance229"]["Size"] = UDim2.new(1, 0, 0, 15);
    objects["Instance229"]["TextSize"] = 15;
    objects["Instance229"]["BackgroundTransparency"] = 1;
    objects["Instance229"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    objects["Instance229"]["TextScaled"] = true;
    objects["Instance229"]["ZIndex"] = 50004;
    objects["Instance229"]["BorderSizePixel"] = 0;
    objects["Instance229"]["TextWrap"] = true;

    objects["Instance230"]["Parent"] = objects["Instance229"];
    objects["Instance230"]["PaddingLeft"] = UDim.new(0.0500000007, 0);

    objects["Instance231"]["Size"] = UDim2.new(0.899999976, 0, 0, 1);
    objects["Instance231"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance231"]["Name"] = "Separator";
    objects["Instance231"]["Position"] = UDim2.new(0.0500000007, 0, 0, 22);
    objects["Instance231"]["Parent"] = objects["Instance223"];
    objects["Instance231"]["ZIndex"] = 50004;
    objects["Instance231"]["BorderSizePixel"] = 0;
    objects["Instance231"]["BackgroundColor3"] = Color3.new(0.196078, 0.196078, 0.196078);

    objects["Instance232"]["Rotation"] = 45;
    objects["Instance232"]["Parent"] = objects["Instance221"];
    objects["Instance232"]["Color"] = ColorSequence.new({
    [1] = ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1));
    [2] = ColorSequenceKeypoint.new(1, Color3.new(0.784314, 0.784314, 0.784314));
});

    objects["Instance233"]["ScaleType"] = Enum.ScaleType.Tile;
    objects["Instance233"]["ImageTransparency"] = 0.75;
    objects["Instance233"]["Parent"] = objects["Instance221"];
    objects["Instance233"]["BackgroundTransparency"] = 1;
    objects["Instance233"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance233"]["Image"] = "rbxassetid://15562720000";
    objects["Instance233"]["Name"] = "Stripes";
    objects["Instance233"]["Size"] = UDim2.new(1, 0, 1, 0);
    objects["Instance233"]["TileSize"] = UDim2.new(0, 30, 0, 30);
    objects["Instance233"]["ZIndex"] = 50001;
    objects["Instance233"]["BorderSizePixel"] = 0;
    objects["Instance233"]["BackgroundColor3"] = Color3.new(0.117647, 0.117647, 0.117647);

    objects["Instance234"]["Name"] = "Sounds";
    objects["Instance234"]["Parent"] = objects["Instance0"];

    objects["Instance235"]["Name"] = "SoundsFolder";
    objects["Instance235"]["Parent"] = objects["Instance234"];

    objects["Instance236"]["Parent"] = objects["Instance235"];
    objects["Instance236"]["Name"] = "Notification";
    objects["Instance236"]["SoundId"] = "rbxassetid://4590657391";

    objects["Instance237"]["Parent"] = objects["Instance235"];
    objects["Instance237"]["Name"] = "MouseHover";
    objects["Instance237"]["SoundId"] = "rbxassetid://9113884125";

    objects["Instance238"]["Parent"] = objects["Instance235"];
    objects["Instance238"]["Name"] = "Click";
    objects["Instance238"]["SoundId"] = "rbxassetid://15675032796";
end;

-- Set modules
local o_require = require; local require;
local modules do
    modules = {};
    require = function(object)
        if modules[object] then
            return modules[object]();
        end
        return o_require(object);
    end;

    getfenv().require = require;

    modules[objects["Instance218"]] = function()
        local script = objects["Instance218"];
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

script.Parent.Holder.Window.Visible = false
script.Parent.Holder.Window.HolderFrame.PageDisplay.Page.Visible = false
script.Parent.Holder.Window.HolderFrame.PageButtons.PageButton.Visible = false

script.Parent.LeftHolder.Keybinds.Visible = false
script.Parent.LeftHolder.Keybinds.Size = UDim2.fromOffset(200, 45)
script.Parent.LeftHolder.Keybinds.HolderFrame.List.TextLabel.Visible = false

for i,v in script.Parent.Holder.Window.HolderFrame.PageDisplay.Page:GetChildren() do
    if v and v:IsA("GuiObject") then
        v.Visible = false
    end
end

local writefile, readfile, makefolder, isfolder, isfile, listfiles = getfenv().writefile, getfenv().readfile, getfenv().makefolder or getfenv().createfolder, getfenv().isfolder, getfenv().isfile or getfenv().readfile and function(path)
    return typeof(select(2, pcall(getfenv().readfile, path))) == "string"
end, getfenv().listfiles
local configsEnabled = typeof(writefile) == "function" and typeof(readfile) == "function"

local themes
local versions
if not pcall(function()
        local str = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Data/Versions.json"))
        versions = {
            ["FireLibraryVersion"] = str[2],
            ["FireHubVersion"] = str[1]
        }
        themes = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Data/Theme.json"))
    end) then
    versions = {
        ["FireLibraryVersion"] = "5.4.2",
        ["FireHubVersion"] = "4.0.2"
    }
    themes = {
        Patterns = {
            ["Stripes"] = "rbxassetid://87577631610763",
            ["Rounded corner pattern"] = "rbxassetid://846693570",
            ["Checkers pattern"] = "rbxassetid://15562720000",
            ["Custom"] = ""
        },
        Themes = {
            Default = {
                Main = {170, 0, 255},
                Back = {35, 35, 35},
                Text = {255, 255, 255}
            },
            Acid = {
                Main = {0, 255, 0},
                Back = {35, 35, 35},
                Text = {255, 255, 255}
            },
            Light = {
                Main = {100, 100, 100},
                Back = {255, 255, 255},
                Text = {0, 0, 0}
            }
        }
    }
end

for i,v in themes.Themes do
    for idx, val in themes.Themes[i] do
        themes.Themes[i][idx] = Color3.fromRGB(themes.Themes[i][idx][1], themes.Themes[i][idx][2], themes.Themes[i][idx][3])
    end
end

script.Parent.Name = "Fire-Lib [ID:"..game:GetService("HttpService"):GenerateGUID(false).."]"
getGlobalTable()._FLVersions = versions
local isMobile = game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled
local uiHolder = pcall(game.GetFullName, game.CoreGui) and game.CoreGui:FindFirstChild("DevConsoleMaster") and getfenv().gethui and getfenv().gethui() or pcall(game.GetFullName, game.CoreGui) and game.CoreGui:FindFirstChild("RobloxGui") or game:GetService("Players").LocalPlayer.PlayerGui
script.Parent.Parent = uiHolder
if not pcall(function() script.Parent.OnTopOfCoreBlur = true end) and pcall(game.GetFullName, game.CoreGui) then
    local devCon; devCon = game.CoreGui.ChildAdded:Connect(function(c)
        if c and c.Name == "DevConsoleMaster" then
            devCon:Disconnect()
            uiHolder = c
            script.Parent.Parent = c
        end
    end)
end

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

local function coroutineCall(f)
    return coroutine.wrap(function(...)
        pcall(f, ...)
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
                coroutineCall(options.Callback)(newVal)
                prevVal = newVal
                --newVal = nil
            end
        end
    end

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or Enum.UserInputType.Touch) then 
            local sizeScale = math.clamp((input.Position.X - sliderBar.Parent.AbsolutePosition.X) / sliderBar.Parent.AbsoluteSize.X, 0, 1)
            local pval = prevVal
            set(options.Min + ((options.Max - options.Min) * sizeScale))
            if pval ~= prevVal then
                coroutineCall(playSound)("MouseHover")
            end
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

local bestDeviceSize = isMobile and UDim2.fromScale(0.775, 0.75) or UDim2.fromScale(0.625, 0.475)
local function updateFloatingKeybinds(binds, list, colors)
    if isMobile then
        binds.Visible = false
        return
    end

    local prevChildren = binds.HolderFrame.List:GetChildren()
    local prevLen = #prevChildren
    
    for i,v in prevChildren do
        if v and v:IsA("TextLabel") and v.Visible then
            v:Destroy()
        end
    end
    
    for i,v in list do
        if v[2] then
            local label = binds.HolderFrame.List.TextLabel:Clone()
            label.Parent = binds.HolderFrame.List
            label.Visible = true
            label.Text = "[ " .. v[2].Name .. " ] " .. v[1]
            label.TextColor3 = v[3] and colors.Main.Color or colors.Text.Color
            label.Name = ""
        end
    end
    
    local children = binds.HolderFrame.List:GetChildren()
    if #children == 2 then
        binds:TweenSize(UDim2.fromOffset(binds.Size.X.Offset, 30), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25, true)
        task.wait(0.25)
        binds.Visible = false
        return
    end
    
    local maxX = 0
    
    for i,v in children do
        if v and v:IsA("TextLabel") then
            maxX = math.max(maxX, (#v.Text * 7) + 20)
        end
    end
    
    maxX = math.max(maxX, 200)
    local y = ((#children - 2) * 15) + (2 * math.max((#children - 2) - 1, 0)) + 30

    binds.Visible = true
    
    if prevLen == 2 then
        binds.Size = UDim2.fromOffset(maxX, 30)
    end
    
    binds:TweenSize(UDim2.fromOffset(maxX, y), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25, true)
end

local lib; lib = {
    Notifications = {
        _AnimateNotification = {
            In = function(notification)
                if not notification or not notification.Parent then return end
                playSound("Notification")
                local size = notification.Size
                notification.Size = UDim2.fromScale()
                notification.Visible = true
                notification:TweenSize(size, nil, nil, 0.3, true)
                notification.NotificationColored.Position = UDim2.new(-1, -1, 0, 0)
                notification.NotificationColored.NotificationMain.Position = UDim2.new(-1, 0, 0, 2)
                task.wait(0.32)
                if not notification or not notification.Parent then return end
                notification.NotificationColored:TweenPosition(UDim2.fromScale(0,0), nil, nil, 0.3, true)
                notification.NotificationColored.NotificationMain:TweenPosition(UDim2.fromOffset(0, 2), nil, nil, 0.45, true)
            end,
            Out = function(notification)
                if not notification or not notification.Parent then return end
                notification.NotificationColored.NotificationMain:TweenPosition(UDim2.new(-1, 0, 0, 2), nil, nil, 0.45, true)
                notification.NotificationColored:TweenPosition(UDim2.new(-1, -1, 0, 0), nil, nil, 0.3, true)
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
                notification.NotificationColored.NotificationMain.Bar.Fill.Size = UDim2.fromScale(1,1)
                notification.NotificationColored.NotificationMain.Bar.Fill.Position = UDim2.fromScale(0,0)
                notification.NotificationColored.NotificationMain.Title.Text = typeof(options.Title) == "string" and options.Title or typeof(options.Name) == "string" and options.Name or "Notification"
                local text = typeof(options.Text) == "string" and options.Text or typeof(options.Description) == "string" and options.Description or typeof(options.Content) == "string" and options.Content or ""
                notification.NotificationColored.NotificationMain.Lines["1"].Text = text
                coroutineCall(self._AnimateNotification.In)(notification)
                local time = tonumber(options.Time) or tonumber(options.Delay) or tonumber(options.Length) or 5
                notification.NotificationColored.NotificationMain.Bar.Fill:TweenSizeAndPosition(UDim2.fromScale(0, 1), UDim2.fromScale(1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, time, true)
                task.wait(time)
                coroutineCall(self._AnimateNotification.Out)(notification)
            end)
        end,
        ChooseNotification = function(self, options)
            task.spawn(function()
                local notification = script.Parent.Notification.ChooseNotificationHolder:Clone()
                notification.Parent = script.Parent.Notification
                notification.Name = ""
                notification.NotificationColored.NotificationMain.Bar.Fill.Size = UDim2.fromScale(1,1)
                notification.NotificationColored.NotificationMain.Bar.Fill.Position = UDim2.fromScale(0,0)
                notification.NotificationColored.NotificationMain.Title.Text = typeof(options.Title) == "string" and options.Title or typeof(options.Name) == "string" and options.Name or "Notification"
                local text = typeof(options.Text) == "string" and options.Text or typeof(options.Description) == "string" and options.Description or typeof(options.Content) == "string" and options.Content or ""
                notification.NotificationColored.NotificationMain.Lines["1"].Text = text
                local done = false
                notification.NotificationColored.NotificationMain.Yes.MouseButton1Click:Connect(function()
                    if done then return end
                    coroutineCall(self._AnimateNotification.Out)(notification)
                    done = true
                    getCallback(options)(true)
                end)
                notification.NotificationColored.NotificationMain.No.MouseButton1Click:Connect(function()
                    if done then return end
                    coroutineCall(self._AnimateNotification.Out)(notification)
                    done = true
                    getCallback(options)(false)
                end)
                coroutineCall(self._AnimateNotification.In)(notification)
                local time = tonumber(options.Time) or tonumber(options.Delay) or tonumber(options.Length) or 5
                notification.NotificationColored.NotificationMain.Bar.Fill:TweenSizeAndPosition(UDim2.fromScale(0, 1), UDim2.fromScale(1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, time, true)
                task.wait(time)
                coroutineCall(self._AnimateNotification.Out)(notification)
            end)
        end
    },
    Versions = versions,
    MakeWindow = function(self, options)
        local configStructure = {}

        getGlobalTable().Struct = configStructure

        local configEvent = Instance.new("BindableEvent")
        local counter = {}
        local function count(name, layer)
            counter[layer] = counter[layer] or {}
            counter[layer][name] = (tonumber(counter[layer][name]) or 0) + 1
            return name..counter[layer][name]
        end
        options = getOptions(options)
        local session = {}
        local cons = {}
        local window = script.Parent.Holder.Window:Clone()
        window.Parent = script.Parent.Holder
        local fadeTime = 1
        local size = typeof(options.WindowSize) == "UDim2" and options.WindowSize or typeof(options.CustomWindowSize) == "UDim2" and options.CustomWindowSize or typeof(options.Size) == "UDim2" and options.Size or bestDeviceSize
        window.Name = ""
        window.HolderFrame.Title.Text = getText(options) or "Fire Library | "..versions.FireLibraryVersion
        window.Visible = true
        window.Position = UDim2.fromScale(0.5, 0.5)
        window.HolderFrame.StarterFade.Visible = true
        window.Size = UDim2.fromScale(0,0)
        local maximize = script.Parent.Holder.MobileMaximize:Clone()
        maximize.Parent = script.Parent.Holder
        maximize.Name = ""
        maximize.Visible = isMobile
        
        local objs = Instance.new("Folder", window)
        for i,v in window.HolderFrame.PageDisplay.Page:GetChildren() do
            if v and (v:IsA("TextButton") or v:IsA("Frame")) and v.Name ~= "Frame" then
                v.Parent = objs
            end
        end
        
        objs.Name = "UIElements"
        
        local keybinds = script.Parent.LeftHolder.Keybinds:Clone()
        keybinds.Parent = script.Parent.LeftHolder
        keybinds.Visible = false
        keybinds.Name = ""

        local function makeDraggable(gui)
            local dragging, dragStart, startPos, delta

            cons[#cons+1] = gui.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    dragStart = input.Position
                    startPos = gui.Position

                    cons[#cons+1] = input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end)
                end
            end)

            cons[#cons+1] = gui.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                    dragInput = input
                end
            end)

            cons[#cons+1] = game:GetService("UserInputService").InputChanged:Connect(function(input)
                if input == dragInput and dragging then
                    update(input, gui, dragStart, startPos)
                end
            end)
        end

        makeDraggable(maximize.DragButton)
        makeDraggable(window)
        makeDraggable(keybinds)
        
        local binds = {}

        local themeColorPickers = {}
        local function getColorOffset(a,b)
            return Color3.new(math.clamp(a.R - b.R, 0, 1),math.clamp(a.G - b.G, 0, 1),math.clamp(a.B - b.B, 0, 1))
        end
        local function setColorOffset(a,b)
            return Color3.new(math.clamp(a.R + b.R, 0, 1),math.clamp(a.G + b.G, 0, 1),math.clamp(a.B + b.B, 0, 1))
        end

        local colors = {
            ["Main"] = {
                Color = window.BackgroundColor3,
                Default = window.BackgroundColor3,

                Instances = {}
            },
            ["Back"] = {
                Color = window.HolderFrame.BackgroundColor3,
                Default = window.HolderFrame.BackgroundColor3,

                Instances = {}
            },
            ["Text"] = {
                Color = objs.Label.Text.TextColor3,
                Default = objs.Label.Text.TextColor3,

                Instances = {}
            }
        }

        local function setColor(v)
            if v.Instance then
                v.Instance[v.Property] = setColorOffset(colors[v.Class].Color, v.Offset)
            end
        end
        local function addClass(class, prop, instance, setCol)
            local tbl = {Class = class, Property = prop, Instance = instance, Default = instance[prop], Offset = getColorOffset(instance[prop], colors[class].Default)}
            table.insert(colors[class].Instances, tbl)
            if setCol == nil or setCol then
                setColor(tbl)
            end
            return tbl
        end

        addClass("Main", "BackgroundColor3", script.Parent.Notification.ChooseNotificationHolder.NotificationColored)
        addClass("Main", "BackgroundColor3", script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Bar)
        addClass("Main", "BackgroundColor3", script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Bar.Fill)
        addClass("Main", "BackgroundColor3", script.Parent.Notification.NotificationHolder.NotificationColored)
        addClass("Main", "BackgroundColor3", script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain.Bar)
        addClass("Main", "BackgroundColor3", script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain.Bar.Fill)
        addClass("Main", "BackgroundColor3", window)
        addClass("Main", "ImageColor3", window.HolderFrame.KeySystem.Copy.ToggleOuter.Frame.ImageLabel)
        addClass("Main", "ImageColor3", window.HolderFrame.KeySystem.Redeem.ToggleOuter.Frame.ImageLabel)
        addClass("Main", "ImageColor3", window.HolderFrame.KeySystem.CloseUI.ToggleOuter.Frame.ImageLabel)
        addClass("Main", "BackgroundColor3", keybinds)

        addClass("Back", "BackgroundColor3", script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain)
        addClass("Back", "BackgroundColor3", script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Separator)
        addClass("Back", "BackgroundColor3", script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain)
        addClass("Back", "BackgroundColor3", script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain.Separator)
        addClass("Back", "BackgroundColor3", window.HolderFrame)
        addClass("Back", "BackgroundColor3", window.HolderFrame.KeySystem)
        addClass("Back", "BackgroundColor3", window.HolderFrame.Separator)
        addClass("Back", "BackgroundColor3", window.HolderFrame.StarterFade)
        addClass("Back", "BackgroundColor3", window.HolderFrame.StarterFade)
        addClass("Back", "BackgroundColor3", window.HolderFrame.KeySystem.Copy.ToggleOuter)
        addClass("Back", "BackgroundColor3", window.HolderFrame.KeySystem.Copy.ToggleOuter.Frame)
        addClass("Back", "BackgroundColor3", window.HolderFrame.KeySystem.Redeem.ToggleOuter)
        addClass("Back", "BackgroundColor3", window.HolderFrame.KeySystem.Redeem.ToggleOuter.Frame)
        addClass("Back", "BackgroundColor3", window.HolderFrame.KeySystem.CloseUI.ToggleOuter)
        addClass("Back", "BackgroundColor3", window.HolderFrame.KeySystem.CloseUI.ToggleOuter.Frame)
        addClass("Back", "BackgroundColor3", window.HolderFrame.KeySystem.TextBox.TextBoxOuter)
        addClass("Back", "BackgroundColor3", window.HolderFrame.KeySystem.TextBox.TextBoxOuter.TextBoxBackground)
        addClass("Back", "BackgroundColor3", keybinds.HolderFrame)
        addClass("Back", "BackgroundColor3", keybinds.HolderFrame.Separator)

        addClass("Text", "TextColor3", script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain.Title)
        addClass("Text", "TextColor3", script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain.Lines["1"])
        addClass("Text", "TextColor3", script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Title)
        addClass("Text", "TextColor3", script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Lines["1"])
        addClass("Text", "ImageColor3", script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.No)
        addClass("Text", "ImageColor3", script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Yes)
        addClass("Text", "TextColor3", window.HolderFrame.Title)
        addClass("Text", "TextColor3", window.HolderFrame.KeySystem.Copy:FindFirstChild("Text"))
        addClass("Text", "TextColor3", window.HolderFrame.KeySystem.Redeem:FindFirstChild("Text"))
        addClass("Text", "TextColor3", window.HolderFrame.KeySystem.CloseUI:FindFirstChild("Text"))
        addClass("Text", "TextColor3", window.HolderFrame.KeySystem.Label.Text)
        addClass("Text", "TextColor3", window.HolderFrame.KeySystem.TextBox.TextBoxOuter.TextBox)
        addClass("Text", "TextColor3", window.HolderFrame.KeySystem.TextBox:FindFirstChild("Text"))
        addClass("Text", "PlaceholderColor3", window.HolderFrame.KeySystem.TextBox.TextBoxOuter.TextBox, false)
        addClass("Text", "TextColor3", keybinds.HolderFrame.Title)

        local cd = false
        local windowFuncs; windowFuncs = {
            ThemeColors = setmetatable({}, {
                __newindex = function(self, name, newVal)
                    if colors[name:gsub("WTF", "")..""] and typeof(newVal) == "Color3" then
                        coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                        colors[name:gsub("WTF", "")..""].Color = newVal
                        if not name:match("WTF") and themeColorPickers[name:gsub("WTF", "")..""] then
                            themeColorPickers[name:gsub("WTF", "")..""]:Set(newVal)
                        end
                        for i,v in colors[name:gsub("WTF", "")..""].Instances do
                            pcall(setColor, v)
                        end
                    end
                end,
                __index = function(self, name)
                    if colors[name] then
                        return colors[name].Color
                    end
                end,
            }),
            Opened = true,
            Close = function(self)
                coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                task.spawn(function()
                    while cd and task.wait() do end
                    self.Opened = false
                    self:Hide()
                    binds = {}
                    coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                    task.wait(fadeTime + 0.01)
                    window:Destroy()
                    task.wait(0.5)
                    keybinds:Destroy()
                end)
            end,
            Show = function(self)
                coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                task.spawn(function()
                    while cd and task.wait() do end
                    cd = true
                    maximize.Visible = isMobile
                    window.Visible = true
                    game:GetService("TweenService"):Create(window, TweenInfo.new(fadeTime / 2.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = size}):Play()
                    game:GetService("TweenService"):Create(window.HolderFrame.StarterFade, TweenInfo.new(fadeTime, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                    task.wait(fadeTime / 2.5)
                    coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                    task.wait(fadeTime - (fadeTime / 2.5) + 0.01)
                    coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                    cd = false
                    window.HolderFrame.StarterFade.ZIndex -= 1000
                    window.HolderFrame.StarterFade.Visible = false
                end)
                return true
            end,
            Toggle = function(self, state)
                coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
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
                coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                task.spawn(function()
                    while cd and task.wait() do end
                    cd = true
                    maximize.Visible = isMobile
                    window.HolderFrame.StarterFade.Visible = true
                    window.HolderFrame.StarterFade.ZIndex += 1000
                    game:GetService("TweenService"):Create(window, TweenInfo.new(fadeTime, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Size = UDim2.fromScale(0,0)}):Play()
                    game:GetService("TweenService"):Create(window.HolderFrame.StarterFade, TweenInfo.new(fadeTime / 2.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                    task.wait(fadeTime / 2.5)
                    coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                    task.wait(fadeTime - (fadeTime / 2.5) + 0.01)
                    coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
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

                --addClass("Back", "BackgroundColor3", pageButton)
                addClass("Main", "BackgroundColor3", pageButton.Selection)
                addClass("Text", "TextColor3", pageButton.Text)

                pageButton:FindFirstChild("Text").Text = text
                cons[#cons+1] = pageButton.Trigger.MouseEnter:Connect(function()
                    playSound("MouseHover")
                end)
                pageButton.Size = UDim2.fromScale((#pageButton:FindFirstChild("Text").Text / 55) + 0.05, 1)
                local page = window.HolderFrame.PageDisplay.Page:Clone()
                addClass("Main", "ScrollBarImageColor3", page)
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
                        task.wait()
                        page.Frame.Visible = false
                    end
                end)

                task.spawn(function()
                    while window and window.Parent and task.wait() do -- that shit is created cuz of mobile execs: there's a roblox bug with AutomaticCanvasSize
                        page.Frame.Visible = true
                        page.Frame.Size = UDim2.new(math.random(0, 100)/100, 0, 0, 1)
                    end
                end)

                windowFuncs.Tabs[counterTextPage] = {}

                local currentGroupbox

                local pageFuncs; pageFuncs = {
                    AddLeftGroupbox = function(self, options)
                        if isMobile then
                            return pageFuncs
                        end

                        options = getOptions(options)
                        local text = getText(options) or "Left Groupbox"

                        if not currentGroupbox or currentGroupbox.LeftGroupboxHolder.Visible then
                            currentGroupbox = objs.GroupboxZone:Clone()
                            currentGroupbox.Parent = page
                            currentGroupbox.Name = ""
                            currentGroupbox.Visible = true
                            currentGroupbox.LeftGroupboxHolder.Visible = false
                            currentGroupbox.RightGroupboxHolder.Visible = false
                        end

                        local gp = currentGroupbox.LeftGroupboxHolder
                        gp.Visible = true

                        addClass("Back", "BackgroundColor3", gp.Display)
                        addClass("Main", "BackgroundColor3", gp.Display.TopNeon)
                        addClass("Text", "TextColor3", gp.Display.Title)

                        local function updateSize()
                            local gp = gp.Parent

                            local ch1 = gp.RightGroupboxHolder.Display.ContentHolder:GetChildren()
                            local ch2 = gp.LeftGroupboxHolder.Display.ContentHolder:GetChildren()

                            local max = math.max(#ch1, #ch2)
                            gp.Size = UDim2.fromScale(1, max/10)

                            for i,v in ch1 do
                                if v:IsA("Frame") then
                                    v.Size = UDim2.fromScale(1, 1 / (max - 1))
                                end
                            end
                            for i,v in ch2 do
                                if v:IsA("Frame") then
                                    v.Size = UDim2.fromScale(1, 1 / (max - 1))
                                end
                            end
                        end

                        local funcs = {}
                        for i,v in pageFuncs do
                            if typeof(v) == "function" and i:sub(1, 3) == "Add" and not i:match("Groupbox") then
                                funcs[i] = function(...)
                                    local obj = v(...)
                                    if obj.Object then
                                        obj.Object.Parent = gp.Display.ContentHolder
                                        for idx,val in obj.Object:GetChildren() do
                                            if val and val.Name:match("Separator") then
                                                val:Destroy()
                                            end
                                        end

                                        updateSize()

                                        local myChange = false
                                        obj.Object:GetPropertyChangedSignal("Size"):Connect(function()
                                            if not myChange then
                                                myChange = true
                                                updateSize()
                                                task.wait()
                                                myChange = false
                                            end
                                        end)
                                    end

                                    return obj
                                end

                                funcs[i:gsub("Add", "Create")] = funcs[i]
                                funcs[i:gsub("Add", "")] = funcs[i]
                            end
                        end

                        funcs.Object = gp

                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object.Display.Title.Text = tostring(txt)
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

                        funcs:SetText(text)

                        return funcs
                    end,
                    AddRightGroupbox = function(self, options)
                        if isMobile then
                            return pageFuncs
                        end

                        options = getOptions(options)
                        local text = getText(options) or "Right Groupbox"

                        if not currentGroupbox or currentGroupbox.RightGroupboxHolder.Visible then
                            currentGroupbox = objs.GroupboxZone:Clone()
                            currentGroupbox.Parent = page
                            currentGroupbox.Name = ""
                            currentGroupbox.Visible = true
                            currentGroupbox.LeftGroupboxHolder.Visible = false
                            currentGroupbox.RightGroupboxHolder.Visible = false
                        end

                        local gp = currentGroupbox.RightGroupboxHolder
                        gp.Visible = true

                        addClass("Back", "BackgroundColor3", gp.Display)
                        addClass("Main", "BackgroundColor3", gp.Display.TopNeon)
                        addClass("Text", "TextColor3", gp.Display.Title)

                        local function updateSize()
                            local gp = gp.Parent

                            local ch1 = gp.RightGroupboxHolder.Display.ContentHolder:GetChildren()
                            local ch2 = gp.LeftGroupboxHolder.Display.ContentHolder:GetChildren()

                            local max = math.max(#ch1, #ch2)
                            gp.Size = UDim2.fromScale(1, max/10)

                            for i,v in ch1 do
                                if v:IsA("Frame") then
                                    v.Size = UDim2.fromScale(1, 1 / (max - 1))
                                end
                            end
                            for i,v in ch2 do
                                if v:IsA("Frame") then
                                    v.Size = UDim2.fromScale(1, 1 / (max - 1))
                                end
                            end
                        end

                        local funcs = {}
                        for i,v in pageFuncs do
                            if typeof(v) == "function" and i:sub(1, 3) == "Add" and not i:match("Groupbox") then
                                funcs[i] = function(...)
                                    local obj = v(...)
                                    if obj.Object then
                                        obj.Object.Parent = gp.Display.ContentHolder
                                        for idx,val in obj.Object:GetChildren() do
                                            if val and val.Name:match("Separator") then
                                                val:Destroy()
                                            end
                                        end

                                        updateSize()

                                        local myChange = false
                                        obj.Object:GetPropertyChangedSignal("Size"):Connect(function()
                                            if not myChange then
                                                myChange = true
                                                updateSize()
                                                task.wait()
                                                myChange = false
                                            end
                                        end)
                                    end

                                    return obj
                                end

                                funcs[i:gsub("Add", "Create")] = funcs[i]
                                funcs[i:gsub("Add", "")] = funcs[i]
                            end
                        end

                        funcs.Object = gp

                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object.Display.Title.Text = tostring(txt)
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

                        funcs:SetText(text)

                        return funcs
                    end,
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
                        --[[elseif options.Min == options.Max then
                            local cb = options.Callback
                            options.Callback = function()
                                cb(options.Min)
                            end
                            return self:AddButton(options)]]
                        end
                        local funcs = {Options = options}
                        options.Step = tonumber(options.Step) or tonumber(options.Per) or (options.Max - options.Min) / 25
                        options.Default = tonumber(options.Default) or tonumber(options.Base) or options.Min
                        local cb = options.Callback

                        --

                        local slider = objs.Slider:Clone()
                        slider.Parent = page
                        slider.Name = ""
                        slider.Visible = true
                        slider:FindFirstChild("Text").Text = text
                        funcs.Object = slider

                        addClass("Back", "BackgroundColor3", slider.SliderOuter)
                        addClass("Back", "BackgroundColor3", slider.SliderOuter.Bar)
                        addClass("Main", "BackgroundColor3", slider.SliderOuter.Bar.Fill)
                        addClass("Text", "TextColor3", slider.SliderOuter.Bar.Progress)
                        addClass("Back", "BackgroundColor3", slider.Separator)
                        addClass("Back", "BackgroundColor3", slider.Separator2)

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

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
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
                                struct[counterText] = newVal
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

                        cons[#cons+1] = configEvent.Event:Connect(function(config)
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
                        local sep = objs.Separator:Clone()
                        sep.Parent = page
                        sep.Visible = true
                        sep.Name = ""

                        addClass("Back", "BackgroundColor3", sep.Separator)

                        local funcs = {}
                        funcs.Object = sep

                        windowFuncs.Tabs[counterTextPage][count(getText({Text = "Separator"}), 2)] = funcs
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

                        return funcs
                    end,
                    AddButton = function(self, options)
                        options = getOptions(options)

                        local button = objs.Button:Clone()
                        button.Parent = page
                        button.Visible = true
                        button.Name = ""
                        button:FindFirstChild("Text").Text = getText(options) or "Button"
                        local counterText = count(text, 2)

                        local focused = false
                        local keybind = typeof(options.Keybind) == "EnumItem" and options.Keybind or typeof(options.Keybind) == "string" and Enum.KeyCode:FromName(options.Keybind) or typeof(options.Keybind) == "number" and Enum.KeyCode:FromValue(options.Keybind) or nil
                        local con, inpt = nil, keybind
                        local bind = {button.Text.Text, keybind, false}
                        
                        local cb = function()
                            struct[counterText.."_Keybind"] = bind[2] and bind[2].Value or nil
                            coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                            getCallback(options)()
                        end
                        cons[#cons+1] = button.Trigger.MouseEnter:Connect(function()
                            playSound("MouseHover")
                        end)
                        cons[#cons+1] = button.Trigger.MouseButton1Click:Connect(function()
                            playSound("Click")
                            coroutineCall(cb)()
                            bind[3] = true
                            updateFloatingKeybinds(keybinds, binds, colors)
                            task.wait(0.1)
                            bind[3] = false
                            updateFloatingKeybinds(keybinds, binds, colors)
                        end)
                        
                        local allowKeybinds = typeof(options.AllowKeybinds) == "boolean" and options.AllowKeybins or typeof(options.Keybinds) == "boolean" and options.Keybinds or typeof(options.AllowKeybinds) ~= "boolean" and typeof(options.Keybinds) ~= "boolean" and true

                        button.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"

                        button.Trigger.Size = (isMobile or not allowKeybinds) and UDim2.fromScale(1, 1) or UDim2.fromScale(0.7, 1)
                        button.KeybindTrigger.Visible = not (isMobile or not allowKeybinds)
                        button.InputOuter.Visible = button.KeybindTrigger.Visible
                        
                        if allowKeybinds then
                            binds[#binds+1] = bind

                            cons[#cons+1] = game:GetService("UserInputService").InputBegan:Connect(function(input, chat)
                                if chat or input.KeyCode ~= inpt or focused then return end

                                bind[3] = true

                                playSound("Click")
                                cb()
                            end)
                            cons[#cons+1] = game:GetService("UserInputService").InputEnded:Connect(function(input, chat)
                                if chat or input.KeyCode ~= inpt or focused then return end

                                bind[3] = false

                                updateFloatingKeybinds(keybinds, binds, colors)
                            end)
                            
                            cons[#cons+1] = button.KeybindTrigger.MouseEnter:Connect(function()
                                playSound("MouseHover")
                            end)
                            cons[#cons+1] = button.KeybindTrigger.MouseButton1Click:Connect(function()
                                playSound("Click")
                                focused = not focused
                                button.InputOuter.Frame.Input.Text = "..."
                                if focused then
                                    con = game:GetService("UserInputService").InputBegan:Connect(function(s, chat)
                                        if chat or table.find(blockedCodes, s.KeyCode) then return end
                                        focused = false
                                        con:Disconnect()
                                        con = nil
                                        inpt = nil
                                        game:GetService("RunService").RenderStepped:Wait()
                                        inpt = s.KeyCode
                                        bind[2] = inpt
                                        button.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"
                                        updateFloatingKeybinds(keybinds, binds, colors)
                                    end)

                                    cons[#cons+1] = con
                                else
                                    inpt = nil
                                    game:GetService("RunService").RenderStepped:Wait()
                                    inpt = nil
                                    bind[2] = inpt
                                    button.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"
                                    if con then
                                        con:Disconnect()
                                        con = nil
                                    end
                                    updateFloatingKeybinds(keybinds, binds, colors)
                                end
                            end)
                        end
                        
                        local funcs = {}
                        funcs.Object = button

                        addClass("Back", "BackgroundColor3", button.Separator2)
                        addClass("Back", "BackgroundColor3", button.Separator)
                        addClass("Back", "BackgroundColor3", button.ButtonOuter)
                        addClass("Back", "BackgroundColor3", button.ButtonOuter.Frame)
                        addClass("Main", "ImageColor3", button.ButtonOuter.Frame.ImageLabel)
                        addClass("Text", "TextColor3", button:FindFirstChild("Text"))

                        addClass("Back", "BackgroundColor3", button.InputOuter)
                        addClass("Back", "BackgroundColor3", button.InputOuter.Frame)
                        addClass("Main", "TextColor3", button.InputOuter.Frame.Input)

                        windowFuncs.Tabs[counterTextPage][count(getText(options) or "Object", 2)] = funcs
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
                            self.Options.Callback = function()
                                return cb()
                            end
                            self.Options.CB = self.Options.Callback
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                            bind[1] = tostring(txt)
                        end

                        cons[#cons+1] = configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                --val = val[counterText]
                                local keybind = val[counterText.."_Keybind"]
                                if keybind then
                                    inpt = nil
                                    game:GetService("RunService").RenderStepped:Wait()
                                    bind[2] = Enum.KeyCode:FromValue(keybind)
                                    inpt = bind[2]
                                    coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                                end
                            end
                        end)

                        return funcs
                    end,
                    AddHoldableButton = function(self, options)
                        options = getOptions(options)

                        local button = objs.Button:Clone()
                        button.Parent = page
                        button.Visible = true
                        button.Name = ""
                        button:FindFirstChild("Text").Text = getText(options) or "Button"
                        local counterText = count(text, 2)

                        local focused = false
                        local keybind = typeof(options.Keybind) == "EnumItem" and options.Keybind or typeof(options.Keybind) == "string" and Enum.KeyCode:FromName(options.Keybind) or typeof(options.Keybind) == "number" and Enum.KeyCode:FromValue(options.Keybind) or nil
                        local con, inpt = nil, keybind
                        local bind = {button.Text.Text, keybind, false}

                        local cb = function(b)
                            struct[counterText.."_Keybind"] = bind[2] and bind[2].Value or nil
                            coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                            getCallback(options)(b)
                        end
                        cons[#cons+1] = button.Trigger.MouseEnter:Connect(function()
                            playSound("MouseHover")
                        end)
                        cons[#cons+1] = button.Trigger.MouseButton1Down:Connect(function()
                            bind[3] = true
                            playSound("Click")
                            cb(true)
                        end)
                        cons[#cons+1] = button.Trigger.MouseButton1Up:Connect(function()
                            bind[3] = false
                            playSound("Click")
                            cb(false)
                        end)

                        local allowKeybinds = typeof(options.AllowKeybinds) == "boolean" and options.AllowKeybins or typeof(options.Keybinds) == "boolean" and options.Keybinds or typeof(options.AllowKeybinds) ~= "boolean" and typeof(options.Keybinds) ~= "boolean" and true

                        button.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"

                        button.Trigger.Size = (isMobile or not allowKeybinds) and UDim2.fromScale(1, 1) or UDim2.fromScale(0.7, 1)
                        button.KeybindTrigger.Visible = not (isMobile or not allowKeybinds)
                        button.InputOuter.Visible = button.KeybindTrigger.Visible

                        if allowKeybinds then
                            binds[#binds+1] = bind

                            cons[#cons+1] = game:GetService("UserInputService").InputBegan:Connect(function(input, chat)
                                if chat or input.KeyCode ~= inpt or focused then return end

                                bind[3] = true

                                playSound("Click")
                                cb(true)
                            end)
                            cons[#cons+1] = game:GetService("UserInputService").InputEnded:Connect(function(input, chat)
                                if chat or input.KeyCode ~= inpt or focused then return end

                                bind[3] = false

                                playSound("Click")
                                cb(false)
                            end)

                            cons[#cons+1] = button.KeybindTrigger.MouseEnter:Connect(function()
                                playSound("MouseHover")
                            end)
                            cons[#cons+1] = button.KeybindTrigger.MouseButton1Click:Connect(function()
                                playSound("Click")
                                focused = not focused
                                button.InputOuter.Frame.Input.Text = "..."
                                if focused then
                                    con = game:GetService("UserInputService").InputBegan:Connect(function(s, chat)
                                        if chat or table.find(blockedCodes, s.KeyCode) then return end
                                        focused = false
                                        con:Disconnect()
                                        con = nil
                                        inpt = nil
                                        game:GetService("RunService").RenderStepped:Wait()
                                        inpt = s.KeyCode
                                        bind[2] = inpt
                                        button.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"
                                        updateFloatingKeybinds(keybinds, binds, colors)
                                    end)

                                    cons[#cons+1] = con
                                else
                                    inpt = nil
                                    game:GetService("RunService").RenderStepped:Wait()
                                    inpt = nil
                                    bind[2] = inpt
                                    button.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"
                                    if con then
                                        con:Disconnect()
                                        con = nil
                                    end
                                    updateFloatingKeybinds(keybinds, binds, colors)
                                end
                            end)
                        end

                        local funcs = {}
                        funcs.Object = button

                        addClass("Back", "BackgroundColor3", button.Separator2)
                        addClass("Back", "BackgroundColor3", button.Separator)
                        addClass("Back", "BackgroundColor3", button.ButtonOuter)
                        addClass("Back", "BackgroundColor3", button.ButtonOuter.Frame)
                        addClass("Main", "ImageColor3", button.ButtonOuter.Frame.ImageLabel)
                        addClass("Text", "TextColor3", button:FindFirstChild("Text"))

                        addClass("Back", "BackgroundColor3", button.InputOuter)
                        addClass("Back", "BackgroundColor3", button.InputOuter.Frame)
                        addClass("Main", "TextColor3", button.InputOuter.Frame.Input)

                        windowFuncs.Tabs[counterTextPage][count(getText(options) or "Object", 2)] = funcs
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
                            self.Options.Callback = function(b)
                                return cb(b)
                            end
                            self.Options.CB = self.Options.Callback
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                            bind[1] = tostring(txt)
                        end

                        cons[#cons+1] = configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                --val = val[counterText]
                                local keybind = val[counterText.."_Keybind"]
                                if keybind then
                                    inpt = nil
                                    game:GetService("RunService").RenderStepped:Wait()
                                    bind[2] = Enum.KeyCode:FromValue(keybind)
                                    inpt = bind[2]
                                    coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                                end
                            end
                        end)

                        return funcs
                    end,
                    AddToggle = function(self, options)
                        options = getOptions(options)

                        local state = typeof(options.Default) == "boolean" and options.Default or typeof(options.Base) == "boolean" and options.Base or false
                        local toggle = objs.Toggle:Clone()
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
                        
                        local allowKeybinds = typeof(options.AllowKeybinds) == "boolean" and options.AllowKeybins or typeof(options.Keybinds) == "boolean" and options.Keybinds or typeof(options.AllowKeybinds) ~= "boolean" and typeof(options.Keybinds) ~= "boolean" and true
                        
                        local focused = false
                        local keybind = typeof(options.Keybind) == "EnumItem" and options.Keybind or typeof(options.Keybind) == "string" and Enum.KeyCode:FromName(options.Keybind) or typeof(options.Keybind) == "number" and Enum.KeyCode:FromValue(options.Keybind) or nil
                        local con, inpt = nil, keybind
                        
                        toggle.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"

                        toggle.Trigger.Size = (isMobile or not allowKeybinds) and UDim2.fromScale(1, 1) or UDim2.fromScale(0.7, 1)
                        toggle.KeybindTrigger.Visible = not (isMobile or not allowKeybinds)
                        toggle.InputOuter.Visible = toggle.KeybindTrigger.Visible

                        local bind = {toggle.Text.Text, keybind, state}
                        local cb = function(bool)
                            funcs.Value = bool
                            state = bool
                            toggle.ToggleOuter.Frame.ImageHolder.Visible = bool
                            struct[counterText] = bool
                            struct[counterText.."_Keybind"] = bind[2] and bind[2].Value or nil
                            bind[3] = bool
                            coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                            getCallback(options)(bool)
                        end
                        
                        if allowKeybinds then
                            binds[#binds+1] = bind

                            cons[#cons+1] = game:GetService("UserInputService").InputBegan:Connect(function(input, chat)
                                if chat or input.KeyCode ~= inpt or focused then return end

                                state = not state
                                bind[3] = state

                                playSound("Click")
                                cb(state)
                            end)

                            cons[#cons+1] = toggle.KeybindTrigger.MouseEnter:Connect(function()
                                playSound("MouseHover")
                            end)
                            cons[#cons+1] = toggle.KeybindTrigger.MouseButton1Click:Connect(function()
                                playSound("Click")
                                focused = not focused
                                toggle.InputOuter.Frame.Input.Text = "..."
                                if focused then
                                    con = game:GetService("UserInputService").InputBegan:Connect(function(s, chat)
                                        if chat or table.find(blockedCodes, s.KeyCode) then return end
                                        focused = false
                                        con:Disconnect()
                                        con = nil
                                        inpt = nil
                                        game:GetService("RunService").RenderStepped:Wait()
                                        inpt = s.KeyCode
                                        bind[2] = inpt
                                        toggle.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"
                                        updateFloatingKeybinds(keybinds, binds, colors)
                                    end)

                                    cons[#cons+1] = con
                                else
                                    inpt = nil
                                    game:GetService("RunService").RenderStepped:Wait()
                                    inpt = nil
                                    bind[2] = inpt
                                    toggle.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"
                                    if con then
                                        con:Disconnect()
                                        con = nil
                                    end
                                    updateFloatingKeybinds(keybinds, binds, colors)
                                end
                            end)
                        end
                        
                        coroutineCall(cb)(state)
                        options.CB = cb
                        toggle.ToggleOuter.Frame.ImageHolder.Visible = state
                        cons[#cons+1] = toggle.Trigger.MouseButton1Click:Connect(function()
                            playSound("Click")
                            state = not state
                            cb(state)
                        end)

                        funcs.Object = toggle

                        addClass("Back", "BackgroundColor3", toggle.Separator2)
                        addClass("Back", "BackgroundColor3", toggle.Separator)
                        addClass("Back", "BackgroundColor3", toggle.ToggleOuter)
                        addClass("Back", "BackgroundColor3", toggle.ToggleOuter.Frame)
                        addClass("Main", "BackgroundColor3", toggle.ToggleOuter.Frame.ImageHolder)
                        addClass("Main", "ImageColor3", toggle.ToggleOuter.Frame.ImageHolder.ImageLabel)
                        addClass("Text", "TextColor3", toggle:FindFirstChild("Text"))

                        addClass("Back", "BackgroundColor3", toggle.InputOuter)
                        addClass("Back", "BackgroundColor3", toggle.InputOuter.Frame)
                        addClass("Main", "TextColor3", toggle.InputOuter.Frame.Input)

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Set(val)
                            if not self or not self.Object then return end
                            self.Object.ToggleOuter.Frame.ImageHolder.Visible = val
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
                                struct[counterText] = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        cons[#cons+1] = configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                local keybind = val[counterText.."_Keybind"]
                                if keybind then
                                    inpt = nil
                                    game:GetService("RunService").RenderStepped:Wait()
                                    bind[2] = Enum.KeyCode:FromValue(keybind)
                                    inpt = bind[2]
                                    coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
                                end
                                
                                val = val[counterText]
                                funcs:Set(val)
                            end
                        end)

                        return funcs
                    end,
                    AddLabel = function(self, options)
                        options = getOptions(options)

                        local label = objs.Label:Clone()
                        label.Parent = page
                        label.Visible = true
                        label.Name = ""
                        label:FindFirstChild("Text").Text = getText(options) or "Label"

                        addClass("Back", "BackgroundColor3", label.Separator2)
                        addClass("Back", "BackgroundColor3", label.Separator)
                        addClass("Text", "TextColor3", label.Text)

                        local funcs = {}
                        funcs.Object = label

                        windowFuncs.Tabs[counterTextPage][count(getText(options) or "Object", 2)] = funcs
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

                        local tb = objs.TextBox:Clone()
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
                        local funcs = {}
                        local function cb(txt)
                            funcs.Value = txt
                            tb.TextBoxOuter.TextBox.Text = txt
                            struct[counterText] = txt
                            getCallback(options)(txt)
                        end
                        coroutineCall(cb)(tb.TextBoxOuter.TextBox.Text)
                        options.CB = cb
                        cons[#cons+1] = tb.TextBoxOuter.TextBox.FocusLost:Connect(function(enter)
                            if (options.Enter or options.NeedEnter or options.NeedsEnter) and enter or not (options.Enter or options.NeedEnter or options.NeedsEnter) then
                                playSound("Click")
                                options.CB(tb.TextBoxOuter.TextBox.Text)
                            end
                        end)

                        funcs.Object = tb
                        funcs.Options = options

                        addClass("Back", "BackgroundColor3", tb.Separator2)
                        addClass("Back", "BackgroundColor3", tb.Separator)
                        addClass("Text", "TextColor3", tb.Text)
                        addClass("Back", "BackgroundColor3", tb.TextBoxOuter)
                        addClass("Back", "BackgroundColor3", tb.TextBoxOuter.TextBoxBackground)
                        addClass("Text", "TextColor3", tb.TextBoxOuter.TextBox)
                        addClass("Text", "PlaceholderColor3", tb.TextBoxOuter.TextBox)

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
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
                            self.Options.CB = function(newVal)
                                funcs.Value = newVal
                                struct[counterText] = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end
                        funcs.SetPlaceholderText = funcs.SetPlaceholder

                        cons[#cons+1] = configEvent.Event:Connect(function(config)
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
                        local funcs = {}
                        local text = getText(options) or "Input"
                        local counterText = count(text, 2)
                        local input = objs.Input:Clone()
                        local function cb(inpt)
                            if typeof(inpt) == "number" then
                                inpt = Enum.KeyCode:FromValue(inpt)
                            elseif typeof(inpt) == "string" then
                                inpt = Enum.KeyCode:FromName(inpt)
                            end
                            funcs.Value = inpt or Enum.KeyCode.Power
                            input.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"
                            struct[counterText] = (inpt or Enum.KeyCode.Power).Value
                            getCallback(options)(inpt or Enum.KeyCode.Power)
                        end
                        options.CB = cb
                        local focused = false
                        local con
                        input.Parent = page
                        input.Visible = not isMobile
                        input.Name = ""
                        input:FindFirstChild("Text").Text = text
                        local inpt = Enum.KeyCode:FromName(options.Default) or Enum.KeyCode:FromValue(options.Default)
                        coroutineCall(cb)(inpt)
                        input.InputOuter.Frame.Input.Text = inpt.Name
                        cons[#cons+1] = input.Trigger.MouseButton1Click:Connect(function()
                            playSound("Click")
                            focused = not focused
                            input.InputOuter.Frame.Input.Text = "..."
                            if focused then
                                con = game:GetService("UserInputService").InputBegan:Connect(function(s, chat)
                                    if chat or table.find(blockedCodes, s.KeyCode) then return end
                                    focused = false
                                    con:Disconnect()
                                    con = nil
                                    inpt = s.KeyCode
                                    options.CB(inpt)
                                end)

                                cons[#cons+1] = con
                            else
                                inpt = nil
                                input.InputOuter.Frame.Input.Text = inpt and inpt.Name or "None"
                                if con then
                                    con:Disconnect()
                                    con = nil
                                end
                                options.CB(inpt)
                            end
                        end)
                        cons[#cons+1] = input.Trigger.MouseEnter:Connect(function()
                            playSound("MouseHover")
                        end)

                        funcs.Object = input

                        addClass("Back", "BackgroundColor3", input.Separator2)
                        addClass("Back", "BackgroundColor3", input.Separator)
                        addClass("Text", "TextColor3", input.Text)
                        addClass("Back", "BackgroundColor3", input.InputOuter)
                        addClass("Back", "BackgroundColor3", input.InputOuter.Frame)
                        addClass("Main", "TextColor3", input.InputOuter.Frame.Input)

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
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
                            self.Options.CB = function(newVal)
                                funcs.Value = newVal
                                struct[counterText] = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        cons[#cons+1] = configEvent.Event:Connect(function(config)
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
                        options = getOptions(options)
                        local rows = typeof(options.Items) == "table" and options.Items or typeof(options.Rows) == "table" and options.Rows or typeof(options.Objects) == "table" and options.Objects or {}
                        options.Default = (typeof(options.Default) == "string" or typeof(options.Default) == "number") and options.Default or (typeof(options.Base) == "string" or typeof(options.Base) == "number") and options.Base
                        local text = getText(options) or "Dropdown"
                        local counterText = count(text, 2)

                        local funcs = {}

                        local dd = objs.Dropdown:Clone()
                        dd.Parent = page
                        dd.Visible = true
                        dd.DropdownOuter.ContentHolder.Values.ListButton.Visible = false
                        dd.Name = ""
                        dd:FindFirstChild("Text").Text = text
                        local enabled = false
                        local function cb(v1, ...)
                            funcs.Value = v1
                            struct[counterText] = v1
                            getCallback(options)(v1, ...)
                        end
                        options.CB = cb
                        dd.DropdownOuter.Default.Text = options.Default ~= "" and options.Default or "None"

                        local function update()
                            dd:TweenSize(UDim2.fromScale(1, enabled and 0.4 or 0.1), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0, true)
                            dd.DropdownOuter:TweenSizeAndPosition(enabled and UDim2.new(0.9, -2, 0.85, 0) or UDim2.new(0.9, -2, 0.4, 0), enabled and UDim2.new(0.05, 1, 0.13, -1) or UDim2.new(0.05, 1, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0, true)
                            dd:FindFirstChild("Text"):TweenSizeAndPosition(UDim2.fromScale(0.9, enabled and 0.1 or 0.4), UDim2.fromScale(0.5, enabled and 0.015 or 0.05), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0, true)
                            dd.DropdownOuter.Default.Visible = not enabled
                            dd.DropdownOuter.ContentHolder.Values.Visible = enabled
                            playSound("MouseHover")
                        end

                        local refs = {}
                        local indexRefs = {}

                        local function setSelected(idx, val)
                            local row = indexRefs[idx]
                            if not row then return error("Unable to set value", 0) end
                            if val then
                                coroutineCall(options.CB)(idx, typeof(val) == "boolean" and rows[idx] or val)
                            end

                            for i,v in refs do
                                if colors[v.Class] then
                                    local found = table.find(colors[v.Class].Instances, v)
                                    if found then
                                        table.remove(colors[v.Class].Instances, found)
                                    end

                                    i.TextColor3 = colors.Text.Color
                                    if i ~= row then
                                        refs[i] = addClass("Text", "TextColor3", i)
                                    end
                                end
                            end

                            row.TextColor3 = colors.Main.Color
                            refs[row] = addClass("Main", "TextColor3", row)

                            dd.DropdownOuter.Default.Text = row.Text
                            enabled = false
                            update()
                        end

                        local function addRow(i, v)
                            i = tonumber(i) or 0
                            v = tostring(v)
                            rows[i] = v

                            local row = dd.DropdownOuter.ContentHolder.Values.ListButton:Clone()
                            indexRefs[i] = row
                            row.Parent = dd.DropdownOuter.ContentHolder.Values
                            row.Text = v
                            row.Name = ""
                            row.Visible = true
                            cons[#cons+1] = row.MouseButton1Click:Connect(function()
                                coroutineCall(playSound)("Click")
                                setSelected(i, v)
                            end)
                            cons[#cons+1] = row.MouseEnter:Connect(function()
                                playSound("MouseHover")
                            end)
                            if v == options.Default or i == options.Default then
                                setSelected(i)
                            else
                                refs[row] = addClass("Text", "TextColor3", row)
                            end

                            addClass("Back", "BackgroundColor3", row)
                        end

                        for i,v in rows do
                            addRow(i,v)
                        end

                        cons[#cons+1] = dd.Trigger.MouseButton1Click:Connect(function()
                            coroutineCall(playSound)("Click")
                            enabled = not enabled
                            update()
                        end)
                        cons[#cons+1] = dd.Trigger.MouseEnter:Connect(function()
                            coroutineCall(playSound)("MouseHover")
                        end)

                        funcs.Object = dd

                        addClass("Back", "BackgroundColor3", dd.Separator2)
                        addClass("Back", "BackgroundColor3", dd.Separator)
                        addClass("Text", "TextColor3", dd.Text)
                        addClass("Back", "BackgroundColor3", dd.DropdownOuter)
                        addClass("Back", "BackgroundColor3", dd.DropdownOuter.ContentHolder)
                        addClass("Main", "TextColor3", dd.DropdownOuter.Default)

                        windowFuncs.Tabs[counterTextPage][count(getText(options) or "Object", 2)] = funcs
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
                        function funcs:Expand()
                            if not self or not self.Object then return end
                            enabled = true
                            update()
                        end
                        function funcs:Shrink()
                            if not self or not self.Object then return end
                            enabled = false
                            update()
                        end
                        function funcs:Toggle()
                            if not self or not self.Object then return end
                            enabled = not enabled
                            update()
                        end
                        function funcs:SetRows(newRows)
                            if not self or not self.Object then return end
                            rows = newRows
                            refs = {}
                            indexRefs = {}
                            for i,v in dd.DropdownOuter.ContentHolder.Values:GetChildren() do
                                if v:IsA("TextButton") and v.Visible then
                                    v:Destroy()
                                end
                            end
                            for i,v in rows do
                                addRow(i,v)
                            end
                        end
                        function funcs:Set(idx)
                            if typeof(idx) ~= "number" then
                                idx = table.find(rows, idx) or 1
                            end
                            setSelected(idx, true)
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.CB = function(v1, ...)
                                funcs.Value = v1
                                struct[counterText] = v1
                                return cb(v1, ...)
                            end
                        end

                        cons[#cons+1] = configEvent.Event:Connect(function(config)
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

                        local cp = objs.ColorPicker:Clone()
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
                        local funcs = {}
                        local Rs, Gs, Bs
                        local function cb(col)
                            funcs.Value = col
                            Rs(math.round(col.R * 255))
                            Gs(math.round(col.G * 255))
                            Bs(math.round(col.B * 255))
                            struct[counterText] = {col.R * 255, col.G * 255, col.B * 255}
                            getCallback(options)(col)
                        end
                        coroutineCall(cb)(col)
                        options.CB = cb
                        Rs, Gs, Bs = 
                            setupSlider(cp.RGB.RHolder, nil, {Min = 0, Max = 255, Step = 1, Default = math.round(col.R * 255), Callback = function(v)
                                if v == col.R then return end
                                col = Color3.new(v/255, col.G, col.B)
                                cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                                cp.RGB.RHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.fromRGB(v, 0, 0)
                                options.CB(col)
                            end}),
                        setupSlider(cp.RGB.GHolder, nil, {Min = 0, Max = 255, Step = 1, Default = math.round(col.G * 255), Callback = function(v)
                            if v == col.G then return end
                            col = Color3.new(col.R, v/255, col.B)
                            cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                            cp.RGB.GHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.fromRGB(0, v, 0)
                            options.CB(col)
                        end}),
                        setupSlider(cp.RGB.BHolder, nil, {Min = 0, Max = 255, Step = 1, Default = math.round(col.B * 255), Callback = function(v)
                            if v == col.B then return end
                            col = Color3.new(col.R, col.G, v/255)
                            cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                            cp.RGB.BHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.fromRGB(0, 0, v)
                            options.CB(col)
                        end})

                        funcs.Object = cp
                        funcs.Options = options

                        addClass("Back", "BackgroundColor3", cp.Separator2)
                        addClass("Back", "BackgroundColor3", cp.Separator)
                        addClass("Text", "TextColor3", cp.Text)
                        addClass("Back", "BackgroundColor3", cp.RGB.RHolder.SliderOuter)
                        addClass("Back", "BackgroundColor3", cp.RGB.GHolder.SliderOuter)
                        addClass("Back", "BackgroundColor3", cp.RGB.BHolder.SliderOuter)
                        addClass("Back", "BackgroundColor3", cp.RGB.RHolder.SliderOuter.Bar)
                        addClass("Back", "BackgroundColor3", cp.RGB.GHolder.SliderOuter.Bar)
                        addClass("Back", "BackgroundColor3", cp.RGB.BHolder.SliderOuter.Bar)
                        addClass("Text", "BackgroundColor3", cp.RGB.RHolder.SliderOuter.Bar.Progress)
                        addClass("Text", "BackgroundColor3", cp.RGB.GHolder.SliderOuter.Bar.Progress)
                        addClass("Text", "BackgroundColor3", cp.RGB.BHolder.SliderOuter.Bar.Progress)

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
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
                            self.Options.CB = function(newVal)
                                funcs.Value = newVal
                                struct[counterText] = {newVal.R * 255, newVal.G * 255, newVal.B * 255}
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        cons[#cons+1] = configEvent.Event:Connect(function(config)
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

        windowFuncs.Tabs = windowFuncs.Tabs or {}
        windowFuncs.Pages = windowFuncs.Tabs

        windowFuncs.CreatePage = windowFuncs.AddPage
        windowFuncs.AddTab = windowFuncs.AddPage
        windowFuncs.CreateTab = windowFuncs.AddPage

        windowFuncs.Shutdown = windowFuncs.Close
        windowFuncs.Minimize = windowFuncs.Hide
        windowFuncs.Maximize = windowFuncs.Show

        local tbl = typeof(options.ThemeTable) == "table" and options.ThemeTable or typeof(options.ThemeColors) == "table" and options.ThemeColors or typeof(options.Theme) == "table" and options.Theme
        if tbl then
            for i,v in tbl do
                windowFuncs.ThemeColors[i] = v
            end
        end

        windowFuncs:Show()

        local keySystemFunc = type(options.KeySystemFunction) == "function" and options.KeySystemFunction or type(options.KeySystemFunc) == "function" and options.KeySystemFunc or type(options.KeySystem) == "function" and options.KeySystem or type(options.KeyCheck) == "function" and options.KeyCheck or type(options.Key) == "function" and options.Key
        local keySystemUrl = type(options.KeySystemUrl) == "string" and options.KeySystemUrl or type(options.Url) == "string" and options.Url or type(options.KeyUrl) == "string" and options.KeyUrl
        local newSize = typeof(options.WindowSize) == "UDim2" and options.WindowSize or typeof(options.CustomWindowSize) == "UDim2" and options.CustomWindowSize or typeof(options.Size) == "UDim2" and options.Size or bestDeviceSize

        if keySystemFunc and keySystemUrl then
            size = bestDeviceSize
            
            window.HolderFrame.KeySystem.Visible = true
            window.HolderFrame.PageButtons.Visible = false
            window.HolderFrame.PageDisplay.Visible = false

            local keysys = window.HolderFrame.KeySystem
            local redeemed = false
            local closed = false
            local buzy = false

            keysys.Copy.Trigger.MouseEnter:Connect(function()
                playSound("MouseHover")
            end)
            keysys.Copy.Trigger.MouseButton1Click:Connect(function()
                coroutineCall(playSound)("Click")
                if getfenv().toclipboard or getfenv().setclipboard or getfenv().Clipboard and getfenv().Clipboard.set then
                    (getfenv().toclipboard or getfenv().setclipboard or getfenv().Clipboard and getfenv().Clipboard.set)(keySystemUrl)
                else
                    keysys.TextBox.TextBoxOuter.TextBox.Text = keySystemUrl
                end
            end)
            keysys.CloseUI.Trigger.MouseEnter:Connect(function()
                playSound("MouseHover")
            end)
            keysys.CloseUI.Trigger.MouseButton1Click:Connect(function()
                coroutineCall(playSound)("Click")
                closed = true
                windowFuncs:Close()
            end)
            keysys.Redeem.Trigger.MouseEnter:Connect(function()
                playSound("MouseHover")
            end)
            keysys.Redeem.Trigger.MouseButton1Click:Connect(function()
                coroutineCall(playSound)("Click")
                if buzy then return end
                buzy = true
                if keySystemFunc(keysys.TextBox.TextBoxOuter.TextBox.Text) then
                    window.HolderFrame.StarterFade.Visible = true
                    window.HolderFrame.StarterFade.BackgroundTransparency = 1
                    window.HolderFrame.StarterFade.ZIndex += 1000
                    game:GetService("TweenService"):Create(window.HolderFrame.StarterFade, TweenInfo.new(fadeTime / 2.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                    task.wait((fadeTime / 2.5) + 0.5)
                    redeemed = true
                    size = newSize
                    windowFuncs:Show()
                end
                buzy = false
            end)
            keysys.TextBox.Trigger.MouseEnter:Connect(function()
                playSound("MouseHover")
            end)
            keysys.TextBox.Trigger.MouseButton1Click:Connect(function()
                keysys.TextBox.TextBoxOuter.TextBox:CaptureFocus()
            end)
            keysys.TextBox.TextBoxOuter.TextBox.FocusLost:Connect(function()
                coroutineCall(playSound)("Click")
            end)

            repeat task.wait() until redeemed or closed
            if closed then
                task.wait(9e9)
            end
        end

        size = newSize

        window.HolderFrame.KeySystem.Visible = false
        window.HolderFrame.PageButtons.Visible = true
        window.HolderFrame.PageDisplay.Visible = true

        local page = windowFuncs:AddPage({Title = "Main", Order = 999})
        local toggleKey = Enum.KeyCode.LeftAlt
        page:AddButton({Text = "Hide UI", Callback = function()
            if windowFuncs:Minimize() then
                lib.Notifications:Notification({Title = "UI Hidden", Text = "Press "..toggleKey.Name.." to show the UI"})
            end
        end, Keybinds = false})
        page:AddInput({Text = "Toggle UI Key", Default = toggleKey.Name, Callback = function(kc)
            task.wait()
            toggleKey = kc
        end, IgnoreConfigs = true})
        cons[#cons+1] = game:GetService("UserInputService").InputBegan:Connect(function(input)
            if game:GetService("UserInputService"):GetFocusedTextBox() or input.KeyCode ~= toggleKey then return end
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
        cons[#cons+1] = maximize.DragButton.MouseButton1Click:Connect(function()
            windowFuncs:Toggle()
        end)
        page:AddButton({Text = "Close UI", Callback = function()
            lib.Notifications:ChooseNotification({Title = "Are you sure?", Text = "Are you sure that you want to close\n"..window.HolderFrame.Title.Text.."?", Callback = function(b)
                if b then
                    windowFuncs:Close()
                    closeCallback()
                end
            end})
        end, Keybinds = false})
        page:AddSeparator()
        local execName = "RobloxClient"
        local execVersion = getfenv().version()

        if getfenv().identifyexecutor then
            local s, en, ev = pcall(getfenv().identifyexecutor)
            if s then
                if en then
                    execName = tostring(en)
                    if ev then
                        execVersion = tostring(ev)
                    end
                end
            end
        end

        if getGlobalTable().FireHubLoaded then
            page:AddLabel({Text = "NullFire Version: "..versions.FireHubVersion})
        end
        page:AddLabel({Text = "FireLib Version: "..versions.FireLibraryVersion})
        page:AddLabel({Text = "Executor Name & Version: " .. execName .. "; " .. execVersion})
        page:AddSeparator()
        
        local emulator, realPlatform = false, nil
        local s, platform = pcall(game:GetService("UserInputService").GetPlatform, game:GetService("UserInputService"))
        if s then
            realPlatform = platform
            local isMobilePlatform = table.find({Enum.Platform.IOS, Enum.Platform.Android, Enum.Platform.Ouya, Enum.Platform.AndroidTV}, platform)
            if isMobilePlatform and not isMobile or isMobile and not isMobilePlatform then
                emulator = true
            end
        end
        
        if platform ~= Enum.Platform.Windows and platform ~= Enum.Platform.IOS and platform ~= Enum.Platform.Android then
            platform = not isMobile and Enum.Platform.Windows or Enum.Platform.Android
        end

        page:AddLabel({Text = "Emulation detected: ".. (emulator and "Yes" or "No")})
        page:AddLabel({Text = "Current NullFire version: ".. (isMobile and "Mobile" or "PC")})
        page:AddLabel({Text = "Current platform: ".. (realPlatform or platform).Name})

        page:AddSeparator()
        
        if configsEnabled then
            local function load(got)
                for i,v in got do
                    if typeof(v) == "table" then
                        for idx, val in v do
                            if typeof(val) == "table" then
                                for index, value in val do
                                    if typeof(configStructure[i]) == "table" and typeof(configStructure[i][idx]) == "table" and configStructure[i][idx][index] ~= nil then
                                        configStructure[i][idx][index] = value
                                    end
                                end
                            else
                                configStructure[i][idx] = val
                            end
                        end
                    else
                        configStructure[i] = v
                    end
                end
                configEvent:Fire(got)

                coroutineCall(updateFloatingKeybinds)(keybinds, binds, colors)
            end
            local currentConfig = ""
            page:AddTextBox({Text = "Config name", NeedEnter = false, Callback = function(text)
                currentConfig = text
            end})
            local suffix = ""
            local prefix = ""
            local format = "json"
            local folder = "FireLib_Configs"
            if makefolder then
                makefolder(folder)
                prefix = folder.."\\"
                suffix = "-Config."..format
            else
                suffix = "-FireLib_Config."..format
            end
            suffix = ("-"..game:GetService("HttpService"):UrlEncode(window.HolderFrame.Title.Text)..suffix):gsub("%%", "x")
            page:AddButton({Text = "Save Config", Callback = function()
                local s,got = pcall(readfile,prefix..currentConfig..suffix)
                if s then
                    lib.Notifications:ChooseNotification({Callback = function(b)
                        if b then
                            writefile(prefix..currentConfig..suffix, game:GetService("HttpService"):JSONEncode(configStructure))
                            lib.Notifications:Notification({Title = "Success", Text = "Config \""..currentConfig.."\" has been created!"})
                        end
                    end, Title = "Wait!", Text = "Config called \""..currentConfig.."\" already exist, do you want to rewrite it?"})
                else
                    writefile(prefix..currentConfig..suffix, game:GetService("HttpService"):JSONEncode(configStructure))
                    lib.Notifications:Notification({Title = "Success", Text = "Config \""..currentConfig.."\" has been created!"})
                end
            end})
            page:AddButton({Text = "Load Config", Callback = function()
                local s,got = pcall(readfile,prefix..currentConfig..suffix)
                if not s then
                    return lib.Notifications:Notification({Title = "Uh oh!", Text = "Config called \""..currentConfig.."\" not found!"})
                end
                if got then
                    got = game:GetService("HttpService"):JSONDecode(got)
                end
                load(got)
                lib.Notifications:Notification({Title = "Success", Text = "Config \""..currentConfig.."\" has been loaded!"})
            end})

            local first = true
            local tb = page:AddTextBox({Text = "Auto load config [leave empty to disable]", NeedEnter = false, Default = "", Callback = function(text)
                if first then first = false return end
                writefile("AutoLoad"..suffix..".skibidi", text)
            end, IgnoreConfigs = true})
            local s,e = task.spawn(function()
                for i=1, 3 do
                    game:GetService("RunService").RenderStepped:Wait()
                    task.wait(0.1)
                    game:GetService("RunService").RenderStepped:Wait()
                end
                local s, content = pcall(readfile, "AutoLoad"..suffix..".skibidi")
                
                if s then
                    content = content:gsub("\n", ""):gsub("\r", "")

                    if content:gsub(" ", ""):gsub("\t", "") == "" then return end
                    tb:Set(content)

                    local s,got = pcall(readfile, prefix..content..suffix)
                    if not s then
                        return lib.Notifications:Notification({Title = "Uh oh!", Text = "Config called \""..content.."\" not found!"})
                    end
                    if got then
                        got = game:GetService("HttpService"):JSONDecode(got)
                    end
                    if not got then return end
                    load(got)
                    lib.Notifications:Notification({Title = "Success", Text = "Config \""..content.."\" has been loaded!"})
                end
            end)
        else
            page:AddLabel({Text = execName .. " does not support configs!"})
        end
        
        page:AddSeparator()

        page:AddTextBox({Text = "Window Size [BE CAREFUL WITH IT]", Default = ((math.round(size.X.Scale * 1000) / 1000) .. ", " .. size.X.Offset) .. ", " .. ((math.round(size.Y.Scale * 1000) / 1000) .. ", " .. size.Y.Offset), Callback = function(txt)
            local new = txt:gsub("{", ""):gsub("}", ""):gsub(" ", ""):split(",")
            for i=1, 4 do
                new[i] = tonumber(new[i]) or 0
            end

            new[1] = isMobile and math.clamp(new[1], 0.5, 1.75) or math.clamp(new[1], 0.3, 2)
            new[2] = math.max(new[2], 0)
            new[3] = math.clamp(new[3], isMobile and 0.5 or 0.3, 1)
            new[4] = math.max(new[4], 0)

            size = UDim2.new(new[1], new[2], new[3], new[4])
            windowFuncs:Show()
        end})

        page:AddSeparator()

        page:AddLabel({Text = "Themes"})

        for i,v in colors do
            themeColorPickers[i] = page:AddColorPicker({Text = i, Default = v.Color, Callback = function(col)
                windowFuncs.ThemeColors[i.."WTF"] = col
            end})
        end
        if configsEnabled then
            page:AddSeparator()
            
            local currentConfig = ""
            page:AddTextBox({Text = "Theme name", NeedEnter = false, Callback = function(text)
                currentConfig = text
            end, IgnoreConfigs = true})
            local suffix = ""
            local prefix = ""
            local format = "wave"
            local folder = "FireLib_Themes"
            if makefolder then
                makefolder(folder)
                prefix = folder.."\\"
                suffix = "-Theme."..format
            else
                suffix = "-"..folder.."."..format
            end
            suffix = "-"..suffix
            page:AddButton({Text = "Save Theme", Callback = function()
                local s,got = pcall(readfile,prefix..currentConfig..suffix)
                if s then
                    lib.Notifications:ChooseNotification({Callback = function(b)
                        if b then
                            local colorsT = {}
                            for i,v in colors do
                                colorsT[i] = {R = v.Color.R, G = v.Color.G, B = v.Color.B}
                            end
                            writefile(prefix..currentConfig..suffix, game:GetService("HttpService"):JSONEncode(colorsT))
                            lib.Notifications:Notification({Title = "Success", Text = "Theme \""..currentConfig.."\" has been created!"})
                        end
                    end, Title = "Wait!", Text = "Theme called \""..currentConfig.."\" already exist, do you want to rewrite it?"})
                else
                    local colorsT = {}
                    for i,v in colors do
                        colorsT[i] = {R = v.Color.R, G = v.Color.G, B = v.Color.B}
                    end
                    writefile(prefix..currentConfig..suffix, game:GetService("HttpService"):JSONEncode(colorsT))
                    lib.Notifications:Notification({Title = "Success", Text = "Theme \""..currentConfig.."\" has been created!"})
                end
            end})
            page:AddButton({Text = "Load Theme", Callback = function()
                local s,got = pcall(readfile, prefix..currentConfig..suffix)
                if not s then
                    return lib.Notifications:Notification({Title = "Uh oh!", Text = "Theme called \""..currentConfig.."\" not found!"})
                end
                if got then
                    got = game:GetService("HttpService"):JSONDecode(got)
                end
                if not got then return end
                for i,v in got do
                    windowFuncs.ThemeColors[i] = Color3.new(v.R, v.G, v.B)
                    lib.Notifications:Notification({Title = "Success", Text = "Theme \""..currentConfig.."\" has been loaded!"})
                end
            end})
        end

        local themeRows = {}
        for i,v in themes.Themes do
            themeRows[#themeRows+1] = i
        end

        page:AddSeparator()

        page:AddDropdown({Title = "Themes", Rows = themeRows, Callback = function(_,v)
            for i,v in themes.Themes[v] do
                windowFuncs.ThemeColors[i] = v
            end
        end, IgnoreConfigs = true})

        page:AddLabel({Text = "Back image"})

        local tileMode = false
        local rows = {}
        for i,v in themes.Patterns do
            rows[#rows+1] = i
        end

        local function updAll()
            local str = script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Stripes
            str.ScaleType = window.Stripes.ScaleType
            str.Image = window.Stripes.Image

            local str = script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain.Stripes
            str.ScaleType = window.Stripes.ScaleType
            str.Image = window.Stripes.Image

            local str = script.Parent.Notification.ChooseNotificationHolder.NotificationColored.Stripes
            str.ScaleType = window.Stripes.ScaleType
            str.Image = window.Stripes.Image

            local str = script.Parent.Notification.NotificationHolder.NotificationColored.Stripes
            str.ScaleType = window.Stripes.ScaleType
            str.Image = window.Stripes.Image

            local str = keybinds.Stripes
            str.ScaleType = window.Stripes.ScaleType
            str.Image = window.Stripes.Image

            local str = keybinds.HolderFrame.Stripes
            str.ScaleType = window.Stripes.ScaleType
            str.Image = window.Stripes.Image
        end

        local custom, tile
        local dd = page:AddDropdown({Title = "Background image", Rows = rows, Callback = function(_,v)
            window.Stripes.Image = themes.Patterns[v]
            window.HolderFrame.Stripes.Image = themes.Patterns[v]

            window.Stripes.ScaleType = v == "Custom" and not tileMode and Enum.ScaleType.Fit or Enum.ScaleType.Tile
            window.HolderFrame.Stripes.ScaleType = window.Stripes.ScaleType

            updAll()

            if v == "Custom" then
                custom:Show()
                tile:Show()
            else
                custom:Hide()
                tile:Hide()
            end
        end, Default = "Stripes", IgnoreConfigs = true})

        custom = page:AddTextBox({Title = "Custom image id", Default = "", Callback = function(text)
            if not text:match("rbxassetid") and not text:match("asset/%?id%=") then
                return custom:Set("rbxassetid://"..text)
            end
            themes.Patterns.Custom = text
            window.Stripes.Image = text
            window.HolderFrame.Stripes.Image = text
            
            updAll()
        end, IgnoreConfigs = true})
        tile = page:AddToggle({Title = "Tile mode", Default = false, Callback = function(new)
            tileMode = new

            window.Stripes.ScaleType = tileMode and Enum.ScaleType.Tile or Enum.ScaleType.Fit
            window.HolderFrame.Stripes.ScaleType = window.Stripes.ScaleType
            
            updAll()
        end, IgnoreConfigs = true})

        tile:Hide()
        custom:Hide()

        window.Stripes.ScaleType = Enum.ScaleType.Tile
        window.HolderFrame.Stripes.ScaleType = window.Stripes.ScaleType
        window.Stripes.Image = themes.Patterns.Stripes
        window.HolderFrame.Stripes.Image = themes.Patterns.Stripes
        
        updAll()

        page:AddSeparator()
        page:AddColorPicker({Text = "Outline image color", Default = window.Stripes.ImageColor3, Callback = function(col)
            window.Stripes.ImageColor3 = col
            keybinds.Stripes.ImageColor3 = col
            script.Parent.Notification.ChooseNotificationHolder.NotificationColored.Stripes.ImageColor3 = col
            script.Parent.Notification.NotificationHolder.NotificationColored.Stripes.ImageColor3 = col
        end})
        page:AddColorPicker({Text = "Background image color", Default = window.HolderFrame.Stripes.ImageColor3, Callback = function(col)
            window.HolderFrame.Stripes.ImageColor3 = col
            keybinds.HolderFrame.Stripes.ImageColor3 = col
            script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Stripes.ImageColor3 = col
            script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain.Stripes.ImageColor3 = col
        end})
        page:AddSlider({Text = "Outline image opacity", Default = (1 - window.Stripes.ImageTransparency) * 100, Min = 0, Max = 100, Step = 1, Callback = function(val)
            window.Stripes.ImageTransparency = 1 - (val / 100)
            keybinds.Stripes.ImageTransparency = 1 - (val / 100)
            script.Parent.Notification.ChooseNotificationHolder.NotificationColored.Stripes.ImageTransparency = 1 - (val / 100)
            script.Parent.Notification.NotificationHolder.NotificationColored.Stripes.ImageTransparency = 1 - (val / 100)
        end, CustomTextDisplay = function(i)
            return i .. "%"
        end})
        page:AddSlider({Text = "Background image opacity", Default = (1 - window.HolderFrame.Stripes.ImageTransparency) * 100, Min = 0, Max = 100, Step = 1, Callback = function(val)
            window.HolderFrame.Stripes.ImageTransparency = 1 - (val / 100)
            keybinds.HolderFrame.Stripes.ImageTransparency = 1 - (val / 100)
            script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Stripes.ImageTransparency = 1 - (val / 100)
            script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain.Stripes.ImageTransparency = 1 - (val / 100)
        end, CustomTextDisplay = function(i)
            return i .. "%"
        end})
        
        return windowFuncs
    end,
    IsMobile = isMobile
}

lib.CreateWindow = lib.MakeWindow
lib.AddWindow = lib.MakeWindow
lib.Notifications.Notify = lib.Notifications.Notification
lib.Notifications.SelectNotification = lib.Notifications.ChooseNotification
lib.Notifications.SelectionNotification = lib.Notifications.ChooseNotification

script.Parent.Notification.ChooseNotificationHolder.Visible = false
script.Parent.Notification.NotificationHolder.Visible = false
script.Parent.Enabled = true

local add = 2
if isMobile then
    script.Parent.Notification.ChooseNotificationHolder.NotificationColored.NotificationMain.Lines['1'].TextSize += add
    script.Parent.Notification.NotificationHolder.NotificationColored.NotificationMain.Lines['1'].TextSize += add
    script.Parent.Notification.ChooseNotificationHolder.Size = UDim2.new(1, 0, 0, 125)
    script.Parent.Notification.NotificationHolder.Size = script.Parent.Notification.ChooseNotificationHolder.Size
    script.Parent.Notification.Size = UDim2.new(0, 300, 1, 0)
end

getGlobalTable()._FIRELIB = lib

return lib
    end;
end;

-- YOUR CODE DOWN HERE --

local obj = objects["Instance0"];
return require(objects["Instance218"])
