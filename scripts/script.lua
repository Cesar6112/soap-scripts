for i = 1, 10 do
local part = Instance.new("Part")
Part.Name= ("yea")
Part.Shape = Enum.PartType.Ball
Part.Size = Vector3.new(4, 4, 4)
Part.Position = Vector3.new(math.random(-20, 20), 15, math.random(-20, 20))
Part.Color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
Part.Anchored true
Part.Parent workspace