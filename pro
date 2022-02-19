local CC = game:GetService'Workspace'.CurrentCamera
local Plr
local enabled = false
local accomidationfactor = 0.12946129
local mouse = game.Players.LocalPlayer:GetMouse()
local placemarker = Instance.new("Part", game.Workspace)
local guimain = Instance.new("Folder", game.CoreGui)

function makemarker(Parent, Adornee, Color, Size, Size2)
	local e = Instance.new("BillboardGui", Parent)
	e.Name = "PP"
	e.Adornee = Adornee
	e.Size = UDim2.new(Size, Size2, Size, Size2)
	e.AlwaysOnTop = true
	local a = Instance.new("Frame", e)
	a.Size = UDim2.new(2, 0, 1, 0)
	a.BackgroundTransparency = 0.4
	a.BackgroundColor3 = Color
	local g = Instance.new("UICorner", a)
	g.CornerRadius = UDim.new(30, 30)
	return(e)
end

local data = game.Players:GetPlayers()
function noob(player)
	local character
	repeat wait() until player.Character
	local handler = makemarker(guimain, player.Character:WaitForChild("LowerTorso"), Color3.fromRGB(255, 255, 255), 0.0, 0)
	handler.Name = player.Name
	player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("LowerTorso") end)

	local TextLabel = Instance.new("TextLabel", handler)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDim2.new(0, 0, 0, -50)
	TextLabel.Size = UDim2.new(0, 100, 0, 100)
	TextLabel.Font = Enum.Font.SourceSansSemibold
	TextLabel.TextSize = 14
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextStrokeTransparency = 0
	TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
	TextLabel.Text = 'Name: '..player.Name
	TextLabel.ZIndex = 10

	spawn(function()
		while wait() do
			if player.Character then
				--TextLabel.Text = player.Name.." | Bounty: "..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
			end
		end
	end)
end

for i = 1, #data do
	if data[i] ~= game.Players.LocalPlayer then
		noob(data[i])
	end
end

game.Players.PlayerAdded:connect(function(Player)
	noob(Player)
end)

game.Players.PlayerRemoving:Connect(function(player)
	guimain[player.Name]:Destroy()
end)

game.Players.LocalPlayer.Chatted:Connect(
	function(cool)
		if cool == "#far" then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Notification";
				Text = "Far Sets Enabled";
				Duration = 5;
			})
			wait(0)
			local accomidationfactor =  0.129145
		end
	end
)

game.Players.LocalPlayer.Chatted:Connect(
	function(cool)
		if cool == "#mid" then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Notification";
				Text = "Mid Sets Enabled";
				Duration = 5;
			})
			wait(0)
			local accomidationfactor = 0.129461
		end
	end
)

game.Players.LocalPlayer.Chatted:Connect(
	function(cool)
		if cool == "#close" then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Notification";
				Text = "Close Sets Enabled";
				Duration = 5;
			})
			wait(0)
			local accomidationfactor = 0.125
		end
	end
)

game.Players.LocalPlayer.Chatted:Connect(
	function(cool)
		if cool == "#kaias" then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Notification";
				Text = "Kaias Anti Enabled";
				Duration = 5;
			})
			wait(0)
		IsFirstPerson = false
ShiftHeld = false
WHeld = false
SHeld = false
AHeld = false
DHeld = false -- LMFAO
local gcheck = true
urspeed = 0.05 -- The lower it is the faster. So don't worry about it being minus 1


function ChangeFaster(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.N and gameProcessedEvent == false then        
urspeed = urspeed - 0.025
    end
end



function ChangeSlower(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.M and gameProcessedEvent == false then        
urspeed = urspeed + 0.7
    end
end



function GChecker(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.T and gameProcessedEvent == false then        
if gcheck == false then
gcheck = true
elseif gcheck == true then
gcheck = false
end

    end
end

game:GetService("UserInputService").InputBegan:connect(GChecker)



function PressShift(inputObject,gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.LeftShift and gameProcessedEvent == false and gcheck == true then
        ShiftHeld = true
    end
end

function ReleaseShift(inputObject,gameProcessed)
    if inputObject.KeyCode == Enum.KeyCode.LeftShift then
        ShiftHeld = false
    end
end


function PressW(inputObject,gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.W and gameProcessedEvent == false and gcheck == true then
        WHeld = true
    end
end

function ReleaseW(inputObject,gameProcessed)
    if inputObject.KeyCode == Enum.KeyCode.W then
        WHeld = false
    end
end

function PressS(inputObject,gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.S and gameProcessedEvent == false and gcheck == true then
        SHeld = true
    end
end

function ReleaseS(inputObject,gameProcessed)
    if inputObject.KeyCode == Enum.KeyCode.S then
        SHeld = false
    end
end


function PressA(inputObject,gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.A and gameProcessedEvent == false and gcheck == true then
        AHeld = true
    end
end

function ReleaseA(inputObject,gameProcessed)
    if inputObject.KeyCode == Enum.KeyCode.A then
        AHeld = false
    end
end


function PressD(inputObject,gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.D and gameProcessedEvent == false and gcheck == true then
        DHeld = true
    end
end

function ReleaseD(inputObject,gameProcessed)
    if inputObject.KeyCode == Enum.KeyCode.D then
        DHeld = false
    end
end

function CheckFirst(inputObject,gameProcessed)
    if inputObject.KeyCode == Enum.UserInputType.MouseWheel then
        if (player.Character.Head.CFrame.p - workspace.CurrentCamera.CFrame.p).magnitude < 0.6 then
            IsFirstPerson = true
	elseif (player.Character.Head.CFrame.p - workspace.CurrentCamera.CFrame.p).magnitude > 0.6 then
	    IsFirstPerson = false
        end
    end
end

game:GetService("UserInputService").InputBegan:connect(PressShift)
game:GetService("UserInputService").InputEnded:connect(ReleaseShift)

game:GetService("UserInputService").InputBegan:connect(PressW)
game:GetService("UserInputService").InputEnded:connect(ReleaseW)

game:GetService("UserInputService").InputBegan:connect(PressS)
game:GetService("UserInputService").InputEnded:connect(ReleaseS)

game:GetService("UserInputService").InputBegan:connect(PressA)
game:GetService("UserInputService").InputEnded:connect(ReleaseA)

game:GetService("UserInputService").InputBegan:connect(PressD)
game:GetService("UserInputService").InputEnded:connect(ReleaseD)

game:GetService("UserInputService").InputChanged:connect(CheckFirst)

game:GetService("UserInputService").InputBegan:connect(ChangeFaster)
game:GetService("UserInputService").InputBegan:connect(ChangeSlower)


game:GetService('RunService').Stepped:connect(function()
if ShiftHeld == true then

if WHeld == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-urspeed)
end

if SHeld == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,urspeed)
end

if DHeld == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(urspeed,0,0)
end

if AHeld == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-urspeed,0,0)
end


end
end)
		end
	end
)

spawn(function()
	placemarker.Anchored = true
	placemarker.CanCollide = false
	placemarker.Size = Vector3.new(0.1, 0.1, 0.1)
	placemarker.Transparency = 10
	makemarker(placemarker, placemarker, Color3.fromRGB(255, 255, 255), 0.55, 0)
end)    

mouse.KeyDown:Connect(function(k)
	if k ~= "q" then return end
	if enabled then
		enabled = false
		-- guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	else
		enabled = true 
		Plr = getClosestPlayerToCursor()
		--guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	end    
end)

function getClosestPlayerToCursor()
	local closestPlayer
	local shortestDistance = math.huge

	for i, v in pairs(game.Players:GetPlayers()) do
		if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("Head") then
			local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
			local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
			if magnitude < shortestDistance then
				closestPlayer = v
				shortestDistance = magnitude
			end
		end
	end
	return closestPlayer
end

game:GetService"RunService".Stepped:connect(function()
	if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
		placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
	else
		placemarker.CFrame = CFrame.new(0, 9999, 0)
	end
end)

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
	local args = {...}
	if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
		args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
		return old(unpack(args))
	end
	return old(...)
end)
