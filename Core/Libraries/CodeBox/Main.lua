-- Credits to DEX EXPLORER script for syntax highlight!
-- Made by @cherry_peashooter on discord

local themes = table.freeze({
	["Galaxy"] = table.freeze({
		Text = Color3.fromRGB(188, 190, 200),
		Background = Color3.fromRGB(20, 20, 35),
		SelectedText = Color3.fromRGB(200, 200, 255),
		SelectionBack = Color3.fromRGB(80, 80, 120),
		Operator = Color3.fromRGB(180, 180, 255),
		Number = Color3.fromRGB(150, 200, 255),
		String = Color3.fromRGB(150, 120, 180),
		Comment = Color3.fromRGB(100, 100, 130),
		Keyword = Color3.fromRGB(180, 120, 200),
		Error = Color3.fromRGB(255, 0, 0),
		FindBackground = Color3.fromRGB(150, 255, 150),
		MatchingWord = Color3.fromRGB(85, 85, 85),
		BuiltIn = Color3.fromRGB(160, 160, 220),
		CurrentLine = Color3.fromRGB(40, 40, 50),
		LocalMethod = Color3.fromRGB(250, 228, 170),
		LocalProperty = Color3.fromRGB(112, 160, 255),
		Nil = Color3.fromRGB(255, 255, 255),
		Bool = Color3.fromRGB(180, 255, 180),
		Function = Color3.fromRGB(150, 200, 150),
		Local = Color3.fromRGB(160, 160, 220),
		Self = Color3.fromRGB(200, 200, 200),
		FunctionName = Color3.fromRGB(255, 255, 255),
		Bracket = Color3.fromRGB(188, 190, 200),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["VSCode"] = table.freeze({
		Text = Color3.fromRGB(212, 212, 212),
		Background = Color3.fromRGB(31, 31, 31),
		SelectedText = Color3.fromRGB(200, 200, 255),
		SelectionBack = Color3.fromRGB(45, 50, 65),
		Operator = Color3.fromRGB(212, 212, 212),
		Number = Color3.fromRGB(181, 206, 168),
		String = Color3.fromRGB(206, 145, 120),
		Comment = Color3.fromRGB(106, 153, 85),
		Keyword = Color3.fromRGB(170, 104, 176),
		Error = Color3.fromRGB(255, 0, 0),
		FindBackground = Color3.fromRGB(255, 190, 110),
		MatchingWord = Color3.fromRGB(100, 80, 100),
		BuiltIn = Color3.fromRGB(142, 220, 254),
		CurrentLine = Color3.fromRGB(45, 45, 45),
		LocalMethod = Color3.fromRGB(220, 220, 170),
		LocalProperty = Color3.fromRGB(158, 220, 254),
		Nil = Color3.fromRGB(86, 156, 214),
		Bool = Color3.fromRGB(86, 156, 214),
		Function = Color3.fromRGB(170, 104, 176),
		Local = Color3.fromRGB(86, 156, 214),
		Self = Color3.fromRGB(86, 156, 214),
		FunctionName = Color3.fromRGB(220, 220, 170),
		Bracket = Color3.fromRGB(255, 220, 22),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["RobloxStudio"] = table.freeze({
		Text = Color3.fromRGB(188, 190, 200),
		Background = Color3.fromRGB(32, 34, 39),
		SelectedText = Color3.fromRGB(255, 255, 255),
		SelectionBack = Color3.fromRGB(19, 35, 93),
		Operator = Color3.fromRGB(188, 190, 200),
		Number = Color3.fromRGB(242, 186, 42),
		String = Color3.fromRGB(142, 233, 182),
		Comment = Color3.fromRGB(106, 111, 129),
		Keyword = Color3.fromRGB(235, 121, 115),
		Error = Color3.fromRGB(255, 0, 0),
		FindBackground = Color3.fromRGB(151, 108, 0),
		MatchingWord = Color3.fromRGB(73, 77, 90),
		BuiltIn = Color3.fromRGB(143, 180, 255),
		CurrentLine = Color3.fromRGB(53, 55, 65),
		LocalMethod = Color3.fromRGB(250, 228, 170),
		LocalProperty = Color3.fromRGB(112, 160, 255),
		Nil = Color3.fromRGB(242, 186, 42),
		Bool = Color3.fromRGB(242, 186, 42),
		Function = Color3.fromRGB(235, 121, 115),
		Local = Color3.fromRGB(235, 121, 115),
		Self = Color3.fromRGB(235, 121, 115),
		FunctionName = Color3.fromRGB(250, 228, 170),
		Bracket = Color3.fromRGB(188, 190, 200),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["Light"] = table.freeze({
		Text = Color3.fromRGB(20, 15, 26),
		Background = Color3.fromRGB(255, 255, 255),
		SelectedText = Color3.fromRGB(255, 255, 255),
		SelectionBack = Color3.fromRGB(0, 120, 215),
		Operator = Color3.fromRGB(0, 0, 0),
		Number = Color3.fromRGB(0, 0, 255),
		String = Color3.fromRGB(163, 21, 21),
		Comment = Color3.fromRGB(0, 128, 0),
		Keyword = Color3.fromRGB(0, 0, 139),
		Error = Color3.fromRGB(255, 0, 0),
		FindBackground = Color3.fromRGB(255, 255, 0),
		MatchingWord = Color3.fromRGB(200, 200, 200),
		BuiltIn = Color3.fromRGB(0, 0, 139),
		CurrentLine = Color3.fromRGB(245, 245, 245),
		LocalMethod = Color3.fromRGB(139, 69, 19),
		LocalProperty = Color3.fromRGB(139, 69, 19),
		Nil = Color3.fromRGB(128, 0, 128),
		Bool = Color3.fromRGB(128, 0, 128),
		Function = Color3.fromRGB(139, 0, 0),
		Local = Color3.fromRGB(0, 0, 139),
		Self = Color3.fromRGB(0, 0, 139),
		FunctionName = Color3.fromRGB(139, 69, 19),
		Bracket = Color3.fromRGB(0, 0, 0),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["Neon"] = table.freeze({
		Text = Color3.fromRGB(0, 255, 255),
		Background = Color3.fromRGB(0, 0, 0),
		SelectedText = Color3.fromRGB(255, 255, 255),
		SelectionBack = Color3.fromRGB(0, 255, 0),
		Operator = Color3.fromRGB(255, 255, 255),
		Number = Color3.fromRGB(255, 0, 255),
		String = Color3.fromRGB(255, 255, 0),
		Comment = Color3.fromRGB(0, 255, 0),
		Keyword = Color3.fromRGB(255, 0, 0),
		Error = Color3.fromRGB(255, 0, 0),
		FindBackground = Color3.fromRGB(255, 255, 255),
		MatchingWord = Color3.fromRGB(50, 50, 50),
		BuiltIn = Color3.fromRGB(0, 255, 255),
		CurrentLine = Color3.fromRGB(20, 20, 20),
		LocalMethod = Color3.fromRGB(255, 165, 0),
		LocalProperty = Color3.fromRGB(255, 165, 0),
		Nil = Color3.fromRGB(255, 20, 147),
		Bool = Color3.fromRGB(255, 20, 147),
		Function = Color3.fromRGB(255, 255, 0),
		Local = Color3.fromRGB(0, 255, 255),
		Self = Color3.fromRGB(0, 255, 255),
		FunctionName = Color3.fromRGB(255, 165, 0),
		Bracket = Color3.fromRGB(255, 0, 255),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["Monokai"] = table.freeze({
		Text = Color3.fromRGB(248, 248, 242),
		Background = Color3.fromRGB(39, 40, 34),
		SelectedText = Color3.fromRGB(255, 255, 255),
		SelectionBack = Color3.fromRGB(73, 72, 62),
		Operator = Color3.fromRGB(248, 248, 242),
		Number = Color3.fromRGB(255, 121, 198),
		String = Color3.fromRGB(230, 219, 116),
		Comment = Color3.fromRGB(117, 113, 94),
		Keyword = Color3.fromRGB(102, 217, 239),
		Error = Color3.fromRGB(249, 38, 114),
		FindBackground = Color3.fromRGB(255, 184, 108),
		MatchingWord = Color3.fromRGB(85, 85, 85),
		BuiltIn = Color3.fromRGB(166, 226, 46),
		CurrentLine = Color3.fromRGB(62, 61, 50),
		LocalMethod = Color3.fromRGB(253, 151, 31),
		LocalProperty = Color3.fromRGB(253, 151, 31),
		Nil = Color3.fromRGB(102, 217, 239),
		Bool = Color3.fromRGB(102, 217, 239),
		Function = Color3.fromRGB(253, 151, 31),
		Local = Color3.fromRGB(102, 217, 239),
		Self = Color3.fromRGB(102, 217, 239),
		FunctionName = Color3.fromRGB(166, 226, 46),
		Bracket = Color3.fromRGB(248, 248, 242),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["Retro"] = table.freeze({
		Text = Color3.fromRGB(0, 0, 0),
		Background = Color3.fromRGB(255, 253, 208),
		SelectedText = Color3.fromRGB(255, 255, 255),
		SelectionBack = Color3.fromRGB(255, 0, 255),
		Operator = Color3.fromRGB(0, 0, 0),
		Number = Color3.fromRGB(255, 0, 255),
		String = Color3.fromRGB(255, 0, 0),
		Comment = Color3.fromRGB(0, 128, 0),
		Keyword = Color3.fromRGB(0, 0, 255),
		Error = Color3.fromRGB(255, 0, 0),
		FindBackground = Color3.fromRGB(255, 255, 0),
		MatchingWord = Color3.fromRGB(200, 200, 200),
		BuiltIn = Color3.fromRGB(128, 0, 128),
		CurrentLine = Color3.fromRGB(245, 245, 220),
		LocalMethod = Color3.fromRGB(255, 165, 0),
		LocalProperty = Color3.fromRGB(255, 165, 0),
		Nil = Color3.fromRGB(255, 20, 147),
		Bool = Color3.fromRGB(255, 20, 147),
		Function = Color3.fromRGB(0, 128, 0),
		Local = Color3.fromRGB(0, 0, 255),
		Self = Color3.fromRGB(0, 0, 255),
		FunctionName = Color3.fromRGB(255, 165, 0),
		Bracket = Color3.fromRGB(0, 0, 0),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["Dracula"] = table.freeze({
		Text = Color3.fromRGB(248, 248, 242),
		Background = Color3.fromRGB(40, 42, 54),
		SelectedText = Color3.fromRGB(255, 255, 255),
		SelectionBack = Color3.fromRGB(68, 71, 90),
		Operator = Color3.fromRGB(248, 248, 242),
		Number = Color3.fromRGB(189, 147, 249),
		String = Color3.fromRGB(255, 184, 108),
		Comment = Color3.fromRGB(98, 114, 164),
		Keyword = Color3.fromRGB(139, 233, 253),
		Error = Color3.fromRGB(255, 85, 85),
		FindBackground = Color3.fromRGB(255, 184, 108),
		MatchingWord = Color3.fromRGB(85, 85, 85),
		BuiltIn = Color3.fromRGB(80, 250, 123),
		CurrentLine = Color3.fromRGB(68, 71, 90),
		LocalMethod = Color3.fromRGB(255, 184, 108),
		LocalProperty = Color3.fromRGB(255, 184, 108),
		Nil = Color3.fromRGB(189, 147, 249),
		Bool = Color3.fromRGB(189, 147, 249),
		Function = Color3.fromRGB(139, 233, 253),
		Local = Color3.fromRGB(189, 147, 249),
		Self = Color3.fromRGB(189, 147, 249),
		FunctionName = Color3.fromRGB(80, 250, 123),
		Bracket = Color3.fromRGB(248, 248, 242),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["GitHub"] = table.freeze({
		Text = Color3.fromRGB(201, 209, 217),
		Background = Color3.fromRGB(13, 17, 23),
		SelectedText = Color3.fromRGB(255, 255, 255),
		SelectionBack = Color3.fromRGB(60, 65, 82),
		Operator = Color3.fromRGB(201, 209, 217),
		Number = Color3.fromRGB(209, 154, 102),
		String = Color3.fromRGB(222, 184, 135),
		Comment = Color3.fromRGB(110, 119, 129),
		Keyword = Color3.fromRGB(136, 192, 208),
		Error = Color3.fromRGB(240, 113, 120),
		FindBackground = Color3.fromRGB(255, 223, 116),
		MatchingWord = Color3.fromRGB(85, 85, 85),
		BuiltIn = Color3.fromRGB(209, 154, 102),
		CurrentLine = Color3.fromRGB(30, 35, 46),
		LocalMethod = Color3.fromRGB(255, 223, 116),
		LocalProperty = Color3.fromRGB(255, 223, 116),
		Nil = Color3.fromRGB(136, 192, 208),
		Bool = Color3.fromRGB(136, 192, 208),
		Function = Color3.fromRGB(129, 189, 167),
		Local = Color3.fromRGB(136, 192, 208),
		Self = Color3.fromRGB(136, 192, 208),
		FunctionName = Color3.fromRGB(255, 223, 116),
		Bracket = Color3.fromRGB(201, 209, 217),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["Nord"] = table.freeze({
		Text = Color3.fromRGB(216, 222, 233),
		Background = Color3.fromRGB(29, 32, 40),
		SelectedText = Color3.fromRGB(255, 255, 255),
		SelectionBack = Color3.fromRGB(59, 66, 82),
		Operator = Color3.fromRGB(216, 222, 233),
		Number = Color3.fromRGB(180, 142, 173),
		String = Color3.fromRGB(163, 190, 140),
		Comment = Color3.fromRGB(76, 86, 106),
		Keyword = Color3.fromRGB(129, 161, 193),
		Error = Color3.fromRGB(191, 97, 106),
		FindBackground = Color3.fromRGB(255, 184, 108),
		MatchingWord = Color3.fromRGB(85, 85, 85),
		BuiltIn = Color3.fromRGB(180, 142, 173),
		CurrentLine = Color3.fromRGB(59, 66, 82),
		LocalMethod = Color3.fromRGB(235, 203, 139),
		LocalProperty = Color3.fromRGB(235, 203, 139),
		Nil = Color3.fromRGB(129, 161, 193),
		Bool = Color3.fromRGB(129, 161, 193),
		Function = Color3.fromRGB(129, 161, 193),
		Local = Color3.fromRGB(129, 161, 193),
		Self = Color3.fromRGB(129, 161, 193),
		FunctionName = Color3.fromRGB(235, 203, 139),
		Bracket = Color3.fromRGB(216, 222, 233),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	}),
	["Electro"] = table.freeze({
		Text = Color3.fromRGB(220, 220, 220),
		Background = Color3.fromRGB(25, 0, 30),
		Selection = Color3.fromRGB(255, 255, 255),
		SelectionBack = Color3.fromRGB(70, 30, 80),
		Operator = Color3.fromRGB(220, 220, 220),
		Number = Color3.fromRGB(170, 180, 255),
		String = Color3.fromRGB(255, 140, 180),
		Comment = Color3.fromRGB(120, 120, 140),
		Keyword = Color3.fromRGB(220, 80, 130),
		Error = Color3.fromRGB(255, 70, 70),
		FindBackground = Color3.fromRGB(255, 190, 110),
		MatchingWord = Color3.fromRGB(100, 80, 100),
		BuiltIn = Color3.fromRGB(190, 130, 240),
		CurrentLine = Color3.fromRGB(50, 45, 60),
		LocalMethod = Color3.fromRGB(240, 130, 170),
		LocalProperty = Color3.fromRGB(240, 130, 170),
		Nil = Color3.fromRGB(230, 80, 120),
		Bool = Color3.fromRGB(230, 80, 120),
		Function = Color3.fromRGB(220, 70, 120),
		Local = Color3.fromRGB(220, 70, 120),
		Self = Color3.fromRGB(220, 70, 120),
		FunctionName = Color3.fromRGB(240, 130, 170),
		Bracket = Color3.fromRGB(220, 220, 220),

		Transparency = 0,
		Font = Enum.Font.Code,
		WidthDivider = 2
	})
})

local syntaxColors = themes.Galaxy -- beautiful blue-purple theme

local bold = {
	"Error", "MatchingWord", "Nil", "Bool", "Function", "Local", "Self", "Keyword", "Bracket"
}

local Lib = { }
local ENV = {
	wait = wait,
	workspace = workspace,
	warn = warn,
	Wait = getfenv().Wait, -- is deprecated, getfenv to remove orange warning in Roblox Studio
	Workspace = workspace,

	error = error,
	Enum = Enum,
	ElapsedTime = getfenv().ElapsedTime,
	elapsedTime = getfenv().elapsedTime,

	require = require,
	Random = Random,
	RaycastParams = RaycastParams,
	Region3 = Region3,
	Ray = Ray,
	RotationCurveKey = RotationCurveKey,
	Rect = Rect,
	rawget = rawget,
	Region3int16 = Region3int16,
	rawlen = rawlen,
	rawset = rawset,
	rawequal = rawequal,

	task = task,
	TweenInfo = TweenInfo,
	table = table,
	tostring = tostring,
	tonumber = tonumber,
	typeof = typeof,
	type = type,
	time = time,
	tick = tick,

	ypcall = getfenv().ypcall,

	UDim2 = UDim2,
	unpack = unpack,
	utf8 = utf8,
	UDim = UDim,
	UserSettings = UserSettings,

	Instance = Instance,
	ipairs = ipairs,

	os = os,
	OverlapParams = OverlapParams,

	print = print,
	pairs = pairs,
	pcall = pcall,
	PhysicalProperties = PhysicalProperties,
	PathWaypoint = PathWaypoint,
	Path2DControlPoint = Path2DControlPoint,
	printidentity = getfenv().printidentity,

	assert = assert,
	Axes = Axes,

	script = script,
	string = string,
	spawn = spawn,
	setmetatable = setmetatable,
	select = select,
	settings = settings,
	shared = shared,
	setfenv = setfenv,
	Secret = Secret,
	SharedTable = SharedTable,
	SecurityCapabilities = SecurityCapabilities,
	Spawn = getfenv().Spawn,
	stats = getfenv().stats,
	Stats = getfenv().Stats,

	debug = debug,
	DateTime = DateTime,
	delay = delay,
	DockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo,
	Delay = getfenv().Delay,

	Font = Font,
	File = File,
	Faces = Faces,
	FloatCurveKey = FloatCurveKey,

	game = game,
	getfenv = getfenv,
	getmetatable = getmetatable,
	gcinfo = gcinfo,
	Game = game,

	loadstring = loadstring,

	xpcall = xpcall,

	Color3 = Color3,
	CFrame = CFrame,
	coroutine = coroutine,
	Content = Content,
	ColorSequenceKeypoint = ColorSequenceKeypoint,
	ColorSequence = ColorSequence,
	CatalogSearchParams = CatalogSearchParams,
	collectgarbage = getfenv().collectgarbage,

	Vector3 = Vector3,
	Vector2 = Vector2,
	vector = vector,
	Vector2int16 = Vector2int16,
	Vector3int16 = Vector3int16,
	Version = getfenv().Version,
	version = getfenv().version,
	ValueCurveKey = ValueCurveKey,

	BrickColor = BrickColor,
	buffer = buffer,
	bit32 = bit32,

	newproxy = newproxy,
	NumberSequence = NumberSequence,
	NumberSequenceKeypoint = NumberSequenceKeypoint,
	NumberRange = NumberRange,
	next = next,

	math = math,

	_G = _G,
	_VERSION = _VERSION,
}

local function isValidString(str)
	return str:match("^[a-zA-Z0-9_]+$") ~= nil
end

local function simpleCount(str: string, a, limit)
	local amount, pointer = 0, 1
	local limit = tonumber(limit) or math.huge

	while pointer <= #str and amount < limit do
		local found = str:find(a, pointer, true)
		if not found then break end

		amount += 1
		pointer = found + #a
	end

	return amount
end

local Main = { }
local cloneref = getfenv().cloneref or function(...)return...end
local toclipboard = getfenv().toclipboard or getfenv().setclipboard
local plr = cloneref(cloneref(game:GetService("Players")).LocalPlayer)
Main.Mouse = plr:GetMouse()
local service = setmetatable({ },{
	__index = function(self,name)
		return cloneref(game:GetService(name) or game:FindFirstChild(name))
	end,
})

local uis = service.UserInputService
local clonerefs = cloneref
local create = function(data)
	local insts = { }
	for i,v in data do insts[v[1]] = Instance.new(v[2]) end
	for _,v in data do
		for prop,val in v[3] do
			if type(val) == "table" then
				insts[v[1]][prop] = insts[val[1]]
			else
				insts[v[1]][prop] = val
			end
		end
	end
	return insts[1]
end

local createSimple = function(class,props)
	local inst = Instance.new(class)
	for i,v in props do
		inst[i] = v
	end
	return inst
end

local function signalWait(s)return s:Wait()end
local renderStepped = cloneref(game:GetService("RunService")).RenderStepped

Lib.FastWait = function(s)
	if not s then return signalWait(renderStepped) end
	local start = tick()
	while tick() - start < s do signalWait(renderStepped) end
end

Lib.CheckMouseInGui = function(gui)
	if gui == nil then return false end
	Main.Mouse = Main.Mouse or plr and plr:GetMouse()
	local mouse = Main.Mouse
	local guiPosition = gui.AbsolutePosition
	local guiSize = gui.AbsoluteSize	

	return mouse.X >= guiPosition.X and mouse.X < guiPosition.X + guiSize.X and mouse.Y >= guiPosition.Y and mouse.Y < guiPosition.Y + guiSize.Y
end

Lib.CreateArrow = function(size,num,dir)
	local max = num
	local arrowFrame = createSimple("Frame",{
		BackgroundTransparency = 1,
		Name = "Arrow",
		Size = UDim2.new(0,size,0,size)
	})
	if dir == "up" then
		for i = 1,num do
			local newLine = createSimple("TextButton",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)+i-math.floor(max/2)-1),
				Size = UDim2.new(0,i+(i-1),0,1),
				Parent = arrowFrame,
				Text = "",
				AutoButtonColor = false
			})
		end
		return arrowFrame
	elseif dir == "down" then
		for i = 1,num do
			local newLine = createSimple("TextButton",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-(i-1),0,math.floor(size/2)-i+math.floor(max/2)+1),
				Size = UDim2.new(0,i+(i-1),0,1),
				Parent = arrowFrame,
				Text = "",
				AutoButtonColor = false
			})
		end
		return arrowFrame
	elseif dir == "left" then
		for i = 1,num do
			local newLine = createSimple("TextButton",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)+i-math.floor(max/2)-1,0,math.floor(size/2)-(i-1)),
				Size = UDim2.new(0,1,0,i+(i-1)),
				Parent = arrowFrame,
				Text = "",
				AutoButtonColor = false
			})
		end
		return arrowFrame
	elseif dir == "right" then
		for i = 1,num do
			local newLine = createSimple("TextButton",{
				BackgroundColor3 = Color3.new(220/255,220/255,220/255),
				BorderSizePixel = 0,
				Position = UDim2.new(0,math.floor(size/2)-i+math.floor(max/2)+1,0,math.floor(size/2)-(i-1)),
				Size = UDim2.new(0,1,0,i+(i-1)),
				Parent = arrowFrame,
				Text = "",
				AutoButtonColor = false
			})
		end
		return arrowFrame
	end
end

Lib.Signal = (function()
	local funcs = { }

	local disconnect = function(con)
		local pos = table.find(con.Signal.Connections,con)
		if pos then table.remove(con.Signal.Connections,pos) end
	end

	funcs.Connect = function(self,func)
		local con = {
			Signal = self,
			Func = func,
			Disconnect = disconnect
		}
		self.Connections[#self.Connections+1] = con
		return con
	end

	funcs.Fire = function(self,...)
		for i,v in self.Connections do
			xpcall(coroutine.wrap(v.Func),function(e) end,...)
		end
	end

	local mt = {
		__index = funcs,
		__tostring = function(self)
			return "Signal: " .. tostring(#self.Connections) .. " Connections"
		end
	}

	local function new()
		local obj = { }
		obj.Connections = { }

		return setmetatable(obj,mt)
	end

	return {new = new}
end)()

Lib.ScrollBar = (function()
	local funcs = { }
	local user = uis
	local mouse = Main.Mouse or plr and plr:GetMouse()
	local checkMouseInGui = Lib.CheckMouseInGui
	local createArrow = Lib.CreateArrow

	local function drawThumb(self)
		local total = self.TotalSpace
		local visible = self.VisibleSpace
		local index = self.Index
		local scrollThumb = self.GuiElems.ScrollThumb
		local scrollThumbFrame = self.GuiElems.ScrollThumbFrame

		if not (self:CanScrollUp()	or self:CanScrollDown()) then
			scrollThumb.Visible = false
		else
			scrollThumb.Visible = true
		end

		if self.Horizontal then
			scrollThumb.Size = UDim2.new(visible/total,0,1,0)
			if scrollThumb.AbsoluteSize.X < 16 then
				scrollThumb.Size = UDim2.new(0,16,1,0)
			end
			local fs = scrollThumbFrame.AbsoluteSize.X
			local bs = scrollThumb.AbsoluteSize.X

			local pos = UDim2.new(self:GetScrollPercent()*(fs-bs)/fs,0,0,0)
			if not pcall(scrollThumb.TweenPosition, scrollThumb, pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3, true) then
				scrollThumb.Position = pos
			end
		else
			scrollThumb.Size = UDim2.new(1,0,visible/total,0)
			if scrollThumb.AbsoluteSize.Y < 16 then
				scrollThumb.Size = UDim2.new(1,0,0,16)
			end
			local fs = scrollThumbFrame.AbsoluteSize.Y
			local bs = scrollThumb.AbsoluteSize.Y

			local pos = UDim2.new(0,0,self:GetScrollPercent()*(fs-bs)/fs,0)
			if not pcall(scrollThumb.TweenPosition, scrollThumb, pos, Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.3, true) then
				scrollThumb.Position = pos
			end
		end
	end

	local function createFrame(self)
		local newFrame = createSimple("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.35294118523598,0.35294118523598,0.35294118523598),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-16,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,16,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ScrollBar",})
		local button1 = nil
		local button2 = nil

		if self.Horizontal then
			newFrame.Size = UDim2.new(1,0,0,16)
			button1 = createSimple("ImageButton",{
				Parent = newFrame,
				Name = "Left",
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			createArrow(16,4,"left").Parent = button1
			button2 = createSimple("ImageButton",{
				Parent = newFrame,
				Name = "Right",
				Position = UDim2.new(1,-16,0,0),
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			createArrow(16,4,"right").Parent = button2
		else
			newFrame.Size = UDim2.new(0,16,1,0)
			button1 = createSimple("ImageButton",{
				Parent = newFrame,
				Name = "Up",
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			createArrow(16,4,"up").Parent = button1
			button2 = createSimple("ImageButton",{
				Parent = newFrame,
				Name = "Down",
				Position = UDim2.new(0,0,1,-16),
				Size = UDim2.new(0,16,0,16),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AutoButtonColor = false
			})
			createArrow(16,4,"down").Parent = button2
		end

		local scrollThumbFrame = createSimple("Frame",{
			BackgroundTransparency = 1,
			Parent = newFrame,
		})
		if self.Horizontal then
			scrollThumbFrame.Position = UDim2.new(0,16,0,0)
			scrollThumbFrame.Size = UDim2.new(1,-32,1,0)
		else
			scrollThumbFrame.Position = UDim2.new(0,0,0,16)
			scrollThumbFrame.Size = UDim2.new(1,0,1,-32)
		end

		local scrollThumb = createSimple("TextButton",{
			BackgroundColor3 = Color3.new(120/255,120/255,120/255),
			BorderSizePixel = 0,
			Parent = scrollThumbFrame,
			Text = "",
			AutoButtonColor = false,
		})

		local markerFrame = createSimple("Frame",{
			BackgroundTransparency = 1,
			Name = "Markers",
			Size = UDim2.new(1,0,1,0),
			Parent = scrollThumbFrame
		})

		local buttonPress = false
		local thumbPress = false
		local thumbFramePress = false

		button1.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and not buttonPress and self:CanScrollUp() then button1.BackgroundTransparency = 0.8 end
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch or not self:CanScrollUp() then return end
			buttonPress = true
			button1.BackgroundTransparency = 0.5
			if self:CanScrollUp() then self:ScrollUp() self.Scrolled:Fire() end
			local buttonTick = tick()
			local releaseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
				releaseEvent:Disconnect()
				if checkMouseInGui(button1) and self:CanScrollUp() then button1.BackgroundTransparency = 0.8 else button1.BackgroundTransparency = 1 end
				buttonPress = false
			end)
			while buttonPress do
				if tick() - buttonTick >= 0.3 and self:CanScrollUp() then
					self:ScrollUp()
					self.Scrolled:Fire()
				end
				wait()
			end
		end)
		button1.InputEnded:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and not buttonPress then button1.BackgroundTransparency = 1 end
		end)
		button2.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and not buttonPress and self:CanScrollDown() then button2.BackgroundTransparency = 0.8 end
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch or not self:CanScrollDown() then return end
			buttonPress = true
			button2.BackgroundTransparency = 0.5
			if self:CanScrollDown() then self:ScrollDown() self.Scrolled:Fire() end
			local buttonTick = tick()
			local releaseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
				releaseEvent:Disconnect()
				if checkMouseInGui(button2) and self:CanScrollDown() then button2.BackgroundTransparency = 0.8 else button2.BackgroundTransparency = 1 end
				buttonPress = false
			end)
			while buttonPress do
				if tick() - buttonTick >= 0.3 and self:CanScrollDown() then
					self:ScrollDown()
					self.Scrolled:Fire()
				end
				wait()
			end
		end)
		button2.InputEnded:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and not buttonPress then button2.BackgroundTransparency = 1 end
		end)

		scrollThumb.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and not thumbPress then scrollThumb.BackgroundTransparency = 0.2 scrollThumb.BackgroundColor3 = self.ThumbSelectColor end
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end

			local dir = self.Horizontal and "X" or "Y"
			local lastThumbPos = nil

			buttonPress = false
			thumbFramePress = false			
			thumbPress = true
			scrollThumb.BackgroundTransparency = 0
			local mouseOffset = mouse[dir] - scrollThumb.AbsolutePosition[dir]
			local mouseStart = mouse[dir]
			local releaseEvent
			local mouseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
				releaseEvent:Disconnect()
				if mouseEvent then mouseEvent:Disconnect() end
				if checkMouseInGui(scrollThumb) then scrollThumb.BackgroundTransparency = 0.2 else scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = self.ThumbColor end
				thumbPress = false
			end)
			self:Update()

			mouseEvent = user.InputChanged:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and thumbPress and releaseEvent.Connected then
					local thumbFrameSize = scrollThumbFrame.AbsoluteSize[dir]-scrollThumb.AbsoluteSize[dir]
					local pos = mouse[dir] - scrollThumbFrame.AbsolutePosition[dir] - mouseOffset
					if pos > thumbFrameSize then
						pos = thumbFrameSize
					elseif pos < 0 then
						pos = 0
					end
					if lastThumbPos ~= pos then
						lastThumbPos = pos
						self:ScrollTo(math.floor(0.5+pos/thumbFrameSize*(self.TotalSpace-self.VisibleSpace)))
					end
					wait()
				end
			end)
		end)

		scrollThumb.InputEnded:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and not thumbPress then scrollThumb.BackgroundTransparency = 0 scrollThumb.BackgroundColor3 = self.ThumbColor end
		end)

		scrollThumbFrame.InputBegan:Connect(function(input)
			if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch or checkMouseInGui(scrollThumb) then return end

			local dir = self.Horizontal and "X" or "Y"
			local scrollDir = 0
			if mouse[dir] >= scrollThumb.AbsolutePosition[dir] + scrollThumb.AbsoluteSize[dir] then
				scrollDir = 1
			end

			local function doTick()
				local scrollSize = self.VisibleSpace - 1
				if scrollDir == 0 and mouse[dir] < scrollThumb.AbsolutePosition[dir] then
					self:ScrollTo(self.Index - scrollSize)
				elseif scrollDir == 1 and mouse[dir] >= scrollThumb.AbsolutePosition[dir] + scrollThumb.AbsoluteSize[dir] then
					self:ScrollTo(self.Index + scrollSize)
				end
			end

			thumbPress = false			
			thumbFramePress = true
			doTick()
			local thumbFrameTick = tick()
			local releaseEvent
			releaseEvent = user.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
				releaseEvent:Disconnect()
				thumbFramePress = false
			end)

			while thumbFramePress do
				if tick() - thumbFrameTick >= 0.3 and checkMouseInGui(scrollThumbFrame) then
					doTick()
				end

				wait()
			end
		end)

		newFrame.MouseWheelForward:Connect(function()
			self:ScrollTo(self.Index - self.WheelIncrement)
		end)

		newFrame.MouseWheelBackward:Connect(function()
			self:ScrollTo(self.Index + self.WheelIncrement)
		end)

		self.GuiElems.ScrollThumb = scrollThumb
		self.GuiElems.ScrollThumbFrame = scrollThumbFrame
		self.GuiElems.Button1 = button1
		self.GuiElems.Button2 = button2
		self.GuiElems.MarkerFrame = markerFrame

		return newFrame
	end

	funcs.Update = function(self,nocallback)
		local total = self.TotalSpace
		local visible = self.VisibleSpace
		local index = self.Index
		local button1 = self.GuiElems.Button1
		local button2 = self.GuiElems.Button2

		self.Index = math.clamp(self.Index,0,math.max(0,total-visible))

		if self.LastTotalSpace ~= self.TotalSpace then
			self.LastTotalSpace = self.TotalSpace
			self:UpdateMarkers()
		end

		if self:CanScrollUp() then
			for i,v in button1.Arrow:GetChildren() do
				v.BackgroundTransparency = 0
			end
		else
			button1.BackgroundTransparency = 1
			for i,v in button1.Arrow:GetChildren() do
				v.BackgroundTransparency = 0.5
			end
		end
		if self:CanScrollDown() then
			for i,v in button2.Arrow:GetChildren() do
				v.BackgroundTransparency = 0
			end
		else
			button2.BackgroundTransparency = 1
			for i,v in button2.Arrow:GetChildren() do
				v.BackgroundTransparency = 0.5
			end
		end

		drawThumb(self)
	end

	funcs.UpdateMarkers = function(self)
		local markerFrame = self.GuiElems.MarkerFrame
		markerFrame:ClearAllChildren()

		for i,v in self.Markers do
			if i < self.TotalSpace then
				createSimple("TextButton",{
					BackgroundTransparency = 0,
					BackgroundColor3 = v,
					BorderSizePixel = 0,
					Position = self.Horizontal and UDim2.new(i/self.TotalSpace,0,1,-6) or UDim2.new(1,-6,i/self.TotalSpace,0),
					Size = self.Horizontal and UDim2.new(0,1,0,6) or UDim2.new(0,6,0,1),
					Name = "Marker"..tostring(i),
					Parent = markerFrame,
					Text = "",
					AutoButtonColor = false,
				})
			end
		end
	end

	funcs.AddMarker = function(self,ind,color)
		self.Markers[ind] = color or Color3.new(0,0,0)
	end

	funcs.ScrollTo = function(self,ind,nocallback)
		self.Index = ind
		self:Update()
		if not nocallback then
			self.Scrolled:Fire()
		end
	end
	funcs.ScrollUp = function(self)
		self.Index = self.Index - self.Increment
		self:Update()
	end
	funcs.ScrollDown = function(self)
		self.Index = self.Index + self.Increment
		self:Update()
	end
	funcs.CanScrollUp = function(self)
		return self.Index > 0
	end
	funcs.CanScrollDown = function(self)
		return self.Index + self.VisibleSpace < self.TotalSpace
	end
	funcs.GetScrollPercent = function(self)
		return self.Index/(self.TotalSpace-self.VisibleSpace)
	end
	funcs.SetScrollPercent = function(self,perc)
		self.Index = math.floor(perc*(self.TotalSpace-self.VisibleSpace))
		self:Update()
	end

	funcs.Texture = function(self,data)
		self.ThumbColor = data.ThumbColor or Color3.new(0,0,0)
		self.ThumbSelectColor = data.ThumbSelectColor or Color3.new(0,0,0)
		self.GuiElems.ScrollThumb.BackgroundColor3 = data.ThumbColor or Color3.new(0,0,0)
		self.Gui.BackgroundColor3 = data.FrameColor or Color3.new(0,0,0)
		self.GuiElems.Button1.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
		self.GuiElems.Button2.BackgroundColor3 = data.ButtonColor or Color3.new(0,0,0)
		for i,v in self.GuiElems.Button1.Arrow:GetChildren() do
			v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
		end
		for i,v in self.GuiElems.Button2.Arrow:GetChildren() do
			v.BackgroundColor3 = data.ArrowColor or Color3.new(0,0,0)
		end
	end

	funcs.SetScrollFrame = function(self,frame)
		if self.ScrollUpEvent then self.ScrollUpEvent:Disconnect() self.ScrollUpEvent = nil end
		if self.ScrollDownEvent then self.ScrollDownEvent:Disconnect() self.ScrollDownEvent = nil end
		self.ScrollUpEvent = frame.MouseWheelForward:Connect(function() self:ScrollTo(self.Index - self.WheelIncrement) end)
		self.ScrollDownEvent = frame.MouseWheelBackward:Connect(function() self:ScrollTo(self.Index + self.WheelIncrement) end)
	end

	local mt = { }
	mt.__index = funcs

	local function new(hor)
		local obj = setmetatable({
			Index = 0,
			VisibleSpace = 0,
			TotalSpace = 0,
			Increment = 1,
			WheelIncrement = 1,
			Markers = { },
			GuiElems = { },
			Horizontal = hor,
			LastTotalSpace = 0,
			Scrolled = Lib.Signal.new()
		},mt)
		obj.Gui = createFrame(obj)
		obj:Texture({
			ThumbColor = Color3.fromRGB(60,60,60),
			ThumbSelectColor = Color3.fromRGB(75,75,75),
			ArrowColor = Color3.new(1,1,1),
			FrameColor = Color3.fromRGB(40,40,40),
			ButtonColor = Color3.fromRGB(75,75,75)
		})
		return obj
	end

	return {new = new}
end)()

Lib.CodeFrame = (function()
	local funcs = { }

	local typeMap = {
		[0] = "String",
		[1] = "String",
		[2] = "String",
		[3] = "String",
		[4] = "Comment",
		[5] = "Operator",
		[6] = "Number",
		[7] = "Keyword",
		[8] = "BuiltIn",
		[9] = "LocalMethod",
		[10] = "LocalProperty",
		[11] = "Nil",
		[12] = "Bool",
		[13] = "Function",
		[14] = "Local",
		[15] = "Self",
		[16] = "FunctionName",
		[17] = "Bracket"
	}

	local specialKeywordsTypes = {
		["nil"] = 11,
		["true"] = 12,
		["false"] = 12,
		["function"] = 13,
		["local"] = 14
	}

	local keywords = {
		["and"] = true,
		["break"] = true, 
		["do"] = true,
		["else"] = true,
		["elseif"] = true,
		["end"] = true,
		["false"] = true,
		["for"] = true,
		["function"] = true,
		["if"] = true,
		["in"] = true,
		["local"] = true,
		["nil"] = true,
		["not"] = true,
		["or"] = true,
		["repeat"] = true,
		["return"] = true,
		["then"] = true,
		["true"] = true,
		["until"] = true,
		["while"] = true,
		["type"] = true,
		["typeof"] = true,
		["self"] = true,
		["export"] = true,
		["continue"] = true
	}

	local blockKeywords = {
		--[[["false"] = true,
		["nil"] = true,
		["true"] = true,]]
		["type"] = true,
		["typeof"] = true
	}

	local richReplace = {
		["'"] = "&apos;",
		['"'] = "&quot;",
		["<"] = "&lt;",
		[">"] = "&gt;",
		["&"] = "&amp;"
	}

	local notDeprecatedTypes = {
		"Enums", "table"
	}

	local tabSub = "\205"
	local emptyChar = "@"
	local tabReplacement = (" %s%s "):format(tabSub, tabSub)
	local tabReplace = "    "

	tabReplacement = tabReplace

	local tabJumps = {
		[("[^%s] %s"):format(tabSub, tabSub)] = 0,
		[(" %s%s"):format(tabSub, tabSub)] = -1,
		[("%s%s "):format(tabSub, tabSub)] = 2,
		[("%s [^%s]"):format(tabSub, tabSub)] = 1,
	}

	local tweenService = service.TweenService
	local lineTweens = { }
	local builtIns = { }

	local autocompleteList = {
		[0] = { },	-- keywords
		[1] = { },	-- functions
		[2] = { }	-- globals
	}

	local function initBuiltIn()
		table.clear(builtIns)
		for _, v in autocompleteList do
			table.clear(v)
		end

		for i in ENV do
			builtIns[i] = true
		end

		local env = ENV
		local type = type
		local tostring = tostring

		for name, _ in builtIns do
			local envVal = env[name]
			if type(envVal) == "table" and name ~= "_G" and name ~= "shared" then
				local items = { }
				for i, v in envVal do
					items[i] = true
				end

				builtIns[name] = items
			end
		end

		local enumEntries = { }
		local enums = Enum:GetEnums()
		for i = 1,#enums do
			enumEntries[tostring(enums[i])] = true
		end

		builtIns["Enum"] = enumEntries

		for i in keywords do
			if not blockKeywords[i] then
				table.insert(autocompleteList[0], i)
			end
		end

		for i in env do
			if isValidString(i) then
				table.insert(autocompleteList[typeof(env[i]) == "function" and 1 or 2], i)
			end
		end
	end

	local autocompletes = { }
	local autocompleteIndex = 0
	local word = ""
	local quickExist = { }

	local autocompleteTypes = {
		[0] = "rbxassetid://83103836496695",	-- keywords
		[1] = "rbxassetid://16126950672",		-- globals
		[2] = "rbxassetid://128298531121901",	-- functions
	}

	local maxCat = 0
	for i in autocompleteTypes do
		maxCat = math.max(maxCat, i)
	end

	local updateAutocompletes; function updateAutocompletes(obj)
		autocompleteIndex = math.clamp(autocompleteIndex, 0, #autocompletes)

		word = autocompletes[autocompleteIndex]
		word = word and word[1] or ""

		obj.Autocompleting = obj.AutocompleteEnabled and uis.KeyboardEnabled and autocompleteIndex ~= 0 and #autocompletes > 0
		obj.Autocomplete.Visible = obj.Autocompleting

		if obj.Autocompleting then
			for i, v in autocompletes do
				local frame = obj.Autocomplete.List:FindFirstChild(v[1])
				if not frame then
					frame = obj.Autocomplete.List.Row:Clone()
					frame.Name = v[1]
					frame.Type.Label.Text = not v[3] and v[1] or "<s>" .. v[1] .. "</s>"
					frame.Type.Label.TextColor3 = v[3] and Color3.new(0.7, 0.7, 0.7) or Color3.new(1, 1, 1)
					frame.Type.Image = v[2]
					frame.Visible = true
					frame.Parent = obj.Autocomplete.List
				end

				frame.BackgroundTransparency = i == autocompleteIndex and 0.75 or 1
				frame.LayoutOrder = i
			end

			obj.Autocomplete.List.CanvasPosition = Vector2.new(0, math.min(autocompleteIndex - 3, #autocompletes - 5) * obj.Autocomplete.List.Row.AbsoluteSize.Y)

			for _, v in obj.Autocomplete.List:GetChildren() do
				if v:IsA("TextButton") and v.Visible and not quickExist[v.Name] then
					v:Destroy()
				end
			end

		else
			for _, v in obj.Autocomplete.List:GetChildren() do
				if v:IsA("TextButton") and v.Visible then
					v:Destroy()
				end
			end
		end
	end

	local function fuzzyMatch(str1, str2)
		str1 = str1:lower()
		str2 = str2:lower()

		if #str2 <= #str1 then
			local c = str1

			str1 = str2
			str2 = c
		end

		if str2:sub(1, #str1) == str1 then
			return str1 == str2 and 1.01 or 1
		end

		local len1, len2 = #str1, #str2
		if len1 == 0 then return len2 end
		if len2 == 0 then return len1 end

		local matrix = { }
		for i = 0, len1 do matrix[i] = { } end
		for i = 0, len1 do matrix[i][0] = i end
		for j = 0, len2 do matrix[0][j] = j end

		for i = 1, len1 do
			for j = 1, len2 do
				local cost = (str1:sub(i, i) == str2:sub(j, j)) and 0 or 1
				matrix[i][j] = math.min(
					matrix[i-1][j] + 1,
					matrix[i][j-1] + 1,
					matrix[i-1][j-1] + cost
				)
			end
		end

		local max_len = math.max(#str1, #str2)
		return max_len > 0 and 1 - matrix[len1][len2] / max_len or 1
	end

	local function sort(a, b)
		return a[1] > b[1] or a[1] == b[1] and #a[2] < #b[2]
	end

	local function autocompleteStep(obj, currentLine, cursorX, input)
		table.clear(autocompletes)
		table.clear(quickExist)

		if not obj.AutocompleteEnabled or not uis.KeyboardEnabled or not isValidString(input) then
			return updateAutocompletes(obj)
		end

		autocompleteIndex = math.max(autocompleteIndex, 1)
		local textBeforeCursor: string = currentLine:sub(1, cursorX)
		local currentWord = ""

		for i = #textBeforeCursor, 0, -1 do
			local char = textBeforeCursor:sub(i, i)
			if isValidString(char) then
				currentWord = char .. currentWord
			else
				break
			end
		end

		if #currentWord > 0 then
			local deprecated = { }
			local list = { }

			for cat = 0, maxCat do
				for i, item in autocompleteList[cat] do
					if not quickExist[item] then
						local similarity = fuzzyMatch(currentWord, item)

						if similarity > 0.4 then
							quickExist[item] = true

							local isDeprecated = item:sub(1, 1):upper() == item:sub(1, 1)
							if isDeprecated and table.find(notDeprecatedTypes, typeof(ENV[item])) then
								isDeprecated = false
							end

							if not isDeprecated then
								table.insert(list, { similarity, item, autocompleteTypes[cat], false })
							else
								table.insert(deprecated, { similarity, item, autocompleteTypes[cat], true })
							end
						end
					end
				end
			end

			table.sort(list, sort)
			table.sort(deprecated, sort)

			for _, v in list do
				table.remove(v, 1)
				table.insert(autocompletes, v)
			end

			for _, v in deprecated do
				table.remove(v, 1)
				table.insert(autocompletes, v)
			end
		end

		updateAutocompletes(obj)
	end

	local function resetAutocomplete(obj)
		autocompleteStep(obj, nil, nil, "")
	end

	local function setupEditBox(obj)
		obj.AutocompleteEnabled = true
		obj.FramesPassed = 0
		obj.LastTyped = 0

		renderStepped:Connect(function()
			if obj.Editing then
				obj.FramesPassed += 1
			end
		end)

		local indentAdd = {
			"(", "[", "{", "then", "do", "function", "repeat"
		}

		local indentRemove = {
			")", "]", "}", "end", "until"
		}

		local autocompletes = {
			["("] = ")",
			["["] = "]",
			["{"] = "}",
			["'"] = "'",
			['"'] = '"',
			["then"] = "%s\n%send",
			["do"] = "%s\n%send",
			["repeat"] = "%s\n%suntil"
		}

		local repeatIgnores = {
			"}", ")", "]", "'", '"'
		}

		local editBox = obj.GuiElems.EditBox

		editBox.Focused:Connect(function()
			obj:ConnectEditBoxEvent()
			obj.Editing = true
			editBox.CursorPosition = 2
			obj.GuiElems.Cursor.Visible = true
		end)

		editBox.FocusLost:Connect(function()
			obj:DisconnectEditBoxEvent()
			obj.Editing = false
			obj.GuiElems.Cursor.Visible = obj.Autocompleting
		end)

		editBox.Changed:Connect(function()
			if editBox.CursorPosition ~= -1 then
				editBox.CursorPosition = #editBox.Text + 1
			end
		end)
		
		local function isDown(key)
			return uis:IsKeyDown(Enum.KeyCode["Left" .. key]) or uis:IsKeyDown(Enum.KeyCode["Right" .. key])
		end

		editBox:GetPropertyChangedSignal("Text"):Connect(function()
			if obj.EditSkip then
				editBox.Text = emptyChar
				obj.EditSkip = false
				return
			end

			if obj.EditBoxCopying or editBox.Text == emptyChar or obj.FocusIgnore or uis.TouchEnabled and obj.LastTyped == obj.FramesPassed then
				obj.EditBoxCopying = false
				obj.EditSkip = false
				return
			end

			if not obj.TextEditable then return editBox:ReleaseFocus() end

			obj.LastTyped = obj.FramesPassed

			local originalText: string = editBox.Text

			editBox.Text = emptyChar
			editBox.CursorPosition = 2

			if #originalText > 1 then
				originalText = originalText:sub(2)
				local text = originalText:gsub("\t", tabReplace)
				
				if (text == "/" or text == "z" or text == "y") and isDown("Control") then
					return
				end

				local oldLine = obj.Lines[obj.CursorY + 1]

				local currentLine = obj.Lines[obj.CursorY + 1]
				local nextSymbol = currentLine and currentLine:sub(obj.CursorX + 1, obj.CursorX + 1)

				local cursorShiftX = 0
				local cursorShiftY = 0

				if obj.AutoFill then
					local ri = table.find(repeatIgnores, nextSymbol)
					if ri then
						local ri2 = table.find(repeatIgnores, text)
						if ri2 then
							if ri == ri2 then
								text = ""
								cursorShiftX = 1
							end
						end
					end
				end

				if (originalText == "\n" or originalText == "\t") and obj.Autocompleting and word ~= "" and autocompleteIndex ~= 0 then
					local oldTextBeforeCursor = currentLine:sub(1, obj.CursorX)
					local textAfterCursor = currentLine:sub(obj.CursorX + 1)

					local textBeforeCursor = oldTextBeforeCursor

					local skips = 0
					local textWithoutWord = ""
					while isValidString(textBeforeCursor:sub(-1)) do
						skips += 1
						textBeforeCursor = textBeforeCursor:sub(1, -2)
					end

					textWithoutWord = textBeforeCursor
					obj.Lines[obj.CursorY + 1] = textWithoutWord .. word .. textAfterCursor

					text = text:sub(1, -2)

					obj:MoveCursor(obj.CursorX + (#word - skips), obj.CursorY)
					word = ""

					obj:ProcessTextChange()
					return resetAutocomplete(obj)
				end

				if text:sub(-1) == "\n" and oldLine then
					resetAutocomplete(obj)

					if obj.AutoFill then
						local indent = ""

						for i = 1, #oldLine do
							local sub = oldLine:sub(i,i)

							if sub == " " or sub == "\t" then
								indent ..= sub
							else
								break
							end
						end

						if indent == "" then
							local cursorText = table.concat(obj.Lines, "\n", 1, obj.CursorY + 1)
							local indentRep = 0

							for _, v in indentAdd do
								indentRep += simpleCount(cursorText, v)
							end

							for _, v in indentRemove do
								indentRep -= simpleCount(cursorText, v)
							end

							indent = string.rep(tabReplace, indentRep)
						end

						text ..= indent
					end
				end

				local trimmed = oldLine:gsub("^[ \t]*(.-)[ \t]*$", "%1")
				local last = trimmed:split(" ")
				last = last[#last]

				if obj.AutoFill then
					local autocomplete = autocompletes[trimmed] or autocompletes[text] or autocompletes[last]
					if not autocomplete then
						local text = table.concat(obj.Lines, "\n")
						local indentRep = 0

						for _, v in indentAdd do
							indentRep += simpleCount(text, v)
						end

						for _, v in indentRemove do
							indentRep -= simpleCount(text, v)
						end

						if indentRep > 0 then
							autocomplete = "%s\n%send"
						end
					end

					local hasNewline = autocomplete and autocomplete:find("\n", 1, true) ~= nil

					if autocomplete and (hasNewline and originalText:sub(-1) == "\n" or not hasNewline) then
						local cursorText = table.concat(obj.Lines, "\n", 1, obj.CursorY + 1)
						local indentRep = 0

						for _, v in indentAdd do
							indentRep += simpleCount(cursorText, v)
						end

						for _, v in indentRemove do
							indentRep -= simpleCount(cursorText, v)
						end

						cursorShiftY = hasNewline and -1 or  0
						cursorShiftX = hasNewline and  1 or -1

						text ..= autocomplete:format(string.rep(tabReplace, indentRep - 1), string.rep(tabReplace, indentRep - 1))
					end
				end

				obj:AppendText(text)
				if simpleCount(text, "\n", 2) == 2 then
					task.defer(obj.AppendText, obj, "")
				end

				if originalText:sub(-1) ~= "\n" then
					autocompleteStep(obj, obj.Lines[obj.CursorY + 1], obj.CursorX, text)
				else
					resetAutocomplete(obj)
				end

				if cursorShiftX ~= 0 or cursorShiftY ~= 0 then
					obj:MoveCursor(obj.CursorX + cursorShiftX, obj.CursorY + cursorShiftY)
				end
			else
				local startRange, endRange

				if obj:IsValidRange() then
					startRange = obj.SelectionRange[1]
					endRange = obj.SelectionRange[2]
				else
					endRange = { obj.CursorX, obj.CursorY }
				end

				if not startRange then
					obj:Shift("Left",false,false)

					obj.FloatCursorX = obj.CursorX
					obj:UpdateCursor()

					startRange = startRange or {obj.CursorX,obj.CursorY}
				end

				obj:DeleteRange({startRange, endRange},false,true)
				obj:ResetSelection(true)
				obj:Refresh()

				resetAutocomplete(obj)
			end
		end)
	end

	local function setupMouseSelection(obj)
		local mouse = plr and plr:GetMouse()
		local codeFrame = obj.GuiElems.LinesFrame
		local lines = obj.Lines
		local clicks = 0
		local Y = 0
		local lastClick = tick()
		
		local function addClick()
			lastClick = tick()
			clicks += 1
		end
		
		task.spawn(function()
			while codeFrame.Parent do
				repeat task.wait() until tick() - lastClick >= 1 or not codeFrame.Parent
				clicks = 0
			end
		end)

		codeFrame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				local start = tick()
				local fontSizeX,fontSizeY = math.ceil(obj.FontSize/obj.Colors.WidthDivider),obj.FontSize

				local relX = mouse.X - codeFrame.AbsolutePosition.X
				local relY = mouse.Y - codeFrame.AbsolutePosition.Y
				local selX = math.round(relX / fontSizeX) + obj.ViewX
				local selY = math.floor(relY / fontSizeY) + obj.ViewY
				local releaseEvent,mouseEvent,scrollEvent
				local scrollPowerV,scrollPowerH = 0,0
				selY = math.min(#lines-1,selY)
				local relativeLine = lines[selY+1] or ""
				selX = math.min(#relativeLine, selX + obj:TabAdjust(selX,selY))

				obj.SelectionRange = {{-1,-1},{-1,-1}}
				obj:MoveCursor(selX,selY)
				obj.FloatCursorX = selX
				
				if selY ~= Y then
					clicks = 0
					Y = selY
				end
				
				task.spawn(addClick)
				
				if clicks >= 2 then
					if clicks ~= 3 then
						local textBeforeCursor: string = lines[selY + 1]:sub(1, selX)
						local textAfterCursor = lines[selY+1]:sub(selX + 1)
						local exceeded = 0
						local needs = 0
						local currentWord = ""

						for i = #textBeforeCursor, 0, -1 do
							local char = textBeforeCursor:sub(i, i)
							if isValidString(char) then
								currentWord = char .. currentWord
								needs += 1
							else
								break
							end
						end
						
						for i = 1, #textBeforeCursor do
							local char = textAfterCursor:sub(i, i)
							if isValidString(char) then
								currentWord = currentWord .. char
								exceeded += 1
							else
								break
							end
						end
						
						obj.SelectionRange = {{selX - needs, selY}, {selX + exceeded, selY}}
						obj:MoveCursor(selX + exceeded, selY)
					else
						clicks = 1
						
						local selStartX, selStartY = 0, selY
						
						selY += 1
						if selY == #lines then
							selX = #lines[selY]
							selY -= 1
						else
							selX = 0
						end

						obj.SelectionRange = {{selStartX, selStartY}, {selX, selY}}
						obj:MoveCursor(selX, selY)
					end

					obj:Refresh()
					obj:SetCopyableSelection()
				end

				if input.UserInputType == Enum.UserInputType.Touch then return end

				local function updateSelection()
					local relX = mouse.X - codeFrame.AbsolutePosition.X
					local relY = mouse.Y - codeFrame.AbsolutePosition.Y
					local sel2X = math.max(0,math.round(relX / fontSizeX) + obj.ViewX)
					local sel2Y = math.max(0,math.floor(relY / fontSizeY) + obj.ViewY)

					sel2Y = math.min(#lines-1,sel2Y)
					local relativeLine = lines[sel2Y+1] or ""
					sel2X = math.min(#relativeLine, sel2X + obj:TabAdjust(sel2X,sel2Y))

					if sel2Y < selY or (sel2Y == selY and sel2X < selX) then
						obj.SelectionRange = {{sel2X,sel2Y},{selX,selY}}
					else						
						obj.SelectionRange = {{selX,selY},{sel2X,sel2Y}}
					end

					obj:MoveCursor(sel2X,sel2Y)
					obj.FloatCursorX = sel2X
					obj:Refresh()
				end

				releaseEvent = uis.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						releaseEvent:Disconnect()
						mouseEvent:Disconnect()
						scrollEvent:Disconnect()
						if tick() - start < 0.25 then return end
						updateSelection()
						obj:SetCopyableSelection()
					end
				end)

				mouseEvent = uis.InputChanged:Connect(function(input)
					if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and tick() - start > (uis.KeyboardEnabled and 0.25 or 1) then
						local upDelta = mouse.Y - codeFrame.AbsolutePosition.Y
						local downDelta = mouse.Y - codeFrame.AbsolutePosition.Y - codeFrame.AbsoluteSize.Y
						local leftDelta = mouse.X - codeFrame.AbsolutePosition.X
						local rightDelta = mouse.X - codeFrame.AbsolutePosition.X - codeFrame.AbsoluteSize.X
						scrollPowerV = 0
						scrollPowerH = 0
						if downDelta > 0 then
							scrollPowerV = math.floor(downDelta*0.05) + 1
						elseif upDelta < 0 then
							scrollPowerV = math.ceil(upDelta*0.05) - 1
						end
						if rightDelta > 0 then
							scrollPowerH = math.floor(rightDelta*0.05) + 1
						elseif leftDelta < 0 then
							scrollPowerH = math.ceil(leftDelta*0.05) - 1
						end

						updateSelection()
					end
				end)

				scrollEvent = clonerefs(game:GetService("RunService")).RenderStepped:Connect(function()
					if scrollPowerV ~= 0 or scrollPowerH ~= 0 then
						obj:ScrollDelta(scrollPowerH,scrollPowerV)
						updateSelection()
					end
				end)

				obj:Refresh()
			end
		end)
	end

	local function makeFrame(obj)
		obj.SelectionStart = {-1,-1}
		obj.SyntaxHighlight = true
		obj.PreviousSyntaxHighlight = obj.SyntaxHighlight
		obj.AutoFill = true
		obj.ShowFooter = false
		obj.MaxHistory = 1
		obj.LastHistory = ""
		obj.History = { }
		obj.RedoHistory = { }
		obj.FromHistory = false
		obj.LinesVisible = false

		local frame = create({
			{1,"TextButton",{AutoButtonColor=false,Name="CodeBox",Text="",BackgroundColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel = 0,Position=UDim2.new(0.5,-300,0.5,-200),Size=UDim2.new(0,600,0,400)}},
		})

		local footer = Instance.new("TextLabel", frame)
		footer.Name = "Footer"
		footer.Size = UDim2.new(1, 0, 0, 17)
		footer.Position = UDim2.new(0, 0, 1, -footer.Size.Y.Offset)
		footer.BackgroundTransparency = 1
		footer.Text = ""
		footer.TextScaled = true
		footer.TextXAlignment = Enum.TextXAlignment.Left

		local pad = Instance.new("UIPadding", footer)
		pad.PaddingTop = UDim.new(0.15, 0)
		pad.PaddingBottom = UDim.new(0.15, 0)
		pad.PaddingLeft = UDim.new(0, 5)
		pad.PaddingRight = UDim.new(0, 0)

		local holder = Instance.new("Frame", frame)
		holder.Name = "Holder"
		holder.Size = UDim2.new(1, 0, 1, -footer.Size.Y.Offset)
		holder.BackgroundTransparency = 1

		local function changed(text)
			footer.Text = ("Ln: %s | Col: %s | Total Ln: %s | Total Ch: %s"):format(obj.CursorY + 1, obj.CursorX, #obj.Lines, #text)
		end

		obj.TextChanged = Instance.new("BindableEvent", holder)
		obj.TextChanged.Name = "TextChanged"
		obj.TextChanged.Event:Connect(changed)

		obj.CursorMoved = Instance.new("BindableEvent", holder)
		obj.CursorMoved.Name = "CursorMoved"
		obj.CursorMoved.Event:Connect(changed)

		obj.TextChanged:Fire("")

		local elems = { }

		local linesFrame = Instance.new("Frame")
		linesFrame.Name = "Lines"
		linesFrame.BackgroundTransparency = 1
		linesFrame.Size = UDim2.new(1,-16,1,-16)
		linesFrame.ClipsDescendants = true
		linesFrame.Parent = holder

		local lineNumbersLabel = Instance.new("TextLabel")
		lineNumbersLabel.Name = "LineNumbers"
		lineNumbersLabel.BackgroundTransparency = 1
		lineNumbersLabel.Font = obj.Colors.Font
		lineNumbersLabel.TextXAlignment = Enum.TextXAlignment.Right
		lineNumbersLabel.TextYAlignment = Enum.TextYAlignment.Top
		lineNumbersLabel.ClipsDescendants = true
		lineNumbersLabel.RichText = true
		lineNumbersLabel.Parent = holder

		local cursor = Instance.new("Frame")
		cursor.Name = "Cursor"
		cursor.BackgroundColor3 = Color3.fromRGB(220,220,220)
		cursor.BorderSizePixel = 0
		cursor.Parent = holder
		cursor.Visible = false

		local editBox = Instance.new("TextBox")
		editBox.Name = "EditBox"
		editBox.MultiLine = true
		editBox.Visible = false
		editBox.Parent = holder
		editBox.Text = emptyChar

		lineTweens.Invis = tweenService:Create(cursor,TweenInfo.new(0.4,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{BackgroundTransparency = 1})
		lineTweens.Vis = tweenService:Create(cursor,TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),{BackgroundTransparency = 0})

		elems.LinesFrame = linesFrame
		elems.LineNumbersLabel = lineNumbersLabel
		elems.Cursor = cursor
		elems.EditBox = editBox
		elems.ScrollCorner = create({{1,"TextButton",{BackgroundColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Name="ScrollCorner",Position=UDim2.new(1,-16,1,-16),Size=UDim2.new(0,16,0,16),Visible=false,Text="",AutoButtonColor=false}}})

		elems.ScrollCorner.Parent = holder
		linesFrame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				obj:SetEditing(true, input)
			end
		end)

		obj.Frame = holder
		obj.Gui = frame
		obj.GuiElems = elems
		obj.Footer = footer
		obj.Holder = holder
		obj.TextEditable = true

		do -- autocomplete
			local objects = {
				["Instance0"] = Instance.new("Frame"),
				["Instance1"] = Instance.new("UIStroke"),
				["Instance2"] = Instance.new("ScrollingFrame"),
				["Instance3"] = Instance.new("TextButton"),
				["Instance4"] = Instance.new("ImageLabel"),
				["Instance5"] = Instance.new("UIAspectRatioConstraint"),
				["Instance6"] = Instance.new("TextLabel"),
				["Instance7"] = Instance.new("Frame"),
				["Instance8"] = Instance.new("UIListLayout"),
			}

			do
				objects["Instance0"]["LayoutOrder"] = 0
				objects["Instance0"]["Active"] = false
				objects["Instance0"]["Parent"] = cursor
				objects["Instance0"]["AnchorPoint"] = Vector2.new(0, 0)
				objects["Instance0"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance0"]["ZIndex"] = 1
				objects["Instance0"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance0"]["Size"] = UDim2.new(0, 200, 0, 90)
				objects["Instance0"]["Draggable"] = false
				objects["Instance0"]["Style"] = Enum.FrameStyle.Custom
				objects["Instance0"]["ClipsDescendants"] = true
				objects["Instance0"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance0"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance0"]["BackgroundTransparency"] = 0.25
				objects["Instance0"]["BorderSizePixel"] = 0
				objects["Instance0"]["Rotation"] = 0
				objects["Instance0"]["Transparency"] = 0.25
				objects["Instance0"]["Name"] = "Autocomplete"
				objects["Instance0"]["SelectionOrder"] = 0
				objects["Instance0"]["Visible"] = true
				objects["Instance0"]["Selectable"] = false
				objects["Instance0"]["Position"] = UDim2.new(1, 15, 0, 1)
				objects["Instance0"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255)

				objects["Instance1"]["Enabled"] = true
				objects["Instance1"]["Transparency"] = 0
				objects["Instance1"]["Name"] = "UIStroke"
				objects["Instance1"]["LineJoinMode"] = Enum.LineJoinMode.Miter
				objects["Instance1"]["Parent"] = objects["Instance0"]
				objects["Instance1"]["Thickness"] = 1
				objects["Instance1"]["Color"] = Color3.new(0, 0, 0)
				objects["Instance1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

				objects["Instance2"]["LayoutOrder"] = 0
				objects["Instance2"]["Active"] = false
				objects["Instance2"]["Parent"] = objects["Instance0"]
				objects["Instance2"]["AnchorPoint"] = Vector2.new(0, 0)
				objects["Instance2"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance2"]["ZIndex"] = 1
				objects["Instance2"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance2"]["Size"] = UDim2.new(1, 0, 0, 18)
				objects["Instance2"]["Draggable"] = false
				objects["Instance2"]["ClipsDescendants"] = false
				objects["Instance2"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance2"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance2"]["BackgroundTransparency"] = 1
				objects["Instance2"]["BorderSizePixel"] = 0
				objects["Instance2"]["Rotation"] = 0
				objects["Instance2"]["Transparency"] = 1
				objects["Instance2"]["Name"] = "List"
				objects["Instance2"]["SelectionOrder"] = 0
				objects["Instance2"]["Visible"] = true
				objects["Instance2"]["Selectable"] = false
				objects["Instance2"]["Position"] = UDim2.new(0, 0, 0, 0)
				objects["Instance2"]["BackgroundColor3"] = Color3.new(1, 1, 1)
				objects["Instance2"]["ScrollBarThickness"] = 0
				objects["Instance2"]["ScrollingDirection"] = Enum.ScrollingDirection.Y
				objects["Instance2"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
				objects["Instance2"]["CanvasSize"] = UDim2.fromScale(0, 0)

				objects["Instance3"]["LayoutOrder"] = 0
				objects["Instance3"]["Active"] = false
				objects["Instance3"]["Parent"] = objects["Instance2"]
				objects["Instance3"]["AnchorPoint"] = Vector2.new(0, 0)
				objects["Instance3"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance3"]["ZIndex"] = 1
				objects["Instance3"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance3"]["Size"] = UDim2.new(1, 0, 1, 0)
				objects["Instance3"]["Draggable"] = false
				objects["Instance3"]["ClipsDescendants"] = false
				objects["Instance3"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance3"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance3"]["BackgroundTransparency"] = 1
				objects["Instance3"]["BorderSizePixel"] = 0
				objects["Instance3"]["Rotation"] = 0
				objects["Instance3"]["Transparency"] = 1
				objects["Instance3"]["Name"] = "Row"
				objects["Instance3"]["SelectionOrder"] = 0
				objects["Instance3"]["Visible"] = false
				objects["Instance3"]["Selectable"] = false
				objects["Instance3"]["Position"] = UDim2.new(0, 0, 0, 0)
				objects["Instance3"]["BackgroundColor3"] = Color3.new(0.333333, 0.333333, 1)
				objects["Instance3"]["Text"] = ""
				objects["Instance3"]["AutoButtonColor"] = false

				objects["Instance4"]["Visible"] = true
				objects["Instance4"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance4"]["Size"] = UDim2.new(1, 0, 1, 0)
				objects["Instance4"]["ImageTransparency"] = 0
				objects["Instance4"]["Parent"] = objects["Instance3"]
				objects["Instance4"]["Position"] = UDim2.new(0, 1, 0, 0)
				objects["Instance4"]["BackgroundTransparency"] = 1
				objects["Instance4"]["ImageRectOffset"] = Vector2.new(0, 0)
				objects["Instance4"]["AnchorPoint"] = Vector2.new(0, 0)
				objects["Instance4"]["Image"] = "rbxassetid://16126950672"
				objects["Instance4"]["TileSize"] = UDim2.new(1, 0, 1, 0)
				objects["Instance4"]["ImageRectSize"] = Vector2.new(0, 0)
				objects["Instance4"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance4"]["ZIndex"] = 1
				objects["Instance4"]["BorderSizePixel"] = 0
				objects["Instance4"]["SliceCenter"] = Rect.new(0, 0, 0, 0)
				objects["Instance4"]["Draggable"] = false
				objects["Instance4"]["ScaleType"] = Enum.ScaleType.Stretch
				objects["Instance4"]["ResampleMode"] = Enum.ResamplerMode.Pixelated
				objects["Instance4"]["ClipsDescendants"] = false
				objects["Instance4"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance4"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance4"]["LayoutOrder"] = 0
				objects["Instance4"]["ImageColor3"] = Color3.new(1, 1, 1)
				objects["Instance4"]["Rotation"] = 0
				objects["Instance4"]["Transparency"] = 1
				objects["Instance4"]["Name"] = "Type"
				objects["Instance4"]["SelectionOrder"] = 0
				objects["Instance4"]["SliceScale"] = 1
				objects["Instance4"]["Selectable"] = false
				objects["Instance4"]["Active"] = false
				objects["Instance4"]["BackgroundColor3"] = Color3.new(1, 1, 1)

				objects["Instance5"]["AspectRatio"] = 1
				objects["Instance5"]["Name"] = "UIAspectRatioConstraint"
				objects["Instance5"]["Parent"] = objects["Instance4"]
				objects["Instance5"]["AspectType"] = Enum.AspectType.FitWithinMaxSize
				objects["Instance5"]["DominantAxis"] = Enum.DominantAxis.Width

				objects["Instance6"]["Visible"] = true
				objects["Instance6"]["FontSize"] = Enum.FontSize.Size14
				objects["Instance6"]["TextDirection"] = Enum.TextDirection.Auto
				objects["Instance6"]["Active"] = false
				objects["Instance6"]["TextStrokeTransparency"] = 1
				objects["Instance6"]["TextTruncate"] = Enum.TextTruncate.None
				objects["Instance6"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance6"]["ZIndex"] = 1
				objects["Instance6"]["BorderSizePixel"] = 0
				objects["Instance6"]["Draggable"] = false
				objects["Instance6"]["RichText"] = true
				objects["Instance6"]["Transparency"] = 1
				objects["Instance6"]["SelectionOrder"] = 0
				objects["Instance6"]["TextYAlignment"] = Enum.TextYAlignment.Center
				objects["Instance6"]["TextScaled"] = true
				objects["Instance6"]["TextWrap"] = true
				objects["Instance6"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
				objects["Instance6"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance6"]["Parent"] = objects["Instance4"]
				objects["Instance6"]["AnchorPoint"] = Vector2.new(0, 0.5)
				objects["Instance6"]["TextSize"] = 14
				objects["Instance6"]["Position"] = UDim2.new(1.25, 0, 0.5, 0)
				objects["Instance6"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance6"]["Size"] = UDim2.new(100, 0, 0.75, 0)
				objects["Instance6"]["BackgroundTransparency"] = 1
				objects["Instance6"]["LineHeight"] = 1
				objects["Instance6"]["BackgroundColor3"] = Color3.new(1, 1, 1)
				objects["Instance6"]["TextColor3"] = Color3.new(1, 1, 1)
				objects["Instance6"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance6"]["Text"] = "while"
				objects["Instance6"]["LayoutOrder"] = 0
				objects["Instance6"]["TextWrapped"] = true
				objects["Instance6"]["Rotation"] = 0
				objects["Instance6"]["TextTransparency"] = 0
				objects["Instance6"]["Name"] = "Label"
				objects["Instance6"]["TextXAlignment"] = Enum.TextXAlignment.Left
				objects["Instance6"]["ClipsDescendants"] = false
				objects["Instance6"]["MaxVisibleGraphemes"] = -1
				objects["Instance6"]["TextStrokeColor3"] = Color3.new(0, 0, 0)
				objects["Instance6"]["Selectable"] = false

				objects["Instance7"]["LayoutOrder"] = 0
				objects["Instance7"]["Active"] = false
				objects["Instance7"]["Parent"] = objects["Instance3"]
				objects["Instance7"]["AnchorPoint"] = Vector2.new(0.5, 1)
				objects["Instance7"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance7"]["ZIndex"] = 1
				objects["Instance7"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance7"]["Size"] = UDim2.new(0.8999999761581421, 0, 0, 1)
				objects["Instance7"]["Draggable"] = false
				objects["Instance7"]["Style"] = Enum.FrameStyle.Custom
				objects["Instance7"]["ClipsDescendants"] = false
				objects["Instance7"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance7"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance7"]["BackgroundTransparency"] = 0.949999988079071
				objects["Instance7"]["BorderSizePixel"] = 0
				objects["Instance7"]["Rotation"] = 0
				objects["Instance7"]["Transparency"] = 0.949999988079071
				objects["Instance7"]["Name"] = "Separator"
				objects["Instance7"]["SelectionOrder"] = 0
				objects["Instance7"]["Visible"] = true
				objects["Instance7"]["Selectable"] = false
				objects["Instance7"]["Position"] = UDim2.new(0.5, 0, 0, 0)
				objects["Instance7"]["BackgroundColor3"] = Color3.new(1, 1, 1)

				objects["Instance8"]["FillDirection"] = Enum.FillDirection.Vertical
				objects["Instance8"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Left
				objects["Instance8"]["VerticalFlex"] = Enum.UIFlexAlignment.None
				objects["Instance8"]["Parent"] = objects["Instance2"]
				objects["Instance8"]["VerticalAlignment"] = Enum.VerticalAlignment.Top
				objects["Instance8"]["SortOrder"] = Enum.SortOrder.LayoutOrder
				objects["Instance8"]["Name"] = "UIListLayout"
				objects["Instance8"]["Padding"] = UDim.new(0, 0)
				objects["Instance8"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic
				objects["Instance8"]["HorizontalFlex"] = Enum.UIFlexAlignment.None
			end

			obj.Autocomplete = objects.Instance0
			cursor:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
				local asize = obj.Autocomplete.AbsoluteSize
				local apos = cursor.AbsolutePosition + Vector2.new(cursor.AbsoluteSize.X + 15, 1)

				local fasize = frame.AbsoluteSize
				local fapos = frame.AbsolutePosition

				local endPoint1 = asize + apos
				local endPoint2 = fasize + fapos

				local shiftY = 1
				if endPoint1.Y > endPoint2.Y - footer.AbsoluteSize.Y - 3 then
					shiftY = endPoint2.Y - endPoint1.Y - footer.AbsoluteSize.Y - 3
				end

				local shiftX = 15
				if endPoint1.X > endPoint2.X then
					shiftX = 0 - asize.X - 15
				end

				obj.Autocomplete.Position = UDim2.new(1, shiftX, 0, shiftY)
			end)
		end

		do -- goto
			local objects = {
				["Instance0"] = Instance.new("Frame"),
				["Instance1"] = Instance.new("UIStroke"),
				["Instance2"] = Instance.new("TextLabel"),
				["Instance3"] = Instance.new("TextBox"),
				["Instance4"] = Instance.new("UIPadding"),
				["Instance5"] = Instance.new("UIStroke")
			}

			do
				objects["Instance0"]["LayoutOrder"] = 0
				objects["Instance0"]["Active"] = false
				objects["Instance0"]["Parent"] = frame
				objects["Instance0"]["AnchorPoint"] = Vector2.new(1, 0)
				objects["Instance0"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance0"]["ZIndex"] = 3
				objects["Instance0"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance0"]["Size"] = UDim2.new(0, 150, 0, 40)
				objects["Instance0"]["Draggable"] = false
				objects["Instance0"]["Style"] = Enum.FrameStyle.Custom
				objects["Instance0"]["ClipsDescendants"] = false
				objects["Instance0"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance0"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance0"]["BackgroundTransparency"] = 0.25
				objects["Instance0"]["BorderSizePixel"] = 0
				objects["Instance0"]["Rotation"] = 0
				objects["Instance0"]["Transparency"] = 0.25
				objects["Instance0"]["Name"] = "Goto"
				objects["Instance0"]["SelectionOrder"] = 0
				objects["Instance0"]["Visible"] = false
				objects["Instance0"]["Selectable"] = false
				objects["Instance0"]["Position"] = UDim2.new(1, -10, 0, 10)
				objects["Instance0"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255)

				objects["Instance1"]["Enabled"] = true
				objects["Instance1"]["Transparency"] = 0
				objects["Instance1"]["Name"] = "UIStroke"
				objects["Instance1"]["LineJoinMode"] = Enum.LineJoinMode.Miter
				objects["Instance1"]["Parent"] = objects["Instance0"]
				objects["Instance1"]["Thickness"] = 1
				objects["Instance1"]["Color"] = Color3.new(0, 0, 0)
				objects["Instance1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

				objects["Instance2"]["Visible"] = true
				objects["Instance2"]["FontSize"] = Enum.FontSize.Size14
				objects["Instance2"]["TextDirection"] = Enum.TextDirection.Auto
				objects["Instance2"]["Active"] = false
				objects["Instance2"]["TextStrokeTransparency"] = 1
				objects["Instance2"]["TextTruncate"] = Enum.TextTruncate.None
				objects["Instance2"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance2"]["ZIndex"] = 1
				objects["Instance2"]["BorderSizePixel"] = 0
				objects["Instance2"]["Draggable"] = false
				objects["Instance2"]["RichText"] = false
				objects["Instance2"]["Transparency"] = 1
				objects["Instance2"]["SelectionOrder"] = 0
				objects["Instance2"]["TextYAlignment"] = Enum.TextYAlignment.Center
				objects["Instance2"]["TextScaled"] = true
				objects["Instance2"]["TextWrap"] = true
				objects["Instance2"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
				objects["Instance2"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance2"]["Parent"] = objects["Instance0"]
				objects["Instance2"]["AnchorPoint"] = Vector2.new(0.5, 0)
				objects["Instance2"]["TextSize"] = 14
				objects["Instance2"]["Position"] = UDim2.new(0.5, 0, 0.05000000074505806, 0)
				objects["Instance2"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance2"]["Size"] = UDim2.new(1, 0, 0.30000001192092896, 0)
				objects["Instance2"]["BackgroundTransparency"] = 1
				objects["Instance2"]["LineHeight"] = 1
				objects["Instance2"]["BackgroundColor3"] = Color3.new(1, 1, 1)
				objects["Instance2"]["TextColor3"] = Color3.new(0.8, 0.8, 0.8)
				objects["Instance2"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance2"]["Text"] = "Go to line"
				objects["Instance2"]["LayoutOrder"] = 0
				objects["Instance2"]["TextWrapped"] = true
				objects["Instance2"]["Rotation"] = 0
				objects["Instance2"]["TextTransparency"] = 0
				objects["Instance2"]["Name"] = "Title"
				objects["Instance2"]["TextXAlignment"] = Enum.TextXAlignment.Center
				objects["Instance2"]["ClipsDescendants"] = false
				objects["Instance2"]["MaxVisibleGraphemes"] = -1
				objects["Instance2"]["TextStrokeColor3"] = Color3.new(0, 0, 0)
				objects["Instance2"]["Selectable"] = false

				objects["Instance3"]["LayoutOrder"] = 0
				objects["Instance3"]["FontSize"] = Enum.FontSize.Size14
				objects["Instance3"]["LineHeight"] = 1
				objects["Instance3"]["Active"] = true
				objects["Instance3"]["TextStrokeTransparency"] = 1
				objects["Instance3"]["SelectionStart"] = -1
				objects["Instance3"]["PlaceholderColor3"] = Color3.new(0.7, 0.7, 0.7)
				objects["Instance3"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance3"]["ZIndex"] = 1
				objects["Instance3"]["BorderSizePixel"] = 0
				objects["Instance3"]["TextEditable"] = true
				objects["Instance3"]["Draggable"] = false
				objects["Instance3"]["RichText"] = false
				objects["Instance3"]["Transparency"] = 0
				objects["Instance3"]["SelectionOrder"] = 0
				objects["Instance3"]["TextYAlignment"] = Enum.TextYAlignment.Center
				objects["Instance3"]["TextScaled"] = true
				objects["Instance3"]["BackgroundColor3"] = Color3.new(0, 0, 0)
				objects["Instance3"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal, true)
				objects["Instance3"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance3"]["Parent"] = objects["Instance0"]
				objects["Instance3"]["TextWrapped"] = true
				objects["Instance3"]["MaxVisibleGraphemes"] = -1
				objects["Instance3"]["Name"] = "Input"
				objects["Instance3"]["AnchorPoint"] = Vector2.new(0.5, 1)
				objects["Instance3"]["TextTransparency"] = 0
				objects["Instance3"]["TextDirection"] = Enum.TextDirection.Auto
				objects["Instance3"]["CursorPosition"] = -1
				objects["Instance3"]["ClipsDescendants"] = false
				objects["Instance3"]["PlaceholderText"] = "Line..."
				objects["Instance3"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance3"]["Size"] = UDim2.new(0.8999999761581421, 0, 0.44999998807907104, 0)
				objects["Instance3"]["TextStrokeColor3"] = Color3.new(0, 0, 0)
				objects["Instance3"]["Selectable"] = true
				objects["Instance3"]["ShowNativeInput"] = true
				objects["Instance3"]["TextColor3"] = Color3.new(1, 1, 1)
				objects["Instance3"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance3"]["Text"] = ""
				objects["Instance3"]["TextSize"] = 14
				objects["Instance3"]["Visible"] = true
				objects["Instance3"]["Rotation"] = 0
				objects["Instance3"]["MultiLine"] = false
				objects["Instance3"]["BackgroundTransparency"] = 0.5
				objects["Instance3"]["TextXAlignment"] = Enum.TextXAlignment.Center
				objects["Instance3"]["TextTruncate"] = Enum.TextTruncate.None
				objects["Instance3"]["ClearTextOnFocus"] = false
				objects["Instance3"]["Position"] = UDim2.new(0.5, 0, 0.8999999761581421, 0)
				objects["Instance3"]["TextWrap"] = true

				objects["Instance4"]["PaddingTop"] = UDim.new(0.150000006, 0)
				objects["Instance4"]["Name"] = "UIPadding"
				objects["Instance4"]["Parent"] = objects["Instance3"]
				objects["Instance4"]["PaddingBottom"] = UDim.new(0.150000006, 0)
				objects["Instance4"]["PaddingLeft"] = UDim.new(0, 0)
				objects["Instance4"]["PaddingRight"] = UDim.new(0, 0)

				objects["Instance5"]["Enabled"] = true
				objects["Instance5"]["Transparency"] = 0
				objects["Instance5"]["Name"] = "UIStroke"
				objects["Instance5"]["LineJoinMode"] = Enum.LineJoinMode.Miter
				objects["Instance5"]["Parent"] = objects["Instance3"]
				objects["Instance5"]["Thickness"] = 1
				objects["Instance5"]["Color"] = Color3.new(0.0784314, 0.0784314, 0.0784314)
				objects["Instance5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
			end

			obj.Goto = objects.Instance0
			objects.Instance3.Changed:Connect(function()
				local text = objects.Instance3.Text
				if not tonumber(text) and text ~= "" then
					objects.Instance3.Text = ""
				end
			end)

			objects.Instance3.FocusLost:Connect(function(enter)
				if enter then
					obj.Goto.Visible = false

					local line = tonumber(objects.Instance3.Text)
					objects.Instance3.Text = ""

					obj:SetEditing(true)
					repeat task.wait() until obj.Editing
					obj:JumpToLine(line)
				end
			end)
		end

		do -- find and replace
			local objects = {
				["Instance0"] = Instance.new("Frame"),
				["Instance1"] = Instance.new("UIStroke"),
				["Instance2"] = Instance.new("TextLabel"),
				["Instance3"] = Instance.new("TextBox"),
				["Instance4"] = Instance.new("UIPadding"),
				["Instance5"] = Instance.new("UIStroke"),
				["Instance6"] = Instance.new("TextBox"),
				["Instance7"] = Instance.new("UIStroke"),
				["Instance8"] = Instance.new("UIPadding"),
				["Instance9"] = Instance.new("TextButton"),
				["Instance10"] = Instance.new("UIStroke"),
				["Instance11"] = Instance.new("UIPadding")
			}

			do
				objects["Instance0"]["LayoutOrder"] = 0
				objects["Instance0"]["Active"] = false
				objects["Instance0"]["Parent"] = frame
				objects["Instance0"]["AnchorPoint"] = Vector2.new(1, 0)
				objects["Instance0"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance0"]["ZIndex"] = 4
				objects["Instance0"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance0"]["Size"] = UDim2.new(0, 150, 0, 64)
				objects["Instance0"]["Draggable"] = false
				objects["Instance0"]["Style"] = Enum.FrameStyle.Custom
				objects["Instance0"]["ClipsDescendants"] = false
				objects["Instance0"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance0"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance0"]["BackgroundTransparency"] = 0.25
				objects["Instance0"]["BorderSizePixel"] = 0
				objects["Instance0"]["Rotation"] = 0
				objects["Instance0"]["Transparency"] = 0.25
				objects["Instance0"]["Name"] = "Search"
				objects["Instance0"]["SelectionOrder"] = 0
				objects["Instance0"]["Visible"] = false
				objects["Instance0"]["Selectable"] = false
				objects["Instance0"]["Position"] = UDim2.new(1, -10, 0, 10)
				objects["Instance0"]["BackgroundColor3"] = Color3.new(0.137255, 0.137255, 0.137255)

				objects["Instance1"]["Enabled"] = true
				objects["Instance1"]["Transparency"] = 0
				objects["Instance1"]["Name"] = "UIStroke"
				objects["Instance1"]["LineJoinMode"] = Enum.LineJoinMode.Miter
				objects["Instance1"]["Parent"] = objects["Instance0"]
				objects["Instance1"]["Thickness"] = 1
				objects["Instance1"]["Color"] = Color3.new(0, 0, 0)
				objects["Instance1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

				objects["Instance2"]["Visible"] = true
				objects["Instance2"]["FontSize"] = Enum.FontSize.Size14
				objects["Instance2"]["TextDirection"] = Enum.TextDirection.Auto
				objects["Instance2"]["Active"] = false
				objects["Instance2"]["TextStrokeTransparency"] = 1
				objects["Instance2"]["TextTruncate"] = Enum.TextTruncate.None
				objects["Instance2"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance2"]["ZIndex"] = 1
				objects["Instance2"]["BorderSizePixel"] = 0
				objects["Instance2"]["Draggable"] = false
				objects["Instance2"]["RichText"] = false
				objects["Instance2"]["Transparency"] = 1
				objects["Instance2"]["SelectionOrder"] = 0
				objects["Instance2"]["TextYAlignment"] = Enum.TextYAlignment.Center
				objects["Instance2"]["TextScaled"] = true
				objects["Instance2"]["TextWrap"] = true
				objects["Instance2"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
				objects["Instance2"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance2"]["Parent"] = objects["Instance0"]
				objects["Instance2"]["AnchorPoint"] = Vector2.new(0.5, 0)
				objects["Instance2"]["TextSize"] = 14
				objects["Instance2"]["Position"] = UDim2.new(0.5, 0, 0.0312504768371582, 0)
				objects["Instance2"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance2"]["Size"] = UDim2.new(1, 0, 0.2020832896232605, 0)
				objects["Instance2"]["BackgroundTransparency"] = 1
				objects["Instance2"]["LineHeight"] = 1
				objects["Instance2"]["BackgroundColor3"] = Color3.new(1, 1, 1)
				objects["Instance2"]["TextColor3"] = Color3.new(0.8, 0.8, 0.8)
				objects["Instance2"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance2"]["Text"] = "Find & replace"
				objects["Instance2"]["LayoutOrder"] = 0
				objects["Instance2"]["TextWrapped"] = true
				objects["Instance2"]["Rotation"] = 0
				objects["Instance2"]["TextTransparency"] = 0
				objects["Instance2"]["Name"] = "Title"
				objects["Instance2"]["TextXAlignment"] = Enum.TextXAlignment.Center
				objects["Instance2"]["ClipsDescendants"] = false
				objects["Instance2"]["MaxVisibleGraphemes"] = -1
				objects["Instance2"]["TextStrokeColor3"] = Color3.new(0, 0, 0)
				objects["Instance2"]["Selectable"] = false

				objects["Instance3"]["LayoutOrder"] = 0
				objects["Instance3"]["FontSize"] = Enum.FontSize.Size14
				objects["Instance3"]["LineHeight"] = 1
				objects["Instance3"]["Active"] = true
				objects["Instance3"]["TextStrokeTransparency"] = 1
				objects["Instance3"]["SelectionStart"] = -1
				objects["Instance3"]["PlaceholderColor3"] = Color3.new(0.7, 0.7, 0.7)
				objects["Instance3"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance3"]["ZIndex"] = 1
				objects["Instance3"]["BorderSizePixel"] = 0
				objects["Instance3"]["TextEditable"] = true
				objects["Instance3"]["Draggable"] = false
				objects["Instance3"]["RichText"] = false
				objects["Instance3"]["Transparency"] = 0.5
				objects["Instance3"]["SelectionOrder"] = 0
				objects["Instance3"]["TextYAlignment"] = Enum.TextYAlignment.Center
				objects["Instance3"]["TextScaled"] = true
				objects["Instance3"]["BackgroundColor3"] = Color3.new(0, 0, 0)
				objects["Instance3"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal, true)
				objects["Instance3"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance3"]["Parent"] = objects["Instance0"]
				objects["Instance3"]["TextWrapped"] = true
				objects["Instance3"]["MaxVisibleGraphemes"] = -1
				objects["Instance3"]["Name"] = "Scan"
				objects["Instance3"]["AnchorPoint"] = Vector2.new(0.5, 1)
				objects["Instance3"]["TextTransparency"] = 0
				objects["Instance3"]["TextDirection"] = Enum.TextDirection.Auto
				objects["Instance3"]["CursorPosition"] = -1
				objects["Instance3"]["ClipsDescendants"] = false
				objects["Instance3"]["PlaceholderText"] = "Find..."
				objects["Instance3"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance3"]["Size"] = UDim2.new(0.8999999761581421, 0, 0.28124937415122986, 0)
				objects["Instance3"]["TextStrokeColor3"] = Color3.new(0, 0, 0)
				objects["Instance3"]["Selectable"] = true
				objects["Instance3"]["ShowNativeInput"] = true
				objects["Instance3"]["TextColor3"] = Color3.new(1, 1, 1)
				objects["Instance3"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance3"]["Text"] = ""
				objects["Instance3"]["TextSize"] = 14
				objects["Instance3"]["Visible"] = true
				objects["Instance3"]["Rotation"] = 0
				objects["Instance3"]["MultiLine"] = false
				objects["Instance3"]["BackgroundTransparency"] = 0.5
				objects["Instance3"]["TextXAlignment"] = Enum.TextXAlignment.Left
				objects["Instance3"]["TextTruncate"] = Enum.TextTruncate.None
				objects["Instance3"]["ClearTextOnFocus"] = false
				objects["Instance3"]["Position"] = UDim2.new(0.5, 0, 0.5649999976158142, 0)
				objects["Instance3"]["TextWrap"] = true

				objects["Instance4"]["PaddingTop"] = UDim.new(0.150000006, 0)
				objects["Instance4"]["Name"] = "UIPadding"
				objects["Instance4"]["Parent"] = objects["Instance3"]
				objects["Instance4"]["PaddingBottom"] = UDim.new(0.150000006, 0)
				objects["Instance4"]["PaddingLeft"] = UDim.new(0.0500000007, 0)
				objects["Instance4"]["PaddingRight"] = UDim.new(0, 0)

				objects["Instance5"]["Enabled"] = true
				objects["Instance5"]["Transparency"] = 0
				objects["Instance5"]["Name"] = "UIStroke"
				objects["Instance5"]["LineJoinMode"] = Enum.LineJoinMode.Miter
				objects["Instance5"]["Parent"] = objects["Instance3"]
				objects["Instance5"]["Thickness"] = 1
				objects["Instance5"]["Color"] = Color3.new(0.0784314, 0.0784314, 0.0784314)
				objects["Instance5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

				objects["Instance6"]["LayoutOrder"] = 0
				objects["Instance6"]["FontSize"] = Enum.FontSize.Size14
				objects["Instance6"]["LineHeight"] = 1
				objects["Instance6"]["Active"] = true
				objects["Instance6"]["TextStrokeTransparency"] = 1
				objects["Instance6"]["SelectionStart"] = -1
				objects["Instance6"]["PlaceholderColor3"] = Color3.new(0.7, 0.7, 0.7)
				objects["Instance6"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance6"]["ZIndex"] = 1
				objects["Instance6"]["BorderSizePixel"] = 0
				objects["Instance6"]["TextEditable"] = true
				objects["Instance6"]["Draggable"] = false
				objects["Instance6"]["RichText"] = false
				objects["Instance6"]["Transparency"] = 0.5
				objects["Instance6"]["SelectionOrder"] = 0
				objects["Instance6"]["TextYAlignment"] = Enum.TextYAlignment.Center
				objects["Instance6"]["TextScaled"] = true
				objects["Instance6"]["BackgroundColor3"] = Color3.new(0, 0, 0)
				objects["Instance6"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal, true)
				objects["Instance6"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance6"]["Parent"] = objects["Instance0"]
				objects["Instance6"]["TextWrapped"] = true
				objects["Instance6"]["MaxVisibleGraphemes"] = -1
				objects["Instance6"]["Name"] = "Replace"
				objects["Instance6"]["AnchorPoint"] = Vector2.new(0, 1)
				objects["Instance6"]["TextTransparency"] = 0
				objects["Instance6"]["TextDirection"] = Enum.TextDirection.Auto
				objects["Instance6"]["CursorPosition"] = 1
				objects["Instance6"]["ClipsDescendants"] = false
				objects["Instance6"]["PlaceholderText"] = "Replace..."
				objects["Instance6"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance6"]["Size"] = UDim2.new(0.6499999761581421, 0, 0.2809999883174896, 0)
				objects["Instance6"]["TextStrokeColor3"] = Color3.new(0, 0, 0)
				objects["Instance6"]["Selectable"] = true
				objects["Instance6"]["ShowNativeInput"] = true
				objects["Instance6"]["TextColor3"] = Color3.new(1, 1, 1)
				objects["Instance6"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance6"]["Text"] = ""
				objects["Instance6"]["TextSize"] = 14
				objects["Instance6"]["Visible"] = true
				objects["Instance6"]["Rotation"] = 0
				objects["Instance6"]["MultiLine"] = false
				objects["Instance6"]["BackgroundTransparency"] = 0.5
				objects["Instance6"]["TextXAlignment"] = Enum.TextXAlignment.Left
				objects["Instance6"]["TextTruncate"] = Enum.TextTruncate.None
				objects["Instance6"]["ClearTextOnFocus"] = false
				objects["Instance6"]["Position"] = UDim2.new(0.05000000074505806, 0, 0.925000011920929, 0)
				objects["Instance6"]["TextWrap"] = true

				objects["Instance7"]["Enabled"] = true
				objects["Instance7"]["Transparency"] = 0
				objects["Instance7"]["Name"] = "UIStroke"
				objects["Instance7"]["LineJoinMode"] = Enum.LineJoinMode.Miter
				objects["Instance7"]["Parent"] = objects["Instance6"]
				objects["Instance7"]["Thickness"] = 1
				objects["Instance7"]["Color"] = Color3.new(0.0784314, 0.0784314, 0.0784314)
				objects["Instance7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

				objects["Instance8"]["PaddingTop"] = UDim.new(0.150000006, 0)
				objects["Instance8"]["Name"] = "UIPadding"
				objects["Instance8"]["Parent"] = objects["Instance6"]
				objects["Instance8"]["PaddingBottom"] = UDim.new(0.150000006, 0)
				objects["Instance8"]["PaddingLeft"] = UDim.new(0.075000003, 0)
				objects["Instance8"]["PaddingRight"] = UDim.new(0, 0)

				objects["Instance9"]["Visible"] = true
				objects["Instance9"]["FontSize"] = Enum.FontSize.Size14
				objects["Instance9"]["TextDirection"] = Enum.TextDirection.Auto
				objects["Instance9"]["Active"] = true
				objects["Instance9"]["TextStrokeTransparency"] = 1
				objects["Instance9"]["TextTruncate"] = Enum.TextTruncate.None
				objects["Instance9"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY
				objects["Instance9"]["ZIndex"] = 1
				objects["Instance9"]["BorderSizePixel"] = 0
				objects["Instance9"]["Draggable"] = false
				objects["Instance9"]["RichText"] = false
				objects["Instance9"]["Modal"] = false
				objects["Instance9"]["AutoButtonColor"] = true
				objects["Instance9"]["Transparency"] = 0.5
				objects["Instance9"]["SelectionOrder"] = 0
				objects["Instance9"]["TextYAlignment"] = Enum.TextYAlignment.Center
				objects["Instance9"]["TextScaled"] = true
				objects["Instance9"]["TextWrap"] = true
				objects["Instance9"]["FontFace"] = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
				objects["Instance9"]["BorderMode"] = Enum.BorderMode.Outline
				objects["Instance9"]["Parent"] = objects["Instance0"]
				objects["Instance9"]["AnchorPoint"] = Vector2.new(0, 1)
				objects["Instance9"]["Style"] = Enum.ButtonStyle.Custom
				objects["Instance9"]["Position"] = UDim2.new(0.7350000143051147, 0, 0.925000011920929, 0)
				objects["Instance9"]["BackgroundColor3"] = Color3.new(0, 0, 0)
				objects["Instance9"]["Selected"] = false
				objects["Instance9"]["TextSize"] = 14
				objects["Instance9"]["Size"] = UDim2.new(0.2150000035762787, 0, 0.2809999883174896, 0)
				objects["Instance9"]["BackgroundTransparency"] = 0.5
				objects["Instance9"]["TextWrapped"] = true
				objects["Instance9"]["ClipsDescendants"] = false
				objects["Instance9"]["TextColor3"] = Color3.new(1, 1, 1)
				objects["Instance9"]["BorderColor3"] = Color3.new(0, 0, 0)
				objects["Instance9"]["Text"] = "all"
				objects["Instance9"]["AutomaticSize"] = Enum.AutomaticSize.None
				objects["Instance9"]["LayoutOrder"] = 0
				objects["Instance9"]["Rotation"] = 0
				objects["Instance9"]["LineHeight"] = 1
				objects["Instance9"]["Name"] = "TextButton"
				objects["Instance9"]["TextXAlignment"] = Enum.TextXAlignment.Center
				objects["Instance9"]["Selectable"] = true
				objects["Instance9"]["MaxVisibleGraphemes"] = -1
				objects["Instance9"]["TextStrokeColor3"] = Color3.new(0, 0, 0)
				objects["Instance9"]["TextTransparency"] = 0

				objects["Instance10"]["Enabled"] = true
				objects["Instance10"]["Transparency"] = 0
				objects["Instance10"]["Name"] = "UIStroke"
				objects["Instance10"]["LineJoinMode"] = Enum.LineJoinMode.Miter
				objects["Instance10"]["Parent"] = objects["Instance9"]
				objects["Instance10"]["Thickness"] = 1
				objects["Instance10"]["Color"] = Color3.new(0.0784314, 0.0784314, 0.0784314)
				objects["Instance10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border

				objects["Instance11"]["PaddingTop"] = UDim.new(0.150000006, 0)
				objects["Instance11"]["Name"] = "UIPadding"
				objects["Instance11"]["Parent"] = objects["Instance9"]
				objects["Instance11"]["PaddingBottom"] = UDim.new(0.150000006, 0)
				objects["Instance11"]["PaddingLeft"] = UDim.new(0, 0)
				objects["Instance11"]["PaddingRight"] = UDim.new(0, 0)
			end

			obj.Replace = objects.Instance0
			
			local function isDown(key)
				return uis:IsKeyDown(Enum.KeyCode["Left" .. key]) or uis:IsKeyDown(Enum.KeyCode["Right" .. key])
			end

			uis.InputBegan:Connect(function(input)
				if obj.ControlButtons then
					local tb = uis:GetFocusedTextBox()
					if tb and tb:IsDescendantOf(frame) and isDown("Control") then
						if input.KeyCode == Enum.KeyCode.G then
							obj.Replace.Visible = false
							obj.Goto.Visible = not obj.Goto.Visible or tb ~= obj.Goto.Input
							
							if obj.Goto.Visible then
								obj.Goto.Input:CaptureFocus()
							else
								obj:SetEditing(true)
							end
						elseif input.KeyCode == Enum.KeyCode.F then
							obj.Goto.Visible = false
							obj.Replace.Visible = not obj.Replace.Visible or tb ~= objects.Instance3

							if obj.Replace.Visible then
								objects.Instance3:CaptureFocus()
							else
								obj:SetEditing(true)
							end
						elseif input.KeyCode == Enum.KeyCode.H then
							obj.Goto.Visible = false
							obj.Replace.Visible = not obj.Replace.Visible or tb ~= objects.Instance3 and tb ~= objects.Instance6

							if obj.Replace.Visible then
								if objects.Instance3.Text == "" then
									objects.Instance3:CaptureFocus()
								else
									objects.Instance6:CaptureFocus()
								end
							else
								obj:SetEditing(true)
							end
						end
					end
				else
					obj.Goto.Visible = false
					obj.Replace.Visible = false
				end
			end)

			objects.Instance3.FocusLost:Connect(function(enter)
				if enter then
					obj:FindNext(objects.Instance3.Text)
					objects.Instance3:CaptureFocus()
				end
			end)

			objects.Instance3.Changed:Connect(function()
				objects.Instance3.Text = objects.Instance3.Text:gsub("[\0\r\n]", "")
			end)

			objects.Instance6.Changed:Connect(function()
				objects.Instance6.Text = objects.Instance6.Text:gsub("[\0\r\n]", "")
			end)

			objects.Instance6.FocusLost:Connect(function(enter)
				if enter then
					if not obj:IsValidRange() then
						obj:FindNext(objects.Instance3.Text)
						objects.Instance6:CaptureFocus()
					else
						obj:ReplaceSelection(objects.Instance6.Text)
						obj:FindNext(objects.Instance3.Text)
						objects.Instance6:CaptureFocus()
					end
				end
			end)

			objects.Instance9.MouseButton1Click:Connect(function()
				if objects.Instance6.Text:lower():find(objects.Instance3.Text:lower(), 1, true) then return end

				while obj:FindNext(objects.Instance3.Text, true) do
					obj:ReplaceSelection(objects.Instance6.Text)
				end
			end)
		end

		setupEditBox(obj)
		setupMouseSelection(obj)
		resetAutocomplete(obj)

		return frame
	end

	funcs.JumpToLine = function(self, line)
		if not line then return end

		local lines = self.Lines
		local line = math.clamp(line, 1, #lines)

		self:MoveCursor(#lines[line], line - 1)
		self:JumpToCursor()
	end

	funcs.GetTextAfterCursor = function(self, allLines)
		return allLines and table.concat(self.Lines, "\n", self.CursorY + 1):sub(self.CursorX + 1) or self.Lines[self.CursorY + 1]:sub(self.CursorX + 1)
	end

	funcs.FindNext = function(self, toFind: string, noupdate)
		if #toFind == 0 then
			self:ResetSelection()
			return false
		end

		toFind = toFind:lower()

		local shift = self.CursorX + #toFind
		local textAfterCursor = self:GetTextAfterCursor(true):sub(#toFind):lower()
		local found = textAfterCursor:find(toFind)

		if not found then
			self.CursorX = 0
			self.CursorY = 0
			shift = 0

			textAfterCursor = table.concat(self.Lines, "\n"):lower()
			found = textAfterCursor:find(toFind)
		end

		if found then
			local old = self.CursorY
			self.CursorY += simpleCount(textAfterCursor:sub(1, found - 1), "\n")
			if self.CursorY ~= old then
				shift = 0
			end

			local found, extends = self.Lines[self.CursorY + 1]:sub(math.max(shift, 1)):lower():find(toFind)
			if self.CursorY == old then
				shift -= 1
			end

			if not found then
				self.CursorY += 1
				if self.CursorY >= #self.Lines then
					self.CursorY = 0
				end

				return self:FindNext(toFind)
			end

			self.CursorX = found + shift
			self.SelectionRange = {{found-1+shift,self.CursorY},{extends+shift,self.CursorY}}

			if self:GetSelectionText():lower() ~= toFind then
				self.SelectionRange = {{found+shift,self.CursorY},{extends+shift+1,self.CursorY}}
			end

			self.CursorX = self.SelectionRange[2][1]

			if not noupdate then
				self:JumpToCursor()
				task.spawn(self.SetCopyableSelection, self)
			end
		end

		return not not found
	end

	funcs.ReplaceSelection = function(self, toReplace: string)
		if not self:IsValidRange() then return end

		local x = self.SelectionRange[1][1]
		self:DeleteRange(self.SelectionRange,false,false)
		self.CursorX = x
		self:AppendText(toReplace)
		self.SelectionRange = {{-1,-1},{-1,-1}}
		self:Refresh()
	end

	funcs.GetSelectionText = function(self)
		if not self:IsValidRange() then return "" end

		local selectionRange = self.SelectionRange
		local selX,selY = selectionRange[1][1], selectionRange[1][2]
		local sel2X,sel2Y = selectionRange[2][1], selectionRange[2][2]
		local deltaLines = sel2Y-selY
		local lines = self.Lines

		if not lines[selY+1] or not lines[sel2Y+1] then return "" end

		if deltaLines == 0 then
			return self:ConvertText(lines[selY+1]:sub(selX+1,sel2X), false)
		end

		local leftSub = lines[selY+1]:sub(selX+1)
		local rightSub = lines[sel2Y+1]:sub(1,sel2X)

		local result = leftSub.."\n" 
		for i = selY+1,sel2Y-1 do
			result = result..lines[i+1].."\n"
		end
		result = result..rightSub

		return self:ConvertText(result,false)
	end

	funcs.SetCopyableSelection = function(self)
		self:SetEditing(true)
		while not self.Editing do task.wait() end

		local text = self:GetSelectionText()
		local editBox = self.GuiElems.EditBox

		self.EditBoxCopying = true
		editBox.Text = emptyChar .. text
		editBox.SelectionStart = 2
		editBox.CursorPosition = #editBox.Text + 1
	end

	funcs.QuickShift = function(self,lr)
		local line = self.Lines[self.CursorY+1] or ""

		if lr then
			self.CursorX = self.CursorX - 1 - (line:sub(self.CursorX-3,self.CursorX) == tabReplacement and 3 or 0)
		else
			self.CursorX = self.CursorX + 1 + (line:sub(self.CursorX+1,self.CursorX+4) == tabReplacement and 3 or 0)
		end
	end

	funcs.GetLen = function(self, byte)
		local byte = byte:byte()
		return byte and (byte >= 0 and byte <= 127 and 1
			or byte >= 192 and byte <= 223 and 2
			or byte >= 224 and byte <= 239 and 3
			or byte >= 240 and byte <= 247 and 4)
			or 0
	end

	funcs.Shift = function(self, dir, upd, reset)
		local succeed = true
		
		if reset == true then
			self:ResetSelection(true)
		elseif reset == false then
			if self.SelectionStart[1] == -1 then
				self.SelectionStart[1] = self.CursorX
			end
			if self.SelectionStart[2] == -1 then
				self.SelectionStart[2] = self.CursorY
			end
		end

		if dir == "Left" then
			local line = self.Lines[self.CursorY + 1] or ""
			local str = ""

			repeat
				self:QuickShift(true)
				str = line:sub(self.CursorX + 1, self.CursorX + 1) .. str
			until self:GetLen(str) == #str or #str == 4 or self.CursorX <= 0

			if self.CursorX < 0 then
				self.CursorY = self.CursorY - 1
				if self.CursorY == -1 then
					self.CursorY = 0
					succeed = false
				else
					self.CursorX = #(self.Lines[self.CursorY + 1] or "")
				end
			end

			self.FloatCursorX = self.CursorX
		elseif dir == "Right" then
			local line = self.Lines[self.CursorY + 1] or ""
			local str = ""

			repeat
				self:QuickShift(false)
				str = line:sub(self.CursorX + 1, self.CursorX + 1) .. str
			until self:GetLen(str) == #str or #str == 4 or self.CursorX >= #line

			if self.CursorX > #line then
				if self.CursorY + 1 < #self.Lines then
					self.CursorY = self.CursorY + 1
					self.CursorX = 0
				else
					self.CursorX = #line
					succeed = false
				end
			end

			self.FloatCursorX = self.CursorX
		elseif dir == "Up" then
			if self.CursorY - 1 ~= -1 then
				self.CursorX = self.FloatCursorX
				self.CursorY = self.CursorY - 1

				local line = self.Lines[self.CursorY + 1] or ""
				if self.CursorX > #line then
					self.CursorX = #line
				end

				self.FloatCursorX = self.CursorX
			else
				succeed = false
				self.CursorX = 0
			end
		elseif dir == "Down" then
			if self.CursorY + 1 < #self.Lines then
				self.CursorX = self.FloatCursorX
				self.CursorY = self.CursorY + 1

				local line = self.Lines[self.CursorY + 1] or ""
				if self.CursorX > #line then
					self.CursorX = #line
				end

				self.FloatCursorX = self.CursorX
			else
				succeed = false
				self.CursorX = #(self.Lines[self.CursorY + 1] or "")
			end
		end

		if reset == false then
			if self.CursorY < self.SelectionStart[2] or self.CursorY == self.SelectionStart[2] and self.CursorX < self.SelectionStart[1] then
				self.SelectionRange[1][1] = self.CursorX
				self.SelectionRange[1][2] = self.CursorY
				self.SelectionRange[2][1] = self.SelectionStart[1]
				self.SelectionRange[2][2] = self.SelectionStart[2]
			else
				self.SelectionRange[2][1] = self.CursorX
				self.SelectionRange[2][2] = self.CursorY
				self.SelectionRange[1][1] = self.SelectionStart[1]
				self.SelectionRange[1][2] = self.SelectionStart[2]
			end
		end

		if upd then
			if reset == false then
				task.spawn(self.SetCopyableSelection, self)
			end

			self:UpdateCursor()
			self:Refresh()
		end
		
		return succeed
	end

	funcs.GetSymbolAtCursor = function(self, back)
		return self.Lines[self.CursorY + 1]:sub(self.CursorX + (back and 0 or 1), self.CursorX + (back and 0 or 1))
	end

	funcs.ConnectEditBoxEvent = function(self)
		if self.EditBoxEvent then
			self.EditBoxEvent:Disconnect()
		end

		local function isDown(key)
			return uis:IsKeyDown(Enum.KeyCode["Left" .. key]) or uis:IsKeyDown(Enum.KeyCode["Right" .. key])
		end

		self.EditBoxEvent = uis.InputBegan:Connect(function(input)
			if input.UserInputType ~= Enum.UserInputType.Keyboard then return end

			local keycodes = Enum.KeyCode
			local keycode = input.KeyCode

			local function setupMove(key,func,isCtrl)
				local endCon,finished
				endCon = uis.InputEnded:Connect(function(input)
					if input.KeyCode ~= key and (isCtrl and isDown("Control") or not isCtrl) then return end
					endCon:Disconnect()
					finished = true
				end)
				func()
				Lib.FastWait(0.5)
				while not finished do func() Lib.FastWait(0.03) end
			end

			if keycode == keycodes.Down then
				setupMove(keycodes.Down,function()
					if not self.Autocompleting then
						if self:Shift("Down", true, not isDown("Shift")) and isDown("Alt") then
							local prevLine = self.Lines[self.CursorY]
							local currLine = self.Lines[self.CursorY + 1]

							self.Lines[self.CursorY] = currLine
							self.Lines[self.CursorY + 1] = prevLine

							self:ProcessTextChange()
						end
					else
						autocompleteIndex += 1
						updateAutocompletes(self)
					end
				end)

				task.spawn(self.SetCopyableSelection, self)
			elseif keycode == keycodes.Up then
				setupMove(keycodes.Up,function()
					if not self.Autocompleting then
						if self:Shift("Up", true, not isDown("Shift")) and isDown("Alt") then
							local prevLine = self.Lines[self.CursorY + 2]
							local currLine = self.Lines[self.CursorY + 1]

							self.Lines[self.CursorY + 2] = currLine
							self.Lines[self.CursorY + 1] = prevLine

							self:ProcessTextChange()
						end
					else
						autocompleteIndex -= 1
						updateAutocompletes(self)
					end
				end)

				task.spawn(self.SetCopyableSelection, self)
			elseif keycode == keycodes.Left then
				setupMove(keycodes.Left,function()
					repeat
						self:Shift("Left", not isDown("Control"), not isDown("Shift"))
					until not isDown("Control") or not isValidString(self:GetSymbolAtCursor(true))

					self:UpdateCursor()
					self:Refresh()
				end)

				task.spawn(self.SetCopyableSelection, self)
			elseif keycode == keycodes.Right then
				setupMove(keycodes.Right,function()
					repeat
						self:Shift("Right", not isDown("Control"), not isDown("Shift"))
					until not isDown("Control") or not isValidString(self:GetSymbolAtCursor(false))

					self:UpdateCursor()
					self:Refresh()
				end)

				task.spawn(self.SetCopyableSelection, self)
			elseif keycode == keycodes.Delete then
				setupMove(keycodes.Delete,function()
					local startRange,endRange
					if self:IsValidRange() then
						startRange = self.SelectionRange[1]
						endRange = self.SelectionRange[2]
					else
						startRange = {self.CursorX,self.CursorY}
					end

					if not endRange then
						local line = self.Lines[self.CursorY+1] or ""
						local endCursorX = self.CursorX + 1 + (line:sub(self.CursorX+1,self.CursorX+4) == tabReplacement and 3 or 0)
						local endCursorY = self.CursorY
						if endCursorX > #line then
							endCursorY = endCursorY + 1
							endCursorX = 0
						end
						self:UpdateCursor()

						endRange = endRange or {endCursorX,endCursorY}
					end

					self:DeleteRange({startRange,endRange},false,true)
					self:ResetSelection(true)
					self:Refresh()
				end)
			elseif isDown("Control") then
				if keycode == keycodes.A then
					self.SelectionRange = {{0,0},{#self.Lines[#self.Lines],#self.Lines-1}}
					task.spawn(self.SetCopyableSelection, self)
					self:Refresh()
				elseif keycode == keycodes.Z then
					if #self.History > 0 then
						local prev = table.remove(self.History, #self.History)
						table.insert(self.RedoHistory, 1, {lines = table.clone(self.Lines), cursorX = self.CursorX, cursorY = self.CursorY, viewX = self.ViewX, viewY = self.ViewY})

						self.Lines = table.clone(prev.lines)
						self.CursorX = prev.cursorX or 0
						self.CursorY = prev.cursorY or 0
						self.ViewX = prev.viewX or 0
						self.ViewY = prev.viewY or 0

						self.FromHistory = true
						self:ProcessTextChange()
						self.FromHistory = false
					end
				elseif keycode == keycodes.Y then
					if #self.RedoHistory > 0 then
						local nextState = table.remove(self.RedoHistory, 1)
						table.insert(self.History, {lines = table.clone(self.Lines), cursorX = self.CursorX, cursorY = self.CursorY, viewX = self.ViewX, viewY = self.ViewY})

						self.Lines = table.clone(nextState.lines)
						self.CursorX = nextState.cursorX or 0
						self.CursorY = nextState.cursorY or 0
						self.ViewX = nextState.viewX or 0
						self.ViewY = nextState.viewY or 0

						self.FromHistory = true
						self:ProcessTextChange()
						self.FromHistory = false
					end
				elseif keycode == keycodes.X then
					setupMove(keycodes.X,function()
						if self:IsValidRange() then
							self:DeleteRange(self.SelectionRange,false,true)
						else
							local toCopy = ""
							if #self.Lines > 1 then
								toCopy = table.remove(self.Lines, self.CursorY + 1)
							else
								toCopy = self.Lines[1]
								self.Lines[1] = ""
							end

							if toclipboard then
								toclipboard(toCopy)
							end
						end

						self:ResetSelection(true)
						self:ProcessTextChange()
						self:Refresh()
					end,true)
				elseif keycode == keycodes.Slash then
					if self:IsValidRange() and self.SelectionRange[1][2] ~= self.SelectionRange[2][2] then
						local s, l = false, false
						for i = math.min(self.SelectionRange[1][2], self.SelectionRange[2][2]), math.max(self.SelectionRange[1][2], self.SelectionRange[2][2]) do
							s, l = self:CommentLine(i + 1, true)
						end

						if s then
							self.SelectionRange[2][1] += (l and 2 or -2)
						end
					else
						self:CommentLine(self.CursorY + 1, true)
					end

					self:ProcessTextChange()
					self:Refresh()
				end
			end
		end)
	end
	
	funcs.AddToHistory = function(self)
		if #self.History >= self.MaxHistory then
			table.remove(self.History, 1)
		end

		table.insert(self.History, {lines = table.clone(self.Lines), cursorX = self.CursorX, cursorY = self.CursorY, viewX = self.ViewX, viewY = self.ViewY})
		self.RedoHistory = { }
	end
	
	funcs.CommentLine = function(self, lineNum, dontRefresh)
		local line : string = self.Lines[lineNum]
		local didComment = false
		local success = false
		
		for i = 1, #line do
			local v = line:sub(i,i)
			if v:gsub("[ \n\r\f\t\0]", "") ~= "" then
				success = true
				
				if v == "-" and line:sub(i + 1, i + 1) == "-" then
					self.Lines[lineNum] = line:sub(1, i - 1) .. line:sub(i + 2)
				else
					didComment = true
					self.Lines[lineNum] = line:sub(1, i - 1) .. "--" .. line:sub(i)
				end

				break
			end
		end
		
		if not dontRefresh then
			self:ProcessTextChange()
			self:Refresh()
		end
		
		return success, didComment
	end

	funcs.DisconnectEditBoxEvent = function(self)
		if self.EditBoxEvent then
			self.EditBoxEvent:Disconnect()
		end
	end

	funcs.ResetSelection = function(self,norefresh)
		self.SelectionRange = {{-1,-1},{-1,-1}}
		self.SelectionStart = {-1,-1}
		if not norefresh then self:Refresh() end
	end

	funcs.IsValidRange = function(self,range)
		local selectionRange = range or self.SelectionRange
		local selX,selY = selectionRange[1][1], selectionRange[1][2]
		local sel2X,sel2Y = selectionRange[2][1], selectionRange[2][2]

		if selX == -1 or (selX == sel2X and selY == sel2Y) then return false end

		return true
	end

	funcs.DeleteRange = function(self,range,noprocess,updatemouse)
		range = range or self.SelectionRange
		if not self:IsValidRange(range) then return end

		local lines = self.Lines
		local selX,selY = range[1][1], range[1][2]
		local sel2X,sel2Y = range[2][1], range[2][2]
		local deltaLines = sel2Y-selY

		if not lines[selY+1] or not lines[sel2Y+1] then return end

		local leftSub = lines[selY+1]:sub(1,selX)
		local rightSub = lines[sel2Y+1]:sub(sel2X+1)
		lines[selY+1] = leftSub..rightSub

		local remove = table.remove
		for i = 1,deltaLines do
			remove(lines,selY+2)
		end

		if range == self.SelectionRange then self.SelectionRange = {{-1,-1},{-1,-1}} end
		if updatemouse then
			self.CursorX = selX
			self.CursorY = selY
			self:UpdateCursor()
		end

		if not noprocess then
			self:ProcessTextChange()
		end
	end

	funcs.AppendText = function(self, text)
		self:DeleteRange(nil,true,true)

		local lines,cursorX,cursorY = self.Lines,self.CursorX,self.CursorY
		local line = lines[cursorY+1]
		local before = line:sub(1,cursorX)
		local after = line:sub(cursorX+1)

		text = text:gsub("\r\n","\n")
		text = self:ConvertText(text, true)

		local textLines = text:split("\n")
		local insert = table.insert

		for i = 1,#textLines do
			local linePos = cursorY+i
			if i > 1 then insert(lines,linePos,"") end

			local textLine = textLines[i]
			local newBefore = (i == 1 and before or "")
			local newAfter = (i == #textLines and after or "")

			lines[linePos] = newBefore..textLine..newAfter
		end

		if #textLines > 1 then cursorX = 0 end

		self:ProcessTextChange()
		self.CursorX = cursorX + #textLines[#textLines]
		self.CursorY = cursorY + #textLines-1
		self:JumpToCursor()
	end

	funcs.ScrollDelta = function(self,x,y)
		self.ScrollV:ScrollTo(self.ScrollV.Index + y)
		self.ScrollH:ScrollTo(self.ScrollH.Index + x)
	end

	-- x and y starts at 0
	funcs.TabAdjust = function(self,x,y)
		local lines = self.Lines
		local line = lines[y+1]
		x=x+1

		if line then
			local left = line:sub(x-1,x-1)
			local middle = line:sub(x,x)
			local right = line:sub(x+1,x+1)
			local selRange = (#left > 0 and left or " ") .. (#middle > 0 and middle or " ") .. (#right > 0 and right or " ")

			for i,v in tabJumps do
				if selRange:find(i) then
					return v
				end
			end
		end
		return 0
	end

	funcs.SafeFocus = function(self)
		self.FocusIgnore = true
		repeat task.wait() until self.Editing
		self.FocusIgnore = false
		self.EditSkip = true
		self.GuiElems.EditBox.Text = emptyChar
	end

	funcs.SetEditing = function(self,on,input)
		self:UpdateCursor(input)

		if on and self.TextEditable then	
			if self.Editable and not self.Editing then
				task.spawn(self.SafeFocus, self)
				self.GuiElems.EditBox.Text = emptyChar
				self.GuiElems.EditBox:CaptureFocus()
				self.GuiElems.EditBox.CursorPosition = 2
			end
		else
			self.GuiElems.EditBox:ReleaseFocus()
		end
	end

	funcs.CursorAnim = function(self,on)
		local cursor = self.GuiElems.Cursor
		local animTime = tick()
		self.LastAnimTime = animTime

		if not on then return end

		lineTweens.Invis:Cancel()
		lineTweens.Vis:Cancel()
		cursor.BackgroundTransparency = 0

		coroutine.wrap(function()
			while self.Editable do
				Lib.FastWait(0.5)
				if self.LastAnimTime ~= animTime then return end
				lineTweens.Invis:Play()
				Lib.FastWait(0.4)
				if self.LastAnimTime ~= animTime then return end
				lineTweens.Vis:Play()
				Lib.FastWait(0.2)
			end
		end)()
	end

	funcs.MoveCursor = function(self,x,y)
		self.CursorX = x
		self.CursorY = y
		self:UpdateCursor()
		self:Refresh()
	end

	funcs.JumpToCursor = function(self)
		local linesFrame = self.Frame.Lines
		local hSize = math.max(0, linesFrame.AbsoluteSize.X)
		local vSize = math.max(0, linesFrame.AbsoluteSize.Y)
		local maxLines = math.ceil(vSize / self.FontSize)
		local maxCols = math.ceil(hSize / math.ceil(self.FontSize / self.Colors.WidthDivider))
		local cy : number = self.CursorY

		if cy < self.ViewY + 1 then
			self.ViewY = math.max(0, cy)
		elseif cy > self.ViewY + maxLines then
			self.ViewY = math.max(0, cy - maxLines + 2)
		end

		if self.CursorX < self.ViewX + 1 then
			self.ViewX = math.max(0, self.CursorX - 1)
		elseif self.CursorX > self.ViewX + maxCols then
			self.ViewX = math.max(0, self.CursorX - maxCols + 2)
		end

		self:Refresh()
	end


	funcs.UpdateCursor = function(self,input)
		local linesFrame = self.GuiElems.LinesFrame
		local cursor = self.GuiElems.Cursor			
		local hSize = math.max(0,linesFrame.AbsoluteSize.X)
		local vSize = math.max(0,linesFrame.AbsoluteSize.Y)
		local maxLines = math.ceil(vSize / self.FontSize)
		local maxCols = math.ceil(hSize / math.ceil(self.FontSize/2))
		local viewX,viewY = self.ViewX,self.ViewY
		local totalLinesStr = tostring(#self.Lines)
		local fontWidth = math.ceil(self.FontSize / self.Colors.WidthDivider)
		local linesOffset = #totalLinesStr*fontWidth + 4*fontWidth

		if input then
			local linesFrame = self.GuiElems.LinesFrame
			local frameX,frameY = linesFrame.AbsolutePosition.X,linesFrame.AbsolutePosition.Y
			local mouseX,mouseY = input.Position.X,input.Position.Y
			local fontSizeX,fontSizeY = math.ceil(self.FontSize/self.Colors.WidthDivider),self.FontSize

			self.CursorX = self.ViewX + math.round((mouseX - frameX) / fontSizeX)
			self.CursorY = self.ViewY + math.floor((mouseY - frameY) / fontSizeY)
		end

		local cursorX,cursorY = self.CursorX,self.CursorY

		local line = self.Lines[cursorY+1] or ""
		if cursorX > #line then cursorX = #line
		elseif cursorX < 0 then cursorX = 0 end

		if cursorY >= #self.Lines then
			cursorY = math.max(0,#self.Lines-1)
		elseif cursorY < 0 then
			cursorY = 0
		end

		cursorX = cursorX + self:TabAdjust(cursorX,cursorY)

		self.CursorX = cursorX
		self.CursorY = cursorY

		local cursorVisible = (cursorX >= viewX) and (cursorY >= viewY) and (cursorX <= viewX + maxCols - 1) and (cursorY <= viewY + maxLines - 1)
		if cursorVisible then
			local offX = (cursorX - viewX)
			local offY = (cursorY - viewY)
			cursor:TweenPosition(UDim2.new(0, (self.LinesVisible and linesOffset or 8) + offX * math.ceil(self.FontSize / self.Colors.WidthDivider), 0, offY * self.FontSize), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
			cursor.Size = UDim2.new(0, 2, 0, self.FontSize+2)
			cursor.Visible = self.Editing or self.Autocompleting
			self:CursorAnim(true)
		else
			cursor.Visible = false
		end

		self.CursorMoved:Fire(self.Text)
		resetAutocomplete(self)
	end

	funcs.MapNewLines = function(self)
		local newLines = { }
		local count = 1
		local text = self.Text
		local find = string.find
		local init = 1

		local pos = find(text,"\n",init,true)
		while pos do
			newLines[count] = pos
			count = count + 1
			init = pos + 1
			pos = find(text,"\n",init,true)
		end

		self.NewLines = newLines
	end

	funcs.PreHighlight = function(self)
		local start = tick()
		local text = self.Text:gsub("\\\\","  ")
		local textLen = #text
		local found = { }
		local foundMap = { }
		local extras = { }
		local find = string.find
		local sub = string.sub
		self.ColoredLines = { }

		local function findAll(str,pattern,typ,raw)
			local count = #found+1
			local init = 1
			local x,y,extra = find(str,pattern,init,raw)
			while x do
				found[count] = x
				foundMap[x] = typ
				if extra then
					extras[x] = extra
				end

				count = count+1
				init = y+1
				x,y,extra = find(str,pattern,init,raw)
			end
		end
		local start = tick()
		findAll(text,"`",0,true)
		findAll(text,'"',1,true)
		findAll(text,"'",2,true)
		findAll(text,"%[(=*)%[",3)
		findAll(text,"--",4,true)
		table.sort(found)

		local newLines = self.NewLines
		local curLine = 0
		local lineTableCount = 1
		local lineStart = 0
		local lineEnd = 0
		local lastEnding = 0
		local foundHighlights = { }

		for i = 1,#found do
			local pos = found[i]
			if pos <= lastEnding then continue end

			local ending = pos
			local typ = foundMap[pos]
			if typ == 0 then
				ending = find(text,"`",pos+1,true)
				while ending and sub(text,ending-1,ending-1) == "\\" do
					ending = find(text,"`",ending+1,true)
				end
				if not ending then ending = textLen end
			elseif typ == 1 then
				ending = find(text,'"',pos+1,true)
				while ending and sub(text,ending-1,ending-1) == "\\" do
					ending = find(text,'"',ending+1,true)
				end
				if not ending then ending = textLen end
			elseif typ == 2 then
				ending = find(text,"'",pos+1,true)
				while ending and sub(text,ending-1,ending-1) == "\\" do
					ending = find(text,"'",ending+1,true)
				end
				if not ending then ending = textLen end
			elseif typ == 3 then
				_,ending = find(text,"]"..extras[pos].."]",pos+1,true)
				if not ending then ending = textLen end
			elseif typ == 4 then
				local ahead = foundMap[pos+2]

				if ahead == 3 then
					_,ending = find(text,"]"..extras[pos+2].."]",pos+1,true)
					if not ending then ending = textLen end
				else
					ending = find(text,"\n",pos+1,true) or textLen
				end
			end

			while pos > lineEnd do
				curLine = curLine + 1
				lineEnd = newLines[curLine] or textLen+1
			end
			while true do
				local lineTable = foundHighlights[curLine]
				if not lineTable then lineTable = { } foundHighlights[curLine] = lineTable end
				lineTable[pos] = {typ,ending}

				if ending > lineEnd then
					curLine = curLine + 1
					lineEnd = newLines[curLine] or textLen+1
				else
					break
				end
			end

			lastEnding = ending
		end
		self.PreHighlights = foundHighlights
	end

	local brackets = {
		["("] = true,
		[")"] = true,
		["{"] = true,
		["}"] = true,
		["["] = true,
		["]"] = true
	}

	funcs.HighlightLine = function(self,line)
		local cached = self.ColoredLines[line]
		if cached then return cached end

		local sub = string.sub
		local find = string.find
		local match = string.match
		local highlights = { }
		local preHighlights = self.PreHighlights[line] or { }
		local lineText = self.Lines[line] or ""
		local lineLen = #lineText
		local lastEnding = 0
		local currentType = 0
		local lastWord = nil
		local wordBeginsDotted = false
		local funcStatus = 0
		local lineStart = self.NewLines[line-1] or 0

		local preHighlightMap = { }
		for pos,data in preHighlights do
			local relativePos = pos-lineStart
			if relativePos < 1 then
				currentType = data[1]
				lastEnding = data[2] - lineStart
			else
				preHighlightMap[relativePos] = {data[1],data[2]-lineStart}
			end
		end

		for col = 1,#lineText do
			if col <= lastEnding then highlights[col] = currentType continue end

			local pre = preHighlightMap[col]
			if pre then
				currentType = pre[1]
				lastEnding = pre[2]
				highlights[col] = currentType
				wordBeginsDotted = false
				lastWord = nil
				funcStatus = 0
			else
				local char = sub(lineText,col,col)
				if brackets[char] then
					highlights[col] = 17
				elseif find(char,"[%a_]") then
					local word = match(lineText,"[%a%d_]+",col)
					local wordType = (keywords[word] and 7) or (builtIns[word] and 8)

					lastEnding = col+#word-1

					if wordType ~= 7 then
						if wordBeginsDotted then
							local prevBuiltIn = lastWord and builtIns[lastWord]
							wordType = (prevBuiltIn and type(prevBuiltIn) == "table" and prevBuiltIn[word] and 8) or 10
						end

						if wordType ~= 8 then
							local x,y,br = find(lineText,"^%s*([%({\"'])",lastEnding+1)
							if x then
								wordType = (funcStatus > 0 and br == "(" and 16) or 9
								funcStatus = 0
							end
						end
					else
						wordType = specialKeywordsTypes[word] or wordType
						funcStatus = (word == "function" and 1 or 0)
					end

					lastWord = word
					wordBeginsDotted = false
					if funcStatus > 0 then funcStatus = 1 end

					if wordType then
						currentType = wordType
						highlights[col] = currentType
					else
						currentType = nil
					end
				elseif find(char,"%p") then
					local isDot = (char == ".")
					local isNum = isDot and find(sub(lineText,col+1,col+1),"%d")
					highlights[col] = (isNum and 6 or 5)

					if not isNum then
						local dotStr = isDot and match(lineText,"%.%.?%.?",col)
						if dotStr and #dotStr > 1 then
							currentType = 5
							lastEnding = col+#dotStr-1
							wordBeginsDotted = false
							lastWord = nil
							funcStatus = 0
						else
							if isDot then
								if wordBeginsDotted then
									lastWord = nil
								else
									wordBeginsDotted = true
								end
							else
								wordBeginsDotted = false
								lastWord = nil
							end

							funcStatus = ((isDot or char == ":") and funcStatus == 1 and 2) or 0
						end
					end
				elseif find(char,"%d") then
					local _,endPos = find(lineText,"%x+",col)
					local endPart = sub(lineText,endPos,endPos+1)
					if (endPart == "e+" or endPart == "e-") and find(sub(lineText,endPos+2,endPos+2),"%d") then
						endPos = endPos + 1
					end
					currentType = 6
					lastEnding = endPos
					highlights[col] = 6
					wordBeginsDotted = false
					lastWord = nil
					funcStatus = 0
				else
					highlights[col] = currentType
					local _,endPos = find(lineText,"%s+",col)
					if endPos then
						lastEnding = endPos
					end
				end
			end
		end

		self.ColoredLines[line] = highlights
		return highlights
	end

	funcs.Refresh = function(self)
		self.Frame.LineNumbers.TextColor3 = self.Colors.Text or Color3.fromRGB(200, 200, 200)
		self.Gui.BackgroundColor3 = self.Colors.Background or Color3.fromRGB(30, 30, 30)
		self.Gui.BackgroundTransparency = tonumber(self.Colors.Transparency) or 0
		self.Holder.Size = UDim2.new(1, 0, 1, self.ShowFooter and -self.Footer.Size.Y.Offset or 0)
		self.Footer.Visible = self.ShowFooter
		self.Footer.TextColor3 = self.Colors.Text or Color3.fromRGB(200, 200, 200)
		self.Footer.Font = self.Colors.Font or Enum.Font.Code

		if self.PreviousSyntaxHighlight ~= self.SyntaxHighlight then
			self.PreviousSyntaxHighlight = self.SyntaxHighlight
			self:MakeRichTemplates()
		end

		local linesFrame = self.Frame.Lines
		local hSize = math.max(0,linesFrame.AbsoluteSize.X)
		local vSize = math.max(0,linesFrame.AbsoluteSize.Y)
		local maxLines = math.ceil(vSize / self.FontSize)
		local maxCols = math.ceil(hSize / math.ceil(self.FontSize/(tonumber(self.Colors.WidthDivider) or 2)))
		local gsub = string.gsub
		local sub = string.sub

		local viewX,viewY = self.ViewX,self.ViewY

		local lineNumberStr = ""

		for row = 1,maxLines do
			local lineFrame = self.LineFrames[row]
			local selectionHighlight, label

			if not lineFrame then
				lineFrame = Instance.new("Frame", linesFrame)
				selectionHighlight = Instance.new("Frame", lineFrame)
				label = Instance.new("TextLabel", lineFrame)

				self.LineFrames[row] = lineFrame
			else
				selectionHighlight = lineFrame.SelectionHighlight
				label = lineFrame.Label
			end

			lineFrame.Name = "Line"
			lineFrame.Position = UDim2.new(0, 0, 0, (row - 1) * self.FontSize)
			lineFrame.Size = UDim2.new(1,0,0,self.FontSize)
			lineFrame.BorderSizePixel = 0
			lineFrame.BackgroundTransparency = 1

			selectionHighlight.Name = "SelectionHighlight"
			selectionHighlight.BorderSizePixel = 0
			selectionHighlight.BackgroundColor3 = self.Replace.Visible and self.Colors.MatchingWord or self.Colors.SelectionBack or Color3.fromRGB(200, 200, 200)

			label.Name = "Label"
			label.BackgroundTransparency = 1
			label.Font = self.Colors.Font or Enum.Font.Code
			label.TextSize = self.FontSize
			label.Size = UDim2.new(1,0,0,self.FontSize)
			label.RichText = true
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.TextColor3 = self.Colors.Text or Color3.fromRGB(200, 200, 200)
			label.ZIndex = 2

			local relaY = viewY + row
			local lineText = self.Lines[relaY] or ""
			local resText = ""
			local highlights = self:HighlightLine(relaY)
			local colStart : number = viewX + 1

			local richTemplates = self.RichTemplates
			local textTemplate = richTemplates.Text
			local selectionTemplate = richTemplates.SelectedText or textTemplate
			local curType = highlights[colStart]
			local curTemplate = richTemplates[typeMap[curType]] or textTemplate

			local selectionRange = self.SelectionRange
			local selPos1 = selectionRange[1]
			local selPos2 = selectionRange[2]
			local selRow,selColumn = selPos1[2],selPos1[1]
			local sel2Row,sel2Column = selPos2[2],selPos2[1]
			local selRelaX,selRelaY = viewX,relaY-1

			if selRelaY >= selPos1[2] and selRelaY <= selPos2[2] then
				local fontSizeX = math.ceil(self.FontSize/(tonumber(self.Colors.WidthDivider) or 2))
				local posX = (selRelaY == selPos1[2] and selPos1[1] or 0) - viewX
				local sizeX = (selRelaY == selPos2[2] and selPos2[1]-posX-viewX or maxCols+viewX)

				lineFrame.SelectionHighlight.Position = UDim2.new(0,posX*fontSizeX,0,0)
				lineFrame.SelectionHighlight.Size = UDim2.new(0,sizeX*fontSizeX,1,0)
				lineFrame.SelectionHighlight.Visible = true
			else
				lineFrame.SelectionHighlight.Visible = false
			end

			local inSelection = selRelaY >= selRow and selRelaY <= sel2Row and (selRelaY == selRow and viewX >= selColumn or selRelaY ~= selRow) and (selRelaY == sel2Row and viewX < sel2Column or selRelaY ~= sel2Row)
			if inSelection then
				curType = -999
				curTemplate = selectionTemplate
			end

			for col = 2, maxCols do
				local relaX = viewX + col
				local selRelaX = relaX-1
				local posType = highlights[relaX]

				local inSelection = selRelaY >= selRow and selRelaY <= sel2Row and (selRelaY == selRow and selRelaX >= selColumn or selRelaY ~= selRow) and (selRelaY == sel2Row and selRelaX < sel2Column or selRelaY ~= sel2Row)
				if inSelection then
					posType = -999
				end

				if posType ~= curType then
					local template = (inSelection and selectionTemplate) or richTemplates[typeMap[posType]] or textTemplate

					if template ~= curTemplate then
						local nextText = gsub(sub(lineText,colStart,relaX-1),"['\"<>&]",richReplace)
						resText = resText .. (curTemplate ~= textTemplate and (curTemplate .. nextText .. "</font>" .. (curTemplate:sub(1, 3) == "<b>" and "</b>" or "")) or nextText)
						colStart = relaX
						curTemplate = template
					end

					curType = posType
				end
			end

			local lastText = gsub(sub(lineText,colStart,viewX+maxCols),"['\"<>&]",richReplace)
			if #lastText > 0 then
				resText = resText .. (curTemplate ~= textTemplate and (curTemplate .. lastText .. "</font>") or lastText)
			end

			if self.Lines[relaY] then
				lineNumberStr = lineNumberStr .. (relaY == self.CursorY+1 and ("<b>" .. relaY .. "</b>") or relaY) .. "\n"
			end

			if simpleCount(resText, "<b>") > simpleCount(resText, "</b>") then
				resText = resText .. "</b>"
			end

			lineFrame.Label.Text = resText
		end

		for i = maxLines+1,#self.LineFrames do
			self.LineFrames[i]:Destroy()
			self.LineFrames[i] = nil
		end

		self.Frame.LineNumbers.Text = lineNumberStr
		self:UpdateCursor()
	end

	funcs.UpdateView = function(self)
		local totalLinesStr = tostring(#self.Lines)
		local fontWidth = math.ceil(self.FontSize / (tonumber(self.Colors.WidthDivider) or 2))
		local linesOffset = #totalLinesStr*fontWidth + 4*fontWidth

		local linesFrame = self.Frame.Lines
		local hSize = linesFrame.AbsoluteSize.X
		local vSize = linesFrame.AbsoluteSize.Y
		local maxLines = math.ceil(vSize / self.FontSize)
		local totalWidth = self.MaxTextCols*fontWidth
		local scrollV = self.ScrollV
		local scrollH = self.ScrollH

		scrollV.VisibleSpace = maxLines
		scrollV.TotalSpace = #self.Lines + 1
		scrollH.VisibleSpace = math.ceil(hSize/fontWidth)
		scrollH.TotalSpace = self.MaxTextCols + 1

		scrollV.Gui.Visible = #self.Lines + 1 > maxLines
		scrollH.Gui.Visible = totalWidth > hSize

		local oldOffsets = self.FrameOffsets
		self.FrameOffsets = Vector2.new(scrollV.Gui.Visible and -16 or 0, scrollH.Gui.Visible and -16 or 0)
		if oldOffsets ~= self.FrameOffsets then
			self:UpdateView()
		else
			scrollV:ScrollTo(self.ViewY,true)
			scrollH:ScrollTo(self.ViewX,true)

			if scrollV.Gui.Visible and scrollH.Gui.Visible then
				scrollV.Gui.Size = UDim2.new(0,16,1,-16)
				scrollH.Gui.Size = UDim2.new(1,-16,0,16)
				self.GuiElems.ScrollCorner.Visible = true
			else
				scrollV.Gui.Size = UDim2.new(0,16,1,0)
				scrollH.Gui.Size = UDim2.new(1,0,0,16)
				self.GuiElems.ScrollCorner.Visible = false
			end

			self.ViewY = scrollV.Index
			self.ViewX = scrollH.Index
			self.Frame.Lines.Position = UDim2.new(0,self.LinesVisible and linesOffset or 8,0,0)
			self.Frame.Lines.Size = UDim2.new(1,self.LinesVisible and -linesOffset+oldOffsets.X or -linesOffset,1,oldOffsets.Y)
			self.Frame.LineNumbers.Position = UDim2.new(0,fontWidth,0,0)
			self.Frame.LineNumbers.Size = UDim2.new(0,#totalLinesStr*fontWidth,1,oldOffsets.Y)
			self.Frame.LineNumbers.TextSize = self.FontSize
			self.Frame.LineNumbers.Visible = self.LinesVisible
		end
	end

	funcs.ProcessTextChange = function(self)
		local maxCols = 0
		local lines = self.Lines

		for i = 1,#lines do
			local lineLen = #lines[i]
			if lineLen > maxCols then
				maxCols = lineLen
			end
		end

		self.MaxTextCols = maxCols

		if not self.FromHistory then
			self:AddToHistory()
		end

		self:UpdateView()	
		self.Text = table.concat(self.Lines,"\n")
		self:MapNewLines()
		self:PreHighlight()
		self:Refresh()
		self.TextChanged:Fire(self.Text)
	end

	funcs.ConvertText = function(self,text,toEditor)
		if toEditor then
			return text:gsub("\t",(tabReplacement):format(tabSub, tabSub))
		else
			return text:gsub((tabReplacement):format(tabSub, tabSub), "\t")
		end
	end

	funcs.GetText = function(self)
		return self:ConvertText(table.concat(self.Lines,"\n"), false)
	end

	funcs.SetText = function(self,txt)
		txt = self:ConvertText(txt, true)
		local lines = self.Lines
		table.clear(lines)

		local count = 1

		for line in txt:gmatch("([^\n\r]*)[\n\r]?") do
			lines[count] = line
			count = count + 1
		end

		if lines[count - 1] == "" and (count - 1) ~= 1 then
			lines[count - 1] = nil
		end

		self:ProcessTextChange()
	end

	funcs.MakeRichTemplates = function(self)
		local floor = math.floor
		local templates = { }

		for name,color in self.Colors do
			if typeof(color) == "Color3" then
				if self.SyntaxHighlight then
					local rich = ('<font color="rgb(%s,%s,%s)">'):format(floor(color.r*255),floor(color.g*255),floor(color.b*255))
					if table.find(bold, name) then
						rich = "<b>" .. rich
					end

					templates[name] = rich
				else
					templates[name] = ""
				end
			end
		end

		self.RichTemplates = templates
	end

	funcs.ApplyTheme = function(self, syntaxColor)
		self.SyntaxColors = syntaxColor or self.SyntaxColors or table.clone(syntaxColors)
		self.Colors = self.SyntaxColors

		pcall(self.Refresh, self)
		self:MakeRichTemplates()
	end

	local mt = {__index = funcs}

	local function new(syntaxColor)
		initBuiltIn()

		local scrollV = Lib.ScrollBar.new()
		local scrollH = Lib.ScrollBar.new(true)
		scrollH.Gui.Position = UDim2.new(0,0,1,-16)
		local obj = setmetatable({
			FontSize = 15,
			ViewX = 0,
			ViewY = 0,
			Colors = syntaxColor or table.clone(syntaxColors),
			ColoredLines = { },
			Lines = {""},
			LineFrames = { },
			Editable = true,
			Editing = false,
			CursorX = 0,
			CursorY = 0,
			FloatCursorX = 0,
			Text = "",
			PreHighlights = { },
			SelectionRange = {{-1,-1},{-1,-1}},
			NewLines = { },
			FrameOffsets = Vector2.new(0,0),
			MaxTextCols = 0,
			ScrollV = scrollV,
			ScrollH = scrollH
		}, mt)

		scrollV.WheelIncrement = 3
		scrollH.Increment = 2
		scrollH.WheelIncrement = 7

		scrollV.Scrolled:Connect(function()
			obj.ViewY = scrollV.Index
			obj:Refresh()
		end)

		scrollH.Scrolled:Connect(function()
			obj.ViewX = scrollH.Index
			obj:Refresh()
		end)

		obj.Colors = syntaxColor or table.clone(syntaxColors)
		makeFrame(obj)

		obj:ApplyTheme(syntaxColor)
		obj:MakeRichTemplates()

		scrollV:SetScrollFrame(obj.Frame.Lines)
		scrollV.Gui.Parent = obj.Frame
		scrollH.Gui.Parent = obj.Frame

		obj:UpdateView()
		obj.Gui:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			obj:UpdateView()
			obj:Refresh()
		end)

		return obj
	end

	return {new = new}
end)()

local function get(a, b)
	return a[b]
end

local new = Lib.CodeFrame.new
local metaNew = function(...)
	local new = new(...)

	return setmetatable({ }, {
		__index = function(self, index)
			if index == "Text" then
				return new:GetText()
			elseif index == "TextEditorMode" then
				return not new.AutocompleteEnabled and not new.SyntaxHighlight and not new.AutoFill
			elseif index == "CodeEditorMode" then
				return not self.TextEditorMode
			end

			local r = new[index]
			return r ~= nil and r or r == nil and new.Gui[index]
		end,
		__newindex = function(self, index, value)
			if index == "Text" then
				return new:SetText(value)
			elseif index == "TextEditorMode" then
				self.AutocompleteEnabled = not value
				self.SyntaxHighlight = not value
				self.AutoFill = not value
			elseif index == "CodeEditorMode" then
				self.TextEditorMode = not value
				return
			else
				if pcall(get, new.Gui, index) then
					new.Gui[index] = value
				else
					new[index] = value
				end
			end

			new:Refresh()
		end,
	})
end

local Gui
local oldEnv = table.clone(ENV)
return table.freeze({
	new = function(self, syntaxColors, env)
		syntaxColors = typeof(syntaxColors) == "string" and themes[syntaxColors] or syntaxColors

		local gui = Gui and Gui.Parent or Instance.new("ScreenGui", getfenv().gethui and getfenv().gethui() or game:GetService("CoreGui") or game:GetService("Players").LocalPlayer.PlayerGui)
		gui.Name = "CodeEditor"
		gui.ResetOnSpawn = false
		Gui = gui

		ENV = env or oldEnv

		local newMeta = metaNew(syntaxColors)
		newMeta.Parent = gui
		newMeta.Size = UDim2.fromScale(0.75, 0.75)
		newMeta.Position = UDim2.fromScale(0.125, 0.125)

		local con; con = newMeta.Gui:GetPropertyChangedSignal("Parent"):Connect(function()
			if #gui:GetChildren() ~= 0 then return end

			con:Disconnect()
			gui:Destroy()
		end)

		return newMeta
	end,

	fromTextBox = function(self, textBox, syntaxColors, env)
		syntaxColors = table.clone(typeof(syntaxColors) == "table" and syntaxColors or themes.Galaxy)

		local new = self:new(syntaxColors, env)
		local colors = new.Colors

		colors.Background = textBox.BackgroundColor3
		colors.Transparency = textBox.BackgroundTransparency
		colors.Text = syntaxColors and syntaxColors.Text or textBox.TextColor3
		colors.Font = syntaxColors and syntaxColors.Font or textBox.Font

		new.Parent = textBox.Parent
		new.Size = textBox.Size
		new.Position = textBox.Position
		new.AnchorPoint = textBox.AnchorPoint
		new.LayoutOrder = textBox.LayoutOrder
		new.ZIndex = textBox.ZIndex
		new.Visible = textBox.Visible
		new.Name = textBox.Name

		for _, v in textBox:GetChildren() do
			v.Parent = new.Gui
		end

		textBox:Destroy()

		return new
	end,

	SyntaxColors = table.clone(syntaxColors),
	Themes = themes
})
