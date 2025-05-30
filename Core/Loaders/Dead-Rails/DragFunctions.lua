return {
	StartDrag = function(self, object)
		game:GetService("ReplicatedStorage"):FindFirstChild("RequestStartDrag", math.huge):FireServer(object)
	end,
	StopDrag = function(self)
		game:GetService("ReplicatedStorage"):FindFirstChild("RequestStopDrag", math.huge):FireServer()
	end,
	
	ClaimNetwork = function(self, object)
		self:StartDrag(object)
		
		local par
		
		for i = 1, 100 do
			local drag1 = object:FindFirstChild("DragAttachment", math.huge)
			local drag2 = object:FindFirstChild("DragAlignPosition", math.huge)
			local drag3 = object:FindFirstChild("DragAlignOrientation", math.huge)

			if not drag1 and not drag2 and not drag3 and par then
				break
			end

			if drag1 then
				par = drag1.Parent
				drag1:Destroy()
			end
			if drag2 then
				par = drag2.Parent
				drag2:Destroy()
			end
			if drag3 then
				par = drag3.Parent
				drag3:Destroy()
			end
			
			task.wait(0.01)
		end

		return par
	end,
	
	DragToPosition = function(self, object, position)
		if typeof(position) == "Vector3" then
			position = CFrame.new(position)
		end
		
		local par = self:ClaimNetwork(object)
		
		if par then
			object:PivotTo(position)
		end
		
		task.wait(0.25)
		
		self:StopDrag()
	end
}
