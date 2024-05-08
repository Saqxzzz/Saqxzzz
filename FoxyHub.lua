local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Saqxzzz/Saqxzzz/main/Script.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "🦊Counter Blox Script🦊",
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
      Key = {"https://pastebin.com/raw/0CnFMfcj"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠Main🏠", nill) -- Title, Image
local MainSection = MainTab:CreateSection("Main")
Rayfield:Notify({
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

local Button = MainTab:CreateButton({
   Name = "ESP (cant be turned off)",
   Callback = function()
_G.FriendColor = Color3.fromRGB(0, 0, 255)
_G.EnemyColor = Color3.fromRGB(255, 0, 0)
_G.UseTeamColor = true

--------------------------------------------------------------------
local Holder = Instance.new("Folder", game.CoreGui)
Holder.Name = "ESP"

local Box = Instance.new("BoxHandleAdornment")
Box.Name = "nilBox"
Box.Size = Vector3.new(1, 2, 1)
Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Box.Transparency = 0.7
Box.ZIndex = 0
Box.AlwaysOnTop = false
Box.Visible = false

local NameTag = Instance.new("BillboardGui")
NameTag.Name = "nilNameTag"
NameTag.Enabled = false
NameTag.Size = UDim2.new(0, 200, 0, 50)
NameTag.AlwaysOnTop = true
NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
local Tag = Instance.new("TextLabel", NameTag)
Tag.Name = "Tag"
Tag.BackgroundTransparency = 1
Tag.Position = UDim2.new(0, -50, 0, 0)
Tag.Size = UDim2.new(0, 300, 0, 20)
Tag.TextSize = 15
Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
Tag.TextStrokeTransparency = 0.4
Tag.Text = "nil"
Tag.Font = Enum.Font.SourceSansBold
Tag.TextScaled = false

local LoadCharacter = function(v)
	repeat wait() until v.Character ~= nil
	v.Character:WaitForChild("Humanoid")
	local vHolder = Holder:FindFirstChild(v.Name)
	vHolder:ClearAllChildren()
	local b = Box:Clone()
	b.Name = v.Name .. "Box"
	b.Adornee = v.Character
	b.Parent = vHolder
	local t = NameTag:Clone()
	t.Name = v.Name .. "NameTag"
	t.Enabled = true
	t.Parent = vHolder
	t.Adornee = v.Character:WaitForChild("Head", 5)
	if not t.Adornee then
		return UnloadCharacter(v)
	end
	t.Tag.Text = v.Name
	b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	local Update
	local UpdateNameTag = function()
		if not pcall(function()
			v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			local maxh = math.floor(v.Character.Humanoid.MaxHealth)
			local h = math.floor(v.Character.Humanoid.Health)
		end) then
			Update:Disconnect()
		end
	end
	UpdateNameTag()
	Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
end

local UnloadCharacter = function(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
		vHolder:ClearAllChildren()
	end
end

local LoadPlayer = function(v)
	local vHolder = Instance.new("Folder", Holder)
	vHolder.Name = v.Name
	v.CharacterAdded:Connect(function()
		pcall(LoadCharacter, v)
	end)
	v.CharacterRemoving:Connect(function()
		pcall(UnloadCharacter, v)
	end)
	v.Changed:Connect(function(prop)
		if prop == "TeamColor" then
			UnloadCharacter(v)
			wait()
			LoadCharacter(v)
		end
	end)
	LoadCharacter(v)
end

local UnloadPlayer = function(v)
	UnloadCharacter(v)
	local vHolder = Holder:FindFirstChild(v.Name)
	if vHolder then
		vHolder:Destroy()
	end
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	spawn(function() pcall(LoadPlayer, v) end)
end

game:GetService("Players").PlayerAdded:Connect(function(v)
	pcall(LoadPlayer, v)
end)

game:GetService("Players").PlayerRemoving:Connect(function(v)
	pcall(UnloadPlayer, v)
end)

game:GetService("Players").LocalPlayer.NameDisplayDistance = 0

if _G.Reantheajfdfjdgs then
    return
end

_G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"

local players = game:GetService("Players")
local plr = players.LocalPlayer

function esp(target, color)
    if target.Character then
        if not target.Character:FindFirstChild("GetReal") then
            local highlight = Instance.new("Highlight")
            highlight.RobloxLocked = true
            highlight.Name = "GetReal"
            highlight.Adornee = target.Character
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = color
            highlight.Parent = target.Character
        else
            target.Character.GetReal.FillColor = color
        end
    end
end

while task.wait() do
    for i, v in pairs(players:GetPlayers()) do
        if v ~= plr then
            esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
        end
    end
end
   end,
})


local AimTab = Window:CreateTab("🎯Aim🎯", nill) -- Title, Image
local Section = AimTab:CreateSection("Aim features")

local Button = AimTab:CreateButton({
   Name = "Aimbot",
   Callback = function()
   local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false

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

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness

local function GetClosestPlayer()
	local MaximumDistance = _G.CircleRadius
	local Target = nil

	for _, v in next, Players:GetPlayers() do
		if v.Name ~= LocalPlayer.Name then
			if _G.TeamCheck == true then
				if v.Team ~= LocalPlayer.Team then
					if v.Character ~= nil then
						if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
							if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
								local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
								local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
								
								if VectorDistance < MaximumDistance then
									Target = v
								end
							end
						end
					end
				end
			else
				if v.Character ~= nil then
					if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
						if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
							local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
							local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
							
							if VectorDistance < MaximumDistance then
								Target = v
							end
						end
					end
				end
			end
		end
	end

	return Target
end

UserInputService.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        Holding = true
    end
end)

UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        Holding = false
    end
end)

RunService.RenderStepped:Connect(function()
    FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Filled = _G.CircleFilled
    FOVCircle.Color = _G.CircleColor
    FOVCircle.Visible = _G.CircleVisible
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Transparency = _G.CircleTransparency
    FOVCircle.NumSides = _G.CircleSides
    FOVCircle.Thickness = _G.CircleThickness

    if Holding == true and _G.AimbotEnabled == true then
        TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
    end
end)
   end,
})

local MiscTab = Window:CreateTab("⚙Misc⚙", nill) -- Title, Image
local MiscSection = MiscTab:CreateSection("Misc features")

local Button = MiscTab:CreateButton({
   Name = "UNLOCK ALL SKINS (GO TO MATCH FIRST)",
   Callback = function()
   local LocalPlayer = game:GetService("Players").LocalPlayer local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client) local ReplicatedStorage = game:GetService("ReplicatedStorage")  local allSkins = {    {'AK47_Ace'},    {'AK47_Bloodboom'},    {'AK47_Clown'},    {'AK47_Code Orange'},    {'AK47_Eve'},    {'AK47_Gifted'},    {'AK47_Glo'},    {'AK47_Godess'},    {'AK47_Hallows'},    {'AK47_Halo'},    {'AK47_Hypersonic'},    {'AK47_Inversion'},    {'AK47_Jester'},    {'AK47_Maker'},    {'AK47_Mean Green'},    {'AK47_Outlaws'},    {'AK47_Outrunner'},    {'AK47_Patch'},    {'AK47_Plated'},    {'AK47_Precision'},    {'AK47_Quantum'},    {'AK47_Quicktime'},    {'AK47_Scapter'},    {'AK47_Secret Santa'},    {'AK47_Shooting Star'},    {'AK47_Skin Committee'},    {'AK47_Survivor'},    {'AK47_Ugly Sweater'},    {'AK47_VAV'},    {'AK47_Variant Camo'},    {'AK47_Yltude'},    {'AUG_Chilly Night'},    {'AUG_Dream Hound'},    {'AUG_Enlisted'},    {'AUG_Graffiti'},    {'AUG_Homestead'},    {'AUG_Maker'},    {'AUG_NightHawk'},    {'AUG_Phoenix'},    {'AUG_Sunsthetic'},    {'AWP_Abaddon'},    {'AWP_Autumness'},    {'AWP_Blastech'},    {'AWP_Bloodborne'},    {'AWP_Coffin Biter'},    {'AWP_Desert Camo'},    {'AWP_Difference'},    {'AWP_Dragon'},    {'AWP_Forever'},    {'AWP_Grepkin'},    {'AWP_Hika'},    {'AWP_Illusion'},    {'AWP_Instinct'},    {'AWP_JTF2'},    {'AWP_Lunar'},    {'AWP_Nerf'},    {'AWP_Northern Lights'},    {'AWP_Pear Tree'},    {'AWP_Pink Vision'},    {'AWP_Pinkie'},    {'AWP_Quicktime'},    {'AWP_Racer'},    {'AWP_Regina'},    {'AWP_Retroactive'},    {'AWP_Scapter'},    {'AWP_Silence'},    {'AWP_Venomus'},    {'AWP_Weeb'},    {'Banana_Stock'},    {'Bayonet_Aequalis'},    {'Bayonet_Banner'},    {'Bayonet_Candy Cane'},    {'Bayonet_Consumed'},    {'Bayonet_Cosmos'},    {'Bayonet_Crimson Tiger'},    {'Bayonet_Crow'},    {'Bayonet_Delinquent'},    {'Bayonet_Digital'},    {'Bayonet_Easy-Bake'},    {'Bayonet_Egg Shell'},    {'Bayonet_Festive'},    {'Bayonet_Frozen Dream'},    {'Bayonet_Geo Blade'},    {'Bayonet_Ghastly'},    {'Bayonet_Goo'},    {'Bayonet_Hallows'},    {'Bayonet_Intertwine'},    {'Bayonet_Marbleized'},    {'Bayonet_Mariposa'},    {'Bayonet_Naval'},    {'Bayonet_Neonic'},    {'Bayonet_RSL'},    {'Bayonet_Racer'},    {'Bayonet_Sapphire'},    {'Bayonet_Silent Night'},    {'Bayonet_Splattered'},    {'Bayonet_Stock'},    {'Bayonet_Topaz'},    {'Bayonet_Tropical'},    {'Bayonet_Twitch'},    {'Bayonet_UFO'},    {'Bayonet_Wetland'},    {'Bayonet_Worn'},    {'Bayonet_Wrapped'},    {'Bearded Axe_Beast'},    {'Bearded Axe_Splattered'},    {'Bizon_Autumic'},    {'Bizon_Festive'},    {'Bizon_Oblivion'},    {'Bizon_Saint Nick'},    {'Bizon_Sergeant'},    {'Bizon_Shattered'},    {'Butterfly Knife_Aurora'},    {'Butterfly Knife_Bloodwidow'},    {'Butterfly Knife_Consumed'},    {'Butterfly Knife_Cosmos'},    {'Butterfly Knife_Crimson Tiger'},    {'Butterfly Knife_Crippled Fade'},    {'Butterfly Knife_Digital'},    {'Butterfly Knife_Egg Shell'},    {'Butterfly Knife_Freedom'},    {'Butterfly Knife_Frozen Dream'},    {'Butterfly Knife_Goo'},    {'Butterfly Knife_Hallows'},    {'Butterfly Knife_Icicle'},    {'Butterfly Knife_Inversion'},    {'Butterfly Knife_Jade Dream'},    {'Butterfly Knife_Marbleized'},    {'Butterfly Knife_Naval'},    {'Butterfly Knife_Neonic'},    {'Butterfly Knife_Reaper'},    {'Butterfly Knife_Ruby'},    {'Butterfly Knife_Scapter'},    {'Butterfly Knife_Splattered'},    {'Butterfly Knife_Stock'},    {'Butterfly Knife_Topaz'},    {'Butterfly Knife_Tropical'},    {'Butterfly Knife_Twitch'},    {'Butterfly Knife_Wetland'},    {'Butterfly Knife_White Boss'},    {'Butterfly Knife_Worn'},    {'Butterfly Knife_Wrapped'},    {'CZ_Designed'},    {'CZ_Festive'},    {'CZ_Holidays'},    {'CZ_Lightning'},    {'CZ_Orange Web'},    {'CZ_Spectre'},    {'Cleaver_Spider'},    {'Cleaver_Splattered'},    {'DesertEagle_Cold Truth'},    {'DesertEagle_Cool Blue'},    {'DesertEagle_DropX'},    {'DesertEagle_Glittery'},    {'DesertEagle_Grim'},    {'DesertEagle_Heat'},    {'DesertEagle_Honor-bound'},    {'DesertEagle_Independence'},    {'DesertEagle_Krystallos'},    {'DesertEagle_Pumpkin Buster'},    {'DesertEagle_ROLVe'},    {'DesertEagle_Racer'},    {'DesertEagle_Scapter'},    {'DesertEagle_Skin Committee'},    {'DesertEagle_Survivor'},    {'DesertEagle_Weeb'},    {'DesertEagle_Xmas'},    {'DualBerettas_Carbonized'},    {'DualBerettas_Dusty Manor'},    {'DualBerettas_Floral'},    {'DualBerettas_Hexline'},    {'DualBerettas_Neon web'},    {'DualBerettas_Old Fashioned'},    {'DualBerettas_Xmas'},    {'Falchion Knife_Bloodwidow'},    {'Falchion Knife_Chosen'},    {'Falchion Knife_Coal'},    {'Falchion Knife_Consumed'},    {'Falchion Knife_Cosmos'},    {'Falchion Knife_Crimson Tiger'},    {'Falchion Knife_Crippled Fade'},    {'Falchion Knife_Digital'},    {'Falchion Knife_Egg Shell'},    {'Falchion Knife_Festive'},    {'Falchion Knife_Freedom'},    {'Falchion Knife_Frozen Dream'},    {'Falchion Knife_Goo'},    {'Falchion Knife_Hallows'},    {'Falchion Knife_Inversion'},    {'Falchion Knife_Late Night'},    {'Falchion Knife_Marbleized'},    {'Falchion Knife_Naval'},    {'Falchion Knife_Neonic'},    {'Falchion Knife_Racer'},    {'Falchion Knife_Ruby'},    {'Falchion Knife_Splattered'},    {'Falchion Knife_Stock'},    {'Falchion Knife_Topaz'},    {'Falchion Knife_Tropical'},    {'Falchion Knife_Wetland'},    {'Falchion Knife_Worn'},    {'Falchion Knife_Wrapped'},    {'Falchion Knife_Zombie'},    {'Famas_Abstract'},    {'Famas_Centipede'},    {'Famas_Cogged'},    {'Famas_Goliath'},    {'Famas_Haunted Forest'},    {'Famas_KugaX'},    {'Famas_MK11'},    {'Famas_Medic'},    {'Famas_Redux'},    {'Famas_Shocker'},    {'Famas_Toxic Rain'},    {'FiveSeven_Autumn Fade'},    {'FiveSeven_Danjo'},    {'FiveSeven_Fluid'},    {'FiveSeven_Gifted'},    {'FiveSeven_Midnight Ride'},    {'FiveSeven_Mr. Anatomy'},    {'FiveSeven_Stigma'},    {'FiveSeven_Sub Zero'},    {'FiveSeven_Summer'},    {'Flip Knife_Stock'},    {'G3SG1_Amethyst'},    {'G3SG1_Autumn'},    {'G3SG1_Foliage'},    {'G3SG1_Hex'},    {'G3SG1_Holly Bound'},    {'G3SG1_Mahogany'},    {'Galil_Frosted'},    {'Galil_Hardware 2'},    {'Galil_Hardware'},    {'Galil_Toxicity'},    {'Galil_Worn'},    {'Glock_Angler'},    {'Glock_Anubis'},    {'Glock_Biotrip'},    {'Glock_Day Dreamer'},    {'Glock_Desert Camo'},    {'Glock_Gravestomper'},    {'Glock_Midnight Tiger'},    {'Glock_Money Maker'},    {'Glock_RSL'},    {'Glock_Rush'},    {'Glock_Scapter'},    {'Glock_Spacedust'},    {'Glock_Tarnish'},    {'Glock_Underwater'},    {'Glock_Wetland'},    {'Glock_White Sauce'},    {'Gut Knife_Banner'},    {'Gut Knife_Bloodwidow'},    {'Gut Knife_Consumed'},    {'Gut Knife_Cosmos'},    {'Gut Knife_Crimson Tiger'},    {'Gut Knife_Crippled Fade'},    {'Gut Knife_Digital'},    {'Gut Knife_Egg Shell'},    {'Gut Knife_Frozen Dream'},    {'Gut Knife_Geo Blade'},    {'Gut Knife_Goo'},    {'Gut Knife_Hallows'},    {'Gut Knife_Lurker'},    {'Gut Knife_Marbleized'},    {'Gut Knife_Naval'},    {'Gut Knife_Neonic'},    {'Gut Knife_Present'},    {'Gut Knife_Ruby'},    {'Gut Knife_Rusty'},    {'Gut Knife_Splattered'},    {'Gut Knife_Topaz'},    {'Gut Knife_Tropical'},    {'Gut Knife_Wetland'},    {'Gut Knife_Worn'},    {'Gut Knife_Wrapped'},    {'Huntsman Knife_Aurora'},    {'Huntsman Knife_Bloodwidow'},    {'Huntsman Knife_Consumed'},    {'Huntsman Knife_Cosmos'},    {'Huntsman Knife_Cozy'},    {'Huntsman Knife_Crimson Tiger'},    {'Huntsman Knife_Crippled Fade'},    {'Huntsman Knife_Digital'},    {'Huntsman Knife_Egg Shell'},    {'Huntsman Knife_Frozen Dream'},    {'Huntsman Knife_Geo Blade'},    {'Huntsman Knife_Goo'},    {'Huntsman Knife_Hallows'},    {'Huntsman Knife_Honor Fade'},    {'Huntsman Knife_Marbleized'},    {'Huntsman Knife_Monster'},    {'Huntsman Knife_Naval'},    {'Huntsman Knife_Ruby'},    {'Huntsman Knife_Splattered'},    {'Huntsman Knife_Stock'},    {'Huntsman Knife_Tropical'},    {'Huntsman Knife_Twitch'},    {'Huntsman Knife_Wetland'},    {'Huntsman Knife_Worn'},    {'Huntsman Knife_Wrapped'},    {'Karambit_Bloodwidow'},    {'Karambit_Consumed'},    {'Karambit_Cosmos'},    {'Karambit_Crimson Tiger'},    {'Karambit_Crippled Fade'},    {'Karambit_Death Wish'},    {'Karambit_Digital'},    {'Karambit_Egg Shell'},    {'Karambit_Festive'},    {'Karambit_Frozen Dream'},    {'Karambit_Glossed'},    {'Karambit_Gold'},    {'Karambit_Goo'},    {'Karambit_Hallows'},    {'Karambit_Jade Dream'},    {'Karambit_Jester'},    {'Karambit_Lantern'},    {'Karambit_Liberty Camo'},    {'Karambit_Marbleized'},    {'Karambit_Naval'},    {'Karambit_Neonic'},    {'Karambit_Pizza'},    {'Karambit_Quicktime'},    {'Karambit_Racer'},    {'Karambit_Ruby'},    {'Karambit_Scapter'},    {'Karambit_Splattered'},    {'Karambit_Stock'},    {'Karambit_Topaz'},    {'Karambit_Tropical'},    {'Karambit_Twitch'},    {'Karambit_Wetland'},    {'Karambit_Worn'},    {'M249_Aggressor'},    {'M249_P2020'},    {'M249_Spooky'},    {'M249_Wolf'},    {'M4A1_Animatic'},    {'M4A1_Burning'},    {'M4A1_Desert Camo'},    {'M4A1_Heavens Gate'},    {'M4A1_Impulse'},    {'M4A1_Jester'},    {'M4A1_Lunar'},    {'M4A1_Necropolis'},    {'M4A1_Tecnician'},    {'M4A1_Toucan'},    {'M4A1_Wastelander'},    {'M4A4_BOT[S]'},    {'M4A4_Candyskull'},    {'M4A4_Delinquent'},    {'M4A4_Desert Camo'},    {'M4A4_Devil'},    {'M4A4_Endline'},    {'M4A4_Flashy Ride'},    {'M4A4_Ice Cap'},    {'M4A4_Jester'},    {'M4A4_King'},    {'M4A4_Mistletoe'},    {'M4A4_Pinkie'},    {'M4A4_Pinkvision'},    {'M4A4_Pondside'},    {'M4A4_Precision'},    {'M4A4_Quicktime'},    {'M4A4_Racer'},    {'M4A4_RayTrack'},    {'M4A4_Scapter'},    {'M4A4_Stardust'},    {'M4A4_Toy Soldier'},    {'MAC10_Artists Intent'},    {'MAC10_Blaze'},    {'MAC10_Golden Rings'},    {'MAC10_Pimpin'},    {'MAC10_Skeleboney'},    {'MAC10_Toxic'},    {'MAC10_Turbo'},    {'MAC10_Wetland'},    {'MAG7_Bombshell'},    {'MAG7_C4UTION'},    {'MAG7_Frosty'},    {'MAG7_Molten'},    {'MAG7_Outbreak'},    {'MAG7_Striped'},    {'MP7_Calaxian'},    {'MP7_Cogged'},    {'MP7_Goo'},    {'MP7_Holiday'},    {'MP7_Industrial'},    {'MP7_Reindeer'},    {'MP7_Silent Ops'},    {'MP7_Sunshot'},    {'MP9_Blueroyal'},    {'MP9_Cob Web'},    {'MP9_Cookie Man'},    {'MP9_Decked Halls'},    {'MP9_SnowTime'},    {'MP9_Vaporwave'},    {'MP9_Velvita'},    {'MP9_Wilderness'},    {'Negev_Default'},    {'Negev_Midnightbones'},    {'Negev_Quazar'},    {'Negev_Striped'},    {'Negev_Wetland'},    {'Negev_Winterfell'},    {'Nova_Black Ice'},    {'Nova_Cookie'},    {'Nova_Paradise'},    {'Nova_Sharkesh'},    {'Nova_Starry Night'},    {'Nova_Terraformer'},    {'Nova_Tiger'},    {'P2000_Apathy'},    {'P2000_Camo Dipped'},    {'P2000_Candycorn'},    {'P2000_Comet'},    {'P2000_Dark Beast'},    {'P2000_Golden Age'},    {'P2000_Lunar'},    {'P2000_Pinkie'},    {'P2000_Ruby'},    {'P2000_Silence'},    {'P250_Amber'},    {'P250_Bomber'},    {'P250_Equinox'},    {'P250_Frosted'},    {'P250_Goldish'},    {'P250_Green Web'},    {'P250_Shark'},    {'P250_Solstice'},    {'P250_TC250'},    {'P90_Demon Within'},    {'P90_Elegant'},    {'P90_Krampus'},    {'P90_Northern Lights'},    {'P90_P-Chan'},    {'P90_Pine'},    {'P90_Redcopy'},    {'P90_Skulls'},    {'R8_Exquisite'},    {'R8_Hunter'},    {'R8_Spades'},    {'R8_TG'},    {'R8_Violet'},    {'SG_DropX'},    {'SG_Dummy'},    {'SG_Kitty Cat'},    {'SG_Knighthood'},    {'SG_Magma'},    {'SG_Variant Camo'},    {'SG_Yltude'},    {'SawedOff_Casino'},    {'SawedOff_Colorboom'},    {'SawedOff_Executioner'},    {'SawedOff_Opal'},    {'SawedOff_Spooky'},    {'SawedOff_Sullys Blacklight'},    {'Scout_Coffin Biter'},    {'Scout_Flowing Mists'},    {'Scout_Hellborn'},    {'Scout_Hot Cocoa'},    {'Scout_Monstruo'},    {'Scout_Neon Regulation'},    {'Scout_Posh'},    {'Scout_Pulse'},    {'Scout_Railgun'},    {'Scout_Theory'},    {'Scout_Xmas'},    {'Sickle_Mummy'},    {'Sickle_Splattered'},    {'Tec9_Charger'},    {'Tec9_Gift Wrapped'},    {'Tec9_Ironline'},    {'Tec9_Performer'},    {'Tec9_Phol'},    {'Tec9_Samurai'},    {'Tec9_Skintech'},    {'Tec9_Stocking Stuffer'},    {'UMP_Death Grip'},    {'UMP_Gum Drop'},    {'UMP_Magma'},    {'UMP_Militia Camo'},    {'UMP_Molten'},    {'UMP_Redline'},    {'USP_Crimson'},    {'USP_Dizzy'},    {'USP_Frostbite'},    {'USP_Holiday'},    {'USP_Jade Dream'},    {'USP_Kraken'},    {'USP_Nighttown'},    {'USP_Paradise'},    {'USP_Racing'},    {'USP_Skull'},    {'USP_Unseen'},    {'USP_Worlds Away'},    {'USP_Yellowbelly'},    {'XM_Artic'},    {'XM_Atomic'},    {'XM_Campfire'},    {'XM_Endless Night'},    {'XM_MK11'},    {'XM_Predator'},    {'XM_Red'},    {'XM_Spectrum'},    {'Handwraps_Wraps'},    {'Sports Glove_Hazard'},    {'Sports Glove_Hallows'},    {'Sports Glove_Majesty'},    {'Strapped Glove_Racer'},    {'trapped Glove_Grim'},    {'trapped Glove_Wisk'},    {'Fingerless Glove_Scapter'},    {'Fingerless Glove_Digital'},    {'Fingerless Glove_Patch'},    {'Handwraps_Guts'},    {'Handwraps_Wetland'},    {'trapped Glove_Molten'},    {'Fingerless_Crystal'},    {'Sports Glove_Royal'},    {'Strapped Glove_Kringle'},    {'Handwraps_MMA'},    {'Sports Glove_Weeb'},    {'Sports Glove_CottonTail'},    {'Sports Glove_RSL'},    {'Handwraps_Ghoul Hex'},    {'Handwraps_Phantom Hex'},    {'Handwraps_Spector Hex'},    {'Handwraps_Orange Hex'},    {'Handwraps_Purple Hex'},    {'Handwraps_Green Hex'}, }  local isUnlocked  local mt = getrawmetatable(game) local oldNamecall = mt.__namecall setreadonly(mt, false)  local isUnlocked  mt.__namecall = newcclosure(function(self, ...)    local args = {...}    if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then        return    end    if getnamecallmethod() == "FireServer" then        if args[1] == LocalPlayer.UserId then            return        end        if string.len(tostring(self)) == 38 then            if not isUnlocked then                isUnlocked = true                for i,v in pairs(allSkins) do                    local doSkip                    for i2,v2 in pairs(args[1]) do                        if v[1] == v2[1] then                            doSkip = true                        end                    end                    if not doSkip then                        table.insert(args[1], v)                    end                end            end            return        end        if tostring(self) == "DataEvent" and args[1][4] then            local currentSkin = string.split(args[1][4][1], "_")[2]            if args[1][2] == "Both" then                LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin                LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin            else                LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin            end        end    end    return oldNamecall(self, ...) end)     setreadonly(mt, true)  Client.CurrentInventory = allSkins  local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone() LocalPlayer.SkinFolder.TFolder:Destroy() LocalPlayer.SkinFolder.CTFolder:Destroy() TClone.Parent = LocalPlayer.SkinFolder CTClone.Parent = LocalPlayer.SkinFolder
   end,
})
