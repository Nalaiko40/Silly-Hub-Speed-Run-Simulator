local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Speedrun Simulator Script",
   LoadingTitle = "So cool",
   LoadingSubtitle = "by Silly Hub",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Silly Hub", -- Create a custom folder for your hub/game
      FileName = "Silly Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "EcZWwpTXVB", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
},
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Silly Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/EcZWwpTXVB)",
      FileName = "SillyKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "SillyHub"
   }
})

local Tab = Window:CreateTab("Main", 10885637368) -- Title, Image

local Section = Tab:CreateSection("Main")

local Button = Tab:CreateButton({
   Name = "Auto collect Orbs",
   Callback = function()
   while wait(0.1) do
local orbs = game:GetService("Workspace").GameAssets.GlobalAssets.OrbSpawns
for i, v in pairs(orbs:GetChildren()) do
if v:IsA("MeshPart") then
local user = game.Players.LocalPlayer.Character.Head
firetouchinterest(user, v, 0)
elseif v:IsA("Model") then
local summerOrb = v["Orb.1"]
firetouchinterest(game.Players.LocalPlayer.Character.Head, summerOrb, 0)
end
end
end
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto Rebirth",
   Callback = function()
   while wait(0.1) do
game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
end
   end,
})

local Button = Tab:CreateButton({
   Name = "Auto Gain Speed",
   Callback = function()
   while wait(0.1) do
game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
       end
   end,
})


local Section = Tab:CreateSection("Pets")

local Button = Tab:CreateButton({
   Name = "Earth Butterfly",
   Callback = function()
game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer("Earth Butterfly", false)
   end,
})

local Button = Tab:CreateButton({
   Name = "Summer Sheep",
   Callback = function()
game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer("Summer Sheep", false)
   end,
})

local Button = Tab:CreateButton({
   Name = "Big Friendly BumbleBee",
   Callback = function()
game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer("Big Friendly BumbleBee", false)
   end,
})

local Button = Tab:CreateButton({
   Name = "Silly Icecream",
   Callback = function()
game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer("Silly Icecream", false)
   end,
})

local Button = Tab:CreateButton({
   Name = "Air Jinn",
   Callback = function()
game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer("Air Jinn", false)
   end,
})

local Other = Window:CreateTab("Other", 10885637368) -- Title, Image

local Button = Other:CreateButton({
   Name = "Redeem Codes",
   Callback = function()
local args = {
    [1] = "FREE"
}

game:GetService("ReplicatedStorage").Remotes.TwitterCode:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "gem900"
}

game:GetService("ReplicatedStorage").Remotes.TwitterCode:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "run920"
}

game:GetService("ReplicatedStorage").Remotes.TwitterCode:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "run940"
}

game:GetService("ReplicatedStorage").Remotes.TwitterCode:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "CHRISTMAS"
}

game:GetService("ReplicatedStorage").Remotes.TwitterCode:InvokeServer(unpack(args))

   end,
})

local Button = Other:CreateButton({
   Name = "Equip Best Trail",
   Callback = function()
   local args = {
    [1] = "16"
}

game:GetService("ReplicatedStorage").Remotes.EquipTrails:InvokeServer(unpack(args))
   end,
})