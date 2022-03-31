if game.PlaceId == 3101667897 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Legends Of Speed", "Ocean")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local orbRemote = game.ReplicatedStorage.rEvents.orbEvent
    local rebirthRemote = game.ReplicatedStorage.rEvents.rebirthEvent
    local plr1 = game.Players.LocalPlayer.Character
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Credits")

    MainSection:NewToggle("AutoFarm", "Legends Of Speed AutoFarm", function(v)
        getgenv().AutoFarm = v
        while true do
        if not getgenv().AutoFarm then return end
        for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
            firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 0)
            wait()
            firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 1)
            end
            orbRemote:FireServer("collectOrb","Red Orb","City")
            orbRemote:FireServer("collectOrb","Blue Orb","City")
            orbRemote:FireServer("collectOrb","Orange Orb","City")
            orbRemote:FireServer("collectOrb","Yellow Orb","City")
            orbRemote:FireServer("collectOrb","Red Orb","Snow City")
            orbRemote:FireServer("collectOrb","Blue Orb","Snow City")
            orbRemote:FireServer("collectOrb","Orange Orb","Snow City")
            orbRemote:FireServer("collectOrb","Yellow Orb","Snow City")
            orbRemote:FireServer("collectOrb","Red Orb","Magma City")
            orbRemote:FireServer("collectOrb","Blue Orb","Magma City")
            orbRemote:FireServer("collectOrb","Orange Orb","Magma City")
            orbRemote:FireServer("collectOrb","Yellow Orb","Magma City")
            orbRemote:FireServer("collectOrb","Red Orb","Legends Highway")
            orbRemote:FireServer("collectOrb","Blue Orb","Legends Highway")
            orbRemote:FireServer("collectOrb","Orange Orb","Legends Highway")
            orbRemote:FireServer("collectOrb","Yellow Orb","Legends Highway")
            orbRemote:FireServer("collectOrb","Gem","City")
            orbRemote:FireServer("collectOrb","Gem","Snow City")
            orbRemote:FireServer("collectOrb","Gem","Magma City")
            orbRemote:FireServer("collectOrb","Gem","Legends Highway")
            rebirthRemote:FireServer("rebirthRequest")
            wait()
        end
    end)
    MainSection:NewDropdown("Teleport", "Teleports to a selected part of the map", {"infernoCaveToSnowCity", "mysteriousCaveToCity", "electroCaveToMagmaCity","magmaCityToElectroCave","legendsHighwayToElectroCave","cityToFrostCourse","snowCityToInfernoCave","cityToParkourChallenge","rebirthTeleportPart","electroCaveToLegendsHighway","infernoCaveToMagmaCity","pirateCourseToSnowCity","snowCityToPirateCourse","cityToMysteriousCave","frostCourseToCity","magmaCityToInfernoCave","parkourChallengeToCity","snowCityToMysteriousCave","cityToGrassCourse","grassCourseToCity","mysteriousCaveToSnowCity"}, function(v)
        plr1.HumanoidRootPart.CFrame = game:GetService("Workspace").areaTeleportParts:FindFirstChild(v).CFrame
    end)
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    MainSection:NewKeybind("Toggle UI", "Toggle UI Keybind", Enum.KeyCode.F, function()
        Library:ToggleUI()
    end)
    CreditsSection:NewLabel("Script Made by Skz#6483")
    CreditsSection:NewLabel("Kavo UI Library")
elseif game.PlaceId == 3956818381 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Ninja Legends", "Ocean")
 
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Credits")
    MainSection:NewToggle("Auto Swing", "Make your player autoswing", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait(0.1)
        end
    end)
 
    MainSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)
 
    MainSection:NewButton("Unlock all islands", "Unlocks all islands", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    MainSection:NewToggle("Auto buy all swords", "Auto buys all swords", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
 
    MainSection:NewToggle("Auto buy all belts", "Auto buys all belts", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
    CreditsSection:NewLabel("Script Made by Skz#6483")
    CreditsSection:NewLabel("Kavo UI Library")
end


