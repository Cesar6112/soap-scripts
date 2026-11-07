local part = Instance.new("Part")
part.Name = "yea"
part.Shape = Enum.PartType.Block
part.Size = Vector3.new(100, 1, 100)
part.Position = Vector3.new(0, 0, 0)
part.Color = Color3.fromRGB(80, 160, 80)
part.Anchored = true
part.Parent = workspace

part.Touched:Connect(function(otraParte)
	local humanoid = otraParte.Parent:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid:TakeDamage(50)
	end
end)