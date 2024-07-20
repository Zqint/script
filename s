local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("🔫QuintWare🔫", "Synapse")
    -- SILENT AIM
    local Silent= Window:NewTab("Silent Aim")
    local SilentAimSection = Silent:NewSection("Silent Aim")
    
SilentAimSection:NewButton("Silent Aim", "Silent Aim", function()
--[[
 ________  ___  ___  ________  ________  ________   ________  ________     
|\   ____\|\  \|\  \|\   __  \|\   __  \|\   __  \ |\   ____\|\   ____\    
\ \  \___|\ \  \\\  \ \  \|\  \ \  \|\  \ \  \|\  \\ \  \___|\ \  \___|    
 \ \_____  \ \   __  \ \   __  \ \   _  _\ \   ____\\ \  \    \ \  \       
  \|____|\  \ \  \ \  \ \  \ \  \ \  \\  \\ \  \___|_\ \  \____\ \  \____  
    ____\_\  \ \__\ \__\ \__\ \__\ \__\\ _\\ \__\ |\__\ \_______\ \_______\
   |\_________\|__|\|__|\|__|\|__|\|__|\|__|\|__| \|__|\|_______|\|_______|
   \|_________|                                                            

                                                                    
.gg/sharpcc
supercoolboi34 @canyoulovemeback
Kai @wxrpedd
--]]

getgenv().SharpSSilent = {
    Enabled = true,
    Prediction = 0.1215,
    Keybind = "F",
    Resolver = false,
    WallCheck = true,
    FovSettings = {
        FovVisible = true,
        FovRadius = 120,
        FovThickness = 1,
        FovTransparency = 0.8,
        FovColor = Color3.fromRGB(0, 255, 255),
        Filled = false,
        FillTransparency = 0.7,
        FovShape = "Circle"  -- ["Circle", "Square", "Triangle"] -- Doesnt Work ATM ig
    },
    HitPoint = {
        ShowHitPoint = false,
        HitPointRadius = 8,
        HitPointThickness = 2,
        HitPointColor = Color3.fromRGB(255, 0, 0),
        HitPointTransparency = 1,
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/supercoolboi34/sharpcc/main/Solara-Silent.lua"))()
    end)


SilentAimSection:NewButton("Silent Aim2(prettygood)", "Silent Aim2", function()

getgenv().SilentAim = {
	Settings = {
		Enabled = true,
		AimPart = "UpperTorso",
		Prediction = 0.165,
		WallCheck = true
	},
	FOV = {
		Enabled = true,
		Size = 40,
		Filled = false,
		Thickness = 0.66,
		Transparency = 0.0,
		Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
	}
}
local lp = game:GetService("Players").LocalPlayer
local cc = game:GetService("Workspace").CurrentCamera
local mouse = lp:GetMouse()
getgenv().PredictionBackUp = getgenv().SilentAim.Settings.Prediction
local cc = game:GetService("Workspace").CurrentCamera
local mouse = lp:GetMouse()

local Utility = {
    Invite = "camlock",
    BackupInvite = "closetcheating",
    Version = "1.0.0a",
    Method = "UpdateMousePos",
    AllowedPlaceIDs = {
        2788229376, -- Da Hood
        7213786345, -- Da Hood VC
        9825515356, -- Hood Customs
        5602055394, -- Hood Modded
        7951883376, -- Hood Modded VC
        12927359803, -- Dah Aim Trainer
        12867571492, -- KatanaHood
        7242996350, -- Da Hood Aim Trainer
        12884917481, -- Da Hood Aim Trainer VC
        11867820563, -- Dae Hood
        12618586930, -- Dat Hood
    }
}

if game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then -- // Da Hood
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 5602055394 or game.PlaceId == 7951883376 then -- // Hood Modded
    Utility.Method = "MousePos"
        MainRemote = game:GetService("ReplicatedStorage").Bullets 
elseif game.PlaceId == 12927359803 then -- // Dah Aim Trainer
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 7242996350 or game.PlaceId == 12884917481 then -- // Da Hood Aim Trainer
    Utility.Method = "UpdateMousePos" 
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 12867571492 then -- // Katana Hood
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 11867820563 then -- // Dae Hood
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
elseif game.PlaceId == 12618586930 then -- // Dat Hood
    Utility.Method = "UpdateMousePos"
        MainRemote = game:GetService("ReplicatedStorage").MainEvent
end

WTS = (function(Object)
	local ObjectVector = cc:WorldToScreenPoint(Object.Position)
	return Vector2.new(ObjectVector.X, ObjectVector.Y)
end)

Filter = (function(obj)
	if (obj:IsA('BasePart')) then
		return true
	end
end)

mousePosVector2 = (function()
	return Vector2.new(mouse.X, mouse.Y) 
end)

getClosestBodyPart = (function()
	local shortestDistance = math.huge
	local bodyPart = nil
	for _, v in next, game.Players:GetPlayers() do
		if (v ~= lp and v.Character and v.Character:FindFirstChild("Humanoid")) then
			for k, x in next, v.Character:GetChildren() do
				if (Filter(x)) then
					local Distance = (WTS(x) - mousePosVector2()).magnitude
					if (Distance < shortestDistance) then
						shortestDistance = Distance
						bodyPart = x
					end
				end
			end
		end
	end
	return bodyPart
end)
local FOVCircle = Drawing.new("Circle")
function updateFOV()
	FOVCircle.Radius = SilentAim.FOV.Size * 3
	FOVCircle.Visible = SilentAim.FOV.Enabled
	FOVCircle.Transparency = SilentAim.FOV.Transparency
	FOVCircle.Filled = SilentAim.FOV.Filled
	FOVCircle.Color = SilentAim.FOV.Color
	FOVCircle.Thickness = SilentAim.FOV.Thickness
	FOVCircle.Position = Vector2.new(game:GetService("UserInputService"):GetMouseLocation().X, game:GetService("UserInputService"):GetMouseLocation().Y)
	return FOVCircle
end

local plrService = game:GetService("Players")
local localPlr = plrService.LocalPlayer
local mouseLocal = localPlr:GetMouse()
local Players, Client, Mouse, Camera =
    game:GetService("Players"),
    game:GetService("Players").LocalPlayer,
    game:GetService("Players").LocalPlayer:GetMouse(),
    game:GetService("Workspace").CurrentCamera


function wallCheck(destination, ignore)
	if (getgenv().SilentAim.Settings.WallCheck) then
		local Origin = Camera.CFrame.p
		local CheckRay = Ray.new(Origin, destination - Origin)
		local Hit = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(CheckRay, ignore)
		return Hit == nil
	else
		return true
	end
end

function getClosestPlayerToCursor()
	closestDist = SilentAim.FOV.Size * 3.47
	closestPlr = nil;
	for i, v in next, plrService:GetPlayers() do
		pcall(function()
			local notKO = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true;
			local notGrabbed = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
			if v ~= localPlr and v.Character and v.Character.Humanoid.Health > 0 and notKO and notGrabbed then
				local screenPos, cameraVisible = Camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
				if cameraVisible then
					local distToMouse = (Vector2.new(mouseLocal.X, mouseLocal.Y) - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
					if distToMouse < closestDist and wallCheck(v.Character.Head.Position, {
						game:GetService("Players").LocalPlayer,
						v.Character
					}) then
						closestPlr = v
						closestDist = distToMouse
					end
				end
			end
		end)
	end
	return closestPlr, closestDist
end

spawn(function()
	while wait() do
		Plr = getClosestPlayerToCursor()
	end
end)

spawn(function()
	while wait() do
		if Plr ~= nil and Plr.Character.Humanoid.FloorMaterial ~= Enum.Material.Air then
			local Ping = math.floor(game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
			getgenv().SilentAim.Settings.Prediction = Ping / 1000 + 0.07
		end
	end
end)

game:GetService("RunService").Heartbeat:connect(function()
	updateFOV()
end)

game.Players.LocalPlayer.Character.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") then -- add a better check for if the tool is a weapon 
        tool.Activated:Connect(function() -- fuck a :Disconnect lol
			if Plr ~= nil then
            	game:GetService("ReplicatedStorage").MainEvent:FireServer(Utility.Method, Plr.Character[SilentAim.Settings.AimPart].Position + (Plr.Character[SilentAim.Settings.AimPart].Velocity * SilentAim.Settings.Prediction))
			end
        end)
    end
end)
   end)


-- AIM LOCK
    local Aim = Window:NewTab("Aimlock")
    local AimSection = Aim:NewSection("Aimlock")

AimSection:NewButton("ChatGPT Aimbot(Q)", "Aimbot", function()
    print("Clicked")-- Settings
local fov = 100
local aimbotKey = Enum.KeyCode.Q

-- Services
local players = game:GetService("Players")
local runService = game:GetService("RunService")
local uis = game:GetService("UserInputService")

-- Local Player
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera

-- Function to get a player within FOV radius
local function getPlayerWithinFOV()
    for _, player in pairs(players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local head = player.Character.Head
            local screenPoint = camera:WorldToScreenPoint(head.Position)
            local distance = (Vector2.new(screenPoint.X, screenPoint.Y) - uis:GetMouseLocation()).Magnitude

            if distance < fov then
                return player
            end
        end
    end
    return nil
end

-- Aimbot Function
local function aimAt(player)
    if player and player.Character and player.Character:FindFirstChild("Head") then
        local head = player.Character.Head
        camera.CFrame = CFrame.new(camera.CFrame.Position, head.Position)
    end
end

-- Variables to track aimbot state and current target
local aimbotActive = false
local currentTarget = nil

-- Listen for key press to toggle aimbot
uis.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == aimbotKey then
        aimbotActive = not aimbotActive
        if not aimbotActive then
            currentTarget = nil
        end
    end
end)

-- Main loop to keep aimbot active when toggled on
runService.RenderStepped:Connect(function()
    if aimbotActive then
        if currentTarget == nil then
            currentTarget = getPlayerWithinFOV()
        end
        aimAt(currentTarget)
    end
end)
end)

AimSection:NewButton("Best Lock(Q)", "Aimbot", function()
getgenv().OldAimPart = "HumanoidRootPart"
getgenv().AimPart = "HumanoidRootPart" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}  
    getgenv().AimlockKey = "q" -- change to whatver u want make sure its lowercase
    getgenv().AimRadius = 500 -- How far away from someones character you want to lock on at
    getgenv().ThirdPerson = true 
    getgenv().FirstPerson = true
    getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
    getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
    getgenv().PredictionVelocity = 6.18
    getgenv().CheckIfJumped = true
    getgenv().Smoothness = false
    getgenv().SmoothnessAmount = 0.5

    local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
    local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
    local Aimlock, MousePressed, CanNotify = true, false, false;
    local AimlockTarget;
    local OldPre;
    

    
    getgenv().WorldToViewportPoint = function(P)
        return Camera:WorldToViewportPoint(P)
    end
    
    getgenv().WorldToScreenPoint = function(P)
        return Camera.WorldToScreenPoint(Camera, P)
    end
    
    getgenv().GetObscuringObjects = function(T)
        if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then 
            local RayPos = workspace:FindPartOnRay(RNew(
                T[getgenv().AimPart].Position, Client.Character.Head.Position)
            )
            if RayPos then return RayPos:IsDescendantOf(T) end
        end
    end
    
    getgenv().GetNearestTarget = function()
        -- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
        local players = {}
        local PLAYER_HOLD  = {}
        local DISTANCES = {}
        for i, v in pairs(Players:GetPlayers()) do
            if v ~= Client then
                table.insert(players, v)
            end
        end
        for i, v in pairs(players) do
            if v.Character ~= nil then
                local AIM = v.Character:FindFirstChild("Head")
                if getgenv().TeamCheck == true and v.Team ~= Client.Team then
                    local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                    local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                    local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                    local DIFF = math.floor((POS - AIM.Position).magnitude)
                    PLAYER_HOLD[v.Name .. i] = {}
                    PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                    PLAYER_HOLD[v.Name .. i].plr = v
                    PLAYER_HOLD[v.Name .. i].diff = DIFF
                    table.insert(DISTANCES, DIFF)
                elseif getgenv().TeamCheck == false and v.Team == Client.Team then 
                    local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
                    local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
                    local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
                    local DIFF = math.floor((POS - AIM.Position).magnitude)
                    PLAYER_HOLD[v.Name .. i] = {}
                    PLAYER_HOLD[v.Name .. i].dist= DISTANCE
                    PLAYER_HOLD[v.Name .. i].plr = v
                    PLAYER_HOLD[v.Name .. i].diff = DIFF
                    table.insert(DISTANCES, DIFF)
                end
            end
        end
        
        if unpack(DISTANCES) == nil then
            return nil
        end
        
        local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
        if L_DISTANCE > getgenv().AimRadius then
            return nil
        end
        
        for i, v in pairs(PLAYER_HOLD) do
            if v.diff == L_DISTANCE then
                return v.plr
            end
        end
        return nil
    end
    
    Mouse.KeyDown:Connect(function(a)
        if not (Uis:GetFocusedTextBox()) then 
            if a == AimlockKey and AimlockTarget == nil then
                pcall(function()
                    if MousePressed ~= true then MousePressed = true end 
                    local Target;Target = GetNearestTarget()
                    if Target ~= nil then 
                        AimlockTarget = Target
                    end
                end)
            elseif a == AimlockKey and AimlockTarget ~= nil then
                if AimlockTarget ~= nil then AimlockTarget = nil end
                if MousePressed ~= false then 
                    MousePressed = false 
                end
            end
        end
    end)
    
    RService.RenderStepped:Connect(function()
        if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then 
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
                CanNotify = true 
            else 
                CanNotify = false 
            end
        elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then 
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then 
                CanNotify = true 
            else 
                CanNotify = false 
            end
        elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then 
            if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
                CanNotify = true 
            else 
                CanNotify = false 
            end
        end
        if Aimlock == true and MousePressed == true then 
            if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then 
                if getgenv().FirstPerson == true then
                    if CanNotify == true then
                        if getgenv().PredictMovement == true then
                            if getgenv().Smoothness == true then
                                --// The part we're going to lerp/smoothen \\--
                                local Main = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                                
                                --// Making it work \\--
                                Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                            else
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
                            end
                        elseif getgenv().PredictMovement == false then 
                            if getgenv().Smoothness == true then
                                --// The part we're going to lerp/smoothen \\--
                                local Main = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)

                                --// Making it work \\--
                                Camera.CFrame = Camera.CFrame:Lerp(Main, getgenv().SmoothnessAmount, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                            else
                                Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
                            end
                        end
                    end
                end
            end
        end
         if CheckIfJumped == true then
       if AimlockTarget.Character.HuDDDDDDDDDDWmanoid.FloorMaterial == Enum.Material.Air then
    
           getgenv().AimPart = "UpperTorso"
       else
         getgenv().AimPart = getgenv().OldAimPart

       end
    end
end)
    end)
        
      -- Player
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Exploits")


PlayerSection:NewSlider("FOV", "Adjust your Field of View", 120, 70, function(value)
    -- Change the FOV of the player's camera
    game.Workspace.CurrentCamera.FieldOfView = value
end)

PlayerSection:NewButton("StretchRes", "Streches your screen", function()
getgenv().Resolution = {
    [".gg/scripters"] = 0.65
}

local Camera = workspace.CurrentCamera
if getgenv().gg_scripters == nil then
    game:GetService("RunService").RenderStepped:Connect(
        function()
            Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().Resolution[".gg/scripters"], 0, 0, 0, 1)
        end
    )
end
getgenv().gg_scripters = "Aori0001"
end)

PlayerSection:NewButton("Esp", "Sees Where People Are", function()
local Esp = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/x114/RobloxScripts/main/OpenSourceEsp"))()
-- Boxes --
Esp.Box = true
Esp.BoxColor = Color3.fromRGB(255,255,255)
Esp.BoxOutline = true
Esp.BoxOutlineColor = Color3.fromRGB(0,0,0)
-- HealthBars --
Esp.HealthBar = true
Esp.HealthBarSide = "Left" -- Left,Bottom,Right
end)

PlayerSection:NewButton("Fly (X)(DTC IN DH DO NOT USE) J/L to i/d", "Fly", function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local uis = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local camera = workspace.CurrentCamera

local flying = false
local speed = 50  -- Default speed
local maxSpeed = 1000  -- Maximum speed
local acceleration = 50  -- Speed increase rate
local bodyVelocity, bodyGyro

local function startFlying()
    bodyVelocity = Instance.new("BodyVelocity")
    bodyGyro = Instance.new("BodyGyro")
    
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    
    bodyGyro.CFrame = humanoidRootPart.CFrame
    bodyGyro.MaxTorque = Vector3.new(100000, 100000, 100000)
    bodyGyro.P = 3000
    
    bodyVelocity.Parent = humanoidRootPart
    bodyGyro.Parent = humanoidRootPart

    humanoid.PlatformStand = true

    local function flyStep()
        local direction = Vector3.new()
        
        if uis:IsKeyDown(Enum.KeyCode.W) then
            direction = direction + (camera.CFrame.LookVector * speed)
        end
        if uis:IsKeyDown(Enum.KeyCode.S) then
            direction = direction - (camera.CFrame.LookVector * speed)
        end
        if uis:IsKeyDown(Enum.KeyCode.A) then
            direction = direction - (camera.CFrame.RightVector * speed)
        end
        if uis:IsKeyDown(Enum.KeyCode.D) then
            direction = direction + (camera.CFrame.RightVector * speed)
        end
        if uis:IsKeyDown(Enum.KeyCode.Space) then
            direction = direction + (camera.CFrame.UpVector * speed)
        end
        if uis:IsKeyDown(Enum.KeyCode.LeftShift) then
            direction = direction - (camera.CFrame.UpVector * speed)
        end
        
        bodyVelocity.Velocity = direction
        bodyGyro.CFrame = camera.CFrame
    end
    
    runService.RenderStepped:Connect(flyStep)
end

local function stopFlying()
    humanoid.PlatformStand = false
    bodyVelocity:Destroy()
    bodyGyro:Destroy()
end

local function increaseSpeed()
    speed = math.min(speed + acceleration, maxSpeed)
end

local function decreaseSpeed()
    speed = math.max(speed - acceleration, 0)
end

local function toggleFly()
    flying = not flying
    if flying then
        startFlying()
    else
        stopFlying()
    end
end

uis.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.X then
        toggleFly()
    elseif input.KeyCode == Enum.KeyCode.J then
        increaseSpeed()
    elseif input.KeyCode == Enum.KeyCode.L then
        decreaseSpeed()
    end
end)

    end)
PlayerSection:NewButton("TrashTalk(T)", "T", function()
 local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "ur bad";
    "sonney boy";
    "ez";
    "my grandma has more skill than you";
    "seed";
    "sit son";
    "trash";
    "LOL";
    "LMAO";
    "imagine being you right now";
    "xd";
    "don't try LOL";
    "you lose";
    "why do you even try";
    "I didn't think being this bad was possible";
    "leave";
    "no skill";
    "so sad man.";
    "bad";
    "you're nothing";
    "lol";
    "so trash";
    "so bad";
    "ur salty";
    "salty";
    "look he's mad";
    "cry more";
    "keep crying";
    "cry baby";
    "hahaha I won";
    "no one likes u";
    "run 1s seed";
    "thank you for your time";
    "you were so close!";
    "better luck next time!";
    "rodent";
    "HAHA";
    "ill 5-0";
    "just quit";
    "time to take out the trash";
    "did you get worse?";
    "I'm surprised you haven't quit yet";











}


function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.T and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)
end)
        
PlayerSection:NewButton("Fly2/dhfly", "fly2", function()
loadstring(game:HttpGet("https://pastebin.com/raw/sUA9m6M6"))()
end)

PlayerSection:NewButton("Speed", "SPEEEDDD", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/backupspeedtool/main/backupspeedtool", true))()
end)

PlayerSection:NewButton("SpinBot", "SpinsYou", function()
local player = game.Players.LocalPlayer
local runService = game:GetService("RunService")
local humanoidRootPart = player.Character:WaitForChild("HumanoidRootPart")

local spinning = false

local function toggleSpin()
    spinning = not spinning
    if spinning then
        runService.RenderStepped:Connect(function()
            humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(10), 0)
        end)
    else
        -- Reset the rotation to default
        humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position)
    end
end

-- Toggle spinning with the "G" key
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.G then
        toggleSpin()
    end
end)
end)
    --Teleport
local Teleport = Window:NewTab("Teleport")
local TeleportSection = Teleport:NewSection("Teleport")

TeleportSection:NewButton("Bank(DHM)", "TP TO BANK", function()
local player = game.Players.LocalPlayer
local bankPosition = Vector3.new(-2345.9, 404.3, -945.4) -- Example coordinates for the bank

-- Function to teleport player
local function teleportToBank()
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(bankPosition)
    else
        warn("Player or HumanoidRootPart not found!")
    end
end

-- Execute the teleport
teleportToBank()

end)

TeleportSection:NewButton("Revolver(DHM)", "TP TO Revolver", function()
        local player = game.Players.LocalPlayer
local bankPosition = Vector3.new(-2571.5, 402.3, -781.9) -- Example coordinates for the bank

-- Function to teleport player
local function teleportToRevolver()
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(bankPosition)
    else
        warn("Player or HumanoidRootPart not found!")
    end
end

-- Execute the teleport
teleportToRevolver()
    end)

TeleportSection:NewButton("DB(DHM)", "TP TO DB", function()
        local player = game.Players.LocalPlayer
local bankPosition = Vector3.new(-2970.6, 402.3, -920.2) -- Example coordinates for the bank

-- Function to teleport player
local function teleportToDB()
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(bankPosition)
    else
        warn("Player or HumanoidRootPart not found!")
    end
end

-- Execute the teleport
teleportToDB()
    end)


TeleportSection:NewButton("TAC(DHM)", "TP TO TAC", function()
        local player = game.Players.LocalPlayer
local bankPosition = Vector3.new(-2507.863525390625, 388.9540100097656, -1385.345947265625) -- Example coordinates for the bank

-- Function to teleport player
local function teleportToDB()
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(bankPosition)
    else
        warn("Player or HumanoidRootPart not found!")
    end
end

-- Execute the teleport
teleportToDB()
    end)




TeleportSection:NewButton("Shotgun(DHM)", "TP TO Shotgun", function()
        local player = game.Players.LocalPlayer
local bankPosition = Vector3.new(-2506.63134765625, 388.9540710449219, -1407.5888671875) -- Example coordinates for the bank

-- Function to teleport player
local function teleportToDB()
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(bankPosition)
    else
        warn("Player or HumanoidRootPart not found!")
    end
end

-- Execute the teleport
teleportToDB()
    end)





TeleportSection:NewButton("SMG(DHM)", "TP TO SMG", function()
        local player = game.Players.LocalPlayer
local bankPosition = Vector3.new(-2519.57470703125, 388.9540100097656, -1399.146728515625) -- Example coordinates for the bank

-- Function to teleport player
local function teleportToDB()
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(bankPosition)
    else
        warn("Player or HumanoidRootPart not found!")
    end
end

-- Execute the teleport
teleportToDB()
    end)




TeleportSection:NewButton("LMG(DHM)", "TP TO LMG", function()
        local player = game.Players.LocalPlayer
local bankPosition = Vector3.new(-2544.459716796875, 403.6349792480469, -962.2954711914062) -- Example coordinates for the bank

-- Function to teleport player
local function teleportToDB()
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(bankPosition)
    else
        warn("Player or HumanoidRootPart not found!")
    end
end

-- Execute the teleport
teleportToDB()
    end)



TeleportSection:NewButton("ADIMBASE(DHM)", "TP TO ADMINBASE", function()
        local player = game.Players.LocalPlayer
local bankPosition = Vector3.new(-2798.2568359375, 347.9902038574219, -1303.121337890625) -- Example coordinates for the bank

-- Function to teleport player
local function teleportToDB()
    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(bankPosition)
    else
        warn("Player or HumanoidRootPart not found!")
    end
end

-- Execute the teleport
teleportToDB()
    end)


TeleportSection:NewButton("DB(DH)", "TP TO DB", function()
getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end)

TeleportSection:NewButton("Revolver(DH)", "TP TO Revolver", function()
  getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end)

TeleportSection:NewButton("Shotgun(DH)", "TP TO shotgun", function()
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    end)

TeleportSection:NewButton("TAC(DH)", "TP TO TAc", function()
 getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135e-08, -0.000604254019, 0.999999821, -8.63220048e-05, -2.60802135e-08, 8.63220048e-05, 1)
end)

TeleportSection:NewButton("SMG(DH)", "TP TO SMG", function()

    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            end)

TeleportSection:NewButton("LMG(DH)", "TP TO LMG", function()

    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-621.0081787109375, 23.24573516845703, -300.8226013183594)
            end)

TeleportSection:NewButton("FOOD(DH)", "TP TO FOOD", function()

    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-326.1849670410156, 23.682641983032227, -291.3046569824219)
            end)


local Limiteds = Window:NewTab("Fake Limiteds")
local LimitedsSection = Limiteds:NewSection("FakeLimiteds")

LimitedsSection:NewButton("limitedsScript", "fakelimiteds", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/fakelimitedsv2/main/fakelimitedsv2", true))()
end)


local SkinChanger = Window:NewTab("SkinChanger")
local SkinChangerSection = SkinChanger:NewSection("SkinChanger")

SkinChangerSection:NewButton("SkinChanger(check inv when execute)", "Skinchanger", function()
local InventoryChanger = { Functions = {}, Selected = {}, Skins = {}, Owned = {} };

do
    local Utilities = {};

    function cout(watermark, message)
        if not LPH_OBFUSCATED then
            return print('['..watermark..']', message);
        end;
    end;

    cout('Inventory Changer', 'Executor initialization test message')

    if not getgenv().InventoryConnections then
        getgenv().InventoryConnections = {};
    end;

    local players = game:GetService('Players');
    local client = players.LocalPlayer;

    local tween_service = game:GetService('TweenService');

    Utilities.AddConnection = function(signal, func)
        local connect = signal:Connect(func);

        table.insert(getgenv().InventoryConnections, { signal = signal, func = func, connect = connect });
        return connect;
    end;

    Utilities.Unload = function()
        for _, tbl in ipairs(getgenv().InventoryConnections) do
            if type(tbl) ~= 'table' then 
                tbl:Disconnect();
            end
        end;

        getgenv().InventoryConnections = {};
    end;

    Utilities.Unload();

    Utilities.Tween = function(args)
        local obj = args.obj or args.object;
        local prop = args.prop or args.properties;
        local duration = args.duration or args.time;
        local info = args.info or args.tween_info;
        local callback = args.callback;

        local tween = tween_service:Create(obj, duration and TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out) or info and TweenInfo.new(unpack(info)), prop);
        tween:Play();

        if callback then
            tween.Completed:Connect(callback);
        end;
    end;

    repeat task.wait() until client.Character:FindFirstChild('FULLY_LOADED_CHAR');

    local player_gui = client.PlayerGui;

    local main_gui = player_gui:WaitForChild('MainScreenGui');
    local crew = main_gui:WaitForChild('Crew');
    local bottom_left = crew:WaitForChild('BottomLeft').Frame;
    local skins_button = bottom_left:WaitForChild('Skins');

    local replicated_storage = game:GetService('ReplicatedStorage');
    local skin_modules = replicated_storage:WaitForChild('SkinModules');
    local meshes = skin_modules:WaitForChild('Meshes');

    local weapon_skins_gui = main_gui:WaitForChild('WeaponSkinsGUI');
    local gui_body_wrapper = weapon_skins_gui:WaitForChild('Body');
    local body_wrapper = gui_body_wrapper:WaitForChild('Wrapper');
    local skin_view = body_wrapper:WaitForChild('SkinView');
    local skin_view_frame = skin_view:WaitForChild('Frame');

    local guns = skin_view_frame:WaitForChild('Guns').Contents;
    local entries = skin_view_frame:WaitForChild('Skins').Contents.Entries;

    local Ignored = workspace.Ignored;
    local Siren = Ignored.Siren;
    local Radius = Siren.Radius;

    local regex = '%[(.-)%]';

    local newColorSequence = ColorSequence.new;
    local Color3fromRGB = Color3.fromRGB;
    local newCFrame = CFrame.new;
    local newColorSequenceKeypoint = ColorSequenceKeypoint.new;

    InventoryChanger.Skins = {
        ['Mystical'] = {
            tween_duration = 0.65,
            beam_width = 0.125,
            color = newColorSequence(Color3fromRGB(255, 39, 24)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.Mystical.Revolver,
                    equipped = false,
                    shoot_sound = 'rbxassetid://14489866118',
                    C0 = newCFrame(-0.015838623, -0.0802496076, 0.00772094727, 1, 0, 4.37113883e-08, 0, 1, 0, -4.37113883e-08, 0, 1)
                }
            }
        },
        ['CyanPack'] = {
            mesh_location = meshes.CyanPack,
            guns = {
                ['[TacticalShotgun]'] = {
                    location = meshes.CyanPack.Cloud,
                    equipped = false,
                    shoot_sound = 'rbxassetid://14056055126',
                    C0 = newCFrame(0.0441589355, -0.0269355774, -0.000701904297, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.CyanPack.DB,
                    equipped = false,
                    shoot_sound = 'rbxassetid://14056053588',
                    C0 = newCFrame(-0.00828552246, 0.417651355, -0.00537109375, 4.18358377e-06, -1.62920685e-07, 1, 3.4104116e-13, 1, 1.62920685e-07, -1, 3.41041052e-13, -4.18358377e-06)
                },
                ['[Revolver]'] = {
                    location = meshes.CyanPack.Devil,
                    equipped = false,
                    shoot_sound = 'rbxassetid://14056056444',
                    C0 = newCFrame(0.0185699463, 0.293397784, -0.00256347656, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                }
            }
        },
        ['Cartoon'] = {
            guns = {
                ['[Flamethrower]'] = {
                    location = meshes.Cartoon.CartoonFT,
                    equipped = false,
                    C0 = newCFrame(-0.272186279, 0.197086751, 0.0440063477, -1, 4.8018768e-07, 8.7078952e-08, 4.80187623e-07, 1, -3.54779985e-07, -8.70791226e-08, -3.54779957e-07, -1)
                },
                ['[Revolver]'] = {
                    location = meshes.Cartoon.CartoonRev,
                    equipped = false,
                    shoot_sound = 'rbxassetid://14221101923',
                    C0 = newCFrame(-0.015411377, 0.0135096312, 0.00338745117, 1.00000095, 3.41326549e-13, 2.84217399e-14, 3.41326549e-13, 1.00000191, -9.89490712e-10, 2.84217399e-14, -9.89490712e-10, 1.00000191)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.Cartoon.DBCartoon,
                    equipped = false,
                    shoot_sound = 'rbxassetid://14220912852',
                    C0 = newCFrame(0.00927734375, -0.00691050291, 0.000732421875, -1, -2.79396772e-08, -9.31322797e-10, -2.79396772e-08, 1, 1.42607872e-08, 9.31322575e-10, 1.42607872e-08, -1)
                },
                ['[RPG]'] = {
                    location = meshes.Cartoon.RPGCartoon,
                    equipped = false,
                    C0 = newCFrame(-0.0201721191, 0.289476752, -0.0727844238, 4.37113883e-08, 6.58276836e-37, 1, -5.72632016e-14, 1, 2.50305399e-21, -1, 5.72632016e-14, 4.37113883e-08)
                },
            }
        },
        ['Dragon'] = {
            color = newColorSequence(Color3.new(1, 0, 0)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.Dragon.DragonRev,
                    equipped = false,
                    C0 = newCFrame(0.0384216309, 0.0450432301, -0.000671386719, 1.87045402e-31, 4.21188801e-16, -0.99999994, 1.77635684e-15, 1, -4.21188827e-16, 1, 1.77635684e-15, -1.87045413e-31)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.Dragon.DBDragon,
                    equipped = false,
                    C0 = newCFrame(-0.123794556, 0.0481165648, 0.00048828125, 7.14693442e-07, 3.13283705e-10, 1, -4.56658222e-09, 1, -3.13281678e-10, -1, -4.56658533e-09, 7.14693442e-07)
                }
            }
        },
        ['Tact'] = {
            tween_duration = 1.25,
            beam_width = 0.125,
            color = newColorSequence(Color3.new(1, 0.3725490196, 0.3725490196)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.Tact.Rev,
                    equipped = false,
                    shoot_sound = 'rbxassetid://13850086195',
                    C0 = newCFrame(-0.318634033, -0.055095911, 0.00491333008, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.Tact.DB,
                    equipped = false,
                    C0 = newCFrame(-0.0701141357, -0.0506889224, -0.0826416016, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                },
                ['[TacticalShotgun]'] = {
                    location = meshes.Tact.Tact,
                    equipped = false,
                    C0 = newCFrame(-0.0687713623, -0.0684046745, 0.12701416, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                },
                ['[SMG]'] = {
                    location = meshes.Tact.Uzi,
                    equipped = false,
                    C0 = newCFrame(0.0408782959, 0.0827783346, -0.0423583984, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                },
                ['[Shotgun]'] = {
                    location = meshes.Tact.Shotgun,
                    equipped = false,
                    C0 = newCFrame(-0.0610046387, 0.171100497, -0.00495910645, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Silencer]'] = {
                    location = meshes.Tact.Silencer,
                    equipped = false,
                    C0 = newCFrame(0.0766601562, -0.0350288749, -0.648864746, 1, 0, -4.37113883e-08, 0, 1, 0, 4.37113883e-08, 0, 1)
                }
            }
        },
        ['Shadow'] = {
            color = newColorSequence(Color3.new(0.560784, 0.470588, 1), Color3.new(0.576471, 0.380392, 1)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.Shadow.RevolverGhost,
                    equipped = false,
                    C0 = newCFrame(1.52587891e-05, 0, 0, 1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, 1)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.Shadow.DoubleBGhost,
                    equipped = false,
                    C0 = newCFrame(0.0250015259, -0.077037394, 0, 1, 0, 0, 0, 0.999998331, 0, 0, 0, 1)
                },
                ['[AK47]'] = {
                    location = meshes.Shadow.AK47Ghost,
                    equipped = false,
                    C0 = newCFrame(-0.750015259, 4.76837158e-07, -3.05175781e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[SilencerAR]'] = {
                    location = meshes.Shadow.ARGhost,
                    equipped = false,
                    C0 = newCFrame(0.116256714, 0.0750004649, 6.10351562e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[AUG]'] = {
                    location = meshes.Shadow.AUGGhost,
                    equipped = false,
                    C0 = newCFrame(-7.62939453e-06, 0.0499991775, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[DrumGun]'] = {
                    location = meshes.Shadow.DrumgunGhost,
                    equipped = false,
                    C0 = newCFrame(1.14440918e-05, 0, 0, 1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, 1)
                },
                ['[Flamethrower]'] = {
                    location = meshes.Shadow.FlamethrowerGhost,
                    equipped = false,
                    C0 = newCFrame(-0.219947815, 0.339559376, 0.000274658203, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Glock]'] = {
                    location = meshes.Shadow.GlockGhost,
                    equipped = false,
                    C0 = newCFrame(0, 0, -0.200004578, 1, 0, 4.37113883e-08, 0, 1, 0, -4.37113883e-08, 0, 1)
                },
                ['[LMG]'] = {
                    location = meshes.Shadow.LMGGhost,
                    equipped = false,
                    C0 = newCFrame(0.374502182, -0.25, -0.25, -1, 0, -1.31134158e-07, 0, 1, 0, 1.31134158e-07, 0, -1)
                },
                ['[P90]'] = {
                    location = meshes.Shadow.P90Ghost,
                    equipped = false,
                    C0 = newCFrame(6.86645508e-05, 0.000218153, 3.05175781e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[RPG]'] = {
                    location = meshes.Shadow.RPGGhost,
                    equipped = false,
                    C0 = newCFrame(0.000122070312, 0.0625389814, 0.00672149658, 1, 0, -8.74227766e-08, 5.00610797e-21, 1, 5.72632016e-14, 8.74227766e-08, 5.72632016e-14, 1)
                },
                ['[Rifle]'] = {
                    location = meshes.Shadow.RifleGhost,
                    equipped = false,
                    C0 = newCFrame(0.000244140625, -0.100267321, -9.15527344e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[SMG]'] = {
                    location = meshes.Shadow.SMGGhost,
                    equipped = false,
                    C0 = newCFrame(-1.14440918e-05, 1.78813934e-07, -0.0263671875, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Shotgun]'] = {
                    location = meshes.Shadow.ShotgunGhost,
                    equipped = false,
                    C0 = newCFrame(3.05175781e-05, 0.199999928, 3.81469727e-06, -1, 0, -4.37113883e-08, 0, 1, 0, 4.37113883e-08, 0, -1)
                },
                ['[TacticalShotgun]'] = {
                    location = meshes.Shadow.TacticalShotgunGhost,
                    equipped = false,
                    C0 = newCFrame(-0.148262024, 0, 0, 1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, 1)
                }
            }
        },
        ['Golden Age'] = {
            tween_duration = 1.25,
            beam_width = 0.125,
            color = newColorSequence(Color3.fromHSV(0.89166666666, 0.24, 1)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.GoldenAge.Revolver,
                    equipped = false,
                    C0 = newCFrame(0.0295257568, 0.0725820661, -0.000946044922, 1, -4.89858741e-16, -7.98081238e-23, 4.89858741e-16, 1, 3.2584137e-07, -7.98081238e-23, -3.2584137e-07, 1),
                    shoot_sound = 'rbxassetid://1898322396'
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.GoldenAge['Double Barrel'],
                    equipped = false,
                    shoot_sound = 'rbxassetid://4915503055',
                    C0 = newCFrame(-0.00664520264, 0.0538104773, 0.0124816895, -1, 4.89858741e-16, 7.98081238e-23, 4.89858741e-16, 1, 3.2584137e-07, 7.98081238e-23, 3.2584137e-07, -1)
                }
            }
        },
        ['Red Skull'] = {
            color = newColorSequence(Color3.new(0.917647, 0, 0)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.RedSkull.RedSkullRev,
                    equipped = false,
                    C0 = newCFrame(-0.0043258667, 0.0084195137, -0.00238037109, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                },
                ['[Shotgun]'] = {
                    location = meshes.RedSkull.RedSkullRev,
                    equipped = false,
                    C0 = newCFrame(-0.00326538086, 0.0239292979, -0.039352417, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.RedSkull.RedSkullRev,
                    equipped = false,
                    C0 = newCFrame(-0.0143432617, -0.151709318, 0.00820922852, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                },
                ['[RPG]'] = {
                    location = meshes.RedSkull.RedSkullRev,
                    equipped = false,
                    C0 = newCFrame(-0.00149536133, 0.254377961, 0.804840088, -1, 0, 4.37113883e-08, -2.50305399e-21, 1, -5.72632016e-14, -4.37113883e-08, 5.72632016e-14, -1)
                }
            }
        },
        --[[['Galaxy'] = {
            border_color = newColorSequence(Color3.new(0, 0, 1)),
            particle = {
                properties = {
                    Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.new(0.419608, 0.376471, 1)),
                        ColorSequenceKeypoint.new(1, Color3.new(0.419608, 0.376471, 1))
                    }),
                    Name = 'Galaxy',
                    Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.5),
                        NumberSequenceKeypoint.new(0.496, 1.2),
                        NumberSequenceKeypoint.new(1, 0.5)
                    }),
                    Squash = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.173364, 0.525),
                        NumberSequenceKeypoint.new(0.584386, -1.7625),
                        NumberSequenceKeypoint.new(0.98163, 0.0749998),
                        NumberSequenceKeypoint.new(1, 0)
                    }),
                    Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.107922, 1),
                        NumberSequenceKeypoint.new(0.391504, 0.25),
                        NumberSequenceKeypoint.new(0.670494, 0.78125),
                        NumberSequenceKeypoint.new(0.845006, 0),
                        NumberSequenceKeypoint.new(1, 1)
                    }),
                    Texture = 'rbxassetid://7422600824',
                    ZOffset = 1,
                    LightEmission = 0.7,
                    Lifetime = NumberRange.new(1, 1),
                    Rate = 3,
                    Rotation = NumberRange.new(0, 360),
                    RotSpeed = NumberRange.new(0, 15),
                    Speed = NumberRange.new(1, 1),
                    SpreadAngle = Vector2.new(-45, 45)
                }
            },
            guns = {
                ['[Revolver]'] = {
                    texture = 'rbxassetid://9370936730'
                },
                ['[TacticalShotgun]'] = {
                    texture = 'rbxassetid://9402279010'
                }
            }
        },]]
        ['Kitty'] = {
            tween_duration = 1,
            beam_width = 0.125,
            color = newColorSequence(Color3.new(1, 0.690196, 0.882353), Color3.new(1, 0.929412, 0.964706)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.Kitty.KittyRevolver,
                    equipped = false,
                    shoot_sound = 'rbxassetid://13483022860',
                    C0 = newCFrame(0.0310440063, 0.0737591386, 0.0226745605, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Flamethrower]'] = {
                    location = meshes.Kitty.KittyFT,
                    equipped = false,
                    C0 = newCFrame(-0.265670776, 0.115545571, 0.00997924805, -1, 9.74078034e-21, 5.47124086e-13, 9.74092898e-21, 1, 3.12638804e-13, -5.47126309e-13, 3.12638804e-13, -1)
                },
                ['[RPG]'] = {
                    location = meshes.Kitty.KittyRPG,
                    equipped = false,
                    C0 = newCFrame(0.0268554688, 0.0252066851, 0.117408752, -1, 2.51111284e-40, 4.37113883e-08, -3.7545812e-20, 1, -8.58948004e-13, -4.37113883e-08, 8.58948004e-13, -1)
                },
                ['[Shotgun]'] = {
                    location = meshes.Kitty.KittyShotgun,
                    equipped = false,
                    shoot_sound = 'rbxassetid://13483035672',
                    C0 = newCFrame(0.0233459473, 0.223892093, -0.0213623047, 4.37118963e-08, -6.53699317e-13, 1, 3.47284736e-20, 1, 7.38964445e-13, -0.999997139, 8.69506734e-21, 4.37119354e-08)
                }
            }
        },
        ['Toy'] = {
            mesh_location = meshes.Toy,
            tween_duration = 1.25,
            color = newColorSequence({newColorSequenceKeypoint(0, Color3.new(0, 1, 0)), ColorSequenceKeypoint.new(0.5, Color3.new(0.666667, 0.333333, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.666667, 0))}),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.Toy.RevolverTOY,
                    equipped = false,
                    C0 = newCFrame(-0.0250854492, -0.144362092, -0.00266647339, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[LMG]'] = {
                    location = meshes.Toy.LMGTOY,
                    equipped = false,
                    C0 = newCFrame(-0.285247803, -0.0942560434, -0.270412445, 1, 0, 4.37113883e-08, 0, 1, 0, -4.37113883e-08, 0, 1)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.Toy.DBToy,
                    equipped = false,
                    C0 = newCFrame(-0.0484313965, -0.00164616108, -0.0190467834, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                },
                ['[RPG]'] = {
                    location = meshes.Toy.RPGToy,
                    equipped = false,
                    C0 = newCFrame(0.00121307373, 0.261434197, -0.318969727, 1, 2.5768439e-12, -4.37113883e-08, 2.57684412e-12, 1, 6.29895225e-12, 4.37113883e-08, 6.29895225e-12, 1)
                }
            }
        },
        ['Galactic'] = {
            mesh_location = meshes.Galactic,
            tween_duration = 1.25,
            color = newColorSequence(Color3.new(1, 0, 0)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.Galactic.galacticRev,
                    equipped = false,
                    C0 = newCFrame(-0.049041748, 0.0399398208, -0.00772094727, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                },
                ['[TacticalShotgun]'] = {
                    location = meshes.Galactic.TacticalGalactic,
                    equipped = false,
                    C0 = newCFrame(-0.0411682129, -0.0281000137, 0.00103759766, 0, 5.68434189e-14, 1, -1.91456822e-13, 1, 5.68434189e-14, -1, 1.91456822e-13, 0)
                }
            }
        },
        ['Water'] = {
            tween_duration = 1.25,
            tween_type = 'Both',
            beam_width = 0.125,
            color = newColorSequence(Color3.new(0, 1, 1), Color3.new(0.666667, 1, 1)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.Water.WaterGunRevolver,
                    equipped = false,
                    C0 = newCFrame(-0.0440063477, 0.028675437, -0.00469970703, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                },
                ['[TacticalShotgun]'] = {
                    location = meshes.Water.TactWater,
                    equipped = false,
                    shoot_sound = 'rbxassetid://13814991449',
                    C0 = newCFrame(0.0238037109, -0.00912904739, 0.00485229492, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.Water.DBWater,
                    equipped = false,
                    shoot_sound = 'rbxassetid://13814990235',
                    C0 = newCFrame(-0.0710754395, 0.00169920921, -0.0888671875, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                },
                ['[Flamethrower]'] = {
                    location = meshes.Water.FTWater,
                    equipped = false,
                    C0 = newCFrame(0.0941314697, 0.593509138, 0.0191040039, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                }
            }
        },
        ['GPO'] = {
            color = newColorSequence(Color3.new(1, 0.666667, 0)),
            guns = {
                ['[RPG]'] = {
                    location = meshes.GPO.Bazooka,
                    equipped = false,
                    C0 = newCFrame(-0.0184631348, 0.0707798004, 0.219360352, 4.37113883e-08, 1.07062025e-23, 1, -5.75081297e-14, 1, 1.14251725e-36, -1, 5.70182736e-14, 4.37113883e-08)
                },
                ['[TacticalShotgun]'] = {
                    location = meshes.GPO.MaguTact,
                    equipped = false,
                    shoot_sound = 'rbxassetid://13998711419',
                    C0 = newCFrame(-0.282501221, 0.0472121239, -0.0065612793, -6.60624482e-06, 1.5649757e-08, -1, -5.68434189e-14, 1, -1.56486806e-08, 1, 5.68434189e-14, -6.60624482e-06)
                },
                ['[Rifle]'] = {
                    location = meshes.GPO.Rifle,
                    equipped = false,
                    C0 = newCFrame(-0.208007812, 0.185256913, 0.000610351562, -3.37081539e-14, 1.62803403e-07, -1.00000012, -8.74227695e-08, 0.999999881, 1.63036205e-07, 1, 8.74227766e-08, -1.94552524e-14)
                }
            }
        },
        ['BIT8'] = {
            tween_duration = 1.25,
            tween_type = 'Width',
            beam_width = 0.125,
            color = newColorSequence(Color3.fromHSV(0.5, 0.9, 1)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.BIT8.RPixel,
                    equipped = false,
                    shoot_sound = 'rbxassetid://13326584088',
                    C0 = newCFrame(0.0261230469, -0.042888701, 0.00260925293, -1, 1.355249e-20, -3.55271071e-15, 1.355249e-20, 1, -1.81903294e-27, 3.55271071e-15, -1.81903294e-27, -1)
                },
                ['[Flamethrower]'] = {
                    location = meshes.BIT8.FTPixel,
                    equipped = false,
                    C0 = newCFrame(-0.0906066895, -0.0161985159, -0.0117645264, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.BIT8.DBPixel,
                    equipped = false,
                    shoot_sound = 'rbxassetid://13326578563',
                    C0 = newCFrame(-0.240386963, -0.127295256, -0.00776672363, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                },
                ['[RPG]'] = {
                    location = meshes.BIT8.RPGPixel,
                    equipped = false,
                    C0 = newCFrame(0.0102081299, 0.0659624338, 0.362945557, 4.37113883e-08, 0, 1, -5.72632016e-14, 1, 2.50305399e-21, -1, 5.72632016e-14, 4.37113883e-08)
                }
            }
        },
        ['Electric'] = {
            color = newColorSequence(Color3.new(0, 1, 1), Color3.new(0.666667, 1, 1)),
            guns = {
                ['[Revolver]'] = {
                    location = meshes.Electric.ElectricRevolver,
                    equipped = false,
                    C0 = newCFrame(0.185462952, 0.0312761068, 0.000610351562, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                },
                ['[DrumGun]'] = {
                    location = meshes.Electric.ElectricDrum,
                    equipped = false,
                    C0 = newCFrame(-0.471969604, 0.184426308, 0.075378418, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[SMG]'] = {
                    location = meshes.Electric.ElectricSMG,
                    equipped = false,
                    C0 = newCFrame(-0.0620956421, 0.109580457, 0.00729370117, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Shotgun]'] = {
                    location = meshes.Electric.ElectricShotgun,
                    equipped = false,
                    C0 = newCFrame(6.10351562e-05, 0.180232108, -0.624732971, 1, 0, -4.37113883e-08, 0, 1, 0, 4.37113883e-08, 0, 1)
                },
                ['[Rifle]'] = {
                    location = meshes.Electric.ElectricRifle,
                    equipped = false,
                    C0 = newCFrame(0.181793213, -0.0415201783, 0.00421142578, 1.8189894e-12, 6.6174449e-24, 1, 7.27595761e-12, 1, 6.6174449e-24, -1, -7.27595761e-12, -1.8189894e-12)
                },
                ['[P90]'] = {
                    location = meshes.Electric.ElectricP90,
                    equipped = false,
                    C0 = newCFrame(0.166191101, -0.225557804, -0.0075378418, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[LMG]'] = {
                    location = meshes.Electric.ElectricLMG,
                    equipped = false,
                    C0 = newCFrame(0.142379761, 0.104723871, -0.303771973, -1, 0, -4.37113883e-08, 0, 1, 0, 4.37113883e-08, 0, -1)
                },
                ['[Flamethrower]'] = {
                    location = meshes.Electric.ElectricFT,
                    equipped = false,
                    C0 = newCFrame(-0.158782959, 0.173444271, 0.00640869141, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Double-Barrel SG]'] = {
                    location = meshes.Electric.ElectricDB,
                    equipped = false,
                    C0 = newCFrame(0.0755996704, -0.0420352221, 0.00543212891, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Glock]'] = {
                    location = meshes.Electric.ElectricGlock,
                    equipped = false,
                    C0 = newCFrame(-0.00207519531, 0.0318723917, 0.0401077271, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                },
                ['[AUG]'] = {
                    location = meshes.Electric.ElectricAUG,
                    equipped = false,
                    C0 = newCFrame(0.331085205, -0.0117390156, 0.00155639648, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[SilencerAR]'] = {
                    location = meshes.Electric.ElectricAR,
                    equipped = false,
                    C0 = newCFrame(-0.16942215, 0.0508521795, 0.0669250488, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[AK47]'] = {
                    location = meshes.Electric.ElectricAK,
                    equipped = false,
                    C0 = newCFrame(0.155792236, 0.18423444, 0.00140380859, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                }
            }
        },
        --[[['Shadow'] = {
            Color = ColorSequence.new(Color3.new(0.560784, 0.470588, 1), Color3.new(0.576471, 0.380392, 1)),
            ['Rifle'] = {
                Equipped = false
            },
            ['Shotgun'] = {
                Equipped = false,
                Location = meshes.Shadow.ShotgunGhost,
                CFrame = CFrame.new(3.05175781e-05, 0.199999928, 3.81469727e-06, -1, 0, -4.37113883e-08, 0, 1, 0, 4.37113883e-08, 0, -1)
            },
            ['Revolver'] = {
                Equipped = false,
                Location = meshes.Shadow.RevolverGhost,
                CFrame = CFrame.new(1.52587891e-05, 0, 0, 1, 0, 8.74227766e-08, 0, 1, 0, -8.74227766e-08, 0, 1)
            }
        }]]
        ['Halloween23'] = {
            guns = {
                ['[Revolver]'] = {
                    equipped = false,
                    location = meshes.Halloween.Rev,
                    shoot_sound = 'rbxassetid://14924285721',
                    C0 = newCFrame(-0.0257873535, -0.0117108226, -0.00671386719, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                },
                ['[Double-Barrel SG]'] = {
                    equipped = false,
                    location = meshes.Halloween.DB,
                    shoot_sound = 'rbxassetid://14924282919',
                    C0 = newCFrame(-0.00271606445, -0.0485508144, 0.000732421875, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                },
                ['[Shotgun]'] = {
                    equipped = false,
                    location = meshes.Halloween.SG,
                    shoot_sound = 'rbxassetid://14924268000',
                    C0 = newCFrame(0.00573730469, 0.294590235, -0.115814209, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                },
                ['[TacticalShotgun]'] = {
                    equipped = false,
                    location = meshes.Halloween.Tact,
                    shoot_sound = 'rbxassetid://14924256223',
                    C0 = newCFrame(-0.0715637207, -0.0843618512, 0.00582885742, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                }
            }
        },
        ['Soul'] = {
            guns = {
                ['[Revolver]'] = {
                    equipped = false,
                    location = meshes.Soul.rev,
                    shoot_sound = 'rbxassetid://14909152822',
                    C0 = newCFrame(-0.0646362305, 0.2725088, -0.00242614746, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                },
                ['[Double-Barrel SG]'] = {
                    equipped = false,
                    location = meshes.Soul.db,
                    shoot_sound = 'rbxassetid://14909164664',
                    C0 = newCFrame(0.405822754, 0.0975035429, -0.00506591797, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                },
                ['[TacticalShotgun]'] = {
                    equipped = false,
                    location = meshes.Soul.tact,
                    shoot_sound = 'rbxassetid://14918188609',
                    C0 = newCFrame(-0.347473145, 0.0268714428, 0.00553894043, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                }
            }
        },
        ['Heaven'] = {
            color = newColorSequence(Color3.new(1, 1, 1)),
            tween_duration = 1.25,
            easing_style = Enum.EasingStyle.Quad,
            easing_direction = Enum.EasingDirection.Out,
            beam_width = 0.13,
            guns = {
                ['[Revolver]'] = {
                    equipped = false,
                    location = meshes.Heaven.Revolver,
                    C0 = newCFrame(-0.0829315186, -0.0831851959, -0.00296020508, -0.999999881, 2.94089277e-17, 8.27179774e-25, -2.94089277e-17, 0.999999881, 6.85215614e-16, 8.27179922e-25, -6.85215667e-16, -1)
                },
                ['[Double-Barrel SG]'] = {
                    equipped = false,
                    location = meshes.Heaven.DB,
                    shoot_sound = 'rbxassetid://14489852879',
                    C0 = newCFrame(-0.0303955078, 0.022110641, 0.00296020508, -0.999997139, -7.05812226e-16, 7.85568618e-30, 7.05812226e-16, 0.999997139, -2.06501178e-14, 6.44518474e-30, 2.06501042e-14, -0.999999046)
                }
            }
        },
        ['Void'] = {
            guns = {
                ['[Revolver]'] = {
                    equipped = false,
                    location = meshes.Void.rev,
                    C0 = newCFrame(-0.00503540039, 0.0082899332, -0.00164794922, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                },
                ['[TacticalShotgun]'] = {
                    equipped = false,
                    location = meshes.Void.tact,
                    C0 = newCFrame(0.0505371094, -0.0487936139, 0.00158691406, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                }
            }
        },
        ['DH-Stars II'] = {
            guns = {
                ['[Revolver]'] = {
                    equipped = false,
                    location = meshes.Popular.STARSREV,
                    C0 = newCFrame(0.0578613281, -0.0479719043, -0.00115966797, -1.00000405, 1.15596135e-16, 1.64267286e-30, -1.15596135e-16, 1, 2.99751983e-14, 1.66683049e-30, -2.99751983e-14, -1.00000405)
                }
            }
        },
        ['DH-Verified'] = {
            guns = {
                ['[Revolver]'] = {
                    equipped = false,
                    location = meshes.Popular.VERIFIEDREV,
                    C0 = newCFrame(0.049407959, -0.0454721451, 0.00158691406, -1, 0, 0, 0, 1, 2.22044605e-15, 0, -2.22044605e-15, -1)
                }
            }
        },
        ['Candy'] = {
            guns = {
                ['[Revolver]'] = {
                    equipped = false,
                    location = meshes.Candy.RevolverCandy,
                    C0 = newCFrame(-0.106658936, -0.0681198835, 0.00198364258, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                },
                ['[Double-Barrel SG]'] = {
                    equipped = false,
                    location = meshes.Candy.DBCandy,
                    C0 = newCFrame(0.0430603027, -0.0375298262, -0.00198364258, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                }
            }
        }
    };

    mkelement = function(class, parent, props)
        local obj = Instance.new(class);

        for i, v in next, props do
            obj[i] = v;
        end;

        obj.Parent = parent;
        return obj;
    end;

    find_gun = (function(gun_name, instance)
        for i, v in next, instance:GetChildren() do
            if v:IsA('Tool') then
                if (v.Name == gun_name) then
                    return v
                end
            end
        end
    end);

    InventoryChanger.Functions.GameEquip = function(gun, skin)
        return replicated_storage.MainEvent:FireServer('EquipWeaponSkins', gun, skin);
    end;

    InventoryChanger.Functions.AddOwnedSkins = function()
        for _, v in ipairs(entries:GetChildren()) do
            local ext_name = v.Name:match('%[(.-)%]');
            local skin_name, _ = v.Name:gsub('%[.-%]', '');
            if 
                ext_name 
                and skin_name 
                and InventoryChanger.Skins[skin_name] 
                and InventoryChanger.Skins[skin_name].guns 
                and InventoryChanger.Skins[skin_name].guns['[' .. ext_name .. ']']
            then
                local Preview = v:FindFirstChild('Preview');

                if Preview and Preview:FindFirstChild('Equipped') and Preview.Equipped.Visible then
                    table.insert(InventoryChanger.Owned, { frame = v, gun = '[' .. ext_name .. ']' })
                end;
            end;
        end;
    end;

    InventoryChanger.Functions.UnequipGameSkins = function()
        for _, v in ipairs(InventoryChanger.Owned) do
            local SkinInfo = v.frame.SkinInfo;
            local Container = SkinInfo.Container;
            local SkinName = Container.SkinName.Text;

            InventoryChanger.Functions.GameEquip(v.gun, SkinName)
        end;
    end;

    InventoryChanger.Functions.Unload = function()
        return Utilities.Unload();
    end;

    InventoryChanger.Functions.Reload = function()
        local function wait_for_child(parent, child)
            local child = parent:WaitForChild(child);
            while not child do
                child = parent:WaitForChild(child);
            end;
            return child;
        end;
        
        client = players.LocalPlayer;
        player_gui = client.PlayerGui;

        repeat task.wait() until player_gui;

        main_gui = wait_for_child(player_gui, 'MainScreenGui');
        crew = wait_for_child(main_gui, 'Crew');

        bottom_left = wait_for_child(crew, 'BottomLeft');
        bottom_left = bottom_left.Frame;

        skins_button = wait_for_child(bottom_left, 'Skins');

        weapon_skins_gui = wait_for_child(main_gui, 'WeaponSkinsGUI');
        
        gui_body_wrapper = wait_for_child(weapon_skins_gui, 'Body');
        body_wrapper = wait_for_child(gui_body_wrapper, 'Wrapper');
        
        skin_view = wait_for_child(body_wrapper, 'SkinView');
        skin_view_frame = wait_for_child(skin_view, 'Frame');

        guns = wait_for_child(skin_view_frame, 'Guns').Contents;
        entries = wait_for_child(skin_view_frame, 'Skins').Contents.Entries;

        InventoryChanger.Functions.Unload();

        cout('Reload', 'Script successfully reloaded!');
        cout('Reload', 'Waiting for skins to load...');

        wait_for_child(entries, '[Revolver]Golden Age');

        cout('Reload', 'Skins successfully loaded.');
        InventoryChanger.Functions.AddOwnedSkins();
        InventoryChanger.Functions.UnequipGameSkins();

        for i, v in next, guns:GetChildren() do
            if v:IsA('Frame') and v.Name ~= 'GunEntry' and v.Name ~= 'Trading' and v.Name ~= '[Mask]' then
                Utilities.AddConnection(v.Button.MouseButton1Click, function()
                    local extracted_name = v.Name:match(regex);
                    if extracted_name then
                        InventoryChanger.Functions.Start(extracted_name);
                    end;
                end);
            end;
        end;
    end;

    InventoryChanger.Functions.Equip = function(gun_name, skin_name)
        print('[DEBUG]', 'Equip function has been invoked.', gun_name, skin_name or 'Default')
        local gun = find_gun(gun_name, client.Backpack) or find_gun(gun_name, client.Character);
        if not skin_name then
            if gun and gun.Name == gun_name then
                for _, v in next, gun.Default:GetChildren() do v:Destroy() end;
                
                gun.Default.Transparency = 0;
                --if InventoryChanger.Selected[gun.Name] and not InventoryChanger.Skins[InventoryChanger.Selected[gun.Name]].Location then
                    --gun.Default.TextureID = 'rbxassetid://8117372147';
                --end;
                
                if gun.Name == '[Silencer]' or gun.Name == '[SilencerAR]' then
                    gun:FindFirstChild('Part').Transparency = 0;
                end;

                local skin_name = InventoryChanger.Selected[gun.Name];

                if skin_name and InventoryChanger.Skins[skin_name] and InventoryChanger.Skins[skin_name].guns and InventoryChanger.Skins[skin_name].guns[gun.Name] then
                    if InventoryChanger.Skins[skin_name].guns[gun.Name].TracerLoop then
                        InventoryChanger.Skins[skin_name].guns[gun.Name].TracerLoop:Disconnect();
                        InventoryChanger.Skins[skin_name].guns[gun.Name].TracerLoop = nil;
                    end;

                    if InventoryChanger.Skins[skin_name].guns[gun.Name].shoot_sound_loop then
                        InventoryChanger.Skins[skin_name].guns[gun.Name].shoot_sound_loop:Disconnect();
                        InventoryChanger.Skins[skin_name].guns[gun.Name].shoot_sound_loop = nil;
                    end;
                end;
            end;

            return;
        end;
        
        if gun and gun.Name == gun_name and skin_name then
            cout('DEBUG', 'Has skin name');
            local skin_pack = InventoryChanger.Skins[skin_name];
            local guns = skin_pack.guns;
            if skin_pack and guns and not skin_pack.texture then
                cout('DEBUG', 'Changing skin assets');
                for _, x in next, gun.Default:GetChildren() do x:Destroy() end;
                
                local clone = guns[gun_name].location:Clone();
                clone.Name = 'Mesh';
                clone.Parent = gun.Default;
                
                local weld = Instance.new('Weld', clone);
                weld.Part0 = gun.Default;
                weld.Part1 = clone;
                weld.C0 = guns[gun_name].C0;
                
                gun.Default.Transparency = 1;

                if guns[gun_name].shoot_sound then
                    if guns[gun_name].shoot_sound_loop then
                        guns[gun_name].shoot_sound_loop:Disconnect();
                        guns[gun_name].shoot_sound_loop = nil;
                    end;
                    gun.Handle.ShootSound.SoundId = guns[gun_name].shoot_sound;
                    guns[gun_name].shoot_sound_loop = gun.Handle.ChildAdded:Connect(function(child)
                        if child:IsA('Sound') and child.Name == 'ShootSound' then
                            child.SoundId = guns[gun_name].shoot_sound;
                        end;
                    end);
                end;
            end;
        end;
    end;

    InventoryChanger.Functions.Start = function(name)
        for i, v in next, entries:GetChildren() do
            local skin_name, _ = v.Name:gsub('%[.-%]', '');

            if string.find(v.Name, name, 1, true) and InventoryChanger.Skins[skin_name] and InventoryChanger.Skins[skin_name].guns and InventoryChanger.Skins[skin_name].guns['['..name..']'] and InventoryChanger.Skins[skin_name].guns['['..name..']'].location then
                local Preview = v:FindFirstChild('Preview');
                local Button = v:FindFirstChild('Button');
                local skinInfo = v:FindFirstChild('SkinInfo');

                if Preview and Button and skinInfo then
                    local Label = Preview:FindFirstChild('LockImageLabel');
                    local AmountValue = Preview:FindFirstChild('AmountValue');
                    local Equipped = Preview:FindFirstChild('Equipped');
                    local container = skinInfo:FindFirstChild('Container');

                    local extracted_name = v.Name:match(regex);

                    if Equipped and extracted_name then
                        Equipped.Visible = InventoryChanger.Skins[skin_name] and InventoryChanger.Skins[skin_name].guns['['..extracted_name..']'] and InventoryChanger.Skins[skin_name].guns['['..extracted_name..']'].equipped or false;
                        InventoryChanger.Functions.Equip('['..extracted_name..']', InventoryChanger.Selected['['..extracted_name..']'])

                        if Label then
                            Label.Visible = false;
                        end;

                        if container and container.SellButton then
                            container.SellButton.Visible = true;
                        end;
                    
                        if AmountValue then
                            AmountValue.Visible = true;
                            AmountValue.Text = 'x1';
                        end;
                    
                        if getgenv().InventoryConnections[v.Name] then
                            getgenv().InventoryConnections[v.Name]:Disconnect();
                            getgenv().InventoryConnections[v.Name] = nil;
                        end;

                        v.Button:Destroy();
                        local props = { Text = '',BackgroundTransparency = 1,Size = UDim2.new(1, 0, 0.7, 0),ZIndex = 5,Name = 'Button',Position = UDim2.new(0, 0, 0, 0)};
                        local new_btn = mkelement('TextButton', v, props);

                        getgenv().InventoryConnections[v.Name] = new_btn.MouseButton1Click:Connect(function()
                            InventoryChanger.Skins[skin_name].guns['['..extracted_name..']'].equipped = not InventoryChanger.Skins[skin_name].guns['['..extracted_name..']'].equipped;
                            InventoryChanger.Selected['['..extracted_name..']'] = InventoryChanger.Skins[skin_name].guns['['..extracted_name..']'].equipped and skin_name or nil;
                            Equipped.Visible = InventoryChanger.Skins[skin_name].guns['['..extracted_name..']'].equipped;

                            for k, x in ipairs(entries:GetChildren()) do
                                if x.Name:match(regex) == extracted_name and x ~= v then
                                    x.Preview.Equipped.Visible = false;

                                    for _, l in next, InventoryChanger.Skins do
                                        if _ ~= skin_name and l['['..extracted_name..']'] and l['['..extracted_name..']'].equipped then
                                            l[extracted_name].equipped = false
                                        end;
                                    end;
                                end;
                                
                                if x ~= v and string.find(x.Name, name, 1, true) and InventoryChanger.Skins[skin_name] and InventoryChanger.Skins[skin_name].guns and InventoryChanger.Skins[skin_name].guns['['..name..']'] and InventoryChanger.Skins[skin_name].guns['['..name..']'].location then
                                    local Preview = v:FindFirstChild('Preview');
                                    local Button = v:FindFirstChild('Button');
                                    local skinInfo = v:FindFirstChild('SkinInfo');
                                    
                                    if Preview and Button and skinInfo then
                                        local Label = Preview:FindFirstChild('LockImageLabel');
                                        local AmountValue = Preview:FindFirstChild('AmountValue');
                                        local Equipped = Preview:FindFirstChild('Equipped');
                                        local container = skinInfo:FindFirstChild('Container');
                                        
                                        if Label then
                                            Label.Visible = false;
                                        end;
                        
                                        if container and container.SellButton then
                                            container.SellButton.Visible = true;
                                        end;
                                        
                                        if AmountValue then
                                            AmountValue.Visible = true;
                                            AmountValue.Text = 'x1';
                                        end;
                                    end;

                                    InventoryChanger.Owned = {};
                                    InventoryChanger.Functions.AddOwnedSkins();
                                    InventoryChanger.Functions.UnequipGameSkins();
                                end;
                            end;
                        end);
                    end;
                end;
            end;
        end;
    end;

    InventoryChanger.Functions.CharacterAdded = function(character)
        if getgenv().InventoryConnections.ChildAdded then
            getgenv().InventoryConnections.ChildAdded:Disconnect();
            getgenv().InventoryConnections.ChildAdded = nil;
        end;

        if getgenv().InventoryConnections.ChildRemoved then
            getgenv().InventoryConnections.ChildRemoved:Disconnect();
            getgenv().InventoryConnections.ChildRemoved = nil;
        end;

        getgenv().InventoryConnections.ChildAdded = character.ChildAdded:Connect(function(child)
            if child:IsA('Tool') and child:FindFirstChild('GunScript') then
                InventoryChanger.Functions.Equip(child.Name, InventoryChanger.Selected[child.Name]);
                local skin_name = InventoryChanger.Selected[child.Name];
                
                if skin_name then
                    if InventoryChanger.Skins[skin_name].color and InventoryChanger.Skins[skin_name].guns[child.Name].equipped then
                        if InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop then
                            InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop:Disconnect();
                            InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop = nil;
                        end;

                        InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop = Ignored.DescendantAdded:Connect(function(descendant)
                            local gun = find_gun(child.Name, client.Character) or nil;

                            if gun and descendant:IsDescendantOf(siren) and descendant:IsA('Beam') then
                                local pos1 = (descendant.Attachment0.WorldCFrame.Position.X > gun.Handle.CFrame.Position.X) and descendant.Attachment0.WorldCFrame.Position or gun.Handle.CFrame.Position;
                                local pos2 = (descendant.Attachment0.WorldCFrame.Position.X < gun.Handle.CFrame.Position.X) and descendant.Attachment0.WorldCFrame.Position or gun.Handle.CFrame.Position;

                                if math.abs(client.Character.HumanoidRootPart.Velocity.X) < 22 and (pos1 - pos2).Magnitude < 5 or (pos1 - pos2).Magnitude < 20 then
                                    local skin_pack = InventoryChanger.Skins[skin_name];
                                    local guns = skin_pack and skin_pack.guns or nil
                                    local tween_duration = skin_pack and (skin_pack.tween_duration or guns and guns[gun.Name] and guns[gun.Name].tween_duration) or nil;
                                    local width = skin_pack and (skin_pack.beam_width or guns and guns[gun.Name] and guns[gun.Name].beam_width) or nil;
                                    local color = skin_pack and (skin_pack.color or guns and guns[gun.Name] and guns[gun.Name].color) or nil;
                                    local easing_direction = skin_pack and (skin_pack.easing_direction or guns and guns[gun.Name] and guns[gun.Name].easing_direction) or nil;
                                    local easing_style = skin_pack and (skin_pack.easing_style or guns and guns[gun.Name] and guns[gun.Name].easing_style) or nil;

                                    if skin_pack and tween_duration and color then
                                        local clonedParent = descendant.Parent:Clone();

                                        clonedParent.Parent = workspace.Vehicles;
                                        descendant.Parent:Destroy();
                                        if width then
                                            clonedParent:FindFirstChild('GunBeam').Width1 = width;
                                        end;
                                        clonedParent:FindFirstChild('GunBeam').Color = color;
                                        Utilities.Tween({
                                            object = clonedParent:FindFirstChild('GunBeam'),
                                            info = { tween_duration, easing_style, easing_direction },
                                            properties = { Width1 = 0 },
                                            callback = function()
                                                clonedParent:Destroy();
                                            end
                                        })
                                    elseif color then
                                        descendant.Color = color;
                                    end;
                                end;
                            end;
                        end);
                    else
                        if InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop then
                            InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop:Disconnect();
                            InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop = nil;
                        end;
                    end;
                end;
            end;
        end);

        getgenv().InventoryConnections.ChildRemoved = character.ChildRemoved:Connect(function(child)
            if child:IsA('Tool') and child:FindFirstChild('GunScript') then
                InventoryChanger.Functions.Equip(child.Name, false);

                local skin_name = InventoryChanger.Selected[child.Name];

                if skin_name then
                    if InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop then
                        InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop:Disconnect();
                        InventoryChanger.Skins[skin_name].guns[child.Name].TracerLoop = nil;
                    end;
                end;
            end;
        end);
        
        InventoryChanger.Functions.Reload();
    end;

    if getgenv().InventoryConnections.CharacterAdded then
        getgenv().InventoryConnections.CharacterAdded:Disconnect();
        getgenv().InventoryConnections.CharacterAdded = nil;
    end;
    getgenv().InventoryConnections.CharacterAdded = client.CharacterAdded:Connect(InventoryChanger.Functions.CharacterAdded);    InventoryChanger.Functions.CharacterAdded(client.Character);end;
end)

PlayerSection:NewKeybind("F", "close menu with left shift", Enum.KeyCode.F, function()
	Library:ToggleUI(F)
end)
