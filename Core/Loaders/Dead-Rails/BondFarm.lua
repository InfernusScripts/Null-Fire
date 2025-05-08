local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().DRBF then
	return getGlobalTable().DRBF
end

local plr = game:GetService("Players").LocalPlayer
local tps

local cons = {}
local found = {}

local bondFarm; bondFarm = {
	GetClosestBond = function()
		local bond = workspace.RuntimeItems:FindFirstChild("Bond")
		if bond then
			local d,c = math.huge, nil

			for i,v in workspace.RuntimeItems:GetChildren() do
				if v.Name == "Bond" then
					local m = (plr.Character:GetPivot().Position - v:GetPivot().Position).Magnitude
					if m < d then
						d,c = m,v
					end
				end
			end

			bond = c
		else
			bondFarm.TeleportToSafeSpot()
			bond = tps.ScanFor(game.FindFirstChild, workspace.RuntimeItems, "Bond")
		end

		return bond or workspace.RuntimeItems:FindFirstChild("Bond") or not bondFarm.TeleportToSafeSpot() and tps.ScanFor(game.FindFirstChild, workspace.RuntimeItems, "Bond")
	end,
	CheckY = function()
		local pos = plr.Character:GetPivot().Position

		plr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 1)
		--plr.Character.HumanoidRootPart.CFrame = CFrame.lookAt(plr.Character.HumanoidRootPart.Position, plr.Character.HumanoidRootPart - Vector3.new(0, 1))
	end,
	TeleportToSafeSpot = function()
		tps.Teleport.Train()
	end,
	BondStep = function(bond)
		if bond then
			bondFarm.CheckY()

			if not found[bond] then
				found[bond] = true
				bondFarm.Collected += 1
			end
			game:GetService("ReplicatedStorage"):FindFirstChild("C_ActivateObject", math.huge):FireServer(bond)

			pcall(tps.Teleport, bond:GetPivot() - Vector3.new(0, 2.5), nil, nil, false)
			plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame:Lerp(bond:GetPivot(), 0.05)
		end
	end,

	Finished = false,

	Collected = 0
}

getGlobalTable().DRBF = bondFarm

tps = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Dead-Rails/Teleports.lua", true))()

bondFarm.Teleports = tps
bondFarm.Active = false

task.spawn(function()
	while task.wait(0.075) do
		if bondFarm.Active then
			if not workspace.Baseplates:FindFirstChild("FinalBasePlate") then
				pcall(bondFarm.BondStep, bondFarm.GetClosestBond())
			else
				local bond = bondFarm.GetClosestBond()
				if not bond then
					bondFarm.Finished = true
					break
				else
					pcall(bondFarm.BondStep, bond)
				end
			end
		end
	end
end)

return bondFarm
