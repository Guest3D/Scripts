local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local Window = Library:NewWindow("arm wrestling simulator scripts v3")

local Section = Window:NewSection("Options")

local Enabled = false

local function AutoStrength(value)
    Enabled = value
    while Enabled do
        local argss = {
    [1] = 1000
}

workspace:WaitForChild("Main"):WaitForChild("RemoteEvent"):FireServer(unpack(argss))
        wait()
    end
end

Section:CreateToggle("Auto Strength", AutoStrength)

local AutoBicepsEnabled = false

local function AutoBiceps(value)
    AutoBicepsEnabled = value
    while AutoBicepsEnabled do
        local argss = {
    [1] = 1000
}

workspace:WaitForChild("Main2"):WaitForChild("RemoteEvent"):FireServer(unpack(argss))
        wait()
    end
end

Section:CreateToggle("Auto Biceps", AutoBiceps)

local AutoGripEnabled = false

local function AutoGrip(value)
    AutoGripEnabled = value
    while AutoGripEnabled do
        local argss = {
    [1] = 1000
}

workspace:WaitForChild("Main3"):WaitForChild("RemoteEvent"):FireServer(unpack(argss))
        wait()
    end
end

Section:CreateToggle("Auto Grip", AutoGrip)

Section:CreateToggle("Bypass Anti Cheat", function(value)
if value then
workspace.kick:Destroy()
end
end)

Section:CreateTextbox("Strength Giver", function(text)
    local args = {
    [1] = text
}

workspace:WaitForChild("Main"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end)

Section:CreateTextbox("Biceps Giver", function(text)
    local args = {
    [1] = text
}

workspace:WaitForChild("Main2"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end)

Section:CreateTextbox("Grip Giver", function(text)
    local args = {
    [1] = text
}

workspace:WaitForChild("Main3"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end)

Section:CreateButton("TP TO SPAWN", function()
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(38.00695037841797, 3.444831609725952, -78.92425537109375)}):Play()
end)

Section:CreateButton("TP TO HEAVEN", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(617.642333984375, 563.144287109375, -98.18571472167969)}):Play()
end)

Section:CreateButton("TP TO HELL", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(181.2910614013672, 22.393447875976562, 643.1844482421875)}):Play()
end)

Section:CreateButton("TP TO GALAXY", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-708.037353515625, 3.1441125869750977, -102.1283950805664)}):Play()
end)

Section:CreateButton("TP TO GALAXY", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-708.037353515625, 3.1441125869750977, -102.1283950805664)}):Play()
end)

Section:CreateButton("TP TO SHOP", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(33245.8984, 29, 219.5000)}):Play()
end)

Section:CreateSlider("WalkSpeed", 16, 100, 16, false, function(value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

Section:CreateSlider("JumpPower", 50, 100, 50, false, function(value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

Section:CreateToggle("Inf Jump", function(value)
InfiniteJumpEnabled = value
end)

local Player = game:GetService("Players").LocalPlayer
game:GetService("UserInputService").JumpRequest:Connect(function()
     if InfiniteJumpEnabled then
         Player.Character:WaitForChild("Humanoid"):ChangeState("Jumping")
     end
end)

Section:CreateButton("YT : LOLBAD", function()
print("fuck u lui and tora isme")
end)