local library = loadstring(game:HttpGet("https://pastebin.com/raw/Uub92rmN"))()


local Window = library:AddWindow("Sync X - Cheating Tool",
    {
        main_color = Color3.fromRGB(170, 0, 0),
        min_size = Vector2.new(373, 433),
        toggle_key = Enum.KeyCode.RightShift,
    })

local T1 = Window:AddTab("Vote")

local Console = T1:AddConsole({
    ["y"] = 50,
    ["source"] = "",
})

--[[
local setting = game:GetService("SoundService").RespectFilteringEnabled
if setting == true then
Troll2:addLabel("Filtering Enabled Check","FE : true")
else if setting == false then
Troll2:addLabel("Filtering Enabled Check","FE : false")
end
end
--]]

T1:AddSwitch("Auto Vote Player 1", function(bool)
     _G.Vote1 = bool
      
         while wait() do
         if _G.Vote1 == false then break end
             game.Workspace.Votes:FireServer(false,"p1")
game:GetService("RunService").Heartbeat:Wait()
end
end)

T1:AddSwitch("Auto Vote Player 2", function(bool)
 _G.Vote2 = bool
      
         while wait() do
         if _G.Vote2 == false then break end
             game.Workspace.Votes:FireServer(false,"p2")
game:GetService("RunService").Heartbeat:Wait()
end
end)

while wait() do
Console:Set("Player 1: " .. tostring(game.Workspace.RapBattles.Rappers.player1.Value) .. " \nPlayer 2: " .. tostring(game.Workspace.RapBattles.Rappers.player2.Value))
end
