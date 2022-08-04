if game.CoreGui:FindFirstChild("CryptidHub - Button Simulator Excavation Discoveries") then
    game.CoreGui["CryptidHub - Button Simulator Excavation Discoveries"]:Destroy()
end
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local X = Material.Load({
	Title = "CryptidHub - Button Simulator Excavation Discoveries",
	Style = 2,
	SizeX = 500,
	SizeY = 350,
	Theme = "Mocha",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(235,235,235)
	}
})
local Player = X.New({
	Title = "Player"
})
local WalkSpeed = Player.Slider({
    Text = "Walkspeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
    end,
    Min = 16.75,
    Max = 100,
    Def = 58.375
})
local JumpPower = Player.Slider({
	Text = "Jumppower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
	end,
	Min = 50,
	Max = 100,
	Def = 75
})
local Teleports = X.New({
	Title = "Teleports"
})
local Teleports = Teleports.Dropdown({
	Text = "Teleports",
	Callback = function(Value)
		if Value == "RecoveryHall" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1846.5, 20.5, 377)
		end
		if Value == "Caves" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1121.9512939453125, 2491.5166015625, -1376.2109375)
		end
		if Value == "CrystalBeneaths" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3558.93994140625, 1553.7626953125, 41.23609161376953)
		end
		if Value == "IronShafts" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1258.8157958984375, -31, -2310.48583984375)
		end
		if Value == "GoldenQuarry" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1674.6153564453125, 973.4730834960938, 5099.421875)
		end
		if Value == "QuartzWalkway" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3014.059814453125, -3135.213623046875, 10934.4140625)
		end
		if Value == "JadeForest" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13493.375, 11272.68359375, -12670.048828125)
		end
		if Value == "ObsidianAbyss" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6706.2548828125, 5528.84326171875, -802.5372314453125)
		end
		if Value == "ColourTemples" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-400.9637145996094, 7089.4736328125, 4954.98876953125)
		end
		if Value == "ExtraterrestrialOrbits" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10139.7265625, 7280.99853515625, -8105.337890625)
		end
		if Value == "EmpyreanIslands" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10122.869140625, 4595.6611328125, 16130.16796875)
		end
		if Value == "UraniumWastelands" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14002.076171875, 358.0426940917969, -25545.37109375)
		end
		if Value == "SmoothDepths" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20473.392578125, 10059.997073125, 6245.466796875)
		end
		if Value == "IcyPalace" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-44051.31640625, 12850.9970703125, 57218.4921875)
		end
		if Value == "FloatingPurgatory" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-78015.390625, 15907.24609375, 14096.4453125)
		end
		if Value == "Tetratum" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10672.552734375, 7777.15478515625, 14374.5048828125)
		end
		if Value == "VoltaicSector" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(82.49986267089844, 7148.162109375, 8954.5283203125)
		end
		if Value == "MintyGrooves" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1698.0308837890625, 399.16015625, 1993.005493160625)
		end
		if Value == "Stardustry" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5720.0478515625, 2656.999267578125,2213.29292929289)
		end
		if game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position == "-253.80599975585938, 4.245004177093506, -233.15499877929688" then
			Value = nil
		end
	end,
	Options = {
		"Caves",
		"CrystalBeneaths",
		"IronShafts",
		"GoldenQuarry",
		"QuartzWalkway",
        "JadeForest",
        "ObsidianAbyss",
        "ColourTemples",
        "ExtraterrestrialOrbits",
        "EmpyreanIslands",
        "UraniumWastelands",
        "SmoothDepths",
        "IcyPalace",
        "FloatingPurgatory",
        "Tetratum",
        "VoltaicSector",
        "MintyGrooves",
        "Stardustry"
	}
})
local Gamepasses = X.New({
	Title = "Gamepasses"
})
local Gamepasses = Gamepasses.Button({
	Text = "Item Pack #1",
	Callback = function()
		game.ReplicatedStorage.Assets["ItemPack#1"]["Rodrigo Bomb"] :Clone().Parent = game.Players.LocalPlayer.Backpack
		game.ReplicatedStorage.Assets["ItemPack#1"]["Rodrigo Plushie"] :Clone().Parent = game.Players.LocalPlayer.Backpack
		game.ReplicatedStorage.Assets["ItemPack#1"]["T-Pose"] :Clone().Parent = game.Players.LocalPlayer.Backpack
	end
})
local AutoFarm = X.New({
	Title = "AutoFarm"
})

local VAutoMulti = false
local Vdsauh = false
local Vgsewrd = false
local Vgredf = false
local Vgserf = false
local Vsgerfe = false
local Vgfhj = false
local Vnjxft = false
local Vnyjucg = false
local Vcjmxgy = false
local Vxsuj = false

local dsauh = AutoFarm.Toggle({
	Text = "1 Rebirth",
	Callback = function(Value)
        Vdsauh = Value
	end,
	Enabled = Vdsauh
})

local AutoMulti = AutoFarm.Toggle({
	Text = "AutoMulti",
	Callback = function(Value)
        VAutoMulti = Value
	end,
Enabled = VAutoMulti
})
while true do
    if VAutoMulti then
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "12" then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-140.136, 4.50083, -63.2406)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "50" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-145.869, 4.50533, -63.077)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "100" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-145.869, 4.50533, -63.077)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "500" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-158.441, 4.50533, -62.5109)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "10000" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-164.006, 4.52693, -62.8608)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "75000" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169.516, 4.50533, -62.8682)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "1000000" then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-175.657, 4.50533, -62.9171)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "30000000" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-182.148, 4.50533, -62.9689)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "100000000" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-187.73, 4.50533, -63.0096)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "1000000000" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-193.732, 4.50533, -63.0365)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value > "5000000000" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-200.432, 4.44533, -63.0665)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "10.3" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-205.388, 4.44533, -63.0934)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "11.2" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-212.087, 4.44533, -63.0744)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "11.7" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-217.67, 4.44533, -63.0043)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "12.3" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-224.369, 4.44533, -63.0929)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "13" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.107, 4.44533, -62.0726)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "13.5" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.29, 4.44533, -67.9997)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "14.2" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.324, 4.44533, -74.979)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "15.4" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.349, 4.44533, -80.2134)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "16" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.465, 4.44533, -86.0131)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "16.5" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.287, 4.44533, -92.1521)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "17.5" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.33, 4.44533, -98.224)
        end
        wait(1)
        if game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Cash.Value:split(";")[2] > "18" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.388, 4.44533, -103.946)
        end
        wait(1)
    end
    if Vdsauh then
		if (tonumber(game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Multiplier.Value:split(";")[2])) == nil then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-140.136, 4.50083, -63.2406)
		else 
			if (tonumber(game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Stats.Multiplier.Value:split(";")[2])) > 2000 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-202.709, 4.45033, -85.4601)
			end
		end
	end
    wait()
end