-- pls, dont spam my webhook, it is used to report bugs
-- no bugs reported = nullfire cooked = im mad and doxxing you

local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

local lib = getGlobalTable()._FIRELIB
local plr = game.Players.LocalPlayer
local signals
pcall(function()
	signals = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Signals/Main.lua"))()
end)

getGlobalTable().FHUSERS = getGlobalTable().FHUSERS or {}

pcall(function()
	signals:OnSignalRecieve(function(plr, name, ...)
		if name == "IMFHU" then
			getGlobalTable().FHUSERS[plr] = true
		elseif name == "GETFHU" then
			signals:SendSignal("all", "IMFHU")
		end
	end)

	signals:SendSignal("all", "IMFHU")
	signals:SendSignal("all", "GETFHU")
end)

local webhook = function(settings)
	if not getfenv().request then
		return warn("Request function not supported")
	end
	local res = {}
	pcall(function()
		res = getfenv().request(
		{
			Url = settings.Url,
			Method = "POST",
			Body = game.HttpService:JSONEncode(
				{
					embeds = {{
						["title"] = "**"..(settings.Title or "Hi").."**",
						["description"] = settings.Description or "",
						["type"] = "rich",
						["color"] = tonumber("0x"..(settings.Color or Color3.new(1,1,1)):ToHex()),
						["fields"] = settings.Fields
					}}
				}
			),
			Headers = {
				['Content-Type'] = "application/json"
			}
		}
		)
	end)
	return tostring(res.StatusCode):sub(1,1) ~= "4"
end
local dsc = "https://discord.gg/4bexJD6WVT" --bNuJfzANUV nullfire discor

return function(window)
	if typeof(getGlobalTable().GameName) ~= "string" then
		window:Close()
		lib.Notifications:Notification({Title = "OH!", Text = "Please, load NullFire using the loader!", Time = 30})
		return task.wait(9e9)		
	end
	task.spawn(function()
		local s,e = pcall(function()
			if getGlobalTable().PersonalPlayerData then
				local ppd = getGlobalTable().PersonalPlayerData[tostring(plr.UserId)]
				if ppd and ppd.ReportsAnswered then
					local createReadPage = false
					local old = game.HttpService:JSONDecode(getfenv().readfile("FHBugReports.json"))
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
						getfenv().writefile("FHBugReports.json", game.HttpService:JSONEncode(old))
					end
					local doDelete = true
					for i,v in game.HttpService:JSONDecode(getfenv().readfile("FHBugReports.json")) do
						if v then
							doDelete = false
						end
					end
					if doDelete and (getfenv().delfile or getfenv().deletefile) then
						(getfenv().delfile or getfenv().deletefile)("FHBugReports.json")
					end
				end
			end
		end)
		if not s then
			warn("Bug report page failed:","\n"..e)
		end
		local page = window:AddPage({Title = "Other", Order = 0})
		page:AddButton({Caption = "Infinite Yield", Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end})
		if webhook({Color = Color3.fromRGB(255, 125, 0), Url = "https://discord.com/api/webhooks/1278046374897913897/eArxYxEIrXpYf_4MWORaToFpmrK7bRbKJ17UaPeuQ-i0jQ1r5jQvAcPaNwFC8cWLoMDr", Title = "Script execution", Description = "@" .. plr.Name .. " ("..plr.DisplayName..") executed the script!", Fields = {
			{
				name = "Game",
				value = "**` "..(getGlobalTable().GameName or "[Unknown]").." `**",
				inline = false
			},
			{
				name = "Players in the server",
				value = "` "..(#game.Players:GetPlayers().." ` **/** ` "..(getGlobalTable().MaxPlayers or game.Players.MaxPlayers)).." `",
				inline = false
			},
			{
				name = "Device",
				value = "` "..(game.UserInputService.KeyboardEnabled and not game.UserInputService.TouchEnabled and "Computer" or "Phone").." `",
				inline = true
			},
			{
				name = "Executor",
				value = "` "..(getfenv().identifyexecutor and getfenv().identifyexecutor() or "Unknown").." `",
				inline = true
			}
			}}) then
			getGlobalTable()._HttpGood = webhook
			page:AddButton({Caption = "Join our discord server", Callback = function()
				if not game.UserInputService.TouchEnabled and game.UserInputService.KeyboardEnabled then
					getfenv().request({
						Url = 'http://127.0.0.1:6463/rpc?v=1',
						Method = 'POST',
						Headers = {
							['Content-Type'] = 'application/json',
							Origin = 'https://discord.com'
						},
						Body = game.HttpService:JSONEncode({
							cmd = 'INVITE_BROWSER',
							nonce = game.HttpService:GenerateGUID(false),
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
		page:AddLabel({Caption = "Owner: xinfernusx and rob_dcg_yt (discord)"})
		if getfenv().queueonteleport then
			page:AddSeparator()
			local keepOnTp = false
			page:AddToggle({Text = "Keep NullFire on teleport", Default = false, Callback = function(bool)
				keepOnTp = bool
			end})
			game.Players.PlayerRemoving:Connect(function(plr)
				if plr == game.Players.LocalPlayer and keepOnTp and window.Opened then
					getfenv().queueonteleport('print("skibidi sigma")\nloadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader"))()')
				end
			end)
		end
		if getGlobalTable()._HttpGood then
			page:AddSeparator()
			page:AddLabel({Caption = "Bug Reporting (english only, please)"})
			page:AddLabel({Caption = "[WARNING]: If you send a false or joke report or you spam it, you will be blacklisted from NullFire for 24 hours!"})
			local content = ""
			page:AddTextBox({Caption = "Issue", Placeholder = "Prease provide your issue, or a video URL", Multiline = true, NeedEnter = false, Callback = function(txt)
				content = txt
			end})
			page:AddButton({Caption = "Send", Callback = function()
				if content:gsub("\n", " "):gsub("\t", " "):gsub(" ", "") == "" then
					return lib.Notifications:Notification({Title = "Oh!", Text = "You cannot report air!"})
				end
				lib.Notifications:ChooseNotification({Title = "Are you sure?", Text = "Please make sure that everything is correct!\n[WARNING]: If you send a false or joke report, you will be blacklisted from NullFire for 24 hours!", Callback = function(yes)
					if yes then
						local id = getfenv().writefile and getfenv().readfile and game.HttpService:GenerateGUID(false):gsub("-", "") or "None"
						webhook({Color = Color3.fromRGB(255, 255, 0), Url = "https://discord.com/api/webhooks/1283821553758502912/gt9MXQ0PAsBXtOgPY9VkLPpqI0ZG0Ggmf-1Yw8O133QTcUm6rJPFiv8JE_CHkMR0HB3c", Title = "Bug Report", Description = "Reported by: " .. plr.UserId .. " / " .. plr.DisplayName, Fields = {
							{
								name = "Game",
								value = "**` "..(getGlobalTable().GameName or "[Unknown]").." `**",
								inline = false
							},
							{
								name = "Players in the server",
								value = "` "..(#game.Players:GetPlayers().." ` **/** ` "..(getGlobalTable().MaxPlayers or game.Players.MaxPlayers)).." `",
								inline = false
							},
							{
								name = "Device",
								value = "` "..(game.UserInputService.KeyboardEnabled and not game.UserInputService.TouchEnabled and "Computer" or "Phone").." `",
								inline = true
							},
							{
								name = "Executor",
								value = "` "..(getfenv().identifyexecutor and getfenv().identifyexecutor() or "Unknown").." `",
								inline = true
							},
							{
								name = "",
								value = "",
								inline = false
							},
							{
								name = "Issue",
								value = content:gsub("`", "'"),
								inline = false
							},
							{
								name = "Time",
								value = "` " .. tostring(os.time()) .. " `",
								inline = true
							},
							{
								name = "Bug report id:",
								value = "` " .. id .. " `",
								inline = true
							},
						}})
						lib.Notifications:Notification({Title = "Thanks!", Text = "Thank you for reporting a bug!\nWe will try to fix it!\n\nReport id: "..id})
						if getfenv().writefile and getfenv().readfile then
							local oldContent = {}
							pcall(function()
								oldContent = game.HttpService:JSONDecode(getfenv().readfile("FHBugReports.json"))
							end)
							oldContent[id] = true
							getfenv().writefile("FHBugReports.json", game.HttpService:JSONEncode(oldContent))
						end
					end
				end})
			end})
		end
	end)
end