local Workspace = game:GetService("Workspace")
local Players = game.Players.LocalPlayer
local Character = Players.Character
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
local me = game.Players.LocalPlayer
local remote = game.ReplicatedStorage.Remotes.Input
local Erwin1 = {}
local Erwin2 = {}
local Erwin3 = {}

game.StarterGui:SetCore(
    "SendNotification",
    {
	Title = "😎",
	Text = "Loading...",
}
)

wait(0.5)

game.StarterGui:SetCore(
    "SendNotification",
    {
	Title = "CapWare",
	Text = "By nigga cap",
}
)

game.StarterGui:SetCore(
    "SendNotification",
    {
	Title = "Dont forget to join our discord",
	Text = " Link Copied",
	
Button1 = "Ok";
	
setclipboard("https://discord.gg/QaJEbeKPHQ")
}
)

wait(3)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("All Star", "Serpent")
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Erwin Buff")
local Teleports = Window:NewTab("Teleports")
local TeleportSection = Teleports:NewSection("Teleports")
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Miscs")
local Credits = Window:NewTab("Credits")
local CreditSection = Credits:NewSection("Credits")

MainSection:NewToggle("x4, x8", "", function(state)
    _G.ErwinBuff = state
    while _G.ErwinBuff do wait()
    pcall(function()
        for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
    if v.Name == 'Erwin' and v.Owner.Value == me then
        table.insert(Erwin1, v)
    end
end
    if #Erwin1 == 4 then
    while true do
        remote:FireServer('UseSpecialMove', Erwin1[1])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[3])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[2])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[4])
        wait(15.4)
    end
elseif #Erwin1 == 8 then
    for i = 1, 4 do
        table.insert(Erwin2, Erwin1[1])
        table.remove(Erwin1, 1)
    end
    for i = 1, 4 do
        table.insert(Erwin3, Erwin1[1])
        table.remove(Erwin1, 1)
    end
    while true do
        remote:FireServer('UseSpecialMove', Erwin2[1])
        wait(1)
        remote:FireServer('UseSpecialMove', Erwin3[1])
        wait(14.4)
        remote:FireServer('UseSpecialMove', Erwin2[3])
        wait(1)
        remote:FireServer('UseSpecialMove', Erwin3[3])
        wait(14.4)
        remote:FireServer('UseSpecialMove', Erwin2[2])
        wait(1)
        remote:FireServer('UseSpecialMove', Erwin3[2])
        wait(14.4)
        remote:FireServer('UseSpecialMove', Erwin2[4])
        wait(1)
        remote:FireServer('UseSpecialMove', Erwin3[4])
        wait(14.4)
    end
elseif #Erwin1 > 4 and #Erwin1 < 8 then
    repeat wait(1)
        table.remove(Erwin1, 1)
    until #Erwin1 == 4
    while true do
        remote:FireServer('UseSpecialMove', Erwin1[1])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[3])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[2])
        wait(15.4)
        remote:FireServer('UseSpecialMove', Erwin1[4])
        wait(15.4)
    end
end
end)
end
end)

TeleportSection:NewButton("Story", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(50.0001831, 1388.00598, 844.999878, 0.0024398563, -5.75454306e-09, 0.99999702, -1.18668053e-09, 1, 5.7574554e-09, -0.99999702, -1.20072441e-09, 0.0024398563)
end)

TeleportSection:NewButton("Story Join", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(69.206131, 1388.00586, 873.827515, 0.917048872, 5.63807454e-08, 0.398774862, 2.56582533e-10, 1, -1.41974965e-07, -0.398774862, 1.30300293e-07, 0.917048872)
end)

TeleportSection:NewButton("Infinite", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-141.999817, 1388.00598, 842.66748, 0.998459578, -1.40339207e-09, -0.0554836765, -1.28685773e-09, 1, -4.84515041e-08, 0.0554836765, 4.84482676e-08, 0.998459578)
end)

TeleportSection:NewButton("Infinite Join", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-122.711098, 1388.00586, 873.786194, 0.9183442, 5.58620634e-08, 0.395782679, 2.03690502e-11, 1, -1.4119054e-07, -0.395782679, 1.29669573e-07, 0.9183442)
end)

TeleportSection:NewButton("Orb", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-967.34967, 42.9731331, -899.211487, -0.707091689, 3.27478418e-08, -0.707121849, -2.1843917e-10, 1, 4.65298839e-08, 0.707121849, 3.30553576e-08, -0.707091689)
end)

TeleportSection:NewButton("Orb Join", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-972.389954, 42.9731293, -904.302063, -0.700245202, -9.48384695e-08, -0.713902414, 1.89624705e-11, 1, -1.32863747e-07, 0.713902414, -9.30507369e-08, -0.700245202)
end)

TeleportSection:NewButton("Spawn", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-688, 51.2069244, -620, -1.65695789e-14, -1.16781443e-07, 1, -2.02357722e-08, 1, 1.16781443e-07, -1, -2.02357722e-08, -1.89327415e-14)
end)

TeleportSection:NewLabel("Others")

TeleportSection:NewButton("Trial 1", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-157.508041, 55.0063362, -878.355774, 0.494644016, 2.81736732e-08, -0.869095683, -1.64004721e-08, 1, 2.30829329e-08, 0.869095683, 2.83574453e-09, 0.494644016)
end)

TeleportSection:NewButton("Trial 2", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-506.61026, 102.0063248, -799.328796, -0.99980253, -3.56802694e-08, 0.0198709667, -3.38783721e-08, 1, 9.10166094e-08, -0.0198709667, 9.03254431e-08, -0.99980253)
end)

TeleportSection:NewButton("Trial 3", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-782.68512, 160.779739, -992.504272, 0.986805737, 1.14309628e-08, 0.16190891, -3.63535979e-09, 1, -4.84443348e-08, -0.16190891, 4.72165489e-08, 0.986805737)
end)

TeleportSection:NewButton("World 2", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-550.84259, 300.392944, -544.963257, 0.574584246, 1.37126248e-08, 0.818445444, 5.47911441e-08, 1, -5.52202408e-08, -0.818445444, 7.65722419e-08, 0.574584246)
end)

MiscSection:NewButton("Ctrl + Click Tp", "",function()
    Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
end)

CreditSection:NewLabel("Ui Lib By xHeptc")
CreditSection:NewLabel("Scripts By caxpzo#0068")