local L_1_ = loadstring(game:HttpGet('https://raw.githubusercontent.com/Saqxzzz/Saqxzzz/main/Script.lua'))()

local L_2_ = L_1_:CreateWindow({
	Name = "🦊Arsenal Script (made by Saqxzz)🦊",
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
		Title = "Arsenal ⏐ KEY",
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
	Name = "Aimbot (Cant be turned off,M1)",
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
