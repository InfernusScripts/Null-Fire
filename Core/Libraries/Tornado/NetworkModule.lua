-- fuck this all. here you go - free and open source

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

game:GetService("RunService").RenderStepped:Connect(function()
	if not active then return end
	for _, v in game:GetService("Players"):GetPlayers() do
		if v and v ~= plr then
			pcall(set, v, "MaximumSimulationRadius", 0)
			if sethiddenproperty then 
				sethiddenproperty(v, 'MaxSimulationRadius', 0)
				sethiddenproperty(v, 'SimulationRadius', 0)
			end
		end
	end
	
	if sethiddenproperty then
		sethiddenproperty(plr, 'MaxSimulationRadius', math.huge)
		sethiddenproperty(plr, 'SimulationRadius', math.huge)
	end
	if setsimulationradius then setsimulationradius(9e8, 9e9) end
	
	pcall(set, plr, "MaximumSimulationRadius", math.huge)
end)

local main = setmetatable({
	Active = active,
	SetActive = function(self, state)
		return self(state)
	end,
	
	IsNetworkOwner = function(self, part)
		if getfenv().isnetworkowner then
			return getfenv().isnetworkowner(part)
		end
		
		return part.ReceiveAge == 0 or pcall(part.GetNetworkOwner, part) and part:GetNetworkOwner() == plr or false
	end,
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
						sethiddenproperty(v, 'MaxSimulationRadius', 20, 100)
						sethiddenproperty(v, 'SimulationRadius', 40)
					end
				end
			end
			if setsimulationradius then setsimulationradius(0, 30) end
		end
	end
})

main.__index = main

getGlobalTable()._NETACCESS = main

return main
