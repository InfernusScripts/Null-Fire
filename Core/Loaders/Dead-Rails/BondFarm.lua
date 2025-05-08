local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().DRBF then
	return getGlobalTable().DRBF
end

local plr = game:GetService("Players").LocalPlayer
local tps

local cons = {}
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
			plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end

		return bond or workspace.RuntimeItems:FindFirstChild("Bond") or not bondFarm.TeleportToSafeSpot() and not plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) and tps.ScanFor(game.FindFirstChild, workspace.RuntimeItems, "Bond")
	end,
	CheckY = function()
		local pos = plr.Character:GetPivot().Position

		plr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 1)
		--plr.Character.HumanoidRootPart.CFrame = CFrame.lookAt(plr.Character.HumanoidRootPart.Position, plr.Character.HumanoidRootPart - Vector3.new(0, 1))
	end,
	TeleportToSafeSpot = function()
		tps.Teleports.Train()
		plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end,
	BondStep = function(bond)
		if bond then
			bondFarm.CheckY()
			game:GetService("ReplicatedStorage"):FindFirstChild("C_ActivateObject", math.huge):FireServer(bond)
			plr.Character.Humanoid:MoveTo(bond:GetPivot().Position)
			tps.Teleport(bond:GetPivot().Position - Vector3.new(0, 2.5), nil, nil, false)
		end
	end,

	Finished = false,

	Collected = 0
}

local function onNewChild(v)
	if v and v.Name == "Bond" and not cons[v] then
		cons[v] = v.Destroying:Connect(function()
			bondFarm.Collected += 1
		end)
	end
end

for i,v in workspace.RuntimeItems:GetChildren() do
	onNewChild(v)
end
workspace.RuntimeItems.ChildAdded:Connect(onNewChild)

getGlobalTable().DRBF = bondFarm

tps = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Dead-Rails/Teleports.lua", true))()

bondFarm.Teleports = tps
bondFarm.Active = false

task.spawn(function()
	while task.wait(0.075) do
		if bondFarm.Active then
			if not workspace.Baseplates:FindFirstChild("FinalBasePlate") then
				bondFarm.BondStep(bondFarm.GetClosestBond())
			else
				local bond = bondFarm.GetClosestBond()
				if not bond then
					bondFarm.Finished = true
					break
				else
					bondFarm.BondStep(bond)
				end
			end
		end
	end
end)

return bondFarm
