local L_1_ = loadstring(game:HttpGet('https://raw.githubusercontent.com/Saqxzzz/Saqxzzz/main/Script.lua'))()

local L_2_ = L_1_:CreateWindow({
	Name = "🦊Counter Blox Script (made by Saqxzz)🦊",
	LoadingTitle = "Foxy Hub",
	LoadingSubtitle = "by Saqxzz",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Foxy Hub"
	},
	Discord = {
		Enabled = false,
		Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "COUNTER BLOX ⏐ KEY",
		Subtitle = "Key System",
		Note = "DISCORD SERVER SOON.",
		FileName = "Foxy Hub key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {
			"https://pastebin.com/raw/0CnFMfcj"
		} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
})

local L_3_ = L_2_:CreateTab("🏠Main🏠", nill) -- Title, Image
local L_4_ = L_3_:CreateSection("Main")
L_1_:Notify({
	Title = "You Executed the Script!",
	Content = "Foxy Hub",
	Duration = 5,
	Image = nill,
	Actions = { -- Notification Buttons
		Ignore = {
			Name = "Okay!",
			Callback = function()
				print("The user tapped Okay!")
			end
		},
	},
})

local L_5_ = L_3_:CreateButton({
	Name = "ESP (cant be turned off)",
	Callback = function()
		_G.FriendColor = Color3.fromRGB(0, 0, 255)
		_G.EnemyColor = Color3.fromRGB(255, 0, 0)
		_G.UseTeamColor = true

--------------------------------------------------------------------
		local L_12_ = Instance.new("Folder", game.CoreGui)
		L_12_.Name = "ESP"
		local L_13_ = Instance.new("BoxHandleAdornment")
		L_13_.Name = "nilBox"
		L_13_.Size = Vector3.new(1, 2, 1)
		L_13_.Color3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)
		L_13_.Transparency = 0.7
		L_13_.ZIndex = 0
		L_13_.AlwaysOnTop = false
		L_13_.Visible = false
		local L_14_ = Instance.new("BillboardGui")
		L_14_.Name = "nilNameTag"
		L_14_.Enabled = false
		L_14_.Size = UDim2.new(0, 200, 0, 50)
		L_14_.AlwaysOnTop = true
		L_14_.StudsOffset = Vector3.new(0, 1.8, 0)
		local L_15_ = Instance.new("TextLabel", L_14_)
		L_15_.Name = "Tag"
		L_15_.BackgroundTransparency = 1
		L_15_.Position = UDim2.new(0, -50, 0, 0)
		L_15_.Size = UDim2.new(0, 300, 0, 20)
		L_15_.TextSize = 15
		L_15_.TextColor3 = Color3.new(0.39215686274509803, 0.39215686274509803, 0.39215686274509803)
		L_15_.TextStrokeColor3 = Color3.new(0, 0, 0)
		L_15_.TextStrokeTransparency = 0.4
		L_15_.Text = "nil"
		L_15_.Font = Enum.Font.SourceSansBold
		L_15_.TextScaled = false
		local L_16_ = function(L_22_arg0)
			repeat
				wait()
			until L_22_arg0.Character ~= nil
			L_22_arg0.Character:WaitForChild("Humanoid")
			local L_23_ = L_12_:FindFirstChild(L_22_arg0.Name)
			L_23_:ClearAllChildren()
			local L_24_ = L_13_:Clone()
			L_24_.Name = L_22_arg0.Name .. "Box"
			L_24_.Adornee = L_22_arg0.Character
			L_24_.Parent = L_23_
			local L_25_ = L_14_:Clone()
			L_25_.Name = L_22_arg0.Name .. "NameTag"
			L_25_.Enabled = true
			L_25_.Parent = L_23_
			L_25_.Adornee = L_22_arg0.Character:WaitForChild("Head", 5)
			if not L_25_.Adornee then
				return UnloadCharacter(L_22_arg0)
			end
			L_25_.Tag.Text = L_22_arg0.Name
			L_24_.Color3 = Color3.new(L_22_arg0.TeamColor.r, L_22_arg0.TeamColor.g, L_22_arg0.TeamColor.b)
			L_25_.Tag.TextColor3 = Color3.new(L_22_arg0.TeamColor.r, L_22_arg0.TeamColor.g, L_22_arg0.TeamColor.b)
			local L_26_
			local L_27_ = function()
				if not pcall(function()
					L_22_arg0.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
					local L_28_ = math.floor(L_22_arg0.Character.Humanoid.MaxHealth)
					local L_29_ = math.floor(L_22_arg0.Character.Humanoid.Health)
				end) then
					L_26_:Disconnect()
				end
			end
			L_27_()
			L_26_ = L_22_arg0.Character.Humanoid.Changed:Connect(L_27_)
		end
		local L_17_ = function(L_30_arg0)
			local L_31_ = L_12_:FindFirstChild(L_30_arg0.Name)
			if L_31_ and (L_31_:FindFirstChild(L_30_arg0.Name .. "Box") ~= nil or L_31_:FindFirstChild(L_30_arg0.Name .. "NameTag") ~= nil) then
				L_31_:ClearAllChildren()
			end
		end
		local L_18_ = function(L_32_arg0)
			local L_33_ = Instance.new("Folder", L_12_)
			L_33_.Name = L_32_arg0.Name
			L_32_arg0.CharacterAdded:Connect(function()
				pcall(L_16_, L_32_arg0)
			end)
			L_32_arg0.CharacterRemoving:Connect(function()
				pcall(L_17_, L_32_arg0)
			end)
			L_32_arg0.Changed:Connect(function(L_34_arg0)
				if L_34_arg0 == "TeamColor" then
					L_17_(L_32_arg0)
					wait()
					L_16_(L_32_arg0)
				end
			end)
			L_16_(L_32_arg0)
		end
		local L_19_ = function(L_35_arg0)
			L_17_(L_35_arg0)
			local L_36_ = L_12_:FindFirstChild(L_35_arg0.Name)
			if L_36_ then
				L_36_:Destroy()
			end
		end
		for L_37_forvar0, L_38_forvar1 in pairs(game:GetService("Players"):GetPlayers()) do
			spawn(function()
				pcall(L_18_, L_38_forvar1)
			end)
		end
		game:GetService("Players").PlayerAdded:Connect(function(L_39_arg0)
			pcall(L_18_, L_39_arg0)
		end)
		game:GetService("Players").PlayerRemoving:Connect(function(L_40_arg0)
			pcall(L_19_, L_40_arg0)
		end)
		game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
		if _G.Reantheajfdfjdgs then
			return
		end
		_G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"
		local L_20_ = game:GetService("Players")
		local L_21_ = L_20_.LocalPlayer
		function esp(L_41_arg0, L_42_arg1)
			if L_41_arg0.Character then
				if not L_41_arg0.Character:FindFirstChild("GetReal") then
					local L_43_ = Instance.new("Highlight")
					L_43_.RobloxLocked = true
					L_43_.Name = "GetReal"
					L_43_.Adornee = L_41_arg0.Character
					L_43_.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					L_43_.FillColor = L_42_arg1
					L_43_.Parent = L_41_arg0.Character
				else
					L_41_arg0.Character.GetReal.FillColor = L_42_arg1
				end
			end
		end
		while task.wait() do
			for L_44_forvar0, L_45_forvar1 in pairs(L_20_:GetPlayers()) do
				if L_45_forvar1 ~= L_21_ then
					esp(L_45_forvar1, _G.UseTeamColor and L_45_forvar1.TeamColor.Color or ((L_21_.TeamColor == L_45_forvar1.TeamColor) and _G.FriendColor or _G.EnemyColor))
				end
			end
		end
	end,
})


local L_6_ = L_2_:CreateTab("🎯Aim🎯", nill) -- Title, Image
local L_7_ = L_6_:CreateSection("Aim features")

local L_8_ = L_6_:CreateButton({
	Name = "Aimbot",
	Callback = function()
		local L_46_ = workspace.CurrentCamera
		local L_47_ = game:GetService("Players")
		local L_48_ = game:GetService("RunService")
		local L_49_ = game:GetService("UserInputService")
		local L_50_ = game:GetService("TweenService")
		local L_51_ = L_47_.LocalPlayer
		local L_52_ = false
		_G.AimbotEnabled = true
		_G.TeamCheck = true -- If set to true then the script would only lock your aim at enemy team members.
		_G.AimPart = "Head" -- Where the aimbot script would lock at.
		_G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.
		_G.CircleSides = 64 -- How many sides the FOV circle would have.
		_G.CircleColor = Color3.fromRGB(255, 255, 255) -- (RGB) Color that the FOV circle would appear as.
		_G.CircleTransparency = 0.7 -- Transparency of the circle.
		_G.CircleRadius = 70 -- The radius of the circle / FOV.
		_G.CircleFilled = false -- Determines whether or not the circle is filled.
		_G.CircleVisible = true -- Determines whether or not the circle is visible.
		_G.CircleThickness = 0 -- The thickness of the circle.
		local L_53_ = Drawing.new("Circle")
		L_53_.Position = Vector2.new(L_46_.ViewportSize.X / 2, L_46_.ViewportSize.Y / 2)
		L_53_.Radius = _G.CircleRadius
		L_53_.Filled = _G.CircleFilled
		L_53_.Color = _G.CircleColor
		L_53_.Visible = _G.CircleVisible
		L_53_.Radius = _G.CircleRadius
		L_53_.Transparency = _G.CircleTransparency
		L_53_.NumSides = _G.CircleSides
		L_53_.Thickness = _G.CircleThickness
		local function L_54_func()
			local L_55_ = _G.CircleRadius
			local L_56_ = nil
			for L_57_forvar0, L_58_forvar1 in next, L_47_:GetPlayers() do
				if L_58_forvar1.Name ~= L_51_.Name then
					if _G.TeamCheck == true then
						if L_58_forvar1.Team ~= L_51_.Team then
							if L_58_forvar1.Character ~= nil then
								if L_58_forvar1.Character:FindFirstChild("HumanoidRootPart") ~= nil then
									if L_58_forvar1.Character:FindFirstChild("Humanoid") ~= nil and L_58_forvar1.Character:FindFirstChild("Humanoid").Health ~= 0 then
										local L_59_ = L_46_:WorldToScreenPoint(L_58_forvar1.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
										local L_60_ = (Vector2.new(L_49_:GetMouseLocation().X, L_49_:GetMouseLocation().Y) - Vector2.new(L_59_.X, L_59_.Y)).Magnitude
										if L_60_ < L_55_ then
											L_56_ = L_58_forvar1
										end
									end
								end
							end
						end
					else
						if L_58_forvar1.Character ~= nil then
							if L_58_forvar1.Character:FindFirstChild("HumanoidRootPart") ~= nil then
								if L_58_forvar1.Character:FindFirstChild("Humanoid") ~= nil and L_58_forvar1.Character:FindFirstChild("Humanoid").Health ~= 0 then
									local L_61_ = L_46_:WorldToScreenPoint(L_58_forvar1.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
									local L_62_ = (Vector2.new(L_49_:GetMouseLocation().X, L_49_:GetMouseLocation().Y) - Vector2.new(L_61_.X, L_61_.Y)).Magnitude
									if L_62_ < L_55_ then
										L_56_ = L_58_forvar1
									end
								end
							end
						end
					end
				end
			end
			return L_56_
		end
		L_49_.InputBegan:Connect(function(L_63_arg0)
			if L_63_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
				L_52_ = true
			end
		end)
		L_49_.InputEnded:Connect(function(L_64_arg0)
			if L_64_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
				L_52_ = false
			end
		end)
		L_48_.RenderStepped:Connect(function()
			L_53_.Position = Vector2.new(L_49_:GetMouseLocation().X, L_49_:GetMouseLocation().Y)
			L_53_.Radius = _G.CircleRadius
			L_53_.Filled = _G.CircleFilled
			L_53_.Color = _G.CircleColor
			L_53_.Visible = _G.CircleVisible
			L_53_.Radius = _G.CircleRadius
			L_53_.Transparency = _G.CircleTransparency
			L_53_.NumSides = _G.CircleSides
			L_53_.Thickness = _G.CircleThickness
			if L_52_ == true and _G.AimbotEnabled == true then
				L_50_:Create(L_46_, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
					CFrame = CFrame.new(L_46_.CFrame.Position, L_54_func().Character[_G.AimPart].Position)
				}):Play()
			end
		end)
	end,
})

local L_9_ = L_2_:CreateTab("⚙Misc⚙", nill) -- Title, Image
local L_10_ = L_9_:CreateSection("Misc features")

local L_11_ = L_9_:CreateButton({
	Name = "UNLOCK ALL SKINS (GO TO MATCH FIRST)",
	Callback = function()
		local L_65_ = game:GetService("Players").LocalPlayer
		local L_66_ = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
		local L_67_ = game:GetService("ReplicatedStorage")
		local L_68_ = {{'AK47_Ace'},{'AK47_Bloodboom'},{'AK47_Clown'},{'AK47_Code Orange'},{'AK47_Eve'},{'AK47_Gifted'},{'AK47_Glo'},{'AK47_Godess'},{'AK47_Hallows'},{'AK47_Halo'},{'AK47_Hypersonic'},{'AK47_Inversion'},{'AK47_Jester'},{'AK47_Maker'},{'AK47_Mean Green'},{'AK47_Outlaws'},{'AK47_Outrunner'},{'AK47_Patch'},{'AK47_Plated'},{'AK47_Precision'},{'AK47_Quantum'},{'AK47_Quicktime'},{'AK47_Scapter'},{'AK47_Secret Santa'},{'AK47_Shooting Star'},{'AK47_Skin Committee'},{'AK47_Survivor'},{'AK47_Ugly Sweater'},{'AK47_VAV'},{'AK47_Variant Camo'},{'AK47_Yltude'},{'AUG_Chilly Night'},{'AUG_Dream Hound'},{'AUG_Enlisted'},{'AUG_Graffiti'},{'AUG_Homestead'},{'AUG_Maker'},{'AUG_NightHawk'},{'AUG_Phoenix'},{'AUG_Sunsthetic'},{'AWP_Abaddon'},{'AWP_Autumness'},{'AWP_Blastech'},{'AWP_Bloodborne'},{'AWP_Coffin Biter'},{'AWP_Desert Camo'},{'AWP_Difference'},{'AWP_Dragon'},{'AWP_Forever'},{'AWP_Grepkin'},{'AWP_Hika'},{'AWP_Illusion'},{'AWP_Instinct'},{'AWP_JTF2'},{'AWP_Lunar'},{'AWP_Nerf'},{'AWP_Northern Lights'},{'AWP_Pear Tree'},{'AWP_Pink Vision'},{'AWP_Pinkie'},{'AWP_Quicktime'},{'AWP_Racer'},{'AWP_Regina'},{'AWP_Retroactive'},{'AWP_Scapter'},{'AWP_Silence'},{'AWP_Venomus'},{'AWP_Weeb'},{'Banana_Stock'},{'Bayonet_Aequalis'},{'Bayonet_Banner'},{'Bayonet_Candy Cane'},{'Bayonet_Consumed'},{'Bayonet_Cosmos'},{'Bayonet_Crimson Tiger'},{'Bayonet_Crow'},{'Bayonet_Delinquent'},{'Bayonet_Digital'},{'Bayonet_Easy-Bake'},{'Bayonet_Egg Shell'},{'Bayonet_Festive'},{'Bayonet_Frozen Dream'},{'Bayonet_Geo Blade'},{'Bayonet_Ghastly'},{'Bayonet_Goo'},{'Bayonet_Hallows'},{'Bayonet_Intertwine'},{'Bayonet_Marbleized'},{'Bayonet_Mariposa'},{'Bayonet_Naval'},{'Bayonet_Neonic'},{'Bayonet_RSL'},{'Bayonet_Racer'},{'Bayonet_Sapphire'},{'Bayonet_Silent Night'},{'Bayonet_Splattered'},{'Bayonet_Stock'},{'Bayonet_Topaz'},{'Bayonet_Tropical'},{'Bayonet_Twitch'},{'Bayonet_UFO'},{'Bayonet_Wetland'},{'Bayonet_Worn'},{'Bayonet_Wrapped'},{'Bearded Axe_Beast'},{'Bearded Axe_Splattered'},{'Bizon_Autumic'},{'Bizon_Festive'},{'Bizon_Oblivion'},{'Bizon_Saint Nick'},{'Bizon_Sergeant'},{'Bizon_Shattered'},{'Butterfly Knife_Aurora'},{'Butterfly Knife_Bloodwidow'},{'Butterfly Knife_Consumed'},{'Butterfly Knife_Cosmos'},{'Butterfly Knife_Crimson Tiger'},{'Butterfly Knife_Crippled Fade'},{'Butterfly Knife_Digital'},{'Butterfly Knife_Egg Shell'},{'Butterfly Knife_Freedom'},{'Butterfly Knife_Frozen Dream'},{'Butterfly Knife_Goo'},{'Butterfly Knife_Hallows'},{'Butterfly Knife_Icicle'},{'Butterfly Knife_Inversion'},{'Butterfly Knife_Jade Dream'},{'Butterfly Knife_Marbleized'},{'Butterfly Knife_Naval'},{'Butterfly Knife_Neonic'},{'Butterfly Knife_Reaper'},{'Butterfly Knife_Ruby'},{'Butterfly Knife_Scapter'},{'Butterfly Knife_Splattered'},{'Butterfly Knife_Stock'},{'Butterfly Knife_Topaz'},{'Butterfly Knife_Tropical'},{'Butterfly Knife_Twitch'},{'Butterfly Knife_Wetland'},{'Butterfly Knife_White Boss'},{'Butterfly Knife_Worn'},{'Butterfly Knife_Wrapped'},{'CZ_Designed'},{'CZ_Festive'},{'CZ_Holidays'},{'CZ_Lightning'},{'CZ_Orange Web'},{'CZ_Spectre'},{'Cleaver_Spider'},{'Cleaver_Splattered'},{'DesertEagle_Cold Truth'},{'DesertEagle_Cool Blue'},{'DesertEagle_DropX'},{'DesertEagle_Glittery'},{'DesertEagle_Grim'},{'DesertEagle_Heat'},{'DesertEagle_Honor-bound'},{'DesertEagle_Independence'},{'DesertEagle_Krystallos'},{'DesertEagle_Pumpkin Buster'},{'DesertEagle_ROLVe'},{'DesertEagle_Racer'},{'DesertEagle_Scapter'},{'DesertEagle_Skin Committee'},{'DesertEagle_Survivor'},{'DesertEagle_Weeb'},{'DesertEagle_Xmas'},{'DualBerettas_Carbonized'},{'DualBerettas_Dusty Manor'},{'DualBerettas_Floral'},{'DualBerettas_Hexline'},{'DualBerettas_Neon web'},{'DualBerettas_Old Fashioned'},{'DualBerettas_Xmas'},{'Falchion Knife_Bloodwidow'},{'Falchion Knife_Chosen'},{'Falchion Knife_Coal'},{'Falchion Knife_Consumed'},{'Falchion Knife_Cosmos'},{'Falchion Knife_Crimson Tiger'},{'Falchion Knife_Crippled Fade'},{'Falchion Knife_Digital'},{'Falchion Knife_Egg Shell'},{'Falchion Knife_Festive'},{'Falchion Knife_Freedom'},{'Falchion Knife_Frozen Dream'},{'Falchion Knife_Goo'},{'Falchion Knife_Hallows'},{'Falchion Knife_Inversion'},{'Falchion Knife_Late Night'},{'Falchion Knife_Marbleized'},{'Falchion Knife_Naval'},{'Falchion Knife_Neonic'},{'Falchion Knife_Racer'},{'Falchion Knife_Ruby'},{'Falchion Knife_Splattered'},{'Falchion Knife_Stock'},{'Falchion Knife_Topaz'},{'Falchion Knife_Tropical'},{'Falchion Knife_Wetland'},{'Falchion Knife_Worn'},{'Falchion Knife_Wrapped'},{'Falchion Knife_Zombie'},{'Famas_Abstract'},{'Famas_Centipede'},{'Famas_Cogged'},{'Famas_Goliath'},{'Famas_Haunted Forest'},{'Famas_KugaX'},{'Famas_MK11'},{'Famas_Medic'},{'Famas_Redux'},{'Famas_Shocker'},{'Famas_Toxic Rain'},{'FiveSeven_Autumn Fade'},{'FiveSeven_Danjo'},{'FiveSeven_Fluid'},{'FiveSeven_Gifted'},{'FiveSeven_Midnight Ride'},{'FiveSeven_Mr. Anatomy'},{'FiveSeven_Stigma'},{'FiveSeven_Sub Zero'},{'FiveSeven_Summer'},{'Flip Knife_Stock'},{'G3SG1_Amethyst'},{'G3SG1_Autumn'},{'G3SG1_Foliage'},{'G3SG1_Hex'},{'G3SG1_Holly Bound'},{'G3SG1_Mahogany'},{'Galil_Frosted'},{'Galil_Hardware 2'},{'Galil_Hardware'},{'Galil_Toxicity'},{'Galil_Worn'},{'Glock_Angler'},{'Glock_Anubis'},{'Glock_Biotrip'},{'Glock_Day Dreamer'},{'Glock_Desert Camo'},{'Glock_Gravestomper'},{'Glock_Midnight Tiger'},{'Glock_Money Maker'},{'Glock_RSL'},{'Glock_Rush'},{'Glock_Scapter'},{'Glock_Spacedust'},{'Glock_Tarnish'},{'Glock_Underwater'},{'Glock_Wetland'},{'Glock_White Sauce'},{'Gut Knife_Banner'},{'Gut Knife_Bloodwidow'},{'Gut Knife_Consumed'},{'Gut Knife_Cosmos'},{'Gut Knife_Crimson Tiger'},{'Gut Knife_Crippled Fade'},{'Gut Knife_Digital'},{'Gut Knife_Egg Shell'},{'Gut Knife_Frozen Dream'},{'Gut Knife_Geo Blade'},{'Gut Knife_Goo'},{'Gut Knife_Hallows'},{'Gut Knife_Lurker'},{'Gut Knife_Marbleized'},{'Gut Knife_Naval'},{'Gut Knife_Neonic'},{'Gut Knife_Present'},{'Gut Knife_Ruby'},{'Gut Knife_Rusty'},{'Gut Knife_Splattered'},{'Gut Knife_Topaz'},{'Gut Knife_Tropical'},{'Gut Knife_Wetland'},{'Gut Knife_Worn'},{'Gut Knife_Wrapped'},{'Huntsman Knife_Aurora'},{'Huntsman Knife_Bloodwidow'},{'Huntsman Knife_Consumed'},{'Huntsman Knife_Cosmos'},{'Huntsman Knife_Cozy'},{'Huntsman Knife_Crimson Tiger'},{'Huntsman Knife_Crippled Fade'},{'Huntsman Knife_Digital'},{'Huntsman Knife_Egg Shell'},{'Huntsman Knife_Frozen Dream'},{'Huntsman Knife_Geo Blade'},{'Huntsman Knife_Goo'},{'Huntsman Knife_Hallows'},{'Huntsman Knife_Honor Fade'},{'Huntsman Knife_Marbleized'},{'Huntsman Knife_Monster'},{'Huntsman Knife_Naval'},{'Huntsman Knife_Ruby'},{'Huntsman Knife_Splattered'},{'Huntsman Knife_Stock'},{'Huntsman Knife_Tropical'},{'Huntsman Knife_Twitch'},{'Huntsman Knife_Wetland'},{'Huntsman Knife_Worn'},{'Huntsman Knife_Wrapped'},{'Karambit_Bloodwidow'},{'Karambit_Consumed'},{'Karambit_Cosmos'},{'Karambit_Crimson Tiger'},{'Karambit_Crippled Fade'},{'Karambit_Death Wish'},{'Karambit_Digital'},{'Karambit_Egg Shell'},{'Karambit_Festive'},{'Karambit_Frozen Dream'},{'Karambit_Glossed'},{'Karambit_Gold'},{'Karambit_Goo'},{'Karambit_Hallows'},{'Karambit_Jade Dream'},{'Karambit_Jester'},{'Karambit_Lantern'},{'Karambit_Liberty Camo'},{'Karambit_Marbleized'},{'Karambit_Naval'},{'Karambit_Neonic'},{'Karambit_Pizza'},{'Karambit_Quicktime'},{'Karambit_Racer'},{'Karambit_Ruby'},{'Karambit_Scapter'},{'Karambit_Splattered'},{'Karambit_Stock'},{'Karambit_Topaz'},{'Karambit_Tropical'},{'Karambit_Twitch'},{'Karambit_Wetland'},{'Karambit_Worn'},{'M249_Aggressor'},{'M249_P2020'},{'M249_Spooky'},{'M249_Wolf'},{'M4A1_Animatic'},{'M4A1_Burning'},{'M4A1_Desert Camo'},{'M4A1_Heavens Gate'},{'M4A1_Impulse'},{'M4A1_Jester'},{'M4A1_Lunar'},{'M4A1_Necropolis'},{'M4A1_Tecnician'},{'M4A1_Toucan'},{'M4A1_Wastelander'},{'M4A4_BOT[S]'},{'M4A4_Candyskull'},{'M4A4_Delinquent'},{'M4A4_Desert Camo'},{'M4A4_Devil'},{'M4A4_Endline'},{'M4A4_Flashy Ride'},{'M4A4_Ice Cap'},{'M4A4_Jester'},{'M4A4_King'},{'M4A4_Mistletoe'},{'M4A4_Pinkie'},{'M4A4_Pinkvision'},{'M4A4_Pondside'},{'M4A4_Precision'},{'M4A4_Quicktime'},{'M4A4_Racer'},{'M4A4_RayTrack'},{'M4A4_Scapter'},{'M4A4_Stardust'},{'M4A4_Toy Soldier'},{'MAC10_Artists Intent'},{'MAC10_Blaze'},{'MAC10_Golden Rings'},{'MAC10_Pimpin'},{'MAC10_Skeleboney'},{'MAC10_Toxic'},{'MAC10_Turbo'},{'MAC10_Wetland'},{'MAG7_Bombshell'},{'MAG7_C4UTION'},{'MAG7_Frosty'},{'MAG7_Molten'},{'MAG7_Outbreak'},{'MAG7_Striped'},{'MP7_Calaxian'},{'MP7_Cogged'},{'MP7_Goo'},{'MP7_Holiday'},{'MP7_Industrial'},{'MP7_Reindeer'},{'MP7_Silent Ops'},{'MP7_Sunshot'},{'MP9_Blueroyal'},{'MP9_Cob Web'},{'MP9_Cookie Man'},{'MP9_Decked Halls'},{'MP9_SnowTime'},{'MP9_Vaporwave'},{'MP9_Velvita'},{'MP9_Wilderness'},{'Negev_Default'},{'Negev_Midnightbones'},{'Negev_Quazar'},{'Negev_Striped'},{'Negev_Wetland'},{'Negev_Winterfell'},{'Nova_Black Ice'},{'Nova_Cookie'},{'Nova_Paradise'},{'Nova_Sharkesh'},{'Nova_Starry Night'},{'Nova_Terraformer'},{'Nova_Tiger'},{'P2000_Apathy'},{'P2000_Camo Dipped'},{'P2000_Candycorn'},{'P2000_Comet'},{'P2000_Dark Beast'},{'P2000_Golden Age'},{'P2000_Lunar'},{'P2000_Pinkie'},{'P2000_Ruby'},{'P2000_Silence'},{'P250_Amber'},{'P250_Bomber'},{'P250_Equinox'},{'P250_Frosted'},{'P250_Goldish'},{'P250_Green Web'},{'P250_Shark'},{'P250_Solstice'},{'P250_TC250'},{'P90_Demon Within'},{'P90_Elegant'},{'P90_Krampus'},{'P90_Northern Lights'},{'P90_P-Chan'},{'P90_Pine'},{'P90_Redcopy'},{'P90_Skulls'},{'R8_Exquisite'},{'R8_Hunter'},{'R8_Spades'},{'R8_TG'},{'R8_Violet'},{'SG_DropX'},{'SG_Dummy'},{'SG_Kitty Cat'},{'SG_Knighthood'},{'SG_Magma'},{'SG_Variant Camo'},{'SG_Yltude'},{'SawedOff_Casino'},{'SawedOff_Colorboom'},{'SawedOff_Executioner'},{'SawedOff_Opal'},{'SawedOff_Spooky'},{'SawedOff_Sullys Blacklight'},{'Scout_Coffin Biter'},{'Scout_Flowing Mists'},{'Scout_Hellborn'},{'Scout_Hot Cocoa'},{'Scout_Monstruo'},{'Scout_Neon Regulation'},{'Scout_Posh'},{'Scout_Pulse'},{'Scout_Railgun'},{'Scout_Theory'},{'Scout_Xmas'},{'Sickle_Mummy'},{'Sickle_Splattered'},{'Tec9_Charger'},{'Tec9_Gift Wrapped'},{'Tec9_Ironline'},{'Tec9_Performer'},{'Tec9_Phol'},{'Tec9_Samurai'},{'Tec9_Skintech'},{'Tec9_Stocking Stuffer'},{'UMP_Death Grip'},{'UMP_Gum Drop'},{'UMP_Magma'},{'UMP_Militia Camo'},{'UMP_Molten'},{'UMP_Redline'},{'USP_Crimson'},{'USP_Dizzy'},{'USP_Frostbite'},{'USP_Holiday'},{'USP_Jade Dream'},{'USP_Kraken'},{'USP_Nighttown'},{'USP_Paradise'},{'USP_Racing'},{'USP_Skull'},{'USP_Unseen'},{'USP_Worlds Away'},{'USP_Yellowbelly'},{'XM_Artic'},{'XM_Atomic'},{'XM_Campfire'},{'XM_Endless Night'},{'XM_MK11'},{'XM_Predator'},{'XM_Red'},{'XM_Spectrum'},{'Handwraps_Wraps'},{'Sports Glove_Hazard'},{'Sports Glove_Hallows'},{'Sports Glove_Majesty'},{'Strapped Glove_Racer'},{'trapped Glove_Grim'},{'trapped Glove_Wisk'},{'Fingerless Glove_Scapter'},{'Fingerless Glove_Digital'},{'Fingerless Glove_Patch'},{'Handwraps_Guts'},{'Handwraps_Wetland'},{'trapped Glove_Molten'},{'Fingerless_Crystal'},{'Sports Glove_Royal'},{'Strapped Glove_Kringle'},{'Handwraps_MMA'},{'Sports Glove_Weeb'},{'Sports Glove_CottonTail'},{'Sports Glove_RSL'},{'Handwraps_Ghoul Hex'},{'Handwraps_Phantom Hex'},{'Handwraps_Spector Hex'},{'Handwraps_Orange Hex'},{'Handwraps_Purple Hex'},{'Handwraps_Green Hex'},}
		local L_69_
		local L_70_ = getrawmetatable(game)
		local L_71_ = L_70_.__namecall
		setreadonly(L_70_, false)
		local L_72_
		L_70_.__namecall = newcclosure(function(L_75_arg0, ...)
			local L_76_ = {
				...
			}
			if getnamecallmethod() == "InvokeServer" and tostring(L_75_arg0) == "Hugh" then
				return
			end
			if getnamecallmethod() == "FireServer" then
				if L_76_[1] == L_65_.UserId then
					return
				end
				if string.len(tostring(L_75_arg0)) == 38 then
					if not L_72_ then
						L_72_ = true
						for L_77_forvar0, L_78_forvar1 in pairs(L_68_) do
							local L_79_
							for L_80_forvar0, L_81_forvar1 in pairs(L_76_[1]) do
								if L_78_forvar1[1] == L_81_forvar1[1] then
									L_79_ = true
								end
							end
							if not L_79_ then
								table.insert(L_76_[1], L_78_forvar1)
							end
						end
					end
					return
				end
				if tostring(L_75_arg0) == "DataEvent" and L_76_[1][4] then
					local L_82_ = string.split(L_76_[1][4][1], "_")[2]
					if L_76_[1][2] == "Both" then
						L_65_["SkinFolder"]["CTFolder"][L_76_[1][3]].Value = L_82_
						L_65_["SkinFolder"]["TFolder"][L_76_[1][3]].Value = L_82_
					else
						L_65_["SkinFolder"][L_76_[1][2] .. "Folder"][L_76_[1][3]].Value = L_82_
					end
				end
			end
			return L_71_(L_75_arg0, ...)
		end)
		setreadonly(L_70_, true)
		L_66_.CurrentInventory = L_68_
		local L_73_, L_74_ = L_65_.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()
		L_65_.SkinFolder.TFolder:Destroy()
		L_65_.SkinFolder.CTFolder:Destroy()
		L_73_.Parent = L_65_.SkinFolder
		L_74_.Parent = L_65_.SkinFolder
	end,
})
