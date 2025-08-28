local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().TornadoFE then
	return getGlobalTable().TornadoFE
end

local network = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/refs/heads/main/Core/Libraries/Tornado/NetworkModule.lua"))()
local plr = game:GetService("Players").LocalPlayer

local vec = vector and vector.create or Vector3.new
local oldCanCollide = {}
local rotationPowers = {}

local tornado = {
	Tornado = function(self, part)
		if not self:_IsSafe(part) or table.find(self._PartList, part) then return end

		table.insert(self._PartList, part)

		while self:_IsSafe(part) and part:IsGrounded() do task.wait(2.5) end
		if not part or not part.Parent then return end

		oldCanCollide[part] = part.CanCollide
		self:_ClearPart(part)
	end,

	Untornado = function(self, part)
		if not part then return end

		local found = table.find(self._PartList, part)
		if found then
			table.remove(self._PartList, found)
		end

		if part:FindFirstChild(self._TornadoGUID) then
			for i,v in part[self._TornadoGUID]:GetChildren() do
				if v and v:IsA("ObjectValue") and v.Name == self._TornadoGUID and v.Value and v.Value.Parent then
					v.Value:Destroy()
				end
			end

			part[self._TornadoGUID]:Destroy()
		end
	end,

	UntornadoAll = function(self)
		for i,v in self._PartList do
			self:Untornado(v)
		end

		table.clear(self._PartList)
	end,

	Properties = {
		Radius = 25,
		Speed = 10,
		Enabled = false,
		Layers = 5,
		RandomRotationPower = 30,
		ReverseLayers = false,
		LayerModifier = 1.05,
		HeightLayerModifier = 2,
		TargetLocation = nil,
	},

	Network = network,

	_IsSafe = function(self, part)
		return
			part and plr.Character and not part:IsDescendantOf(plr.Character) and
			part.Parent and not part.Parent:FindFirstChild("Humanoid") and
			part.Name:lower() ~= "handle" and part:IsA("BasePart") and not part.Anchored
	end,

	_ClearPart = function(self, part)
		for i,v in part:GetDescendants() do
			if
				v:IsA("BodyAngularVelocity") or v:IsA("BodyForce") or v:IsA("BodyGyro") or
				v:IsA("BodyPosition") or v:IsA("BodyThrust") or v:IsA("BodyVelocity") or
				v:IsA("RocketPropulsion") or v:IsA("Attachment") or v:IsA("AlignPosition") or
				v:IsA("Torque") then

				v:Destroy()
			end
		end
	end,
	_PartList = {}
}

game:GetService("RunService").RenderStepped:Connect(function()
	if plr.Character then
		local center = plr.Character:GetPivot().Position
		local i = 1
		while i <= #tornado._PartList do
			local v = tornado._PartList[i]
			if v and v.Parent and v:IsDescendantOf(workspace) then
				i += 1
				if tornado.Properties.Enabled and not v:IsGrounded() and network:IsNetworkOwner(v) and oldCanCollide[v] ~= nil then -- i have no clue if my tornado works
					rotationPowers[v] = rotationPowers[v] or vec(math.random(-(tornado.Properties.RandomRotationPower * 100), tornado.Properties.RandomRotationPower * 100), math.random(-(tornado.Properties.RandomRotationPower * 100), tornado.Properties.RandomRotationPower * 100), math.random(-(tornado.Properties.RandomRotationPower * 100), tornado.Properties.RandomRotationPower * 100))
					v.CanCollide = false
					
					if not tornado.Properties.TargetLocation then
						local layer = math.min(math.floor((v.Size.Magnitude / 15) * tornado.Properties.Layers), tornado.Properties.Layers) - 1
						if tornado.Properties.ReverseLayers then
							layer = tornado.Properties.Layers - layer + 1
						end

						local pos = v.Position
						local distance = (vec(pos.X, center.Y, pos.Z) - center).Magnitude
						local newAngle = math.atan2(pos.Z - center.Z, pos.X - center.X) + math.rad(tornado.Properties.Speed)

						v.AssemblyLinearVelocity = (vec(
							center.X + math.cos(newAngle) * (math.min(tornado.Properties.Radius, distance) * math.max(layer * tornado.Properties.LayerModifier, 1)),
							center.Y + math.abs(math.sin(pos.Y - center.Y + (layer * tornado.Properties.HeightLayerModifier))),
							center.Z + math.sin(newAngle) * (math.min(tornado.Properties.Radius, distance) * math.max(layer * tornado.Properties.LayerModifier, 1))
							) - v.Position).Unit * ((tornado.Properties.Speed * tornado.Properties.Radius) * (math.max(layer, 2) / 2))
					else
						v.AssemblyLinearVelocity = CFrame.lookAt(v.Position, tornado.Properties.TargetLocation).LookVector * (tornado.Properties.Speed * 10)
					end

					v.AssemblyAngularVelocity += rotationPowers[v] / 10
				else
					v.CanCollide = oldCanCollide[v]
				end
			else
				table.remove(tornado._PartList, i)
			end
		end
	end
end)

getGlobalTable().TornadoFE = tornado

return tornado
