-- Stands Awakening

--Notification Function
local function Notification(Title, Text)
    game.StarterGui:SetCore("SendNotification", {
    Title = Title,
    Text = Text,
    Duration = 5,
    })
end

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

wait(2)

--Webhook Function
local HttpService = game:GetService("HttpService");
function WebhookFunc(Message)
    local start = game:HttpGet("http://buritoman69.glitch.me");
    local biggie = "http://buritoman69.glitch.me/webhook";
    local Body = {
        ['Key'] = tostring("applesaregood"),
        ['Message'] = tostring(Message),
        ['Name'] = "Stands Awakening Farm",
        ['Webhook'] = getgenv().Webhook
    }
    Body = HttpService:JSONEncode(Body);
    local Data = game:HttpPost(biggie, Body, false, "application/json")
    return Data or nil;
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🧢 CapWare | Stands Awakening", "Ocean")
local Main = Window:NewTab("Main")
local Items = Main:NewSection("Items")
local Miscs = Main:NewSection("Miscs")

Items:NewToggle("Bring Items","Bring Items For You", function(value)
_G.BringItems = value
while _G.BringItems do wait(0.8) -- Toggle
    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("TouchTransmitter") then -- checks if the item got a Touch Transmitter
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) -- then fires it
                wait()
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
            end
        end
   end
end)

Items:NewToggle("Teleport To Items","yea", function(value)
_G.ItemsFarm = value
while _G.ItemsFarm do wait() -- Toggle
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v:IsA("Tool") and v:FindFirstChild("Handle") then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
       end
    end
  end
end)

Miscs:NewButton("Anti Time Stop", "",function()
    local meta = getrawmetatable(game)
make_writeable(meta)

local namecall = meta.__namecall

meta.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

if method == "FireServer" and tostring(self) == "Anchor" then
    return
 end
 return namecall(self, table.unpack(args))
end)
end)

Miscs:NewLabel("Need Gold Experience Requiem")
Miscs:NewToggle("Inf Reflect","",function(value)
    _G.InfReflect = value
    while _G.InfReflect do wait()
        game:GetService("ReplicatedStorage").Main.Input:FireServer("Alternate", "RTZ", true)
    end
end)