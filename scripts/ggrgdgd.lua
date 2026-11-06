local part = Instance.new("Part")
local PartTypes = Enum.PartType:GetEnumItems()
part.Shape = PartTypes[math.random(#PartTypes)]
part.Parent = workspace
part.Anchored = true
local function findMrKeef()
	local chiefs = {}
	-- if more than 5 bangbangs just remove a random one
	for _, v in pairs(workspace:GetChildren()) do
		if v.Name == "bangbang" then
			table.insert(chiefs, v)
			if #chiefs >= 5 then
				randomChiefVal = math.random(1, #chiefs)
				randomChiefKey = chiefs[randomChiefVal]
				randomChiefKey:Destroy()
				print("delete bang bang" .. randomChiefKey.Name)
				return
			end
		end
	end
end
findMrKeef()

part.Name = "bangbang"
part.BrickColor = BrickColor.random()
part.Material = Enum.Material.Foil
part.Transparency = math.random() * 0.7
part.CanCollide = false

local bangbang = "rbxasset://textures/face.png"
local chief1 = Instance.new("Decal")
local chief2 = chief1:Clone()
chief1.Parent = part
chief2.Parent = part
chief1.Face = Enum.NormalId.Front
chief2.Face = Enum.NormalId.Back
chief1.Texture = bangbang
chief2.Texture = bangbang

local randVector = Vector3.new
part.Position = Vector3.new(math.random(-50, 50),math.random(10,10),math.random(-50,50))
part.Size = Vector3.new(10, 10, 0.1)

local function spinit()
	randSpeed = math.random(5, 67)
	while task.wait(0.1) do
		part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(randSpeed), 0)
	end
end
print("spinning it")
spawn(spinit)

thevoices = Instance.new("Sound")
thevoices.SoundId = "rbxasset://sounds/uuhhh.mp3"
thevoices.Parent = part
local function oofit()
	while task.wait(math.random(5, 30)) do
		thevoices:Play()
	end
end
print("oofing it")
spawn(oofit)

script.Parent = part

local isSpecial = false
local debounce = false
local function touchevent(touch)
	local char = touch.Parent
	local humanoid = char:FindFirstChild("Humanoid")

	if humanoid and not debounce then
		debounce = true
		randEvent = math.random(1, 4)
		if randEvent == 1 then
			for _, part in pairs(char:GetChildren()) do
				if part:IsA("BasePart") then
					for _, side in pairs(Enum.NormalId:GetEnumItems()) do
						smile = Instance.new("Decal")
						smile.Parent = part
						smile.Texture = "rbxasset://textures/face.png"
						smile.Face = side
					end
				end
			end
		elseif randEvent == 2 then
			explodes = Instance.new("Explosion")
			explodes.Parent = workspace
			explodes.Position = touch.Position
		elseif randEvent == 3 then
			local rootPart = char:WaitForChild("HumanoidRootPart")
			rootPart.CFrame = CFrame.new(0, 1000000, 0)
		elseif randEvent == 4 then
			imonfire = Instance.new("Fire")
			local rootP = char:WaitForChild("HumanoidRootPart")
			imonfire.Parent = rootP
		end
		task.wait(2)
		debounce = false
	end
end
if math.random(0,3) == 3 then
	sparkles = Instance.new("Sparkles")
	sparkles.Parent = part
	sparkles.Enabled = true
	sparkles.SparkleColor = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
	part.Touched:Connect(touchevent)
end