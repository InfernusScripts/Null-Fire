local defaults = {
	Noclip = false,
	AutoSpin = false,
	TauntSpam = false,
	TauntCooldown = 0.5,
	AlwaysSeeker = false,
	
	PickUpCoins = false,
	MegaCoinFarm = false,
	Insane = false,
	Invisible = false,
	DisableNotif = false,
	
	KillAura = false,
	Crazy = false,
	CrazyPower = 50
}

local vals = table.clone(defaults)

local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

getGlobalTable().FireHubLoaded = true

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Fire-Lib/Main.lua", true))()
local velocity = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/VelocityBypass/Main.lua", true))()
local closed = false
local cons = {}
local plr = game:GetService("Players").LocalPlayer

local window = lib:MakeWindow({Title = "NullFire - Hide or Die", CloseCallback = function()
	for i,v in defaults do
		vals[i] = v
	end
	getGlobalTable().FireHubLoaded = false
	closed = true
	for i=1, 3 do
		game:GetService("RunService").RenderStepped:Wait()
	end
	for i,v in cons do
		v:Disconnect()
	end
end}, true)

local spin = game:GetService("ReplicatedStorage").Network.rewards.claim_spin
local char

local function renderWait(t)
	local start = tick()
	t = tonumber(t) or 0
	game:GetService("RunService").RenderStepped:Wait()
	task.wait(t/2)
	game:GetService("RunService").RenderStepped:Wait()
	task.wait(t/2)
	game:GetService("RunService").RenderStepped:Wait()
	return tick() - start
end

local function kill(player, repeats)
	if not player or not player.Character or not player.Character:FindFirstChild("Humanoid") or not plr.Team or plr.Team.Name ~= "Seeker" or not player.Team or player.Team.Name ~= "Hider" --[[or player.Character.Humanoid.Health < 1]] then return end
	if plr.Backpack:FindFirstChild("Secondary") then
		plr.Backpack.Secondary.Parent = plr.Character
	end
	
	if vals.Crazy then
		plr.Character:PivotTo(player.Character:GetPivot())
	end
	
	for i=1, math.max(tonumber(repeats) or 1, 1) do
		game:GetService("ReplicatedStorage").Network.knife.slash:FireServer(
			workspace:GetServerTimeNow(),
			plr.Character:FindFirstChild("Secondary") or plr.Backpack:FindFirstChild("Secondary"),
			player.Character:GetPivot(),
			player.Character.Humanoid
		)
	end
	
	return true
end

local function collectCoin(v)
	v:PivotTo((char and char:GetPivot() or CFrame.new()) + Vector3.new(math.random(-1000, 1000) / 750, math.random(-1000, 1000) / 750, math.random(-1000, 1000) / 750))

	local coin = v:FindFirstChild("Coin")
	if coin then
		coin.Anchored = false
		
		coin.AssemblyLinearVelocity = Vector3.new(math.random(-1000, 1000) / 250, math.random(-1000, 1000) / 250, math.random(-1000, 1000) / 250)
		coin.AssemblyAngularVelocity = Vector3.new(math.random(-1000, 1000) / 250, math.random(-1000, 1000) / 250, math.random(-1000, 1000) / 250)
		
		coin.Rotation = Vector3.new(math.random(-36000, 36000) / 100, math.random(-36000, 36000) / 100, math.random(-36000, 36000) / 100)
		
		coin.CanTouch = not coin.CanTouch
		
		coin.Transparency = 1

		for i=1, 2 do
			local decal = coin:FindFirstChild("Decal")				
			if decal then
				decal.Transparency = 1
				decal.Name = "Image"
			end
		end
	end
end

local function calculateOffsetToWorldPosition(worldPosition)
	return worldPosition - velocity.FakeCharacter.FakeRoot.Position
end

local getRandomSeeker; function getRandomSeeker(depth)
	depth = tonumber(depth) or 1
	if depth % 100 == 0 then
		return
	elseif depth % 10 == 0 then
		task.wait(0.01)
	end

	local seekers = game:GetService("Teams").Seeker:GetPlayers()
	if #seekers == 0 then return end
	
	local seeker = seekers[math.random(1, #seekers)]
	if seeker and seeker.Character and seeker.Character:FindFirstChild("Humanoid") and seeker.Character.Humanoid.Health > 0 then
		return seeker
	else
		return getRandomSeeker(depth + 1)
	end
end

local step = 0
local target = 1

local function join()
	game:GetService("ReplicatedStorage").Network.match.WantsToJoinMatch:FireServer()
end

cons[#cons+1] = game:GetService("RunService").RenderStepped:Connect(function()
	step = (step + 1) % 59
	target *= -1
	
	if vals.AlwaysSeeker then
		if plr.PlayerGui.Frames.role_reveal.seeker_chance and plr.PlayerGui.Frames.role_reveal.seeker_chance.TextTransparency ~= 1 then
			plr.PlayerGui.Frames.role_reveal.role.Seeker.Visible = true
			plr.PlayerGui.Frames.role_reveal.role.Hider.Visible = false
		end

		plr.PlayerGui.Frames.role_reveal.seeker_chance.Text = "Chance to be seeker: 100%"
		
		if not plr.Team or plr.Team.Name == "Hider" then
			join()
			plr.Team = game:GetService("Teams").Seeker
		end
	end
	
	velocity.Noclip = vals.Noclip
	char = velocity.RealCharacter
	
	if char and char.Parent then
		if char:FindFirstChild("Humanoid") and char.Humanoid.Health > 1 and plr.Team and plr.Team.Name == "Hider" then
			if (vals.MegaCoinFarm or vals.Insane) then -- i were too lazy to write the instance path
				velocity.Bypass = true
				velocity.Spoofing.VelocityEnabled = true
				velocity.Spoofing.Velocity = Vector3.new(100 * target, 100)

				local max = vals.Insane and 1e8 or 75
				local seeker = getRandomSeeker()

				velocity.Spoofing.NonAngularPosition = step == 0 and calculateOffsetToWorldPosition(seeker and seeker.Character:GetPivot().Position or Vector3.new()) - Vector3.new(0, 15 * target) or Vector3.new(math.random(-max, max) * target, -10, math.random(-max, max) * target)
			elseif vals.Invisible then
				velocity.Bypass = true
				velocity.Spoofing.VelocityEnabled = true
				velocity.Spoofing.Velocity = Vector3.new(100 * target, 100)

				velocity.Spoofing.NonAngularPosition = Vector3.new(0, -25, 0)
			else
				velocity.Bypass = false
			end
		else
			velocity.Bypass = false
		end
		
		local coins = workspace.Trash:FindFirstChild("Coins")
		if (vals.PickUpCoins or vals.MegaCoinFarm) and coins and coins.Parent then
			for i,v in coins:GetChildren() do
				if v and v.Parent and v:IsA("Model") then
					collectCoin(v)
				end
			end
		end
	end

	if vals.AutoSpin and not plr.PlayerGui.Frames.spin_menu.Buttons.Spin.Title.Text:lower():match("no spins") then
		task.spawn(spin.InvokeServer, spin)
	end
end)

task.spawn(function()
	while not closed and task.wait() do
		if vals.KillAura or vals.Crazy then
			for _, v in game:GetService("Players"):GetPlayers() do
				if vals.Crazy and kill(v) then
					repeat
						kill(v, vals.CrazyPower * 10)
						renderWait(1)
					until closed or not v.Team or v.Team.Name ~= "Hider" or not vals.Crazy
					break
				elseif not vals.Crazy then
					kill(v)
				end
			end
		end
	end
end)

cons[#cons+1] = plr.PlayerGui.Notifs.notifications.ChildAdded:Connect(function(v)
	if v and v.Name == "success" and vals.TauntSpam then
		v.Visible = false
	end
end)
cons[#cons+1] = plr.PlayerGui.HUD.achievements.ChildAdded:Connect(function(v)
	if v and v.Text:match("On The Move") and vals.DisableNotif then
		v.Visible = false
	end
end)

local coinsTouched = {}
cons[#cons+1] = velocity.FakeCharacter.FakeRoot.Touched:Connect(function(v)
	if v and v.Parent and v.Name == "Coin" and not coinsTouched[v] then
		coinsTouched[v] = true
		
		repeat
			collectCoin(v)
			task.wait()
		until not v or not v.Parent or closed
	end
end)

local function taunt()
	game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("match"):WaitForChild("BuyTaunt"):FireServer("Duck")
end

task.spawn(function()
	while not closed do
		if vals.TauntSpam then
			taunt()
			
			if vals.TauntCooldown ~= 0 then
				local start = tick()
				repeat task.wait(0.001) until tick() - start > vals.TauntCooldown or closed
			else
				for i=1, 9 do
					taunt()
				end
				
				task.wait(0.001)
			end
		else
			task.wait(0.001)
		end
	end
end)

local page = window:AddPage({Title = "Universal"})
page:AddToggle({Caption = "Noclip", Default = false, Callback = function(b)
	vals.Noclip = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Taunt spam", Default = false, Callback = function(b)
	vals.TauntSpam = b
end})
page:AddSlider({Caption = "Taunt spam cooldown", Default = 500, Min = 0, Max = 2500, Step = 5, Callback = function(b)
	vals.TauntCooldown = b / 1000
end, CustomTextDisplay = function(p)
	return p .. " milliseconds"
end})

page:AddSeparator()

page:AddToggle({Caption = "Auto spin wheel", Default = false, Callback = function(b)
	vals.AutoSpin = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Always be seeker", Default = false, Callback = function(b)
	vals.AlwaysSeeker = b
end})

page:AddSeparator()

page:AddButton({Caption = "Force load into a game", Callback = join})

local page = window:AddPage({Title = "Hider"})
page:AddToggle({Caption = "MEGA COIN FARM", Default = false, Callback = function(b)
	vals.MegaCoinFarm = b
end})
page:AddToggle({Caption = "Insane travel distances", Default = false, Callback = function(b)
	vals.Insane = b
end})
page:AddToggle({Caption = "Disable \"On The Move\" notification", Default = false, Callback = function(b)
	vals.DisableNotif = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Auto pick up coins", Default = false, Callback = function(b)
	vals.PickUpCoins = b
end})

page:AddSeparator()

page:AddToggle({Caption = "Invisibility", Default = false, Callback = function(b)
	vals.Invisible = b
end})

local page = window:AddPage({Title = "Seeker"})
page:AddToggle({Caption = "Crazy kill aura", Default = false, Callback = function(b)
	vals.Crazy = b
end})

local notified = false
local limit = vals.CrazyPower
page:AddSlider({Caption = "Crazy kill aura power", Default = limit, Min = 5, Max = 65, Step = 1, Callback = function(b)
	vals.CrazyPower = b
	if b <= limit then
		notified = false
	elseif not notified then
		notified = true
		lib.Notifications:Notification({Title = "WARNING", Text = "Rates higher than " .. limit .. " can cause huge ping"})
	end
end})

page:AddToggle({Caption = "Kill aura", Default = false, Callback = function(b)
	vals.KillAura = b
end})
