for i = 1, 10 do
local part = Instance.new("part")
part.Name= ("yea")
part.Shape = Enum.PartType.Ball
part.Size = Vector3.new(4, 4, 4)
part.Position = Vector3.new(math.random(-20, 20), 15, math.random(-20, 20))
part.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
part.Anchored = true
part.Parent = workspace
end
