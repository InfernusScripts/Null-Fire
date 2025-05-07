local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable()._NETACCESS then
	return getGlobalTable()._NETACCESS
end

local active = false

local function set(self, i, v)
	self[i] = v
end

local sethiddenproperty = getfenv().sethiddenproperty or getfenv().sethiddenprop
local setsimulationradius = getfenv().setsimulationradius

local plr = game:GetService("Players").LocalPlayer

local function rs(times)
	local times = math.max(math.round(tonumber(times) or 1), 1)
	local dt = 0
	for i=1, times do
		dt = dt + game:GetService("RunService").RenderStepped:Wait()
	end
	return dt / times
end

game:GetService("RunService").RenderStepped:Connect(function()
	if not active then return end
	for _, v in game:GetService("Players"):GetPlayers() do
		if v and v ~= plr then
			pcall(set, v, "MaximumSimulationRadius", 0)
			if sethiddenproperty then 
				pcall(sethiddenproperty, v, 'MaxSimulationRadius', 0)
				pcall(sethiddenproperty, v, 'SimulationRadius', 0)
			end
		end
	end

	settings().Physics.AllowSleep = false
	plr.ReplicationFocus = workspace

	if sethiddenproperty then
		pcall(sethiddenproperty, plr, 'MaxSimulationRadius', math.huge)
		pcall(sethiddenproperty, plr, 'SimulationRadius', math.huge)
	end
	if setsimulationradius then pcall(setsimulationradius, 9e8, 9e9) end

	pcall(set, plr, "MaximumSimulationRadius", math.huge)
end)

local cd = {}
local ftiv = false
local fti = getfenv().firetouchinterest
local plr = game:GetService("Players").LocalPlayer

task.spawn(function()
	if fti then
		local part = Instance.new("Part", workspace)
		part.Position = Vector3.new(0, 100, 0)
		part.Anchored = false -- important
		part.CanCollide = false
		part.Transparency = 1
		part.Touched:Connect(function()
			part:Destroy()
			ftiv = true
		end)
		task.wait(0.1)
		repeat task.wait() until plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and part and part.Parent
		fti(part, plr.Character.HumanoidRootPart, 0)
		fti(plr.Character.HumanoidRootPart, part, 0)
		task.wait()
		repeat task.wait() until plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and part and part.Parent
		fti(part, plr.Character.HumanoidRootPart, 1)
		fti(plr.Character.HumanoidRootPart, part, 1)
	end
end)
local firetouchinterest = function(a,b,touching)
	if ftiv then
		return fti(a,b,touching)
	end

	if cd[a] or cd[b] then return end
	if a:IsDescendantOf(plr.Character) and b:IsDescendantOf(plr.Character) then return end
	if b:IsDescendantOf(plr.Character) then
		local c = a
		a = b
		b = c
	end

	cd[a] = true
	cd[b] = true
	touching = touching == 0

	if not touching then
		local ct = b.CanTouch
		b.CanTouch = false
		task.wait(0.015)
		b.CanTouch = ct
	else
		local pp = b:GetPivot()
		local t,c,an = b.Transparency,b.CanCollide,b.Anchored
		b:PivotTo(a:GetPivot())
		b.Transparency = 1
		b.CanCollide = false
		b.Anchored = false
		b.Velocity = b.Velocity + Vector3.new(0,1)
		a.Touched:Wait()
		b.Transparency = t
		b.CanCollide = c
		b.Anchored = an
		b:PivotTo(pp)
	end
	
	task.wait()

	cd[a] = false
	cd[b] = false
end

local fppn = false
local fpp = getfenv().fireproximityprompt
if fpp then
	pcall(function()
		task.spawn(function()
			local pp = Instance.new("ProximityPrompt", plr.Character)
			local con; con = pp.Triggered:Connect(function()
				con:Disconnect()
				pp:Destroy()
				fppn = true
			end)
			task.wait(0.1)
			fpp(pp)
			task.wait(1.5)
			if pp and pp.Parent then
				pp:Destroy()
				con:Disconnect()
			end
		end)
	end)
end

local function fppFunc(pp)
	cd[pp] = true
	local a,b,c,d,e = pp.MaxActivationDistance, pp.Enabled, pp.Parent, pp.HoldDuration, pp.RequiresLineOfSight
	local obj = Instance.new("Part", workspace)
	obj.Transparency = 1
	obj.CanCollide = false
	obj.Size = Vector3.new(0.1, 0.1, 0.1)
	obj.Anchored = true
	pp.Parent = obj
	pp.MaxActivationDistance = math.huge
	pp.Enabled = true
	pp.HoldDuration = 0
	pp.RequiresLineOfSight = false
	if not pp or not pp.Parent then
		obj:Destroy()
		return
	end
	obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
	rs()
	obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
	rs()
	obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
	pp:InputHoldBegin()
	rs()
	pp:InputHoldEnd()
	rs()
	if pp.Parent == obj then
		pp.Parent = c
		pp.MaxActivationDistance = a
		pp.Enabled = b
		pp.HoldDuration = d
		pp.RequiresLineOfSight = e
	end
	obj:Destroy()
	cd[pp] = false
end
local function canGetPivot(pp)
	return pp.Parent.GetPivot
end
local fireproximityprompt = function(pp, ddc)
	if ddc == nil then
		ddc = true
	end
	if typeof(pp) ~= "Instance" or not pp:IsA("ProximityPrompt") or not pcall(canGetPivot, pp) or cd[pp] or not workspace.CurrentCamera or ddc and ((plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.HumanoidRootPart or workspace.CurrentCamera).CFrame.Position - pp.Parent:GetPivot().Position).Magnitude > pp.MaxActivationDistance or ddc then return end
	if fppn then
		return fpp(pp)
	end
	task.spawn(fppFunc, pp)
end

local main = setmetatable({
	Active = active,
	SetActive = function(self, state)
		return self(state)
	end,

	IsNetworkOwner = function(self, part)
		if getfenv().isnetworkowner then
			return getfenv().isnetworkowner(part)
		end

		return part.ReceiveAge == 0
	end,
	
	Other = table.freeze({
		TouchInterest = function(self, ...)
			return firetouchinterest(...)
		end,
		TouchTransmitter = function(self, ...)
			return self:TouchInterest(...)
		end,
		
		FireTouchInterest = function(self, ...)
			return self:TouchInterest(...)
		end,
		FireTouchTransmitter = function(self, ...)
			return self:TouchInterest(...)
		end,
		
		ProximityPrompt = function(self, ...)
			return fireproximityprompt(...)
		end,
		FireProximityPrompt = function(self, ...)
			return self:ProximityPrompt(...)
		end,
		
		Touch = function(self, target, instant)
			if not plr.Character or not target then return end
			local randomParts = {}
			
			for i,v in plr.Character:GetChildren() do
				if v and v:IsA("BasePart") then
					table.insert(randomParts, v)
				end
			end
			
			if #randomParts == 0 then return end
			local part = randomParts[math.random(1, #randomParts)]
			
			self:TouchInterest(part, target, 0)
			if not instant then
				task.wait(0.001)
			end
			self:TouchInterest(part, target, 1)
		end,
		TouchPart = function(self, ...)
			return self:Touch(...)
		end,
		
		Sit = function(self, seatPart)
			if not seatPart or not plr.Character then return end
			local hum = plr.Character:FindFirstChildOfClass("Humanoid")

			if hum then
				if seatPart.Occupant then return end
				seatPart:PivotTo(plr.Character.HumanoidRootPart:GetPivot())
				
				self:Touch(seatPart, true)
			end
		end,
	})
}, {
	__call = function(self, state)
		active = state
		self.Active = state

		settings().Physics.AllowSleep = not state
		plr.ReplicationFocus = state and workspace or nil

		if not state then
			for _, v in game:GetService("Players"):GetPlayers() do
				if v then
					pcall(set, v, "MaximumSimulationRadius", 20) -- these numbers are random, i have no clue which ones are really default
					if sethiddenproperty then 
						pcall(sethiddenproperty, v, 'MaxSimulationRadius', 20, 100)
						pcall(sethiddenproperty, v, 'SimulationRadius', 40)
					end
				end
			end
			if setsimulationradius then pcall(setsimulationradius, 0, 30) end
		end
	end
})

main.__index = main

getGlobalTable()._NETACCESS = main

return main
