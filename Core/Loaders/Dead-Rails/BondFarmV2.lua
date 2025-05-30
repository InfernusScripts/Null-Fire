local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().DRBF then
	return getGlobalTable().DRBF
end

local tb = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Loaders/Dead-Rails/TurretBypass.lua"))()

local bondFarm = {
	Enabled = false,
	
	Collected = 0,
	Found = 0,
	
	TurretBypass = tb
}

workspace.RuntimeItems.ChildAdded:Connect(function(v)
	if v.Name == "Bond" then
		bondFarm.Found += 1
	end
end)

workspace.RuntimeItems.ChildRemoved:Connect(function(v)
	if v.Name == "Bond" then
		bondFarm.Collected += 1
	end
end)

task.spawn(function()
	while task.wait() do
		tb.Enabled = bondFarm.Enabled
		
		if tb.Active then
			local bond = tb.Scan("Bond")
			if bond then
				tb.Position = bond:GetPivot().Position
				
				game:GetService("Players").LocalPlayer.Character:PivotTo(bond:GetPivot())
				game:GetService("ReplicatedStorage"):FindFirstChild("C_ActivateObject", math.huge):FireServer(bond)
			end
		end
	end
end)

return bondFarm
