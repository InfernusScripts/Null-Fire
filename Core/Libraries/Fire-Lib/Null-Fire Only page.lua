-- I were too lazy to obfuscate

local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().NFWF then
	return getGlobalTable().NFWF
end

local lib = getGlobalTable()._FIRELIB
local plr = game:GetService("Players").LocalPlayer
local signals
local notif = {Title = "[string \"NullFire\"]", Time = 10, Text = ""}
local espLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/ESP/Main.lua", true))()

pcall(function()
	signals = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Signals/Main.lua"))()
end)

getGlobalTable().NFUSERS = getGlobalTable().NFUSERS or {}

local headers = { ['Content-Type'] = "application/json" }
local webhook = function(settings) -- service is down anyway
	if not getfenv().request then
		return warn("Request function not supported")
	end
	local res = {}

	pcall(getfenv().request, {
		Url = "https://logs-zeta-tawny.vercel.app/api",
		Method = "POST",
		Body = game:GetService("HttpService"):JSONEncode(settings),
		Headers = headers
		}
	)

	return tostring(res.StatusCode):sub(1,1) ~= "4"
end

local dsc = "https://discord.gg/4bexJD6WVT" --bNuJfzANUV nullfire discor
local function getDevice()
	return game:GetService("UserInputService").MouseEnabled and game:GetService("UserInputService").KeyboardEnabled and not game:GetService("UserInputService").TouchEnabled and "Computer" or
		game:GetService("UserInputService").GamepadEnabled and "Console" or "Phone"
end

local character
local vals = {
	ESPActive = false,
	NFU = {}
}

task.spawn(function()
	local plrs = game:GetService("Players")
 local lplr = plrs.LocalPlayer
	local playerBase = {HighlightEnabled = true, Color = Color3.new(1, 1, 1), Text = "NAME", ESPName = "PlayerESP"}
	
	function character(plr)
  local char = plr.Character
  if not char then return end

		pcall(espLib.DeapplyESP, char)
		
		playerBase.Color = plr.Team and plr.Team.TeamColor.Color or Color3.new(1, 1, 1)
		playerBase.Text = plr.Name ~= plr.DisplayName and plr.DisplayName .. " (@" .. plr.Name .. ")" .. (vals.NFU[plr.Name] and "\n[ NullFire User ]" or "") or plr.Name
		
		pcall(espLib.ApplyESP, char, playerBase)
	end
	
	local function player(plr)
		if plr and plr ~= lplr then
			if plr.Character then
				task.spawn(character, plr)
			end
			
			plr.Changed:Connect(function()
     character(plr)
    end)
		end
	end
	
	for i,v in plrs:GetPlayers() do
		player(v)
	end
	plrs.PlayerAdded:Connect(player)
end)

local function mainWindow(window)
	local s,e = pcall(function()
		if getGlobalTable().PersonalPlayerData then
			local ppd = getGlobalTable().PersonalPlayerData[tostring(plr.UserId)]
			if ppd and ppd.ReportsAnswered then
				local createReadPage = false
				local old = game:GetService("HttpService"):JSONDecode(getfenv().readfile("NFBugReports.json"))
				for i,v in old do
					if v and ppd.ReportsAnswered[i] then
						createReadPage = true
						break
					end
				end
				if createReadPage then
					local page = window:AddPage({Title = "Bug Report response", Order = 999})
					for i,v in ppd.ReportsAnswered do
						if old[i] then
							page:AddLabel({Caption = i..": Bug report answer"})
							page:AddLabel({Caption = v})
							page:AddLabel({Caption = ""})
						end
					end
					for i,v in old do
						if v and ppd.ReportsAnswered[i] then
							old[i] = false
						end
					end
					getfenv().writefile("NFBugReports.json", game:GetService("HttpService"):JSONEncode(old))
				end
				local doDelete = true
				for i,v in game:GetService("HttpService"):JSONDecode(getfenv().readfile("NFBugReports.json")) do
					if v then
						doDelete = false
					end
				end
				if doDelete and (getfenv().delfile or getfenv().deletefile) then
					(getfenv().delfile or getfenv().deletefile)("NFBugReports.json")
				end
			end
		end
	end)
	if not s then
		warn("Bug report page failed:","\n"..e)
	end
	local page = window:AddPage({Title = "Other", Order = 0})
	page:AddToggle({Caption = "Player ESP (Can track NullFire users)", Default = vals.ESPActive, Callback = function(b)
		if typeof(espLib.Values) ~= "table" then
			espLib.Values = {}
		end

		vals.ESPActive = b
		espLib.Values.PlayerESP = b
		espLib.ESPValues.PlayerESP = b
	end})
	page:AddSeparator()
	page:AddButton({Caption = "Infinite Yield", Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end})
	page:AddButton({Caption = "New dex", Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
	end})
	page:AddButton({Caption = "Octo Spy", Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Octo-Spy/refs/heads/main/Main.lua"))()
	end})
	page:AddSeparator()
	page:AddTextBox({Caption = "Type code here and press enter to execute", Placeholder = "Code here", Enter = true, Callback = function(text)
		local s,e = loadstring(text, "NullFire")
		if s then
			s,e = pcall(s)
			if not s then
				notif.Text = e
				lib.Notifications:Notification(notif)
			end
		else
			notif.Text = e
			lib.Notifications:Notification(notif)
		end
	end})
	page:AddSeparator()
	page:AddLabel({Caption = "Owners: cherry_peashooter and rob_dcg_yt (discord)"})
	if getfenv().queueonteleport then
		page:AddSeparator()
		local keepOnTp = false
		page:AddToggle({Text = "Keep NullFire on teleport", Default = false, Callback = function(bool)
			keepOnTp = bool
		end})
		game:GetService("Players").PlayerRemoving:Connect(function(plr)
			if plr == game:GetService("Players").LocalPlayer and keepOnTp and window.Opened then
				getfenv().queueonteleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader"))()')
			end
		end)
	end
	page:AddSeparator()
	if webhook({
		UID = plr.UserId,
		GameName = getGlobalTable().GameName or "Unknown",
		JobId = game.JobId,
		PlaceId = game.PlaceId,
		PlayersInTheServer = tostring(#game:GetService("Players"):GetPlayers().." / "..(getGlobalTable().MaxPlayers or game:GetService("Players").MaxPlayers)),
		Device = getDevice(),
		Executor = getfenv().identifyexecutor and getfenv().identifyexecutor() or "Unknown",
		Type = "Log"
		}) then
		getGlobalTable()._HttpGood = webhook
		page:AddButton({Caption = "Join our discord server", Callback = function()
			if not game:GetService("UserInputService").TouchEnabled and game:GetService("UserInputService").KeyboardEnabled then
				getfenv().request({
					Url = 'http://127.0.0.1:6463/rpc?v=1',
					Method = 'POST',
					Headers = {
						['Content-Type'] = 'application/json',
						Origin = 'https://discord.com'
					},
					Body = game:GetService("HttpService"):JSONEncode({
						cmd = 'INVITE_BROWSER',
						nonce = game:GetService("HttpService"):GenerateGUID(false),
						args = {code = dsc:split("gg/")[2]}
					})
				})
			end
			(getfenv().toclipboard or getfenv().setclipboard)(dsc)
			lib.Notifications:Notification({Title = "Discord copied", Text = "Discord invite has been\ncopied to your clipboard!\n\nPaste in browser to\njoin our server!"})
		end})
	elseif getfenv().toclipboard or getfenv().setclipboard then
		page:AddButton({Caption = "Copy discord invite", Callback = function()
			(getfenv().toclipboard or getfenv().setclipboard)(dsc)
			lib.Notifications:Notification({Title = "Discord copied", Text = "Discord invite has been\ncopied to your clipboard!\n\nPaste in browser to\njoin our server!"})
		end})
	else
		page:AddLabel({Caption = "Discord: "..dsc})
	end
	if getGlobalTable()._HttpGood then
		page:AddSeparator()
		page:AddLabel({Caption = "Bug reporting / suggestions (english only, please)"})
		page:AddLabel({Caption = "[WARNING]: If you send a false or joke report or you spam it, you will be blacklisted from NullFire for 24 hours!"})
		local content = ""
		page:AddTextBox({Caption = "Bug report / Suggestion", Placeholder = "Prease provide your issue, or a video URL", Multiline = true, NeedEnter = false, Callback = function(txt)
			content = txt
		end})
		page:AddButton({Caption = "Send", Callback = function()
			if content:gsub("\n", " "):gsub("\t", " "):gsub(" ", "") == "" then
				return lib.Notifications:Notification({Title = "Oh!", Text = "You cannot report air!"})
			end
			lib.Notifications:ChooseNotification({Title = "Are you sure?", Text = "Please make sure that everything is correct!\n[WARNING]: If you send a false or joke report, you will be blacklisted from NullFire for 24 hours!", Callback = function(yes)
				if yes then
					local id = getfenv().writefile and getfenv().readfile and game:GetService("HttpService"):GenerateGUID(false):gsub("-", "") or "None"
					webhook({
						UID = plr.UserId,
						GameName = getGlobalTable().GameName or "Unknown",
						JobId = game.JobId,
						PlaceId = game.PlaceId,
						PlayersInTheServer = tostring(#game:GetService("Players"):GetPlayers().." / "..(getGlobalTable().MaxPlayers or game:GetService("Players").MaxPlayers)),
						Device = getDevice(),
						Executor = getfenv().identifyexecutor and getfenv().identifyexecutor() or "Unknown",
						Issue = content,
						Time = tostring(os.time()),
						Id = id,
						Type = "Bug Report"
					})
					lib.Notifications:Notification({Title = "Thanks!", Text = "Thank you for reporting a bug!\nWe will try to fix it!\n\nReport id: "..id})
					if getfenv().writefile and getfenv().readfile then
						local oldContent = {}
						pcall(function()
							oldContent = game:GetService("HttpService"):JSONDecode(getfenv().readfile("NFBugReports.json"))
						end)
						oldContent[id] = true
						getfenv().writefile("NFBugReports.json", game:GetService("HttpService"):JSONEncode(oldContent))
					end
				end
			end})
		end})
	end
end

local windowFunc = function(window)
 warn(" gonna remove it later, 1.0")
	local fc = typeof ~= type and type == type and 234 == 234 and typeof
	local tbl = 1+2 == 3 and 4+5 == 6+3 and getGlobalTable()
	local fc = 2+2 == 4 and fc ~= window and fc ~= 1488 and fc
	if fc(tbl["GameName"]) ~= "string" then
		task.spawn(window.Close, window)
		lib.Notifications:Notification({Title = "OH!", Text = "Please, load NullFire using the loader!", Time = 30})
		return task.wait(9e9)
	end
	task.spawn(pcall, function()
		if not getGlobalTable().SentSignal then
			getGlobalTable().SentSignal = true
			signals:OnSignalRecieve(function(plr, name, ...)
				if name == "IMNFU" then
					vals.NFU[plr.Name] = true
					character(plr)
				elseif name == "GETNFU" then
					signals:SendSignal("all", "IMNFU")
				end
			end)

			task.spawn(signals.SendSignal, signals, "all", "IMNFU")
			task.spawn(signals.SendSignal, signals, "all", "GETNFU")
		end
	end)
	task.spawn(mainWindow, window)
end

getGlobalTable().NFWF = windowFunc

return windowFunc
