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
			bond = tps.ScanFor(game.FindFirstChild, workspace.RuntimeItems, "Bond")
		end

		return bond or workspace.RuntimeItems:FindFirstChild("Bond") or tps.ScanFor(game.FindFirstChild, workspace.RuntimeItems, "Bond")
	end,
	FoundBond = function(bond)
		if not found[bond] then
			found[bond] = true
			bondFarm.Found += 1
		end
		if not cons[bond] and bond:FindFirstChild("Part") and bond.Part:FindFirstChild("Collect") then
			local collect = bond.Part.Collect
			local con; con = game:GetService("RunService").RenderStepped:Connect(function()
				if collect and collect.Playing then
					bondFarm.Missed -= 1
					bondFarm.Collected += 1
					con:Disconnect()
				elseif not collect.Parent then
					bondFarm.Missed += 1
					task.wait(1)
					con:Disconnect()
				end
			end)
		end
	end,
	CheckY = function()
		local pos = plr.Character:GetPivot().Position

		if pos.Y < -20 then
			plr.Character:PivotTo(CFrame.new(pos.X, -5, pos.Z))
		end

		plr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 1)
	end,
	BondStep = function(bond)
		if bond then
			bondFarm.FoundBond(bond)
			bondFarm.CheckY()

			game:GetService("ReplicatedStorage"):FindFirstChild("C_ActivateObject", math.huge):FireServer(bond)

			pcall(tps.Teleport, bond:GetPivot() - Vector3.new(0, 7.5), nil, nil, false)
		end
	end,

	Finished = false,

	Collected = 0,
	Found = 0,
	Missed = 0
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
