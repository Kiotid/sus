-- Gui Kio V:12.0.3

local ScreenGui = Instance.new("ScreenGui")
local Border = Instance.new("Frame")
local Nav = Instance.new("Frame")
local HomeBtn = Instance.new("TextButton")
local PetBtn = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Home = Instance.new("Frame")
local NoAfk = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local PetSimulator = Instance.new("Frame")
local AutoFarm = Instance.new("TextButton")
local Hider = Instance.new("TextButton")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local okJump = Instance.new("TextButton")
local Jump = Instance.new("TextBox")
local okSpeed = Instance.new("TextButton")
local Speed = Instance.new("TextBox")
local reset = Instance.new("TextButton")
local ZombieAttack = Instance.new("Frame")
local AutoFarm_2 = Instance.new("TextButton")
local TextLabel_5 = Instance.new("TextLabel")
local ZombieBtn = Instance.new("TextButton")
local infoBtn = Instance.new("TextButton")
local info = Instance.new("Frame")
local infoTxt = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local BackBtn = Instance.new("TextButton")
local CheatAttivi = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local AntiAfkTxt = Instance.new("TextLabel")
local NoClipTxt = Instance.new("TextLabel")
local ResetTxt = Instance.new("TextLabel")
local SpeedTxt = Instance.new("TextLabel")
local JumpTxt = Instance.new("TextLabel")
local AutoFPet = Instance.new("TextLabel")
local AutoFZombie = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local playerBtn = Instance.new("TextButton")
local TpPl = Instance.new("TextButton")
local TpPoint = Instance.new("TextButton")
local Hack = Instance.new("TextButton")
local TextLabel_7 = Instance.new("TextLabel")
local BigPaintball = Instance.new("Frame")
local Hack_2 = Instance.new("TextButton")
local TextLabel_8 = Instance.new("TextLabel")
local RincoilBtn = Instance.new("TextButton")
local PaintballBtn = Instance.new("TextButton")
local Rincoil = Instance.new("Frame")
local BigPaintballTxt = Instance.new("TextLabel")
local RincoilTxt = Instance.new("TextLabel")
local HiderTxt = Instance.new("TextLabel")
local CoinToPlayer = Instance.new("TextButton")
local CoinToPlayerTxt = Instance.new("TextLabel")

rconsoleprint('@@GREEN@@')
rconsoleprint("Kio's GUI Loaded!")
local string = [[
    __ __ _  
   / //_/(_)___ 
  / ,<  / / __ \
 / /| |/ / /_/ /
/_/ |_/_/\____/ 
]]
rconsoleprint("\n")
rconsoleprint(string)


local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(InputObject, Processed)
	if InputObject.KeyCode == Enum.KeyCode.RightShift then
		if Border.Visible == false then
			Border.Visible = true
			CheatAttivi.Visible = true
		else
			Border.Visible = false
			CheatAttivi.Visible = false

		end
	end
end)

function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

counter = 0


ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Border.Name = "Border"
Border.Parent = ScreenGui
Border.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Border.BorderColor3 = Color3.fromRGB(53, 53, 53)
Border.BorderSizePixel = 2
Border.Position = UDim2.new(0.0357408784, 0, 0.577914119, 0)
Border.Size = UDim2.new(0, 524, 0, 302)
Border.Active = true
Border.Draggable = true

ScrollingFrame.Parent = Border
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
ScrollingFrame.BackgroundTransparency = 0.500
ScrollingFrame.BorderColor3 = Color3.fromRGB(6, 4, 7)
ScrollingFrame.Position = UDim2.new(1.05321193, 0, -0.00155609846, 0)
ScrollingFrame.Size = UDim2.new(0, 186, 0, 302)
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(20, 7, 7)
ScrollingFrame.Visible = false

playerBtn.Name = "playerBtn"
playerBtn.Parent = ScrollingFrame
playerBtn.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
playerBtn.BorderColor3 = Color3.fromRGB(255, 0, 0)
playerBtn.BorderSizePixel = 3
playerBtn.Size = UDim2.new(0, 173, 0, 43)
playerBtn.AutoButtonColor = false
playerBtn.Font = Enum.Font.Sarpanch
playerBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
playerBtn.TextSize = 23.000

local Plr = game:GetService("Players") 
local PlrFold = ScrollingFrame

local playerBtn = PlrFold.playerBtn:Clone() 
PlrFold.playerBtn:Destroy() 

function update() 

	PlrFold:ClearAllChildren() 

	local CurrentPlayer = 0 

	for i,v in pairs(Plr:GetPlayers()) do 
		if v.Character ~= game:GetService("Players").LocalPlayer.Character then
			CurrentPlayer = CurrentPlayer + 1 

			local newButton = playerBtn:Clone() 

			newButton.Position = UDim2.new( 0, 0, 0, newButton.Size.Y.Offset * ( CurrentPlayer - 1 ) ) 
			newButton.Text = v.Name 

			newButton.MouseButton1Down:connect(function()
				if v and v.Character then
					local character = v.Character
					game.Players.LocalPlayer.Character:MoveTo(character.HumanoidRootPart.Position)
				end
			end)

			newButton.Parent = PlrFold
		end
	end

end

Plr.PlayerAdded:connect(update) 
Plr.PlayerRemoving:connect(update) 

update()

CheatAttivi.Name = "CheatAttivi"
CheatAttivi.Parent = ScreenGui
CheatAttivi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatAttivi.BackgroundTransparency = 1.000
CheatAttivi.Position = UDim2.new(0.809381962, 0, 0, 0)
CheatAttivi.Size = UDim2.new(0, 256, 0, 815)
CheatAttivi.Visible = true

UIListLayout.Parent = CheatAttivi
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top

Nav.Name = "Nav"
Nav.Parent = Border
Nav.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Nav.BorderSizePixel = 0
Nav.Position = UDim2.new(0.00600000005, 0, 0.200000003, 0)
Nav.Size = UDim2.new(0, 84, 0, 240)

HomeBtn.Name = "HomeBtn"
HomeBtn.Parent = Nav
HomeBtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
HomeBtn.BorderSizePixel = 0
HomeBtn.Size = UDim2.new(0, 84, 0, 35)
HomeBtn.Font = Enum.Font.SourceSans
HomeBtn.Text = "Home"
HomeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeBtn.TextSize = 14.000
HomeBtn.MouseButton1Down:connect(function()
	Home.Visible = true
	PetSimulator.Visible = false
	ZombieAttack.Visible = false
	Rincoil.Visible = false
	BigPaintball.Visible = false
end)

PetBtn.Name = "PetBtn"
PetBtn.Parent = Nav
PetBtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
PetBtn.BorderSizePixel = 0
PetBtn.Position = UDim2.new(0, 0, 0.124555282, 0)
PetBtn.Size = UDim2.new(0, 84, 0, 35)
PetBtn.Font = Enum.Font.SourceSans
PetBtn.Text = "PetSimulatorX"
PetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
PetBtn.TextSize = 14.000
PetBtn.MouseButton1Down:connect(function()
	PetSimulator.Visible = true
	Home.Visible = false
	ZombieAttack.Visible = false
	Rincoil.Visible = false
	BigPaintball.Visible = false
end)

ZombieBtn.Name = "ZombieBtn"
ZombieBtn.Parent = Nav
ZombieBtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
ZombieBtn.BorderSizePixel = 0
ZombieBtn.Position = UDim2.new(0, 0, 0.270388603, 0)
ZombieBtn.Size = UDim2.new(0, 84, 0, 35)
ZombieBtn.Font = Enum.Font.SourceSans
ZombieBtn.Text = "Zombie Attack"
ZombieBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ZombieBtn.TextSize = 14.000
ZombieBtn.MouseButton1Down:connect(function()
	ZombieAttack.Visible = true
	PetSimulator.Visible = false
	Home.Visible = false
	Rincoil.Visible = false
	BigPaintball.Visible = false
end)

RincoilBtn.Name = "RincoilBtn"
RincoilBtn.Parent = Nav
RincoilBtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
RincoilBtn.BorderSizePixel = 0
RincoilBtn.Position = UDim2.new(0, 0, 0.416221946, 0)
RincoilBtn.Size = UDim2.new(0, 84, 0, 35)
RincoilBtn.Font = Enum.Font.SourceSans
RincoilBtn.Text = "Rincoil | BETA"
RincoilBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
RincoilBtn.TextSize = 14.000
RincoilBtn.MouseButton1Down:connect(function()
	Rincoil.Visible = true
	PetSimulator.Visible = false
	Home.Visible = false
	BigPaintball.Visible = false
	ZombieAttack.Visible = false
end)

PaintballBtn.Name = "PaintballBtn"
PaintballBtn.Parent = Nav
PaintballBtn.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
PaintballBtn.BorderSizePixel = 0
PaintballBtn.Position = UDim2.new(0, 0, 0.56205529, 0)
PaintballBtn.Size = UDim2.new(0, 84, 0, 35)
PaintballBtn.Font = Enum.Font.SourceSans
PaintballBtn.Text = "Big Paintball"
PaintballBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
PaintballBtn.TextSize = 14.000
PaintballBtn.MouseButton1Down:connect(function()
	BigPaintball.Visible = true
	PetSimulator.Visible = false
	Home.Visible = false
	ZombieAttack.Visible = false
	Rincoil.Visible = false
end)

TextLabel.Parent = Border
TextLabel.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
TextLabel.Position = UDim2.new(0.00899999961, 0, 0.057, 0)
TextLabel.Size = UDim2.new(0, 515, 0, 37)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "All-One Gui"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 31.000


okJump.Name = "okJump"
okJump.Parent = Home
okJump.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
okJump.BorderColor3 = Color3.fromRGB(255, 255, 255)
okJump.BorderSizePixel = 2
okJump.Position = UDim2.new(0.638921142, 0, 0.414745092, 0)
okJump.Size = UDim2.new(0, 32, 0, 32)
okJump.Font = Enum.Font.SourceSans
okJump.Text = "set"
okJump.TextColor3 = Color3.fromRGB(255, 255, 255)
okJump.TextSize = 14.000
okJump.MouseButton1Down:connect(function()
	local jump = Jump.Text

	game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = jump

	JumpTxt.Visible = true
	JumpTxt.Text = "Jump: " .. game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower
end)

Jump.Name = "Jump"
Jump.Parent = Home
Jump.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Jump.BorderColor3 = Color3.fromRGB(255, 255, 255)
Jump.BorderSizePixel = 2
Jump.Position = UDim2.new(0.388888896, 0, 0.415967315, 0)
Jump.Size = UDim2.new(0, 94, 0, 32)
Jump.Font = Enum.Font.SourceSans
Jump.PlaceholderText = "Jump Number"
Jump.Text = ""
Jump.TextColor3 = Color3.fromRGB(255, 255, 255)
Jump.TextSize = 14.000

okSpeed.Name = "okSpeed"
okSpeed.Parent = Home
okSpeed.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
okSpeed.BorderColor3 = Color3.fromRGB(255, 255, 255)
okSpeed.BorderSizePixel = 2
okSpeed.Position = UDim2.new(0.641235948, 0, 0.214745119, 0)
okSpeed.Size = UDim2.new(0, 32, 0, 32)
okSpeed.Font = Enum.Font.SourceSans
okSpeed.Text = "set"
okSpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
okSpeed.TextSize = 14.000
okSpeed.MouseButton1Down:connect(function()
	local speed = Speed.Text

	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = speed

	SpeedTxt.Visible = true
	SpeedTxt.Text = "Speed: " .. game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
end)

Speed.Name = "Speed"
Speed.Parent = Home
Speed.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Speed.BorderColor3 = Color3.fromRGB(255, 255, 255)
Speed.BorderSizePixel = 2
Speed.Position = UDim2.new(0.388888896, 0, 0.215967312, 0)
Speed.Size = UDim2.new(0, 94, 0, 32)
Speed.Font = Enum.Font.SourceSans
Speed.PlaceholderText = "Speed Number"
Speed.Text = ""
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextSize = 14.000


reset.Name = "reset"
reset.Parent = Home
reset.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
reset.BorderColor3 = Color3.fromRGB(255, 255, 255)
reset.BorderSizePixel = 2
reset.Position = UDim2.new(0.0393841341, 0, 0.618911862, 0)
reset.Size = UDim2.new(0, 94, 0, 32)
reset.Font = Enum.Font.SourceSans
reset.Text = "Enable Reset Char"
reset.TextColor3 = Color3.fromRGB(255, 255, 255)
reset.TextSize = 14.000
reset.MouseButton1Down:connect(function()

	ResetTxt.Visible = true

	while true do
		game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
		game:GetService("RunService").RenderStepped:Wait()
	end

end)

TpPl.Name = "TpPl"
TpPl.Parent = Home
TpPl.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TpPl.BorderColor3 = Color3.fromRGB(255, 255, 255)
TpPl.BorderSizePixel = 2
TpPl.Position = UDim2.new(0.388921142, 0, 0.618911862, 0)
TpPl.Size = UDim2.new(0, 94, 0, 32)
TpPl.Font = Enum.Font.SourceSans
TpPl.Text = "Tp to player"
TpPl.TextColor3 = Color3.fromRGB(255, 255, 255)
TpPl.TextSize = 14.000
TpPl.MouseButton1Down:connect(function()

	if ScrollingFrame.Visible == false then
		ScrollingFrame.Visible = true
	else
		ScrollingFrame.Visible = false

	end

end)

TpPoint.Name = "TpPoint"
TpPoint.Parent = Home
TpPoint.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TpPoint.BorderColor3 = Color3.fromRGB(255, 255, 255)
TpPoint.BorderSizePixel = 2
TpPoint.Position = UDim2.new(0.0393840969, 0, 0.814745188, 0)
TpPoint.Size = UDim2.new(0, 94, 0, 32)
TpPoint.Font = Enum.Font.SourceSans
TpPoint.Text = "Tp to point see"
TpPoint.TextColor3 = Color3.fromRGB(255, 255, 255)
TpPoint.TextSize = 14.000
TpPoint.MouseButton1Down:connect(function()

	local plr = game.Players.LocalPlayer
	local hum = plr.Character.HumanoidRootPart
	local mouse = plr:GetMouse()

	mouse.KeyDown:connect(function(key)
		if key == "f" then
			if mouse.Target then
				hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
			end
		end
	end)

end)

Home.Name = "Home"
Home.Parent = Border
Home.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0.169, 0, 0.199000001, 0)
Home.Size = UDim2.new(0, 432, 0, 240)

NoAfk.Name = "NoAfk"
NoAfk.Parent = Home
NoAfk.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
NoAfk.BorderColor3 = Color3.fromRGB(255, 255, 255)
NoAfk.BorderSizePixel = 2
NoAfk.Position = UDim2.new(0.0393841341, 0, 0.22013405, 0)
NoAfk.Size = UDim2.new(0, 94, 0, 32)
NoAfk.Font = Enum.Font.SourceSans
NoAfk.Text = "Anti AFK"
NoAfk.TextColor3 = Color3.fromRGB(255, 255, 255)
NoAfk.TextSize = 14.000
NoAfk.MouseButton1Down:connect(function()
	AntiAfkTxt.Visible = true

	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)

NoClip.Name = "NoClip"
NoClip.Parent = Home
NoClip.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
NoClip.BorderColor3 = Color3.fromRGB(255, 255, 255)
NoClip.BorderSizePixel = 2
NoClip.Position = UDim2.new(0.0393841341, 0, 0.418911874, 0)
NoClip.Size = UDim2.new(0, 94, 0, 32)
NoClip.Font = Enum.Font.SourceSans
NoClip.Text = "No Clip (Walk)"
NoClip.TextColor3 = Color3.fromRGB(255, 255, 255)
NoClip.TextSize = 14.000
NoClip.MouseButton1Down:connect(function()

	NoClipTxt.Visible = true

	local noclip = false 
	game:GetService('RunService').Stepped:connect(function() 
		if noclip then 
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11) 
		end 
	end) 
	local plr = game.Players.LocalPlayer 
	local mouse = plr:GetMouse() 
	mouse.KeyDown:connect(function(key)   
		if key == "e" then 
			noclip = not noclip 
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11) 
		end 
	end) 


end)

TextLabel_2.Parent = Home
TextLabel_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextLabel_2.BorderColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 431, 0, 35)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Generic Script"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 20.000

PetSimulator.Name = "PetSimulator"
PetSimulator.Parent = Border
PetSimulator.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
PetSimulator.BorderSizePixel = 0
PetSimulator.Position = UDim2.new(0.169, 0, 0.199000001, 0)
PetSimulator.Size = UDim2.new(0, 432, 0, 240)
PetSimulator.Visible = false

Rincoil.Name = "Rincoil"
Rincoil.Parent = Border
Rincoil.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Rincoil.BorderSizePixel = 0
Rincoil.Position = UDim2.new(0.169, 0, 0.199000001, 0)
Rincoil.Size = UDim2.new(0, 432, 0, 240)
Rincoil.Visible = false

Hack.Name = "Hack"
Hack.Parent = Rincoil
Hack.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Hack.BorderColor3 = Color3.fromRGB(255, 255, 255)
Hack.BorderSizePixel = 2
Hack.Position = UDim2.new(0.0393841341, 0, 0.22013405, 0)
Hack.Size = UDim2.new(0, 94, 0, 32)
Hack.Font = Enum.Font.SourceSans
Hack.Text = "Hack by Kio"
Hack.TextColor3 = Color3.fromRGB(255, 255, 255)
Hack.TextSize = 14.000
Hack.MouseButton1Down:connect(function()
	RincoilTxt.Visible = true

	local mouse = game:GetService("Players").LocalPlayer:GetMouse()

	mouse.KeyDown:connect(function(key)
		if key == "l" then
			local player = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

			for i, v in pairs(game.Workspace:GetChildren()) do
				if v.Name == "Map" then--or v.Name == "TerrainPart" or v.Name == "Walls" then
					v:Destroy()
				end
			end

			local BuildPart    = Instance.new("Part",game.Workspace) --Directory of The Part
			BuildPart.Size     = Vector3.new(6000,1,6000)                --The Size of the Part
			BuildPart.Position = Vector3.new(player.Position.x,player.Position.y - 25,player.Position.z)  --The Position of The Part
			BuildPart.Anchored = true
		end
	end)

end)

TextLabel_7.Parent = Rincoil
TextLabel_7.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextLabel_7.BorderColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Size = UDim2.new(0, 431, 0, 35)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "Rincss | BETA Scripts"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextSize = 20.000

BigPaintball.Name = "BigPaintball"
BigPaintball.Parent = Border
BigPaintball.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
BigPaintball.BorderSizePixel = 0
BigPaintball.Position = UDim2.new(0.169, 0, 0.199000001, 0)
BigPaintball.Size = UDim2.new(0, 432, 0, 240)
BigPaintball.Visible = false

Hack_2.Name = "Hack"
Hack_2.Parent = BigPaintball
Hack_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Hack_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Hack_2.BorderSizePixel = 2
Hack_2.Position = UDim2.new(0.0393841341, 0, 0.22013405, 0)
Hack_2.Size = UDim2.new(0, 94, 0, 32)
Hack_2.Font = Enum.Font.SourceSans
Hack_2.Text = "Hack by Kio"
Hack_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Hack_2.TextSize = 14.000
Hack_2.MouseButton1Down:connect(function()
	BigPaintballTxt.Visible = true

	local mouse = game:GetService("Players").LocalPlayer:GetMouse()

	mouse.KeyDown:connect(function(key)
		if key == "l" then
			local player = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

			for i, v in pairs(workspace.__MAP:GetDescendants()) do
				v:Destroy()
			end

			for i, v in pairs(workspace.__THINGS.MapCache:GetDescendants()) do
				v:Destroy()
			end


			local BuildPart    = Instance.new("Part",game.Workspace.__MAP) --Directory of The Part
			BuildPart.Size     = Vector3.new(10000,1,10000)                --The Size of the Part
			BuildPart.Position = Vector3.new(player.Position.x,player.Position.y - 25,player.Position.z)  --The Position of The Part
			BuildPart.Anchored = true  
		end
	end)

end)

TextLabel_8.Parent = BigPaintball
TextLabel_8.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextLabel_8.BorderColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Size = UDim2.new(0, 431, 0, 35)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Big Paintball Scripts"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextSize = 20.000

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = PetSimulator
AutoFarm.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
AutoFarm.BorderColor3 = Color3.fromRGB(255, 255, 255)
AutoFarm.BorderSizePixel = 2
AutoFarm.Position = UDim2.new(0.0393841341, 0, 0.22013405, 0)
AutoFarm.Size = UDim2.new(0, 94, 0, 32)
AutoFarm.Font = Enum.Font.SourceSans
AutoFarm.Text = "Auto Farming"
AutoFarm.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarm.TextSize = 14.000
AutoFarm.MouseButton1Down:connect(function()
	AutoFPet.Visible = true

	loadstring(game:HttpGet("https://raw.githubusercontent.com/inceldom/scrip/main/petsimsex",true))()


end)


Hider.Name = "Hider"
Hider.Parent = PetSimulator
Hider.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Hider.BorderColor3 = Color3.fromRGB(255, 255, 255)
Hider.BorderSizePixel = 2
Hider.Position = UDim2.new(0.388999999, 0, 0.216000006, 0)
Hider.Size = UDim2.new(0, 94, 0, 32)
Hider.Font = Enum.Font.SourceSans
Hider.Text = "Hider"
Hider.TextColor3 = Color3.fromRGB(255, 255, 255)
Hider.TextSize = 14.000
Hider.MouseButton1Down:connect(function()
	HiderTxt.Visible = true
	local mouse = game:GetService("Players").LocalPlayer:GetMouse()

	mouse.KeyDown:connect(function(key)
		if key == "l" then

			local player = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

			for i, v in pairs(workspace.__MAP:GetChildren()) do
				if v.Name == "Eggs" or v.Name == "Interactive" or v.Name == "PlayerSpawns" or v.Name == "Teleports" then
					print("sas")
				else
					for i, vi in pairs(v:GetChildren()) do
						vi:Destroy()
					end

				end
			end


			local BuildPart    = Instance.new("Part",game.Workspace.__MAP) --Directory of The Part
			BuildPart.Size     = Vector3.new(10000,1,10000)                --The Size of the Part
			BuildPart.Position = Vector3.new(player.Position.x,player.Position.y - 15,player.Position.z)  --The Position of The Part
			BuildPart.Anchored = true  
		end
	end)
end)


TextLabel_3.Parent = PetSimulator
TextLabel_3.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextLabel_3.BorderColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Size = UDim2.new(0, 431, 0, 35)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Pet Simulator X Scripts"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 20.000

TextLabel_4.Parent = Border
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.318702281, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0, 190, 0, 18)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Powered by Kio"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000
TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top

ZombieAttack.Name = "ZombieAttack"
ZombieAttack.Parent = Border
ZombieAttack.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
ZombieAttack.BorderSizePixel = 0
ZombieAttack.Position = UDim2.new(0.169, 0, 0.199000001, 0)
ZombieAttack.Size = UDim2.new(0, 432, 0, 240)
ZombieAttack.Visible = false

AutoFarm_2.Name = "AutoFarm"
AutoFarm_2.Parent = ZombieAttack
AutoFarm_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
AutoFarm_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
AutoFarm_2.BorderSizePixel = 2
AutoFarm_2.Position = UDim2.new(0.0393841341, 0, 0.22013405, 0)
AutoFarm_2.Size = UDim2.new(0, 94, 0, 32)
AutoFarm_2.Font = Enum.Font.SourceSans
AutoFarm_2.Text = "Auto Tp Zombie"
AutoFarm_2.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarm_2.TextSize = 14.000
AutoFarm_2.MouseButton1Down:connect(function()
	AutoFZombie.Visible = true

	loadstring(game:HttpGet("https://pastebin.com/J0tPCrA9",true))()	


end)

TextLabel_5.Parent = ZombieAttack
TextLabel_5.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextLabel_5.BorderColor3 = Color3.fromRGB(47, 47, 47)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Size = UDim2.new(0, 431, 0, 35)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Zombie Attack Scripts"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 20.000


infoBtn.Name = "infoBtn"
infoBtn.Parent = Border
infoBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
infoBtn.BorderColor3 = Color3.fromRGB(27, 42, 53)
infoBtn.BorderSizePixel = 2
infoBtn.Position = UDim2.new(0.914122164, 0, 0, 0)
infoBtn.Size = UDim2.new(0, 45, 0, 33)
infoBtn.Font = Enum.Font.SciFi
infoBtn.Text = "Info"
infoBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
infoBtn.TextSize = 14.000
infoBtn.MouseButton1Down:connect(function()
	info.Visible = true
	infoBtn.Visible = false
end)


info.Name = "info"
info.Parent = Border
info.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
info.BorderColor3 = Color3.fromRGB(255, 0, 0)
info.BorderSizePixel = 0
info.Position = UDim2.new(0.00680000009, 0, 0.0599999987, 0)
info.Size = UDim2.new(0, 517, 0, 281)
info.Visible = false

infoTxt.Name = "infoTxt"
infoTxt.Parent = info
infoTxt.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
infoTxt.BorderColor3 = Color3.fromRGB(47, 47, 47)
infoTxt.BorderSizePixel = 0
infoTxt.Size = UDim2.new(0, 517, 0, 35)
infoTxt.Font = Enum.Font.SourceSans
infoTxt.Text = "Info Script"
infoTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
infoTxt.TextSize = 20.000

TextLabel_6.Parent = info
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Position = UDim2.new(0.0657640249, 0, 0.131672591, 0)
TextLabel_6.Size = UDim2.new(0, 449, 0, 218)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "The script updates itself every time!\n\nUse https://discord.gg/NPv6ZpG\nto join on my Discord\n\nCredits: Designed, Developed by Kio"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 35.000


BackBtn.Name = "BackBtn"
BackBtn.Parent = info
BackBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BackBtn.BorderColor3 = Color3.fromRGB(27, 42, 53)
BackBtn.BorderSizePixel = 0
BackBtn.Position = UDim2.new(0.91900003, 0, -0.0659999996, 0)
BackBtn.Size = UDim2.new(0, 45, 0, 33)
BackBtn.Font = Enum.Font.SciFi
BackBtn.Text = "Back"
BackBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
BackBtn.TextSize = 14.000
BackBtn.MouseButton1Down:connect(function()
	infoBtn.Visible = true
	info.Visible = false
end)



AntiAfkTxt.Name = "AntiAfkTxt"
AntiAfkTxt.Parent = CheatAttivi
AntiAfkTxt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AntiAfkTxt.BackgroundTransparency = 0.650
AntiAfkTxt.Size = UDim2.new(0, 256, 0, 43)
AntiAfkTxt.Visible = false
AntiAfkTxt.Font = Enum.Font.SourceSans
AntiAfkTxt.Text = "Anti Afk"
AntiAfkTxt.TextColor3 = Color3.fromRGB(4, 255, 0)
AntiAfkTxt.TextSize = 22.000

AutoFZombie.Name = "AutoFZombie"
AutoFZombie.Parent = CheatAttivi
AutoFZombie.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoFZombie.BackgroundTransparency = 0.650
AutoFZombie.Position = UDim2.new(0, 0, 0.316564411, 0)
AutoFZombie.Size = UDim2.new(0, 256, 0, 43)
AutoFZombie.Visible = false
AutoFZombie.Font = Enum.Font.SourceSans
AutoFZombie.Text = "Auto Farm (Zombie Attack"
AutoFZombie.TextColor3 = Color3.fromRGB(4, 255, 0)
AutoFZombie.TextSize = 22.000

AutoFPet.Name = "AutoFPet"
AutoFPet.Parent = CheatAttivi
AutoFPet.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoFPet.BackgroundTransparency = 0.650
AutoFPet.Position = UDim2.new(0, 0, 0.263803691, 0)
AutoFPet.Size = UDim2.new(0, 256, 0, 43)
AutoFPet.Visible = false
AutoFPet.Font = Enum.Font.SourceSans
AutoFPet.Text = "Auto Farm (Pet Simulator X)"
AutoFPet.TextColor3 = Color3.fromRGB(4, 255, 0)
AutoFPet.TextSize = 22.000

CoinToPlayer.Name = "CTP"
CoinToPlayer.Parent = PetSimulator
CoinToPlayer.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
CoinToPlayer.BorderColor3 = Color3.fromRGB(255, 255, 255)
CoinToPlayer.BorderSizePixel = 2
CoinToPlayer.Position = UDim2.new(0.037148118, 0, 0.415999979, 0)
CoinToPlayer.Size = UDim2.new(0, 94, 0, 32)
CoinToPlayer.Font = Enum.Font.SourceSans
CoinToPlayer.Text = "Coins to player"
CoinToPlayer.TextColor3 = Color3.fromRGB(255, 255, 255)
CoinToPlayer.TextSize = 14.000
CoinToPlayer.MouseButton1Down:connect(function()
	if CoinToPlayerTxt.Visible == true then
		CoinToPlayerTxt.Visible = false
	else
		CoinToPlayerTxt.Visible = true
	end

	while CoinToPlayerTxt.Visible == true do
		for i, v in pairs(game.Workspace.__THINGS.Coins:GetChildren()) do
			v.Coin.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.y + 10, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
		end
		wait(3)
	end
end)


NoClipTxt.Name = "NoClipTxt"
NoClipTxt.Parent = CheatAttivi
NoClipTxt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NoClipTxt.BackgroundTransparency = 0.650
NoClipTxt.Position = UDim2.new(0, 0, 0.0527607426, 0)
NoClipTxt.Size = UDim2.new(0, 256, 0, 43)
NoClipTxt.Visible = false
NoClipTxt.Font = Enum.Font.SourceSans
NoClipTxt.Text = "No Clip (E to active)"
NoClipTxt.TextColor3 = Color3.fromRGB(4, 255, 0)
NoClipTxt.TextSize = 22.000

ResetTxt.Name = "ResetTxt"
ResetTxt.Parent = CheatAttivi
ResetTxt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ResetTxt.BackgroundTransparency = 0.650
ResetTxt.Position = UDim2.new(0, 0, 0.105521485, 0)
ResetTxt.Size = UDim2.new(0, 256, 0, 43)
ResetTxt.Visible = false
ResetTxt.Font = Enum.Font.SourceSans
ResetTxt.Text = "Enable Reset Character"
ResetTxt.TextColor3 = Color3.fromRGB(4, 255, 0)
ResetTxt.TextSize = 22.000

SpeedTxt.Name = "SpeedTxt"
SpeedTxt.Parent = CheatAttivi
SpeedTxt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SpeedTxt.BackgroundTransparency = 0.650
SpeedTxt.Position = UDim2.new(0, 0, 0.158282205, 0)
SpeedTxt.Size = UDim2.new(0, 256, 0, 43)
SpeedTxt.Visible = false
SpeedTxt.Font = Enum.Font.SourceSans
SpeedTxt.Text = "Speed: 0"
SpeedTxt.TextColor3 = Color3.fromRGB(4, 255, 0)
SpeedTxt.TextSize = 22.000

JumpTxt.Name = "JumpTxt"
JumpTxt.Parent = CheatAttivi
JumpTxt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JumpTxt.BackgroundTransparency = 0.650
JumpTxt.Position = UDim2.new(0, 0, 0.21104297, 0)
JumpTxt.Size = UDim2.new(0, 256, 0, 43)
JumpTxt.Visible = false
JumpTxt.Font = Enum.Font.SourceSans
JumpTxt.Text = "Jump: 0"
JumpTxt.TextColor3 = Color3.fromRGB(4, 255, 0)
JumpTxt.TextSize = 22.000

BigPaintballTxt.Name = "BigPaintballTxt"
BigPaintballTxt.Parent = CheatAttivi
BigPaintballTxt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BigPaintballTxt.BackgroundTransparency = 0.650
BigPaintballTxt.Position = UDim2.new(0, 0, 0.0527607426, 0)
BigPaintballTxt.Size = UDim2.new(0, 256, 0, 43)
BigPaintballTxt.Visible = false
BigPaintballTxt.Font = Enum.Font.SourceSans
BigPaintballTxt.Text = "BigPtn Cheat (L to active)"
BigPaintballTxt.TextColor3 = Color3.fromRGB(4, 255, 0)
BigPaintballTxt.TextSize = 22.000

RincoilTxt.Name = "RincoilTxt"
RincoilTxt.Parent = CheatAttivi
RincoilTxt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RincoilTxt.BackgroundTransparency = 0.650
RincoilTxt.Position = UDim2.new(0, 0, 0.0527607426, 0)
RincoilTxt.Size = UDim2.new(0, 256, 0, 43)
RincoilTxt.Visible = false
RincoilTxt.Font = Enum.Font.SourceSans
RincoilTxt.Text = "Rincoil Cheat (L to active)"
RincoilTxt.TextColor3 = Color3.fromRGB(4, 255, 0)
RincoilTxt.TextSize = 22.000

HiderTxt.Name = "HiderTxt"
HiderTxt.Parent = CheatAttivi
HiderTxt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HiderTxt.BackgroundTransparency = 0.650
HiderTxt.Position = UDim2.new(0, 0, 0.0527607426, 0)
HiderTxt.Size = UDim2.new(0, 256, 0, 43)
HiderTxt.Visible = false
HiderTxt.Font = Enum.Font.SourceSans
HiderTxt.Text = "PetSimX Hider (L to active)"
HiderTxt.TextColor3 = Color3.fromRGB(4, 255, 0)
HiderTxt.TextSize = 22.000

CoinToPlayerTxt.Name = "CTPT"
CoinToPlayerTxt.Parent = CheatAttivi
CoinToPlayerTxt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CoinToPlayerTxt.BackgroundTransparency = 0.650
CoinToPlayerTxt.Position = UDim2.new(0, 0, 0.0527607426, 0)
CoinToPlayerTxt.Size = UDim2.new(0, 256, 0, 43)
CoinToPlayerTxt.Visible = false
CoinToPlayerTxt.Font = Enum.Font.SourceSans
CoinToPlayerTxt.Text = "Coins to Player (PetSimulatorX)"
CoinToPlayerTxt.TextColor3 = Color3.fromRGB(4, 255, 0)
CoinToPlayerTxt.TextSize = 22.000

while wait(0.1)do
	TextLabel.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
	TextButton.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
	Border.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
	infoBtn.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)

	counter = counter + 0.01
end

