



repeat task.wait(0.25) until game:IsLoaded()
getgenv().Image = "rbxassetid://118507736312114" --put a asset id in here to make it work
getgenv().ToggleUI = "LeftControl" -- This where you can Toggle the Fluent ui library

task.spawn(function()
    if not getgenv().LoadedMobileUI == true then getgenv().LoadedMobileUI = true
        local OpenUI = Instance.new("ScreenGui")
        local ImageButton = Instance.new("ImageButton")
        local UICorner = Instance.new("UICorner")
        OpenUI.Name = "OpenUI"
        OpenUI.Parent = game:GetService("CoreGui")
        OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        ImageButton.Parent = OpenUI
        ImageButton.BackgroundColor3 = Color3.fromRGB(105, 105, 105)
        ImageButton.BackgroundTransparency = 0.8
        ImageButton.Position = UDim2.new(0.9, 0, 0.1, 0)
        ImageButton.Size = UDim2.new(0, 50, 0, 50)
        ImageButton.Image = getgenv().Image
        ImageButton.Draggable = true
        ImageButton.Transparency = 1
        UICorner.CornerRadius = UDim.new(0, 200)
        UICorner.Parent = ImageButton
        ImageButton.MouseButton1Click:Connect(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true, getgenv().ToggleUI, false, game)
        end)
    end
end)

repeat task.wait() until game:IsLoaded()

-- KEY SYSTEM UI START 🔐
getgenv().UserHasKey = false
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local KeyWindow = Fluent:CreateWindow({
    Title = "🔐 Key System",
    SubTitle = "Pann Hub Access",
    TabWidth = 130,
    Size = UDim2.fromOffset(450, 230),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightControl
})

local KeyTab = KeyWindow:AddTab({ Title = "🔑 Enter Key", Icon = "" })
local inputKey = ""

KeyTab:AddInput("AccessKey", {
    Title = "Enter your key to unlock GUI",
    Placeholder = "e.g. RAISEAFLOPPA2025",
    Default = "",
    Callback = function(Value)
        inputKey = Value
    end
})

KeyTab:AddButton({
    Title = "✅ Submit Key",
    Description = "Checks if the key is valid",
    Callback = function()
        if inputKey == "RAISEAFLOPPA2025" then
            Fluent:Notify({
                Title = "Key Accepted ✅",
                Content = "Access granted. Welcome to the hub!",
                Duration = 5
            })
            getgenv().UserHasKey = true
            KeyWindow:Close()
        else
            Fluent:Notify({
                Title = "❌ Invalid Key",
                Content = "Try again.",
                Duration = 5
            })
        end
    end
})

repeat task.wait() until getgenv().UserHasKey
-- ✅ KEY SYSTEM UI END


local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Raise A Floppa 2 ",
    SubTitle = "By Pann",
    TabWidth = 130,
    Size = UDim2.fromOffset(550, 340),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = { 
      info = Window:AddTab({ Title = "Information", Icon = ""}),
      Main = Window:AddTab({ Title = "Main", Icon = "" }),
      Cook = Window:AddTab({ Title = "Cook", Icon = "" }),
      Auto = Window:AddTab({ Title = "Automatic", Icon = ""}),
      Tp = Window:AddTab({ Title = "Teleport", Icon = "" }),
      Misc = Window:AddTab({ Title = "Misc", Icon = ""}),
      Mul = Window:AddTab({ Title = "Multiplayer", Icon = ""}),
      Other = Window:AddTab({ Title = "Other", Icon = ""})
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Notification",
        Content = "Script Is Loaded!",
        SubContent = "Ts Pmo sm rm fr vro icl sybau 🥀", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
end



Tabs.info:AddSection("Raise A Floppa 2 Q&A By Pann Hub")

Tabs.info:AddParagraph({
        Title = "what should i do if I can't climb a ladder in RAF2",
        Content = "If you can't climb or walk through a small door, i recommend you to change avatar to get less accessories or use noclip in \"Misc Tab\" "
    })


Tabs.info:AddParagraph({
        Title = "We have built-in script executor for Raise A Floppa 2",
        Content = "I don't know how to explain this, its so easy to understand tho, you can find it in \"Other Tab\" (idk why did i even made this 🥀)"
    })





























Tabs.Main:AddButton({
    Title = "Collect Milk",
    Description = "Collect The Milk That Milk Man Delivered",
    Callback = function()
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        -- Access the "Crate" under "Milk Delivery" folder in workspace
        local milkCrate = workspace:FindFirstChild("Milk Delivery") and workspace["Milk Delivery"]:FindFirstChild("Crate")
        
        if milkCrate then
            -- Check if the milk crate has a ProximityPrompt
            local prompt = milkCrate:FindFirstChildWhichIsA("ProximityPrompt", true)
            if prompt then
                -- Save original position
                local originalCFrame = humanoidRootPart.CFrame

                -- Teleport to the milk crate
                humanoidRootPart.CFrame = milkCrate.CFrame + Vector3.new(0, 3, 0)

                -- Wait briefly for teleport to complete
                task.wait(0.5)

                -- Trigger proximity prompt
                fireproximityprompt(prompt)

                -- Wait to ensure collection registers
                task.wait(0.5)

                -- Teleport back to original position
                humanoidRootPart.CFrame = originalCFrame
            end
        end
    end
})








Tabs.Main:AddButton({
    Title = "Anti Cold/Hot",
    Description = "This is not actual anti cold/hot its just feed the floppa hot chocolate/lemonade (please turn on instant interact)",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local originalCFrame = humanoidRootPart.CFrame

        local function teleportBack()
            humanoidRootPart.CFrame = originalCFrame
        end

        local function teleportToFloppa()
            local floppa = workspace:FindFirstChild("Floppa")

            if floppa then
                humanoidRootPart.CFrame = floppa.HumanoidRootPart.CFrame
            end
        end

        humanoidRootPart.CFrame = CFrame.new(-5.52987146, 69.0936737, -108.875877, 0.307733119, 1.24310662e-09, 0.9514727, -2.64562194e-09, 1, -4.50839088e-10, -0.9514727, -2.37849895e-09, 0.307733119)

        task.wait(0.4)

        keypress(0x45)

        task.wait(0.3)

        teleportToFloppa()

        task.wait(0.4)

        keypress(0x45)

        task.wait(0.2)

        teleportBack()

        
        
    end
})









Tabs.Main:AddButton({
    Title = "Activate Meteorite Magnet",
    Description = "Activate Meteorite Magnet if purchased (look up)",
    Callback = function()
        local function hasMeteoriteMagnet()
            local meteoriteMagnet = workspace.Unlocks:FindFirstChild("Meteor Magnet")  -- Check if Meteor Magnet is in the Unlocks folder
            return meteoriteMagnet ~= nil
        end

        if hasMeteoriteMagnet() then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-46.8612709, 153.73613, -41.5506172)
            wait(1)
            keypress(0x45)  -- Simulate pressing "E" (key code for "E")
            wait(2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.3300018, 73.4750061, -46.8682289)
            -- nothing here
        else
            Fluent:Notify({
                Title = "Purchased Required",
                Content = "Players doesn't purchase meteorite magnet yet",
                SubContent = "You need to purchase meteorite magnet to use it 😡",
                Duration = 5
            })
        end
    end
})








Tabs.Main:AddButton({
    Title = "Activate DJ Gato Party",
    Description = "Activate DJ Gato Party if purchased",
    Callback = function()
        local function hasElgatoDJ()
            local DJgato = workspace.Unlocks:FindFirstChild("DJ El Gato")
            return DJgato ~= nil
        end

        if hasElgatoDJ() then
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local targetCFrame = CFrame.new(-79.3476028, 73.4000092, -43.5470314, 0.556764364, 7.39641877e-08, 0.830670476, -7.88125618e-08, 1, -3.62167221e-08, -0.830670476, -4.53030893e-08, 0.556764364)
            -- Save the original position
            local originalCFrame = humanoidRootPart.CFrame

            -- Teleport to the target position
            humanoidRootPart.CFrame = targetCFrame
            wait(1)
            keypress(0x45)  -- Simulate pressing "E" (key code for "E"))
            wait(2)
            -- Teleport back to the original position
            humanoidRootPart.CFrame = originalCFrame

            -- nothing
        else
            Fluent:Notify({
                Title = "Purchased Required",
                Content = "Player hasn't purchased DJ El Gato yet",
                SubContent = "You need to purchase DJ El Gato to use it 😡",
                Duration = 5
            })
        end
    end
})






-- Toggle to auto-pet Floppa
local Toggle = Tabs.Auto:AddToggle("AutoPetFloppa", { Title = "Auto-Pet Floppa if Happiness > 50 (floppa must stay still)", Default = false })

-- Function to auto-pet Floppa
local function autoPetFloppa()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Get Floppa and its happiness level
    local floppa = workspace:FindFirstChild("Floppa")
    local happiness = floppa and floppa:FindFirstChild("Configuration") and floppa.Configuration:FindFirstChild("Happiness")

    if floppa and happiness then
        while Toggle.Value do
            if happiness.Value < 50 then
                local originalCFrame = humanoidRootPart.CFrame

                -- Teleport to Floppa
                humanoidRootPart.CFrame = floppa.HumanoidRootPart.CFrame
                task.wait(1.5) -- Wait for stability (changed to 1.5)

                -- Simulate pressing the "E" key to pet Floppa
                keypress(0x45) -- E key code
                keypress(0x45)
                keypress(0x45)
                keypress(0x45)
                keypress(0x45)
                
                task.wait(1.5) -- Wait after petting

                -- Teleport back to the original position
                humanoidRootPart.CFrame = originalCFrame

                
            end

            -- Check every 0.1 seconds
            task.wait(0.1)
        end
    end
end

-- Toggle callback
Toggle:OnChanged(function(state)
    if state then
        task.spawn(autoPetFloppa) -- Start auto-petting in a separate thread
    end
end)





-- Add the toggle to the Auto tab
local Toggle = Tabs.Auto:AddToggle("MyToggle", {Title = "Auto Collect Gold (Cannot Collect From Divine Cat Statue)", Default = false })

-- Function to teleport to Gold item and return to the original position
local function teleportToItemAndBack()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- Get the position of the Gold item in the workspace
    local goldItem = workspace:FindFirstChild("Gold")
    
    -- Check if Gold item is found
    if goldItem then
        local originalCFrame = humanoidRootPart.CFrame
        
        -- Teleport to the Gold item's position
        humanoidRootPart.CFrame = goldItem.CFrame
        task.wait(0.2) -- Wait for 0.2 seconds at the Gold location

        -- Teleport back to the original position
        humanoidRootPart.CFrame = originalCFrame
    else
        -- No gold item found, do nothing
    end
end

-- When the toggle state changes
Toggle:OnChanged(function(state)
    -- If toggle is on, start teleportation and collection
    if state then
        -- Continuously check for the Gold item as long as the toggle is on
        while Toggle.Value do
            teleportToItemAndBack() -- Teleport to the Gold item and return
            task.wait(1) -- Check for new Gold item every 1 second
        end
    end
end)









local Toggle = Tabs.Auto:AddToggle("MyToggle", {Title = "Auto Collect Seeds (A Bit Buggy)", Default = false})

Toggle:OnChanged(function()
    if Options.MyToggle.Value then
        task.spawn(collectSeeds) -- Run in parallel so player isn’t frozen
    end
end)

Options.MyToggle:SetValue(false)

function collectSeeds()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    while Options.MyToggle.Value do
        local seeds = workspace.Seeds:GetChildren()

        for _, seed in ipairs(seeds) do
            local prompt = seed:FindFirstChildOfClass("ProximityPrompt")
            if prompt then
                local originalPos = hrp.CFrame -- Save position right before teleport
                hrp.CFrame = seed.CFrame + Vector3.new(0, 3, 0)
                task.wait(0.2)
                fireproximityprompt(prompt)
                task.wait(0.2)
                hrp.CFrame = originalPos -- Return instantly
            end
        end

        task.wait(0.2)
    end
end









Tabs.Tp:AddButton({
    Title = "House",
    Description = "Teleport To House",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-61.4003258, 73.4750061, -37.8793678, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end
})


Tabs.Tp:AddButton({
    Title = "1st Basement",
    Description = "Teleport To 1st Basement",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-67.2391968, 55.4000168, -39.330204, 0.0412380993, 4.33183925e-16, -0.999149323, -9.00663685e-16, 1, 3.96379444e-16, 0.999149323, 8.83551608e-16, 0.0412380993)
    end
})



Tabs.Tp:AddButton({
    Title = "2nd Basement",
    Description = "Teleport To 2nd Basement",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-61.9028969, 35.9000168, -38.1604042, 0.392780244, 1.67481833e-08, -0.919632375, -3.26389724e-08, 1, 4.27153291e-09, 0.919632375, 2.83380803e-08, 0.392780244)
    end
})



Tabs.Tp:AddButton({
    Title = "1st Upper Floor",
    Description = "Teleport To 1st Upper Floor",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-62.7135963, 91.4000168, -30.2685719, -0.469526678, -2.73245995e-08, -0.882918298, -5.78674388e-08, 1, -1.74752851e-10, 0.882918298, 5.10101685e-08, -0.469526678)
    end
})



Tabs.Tp:AddButton({
    Title = "2nd Upper Floor",
    Description = "Teleport To 2nd Upper Floor",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-61.0160217, 110.500015, -36.4459419, 0.284452379, -7.96052557e-09, -0.958690166, -3.11641237e-08, 1, -1.75502315e-08, 0.958690166, 3.48689433e-08, 0.284452379)
    end
})



Tabs.Tp:AddButton({
    Title = "Roof",
    Description = "Teleport To Roof",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.264492, 145.400024, -41.4740868, -0.371924132, -9.61286273e-10, -0.928263128, -8.72383388e-10, 1, -6.86040169e-10, 0.928263128, 5.54646495e-10, -0.371924132)
    end
})



Tabs.Tp:AddButton({
    Title = "Patio",
    Description = "Teleport To Patio",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-63.1400528, 91.4000092, -90.8524628, 0.986670196, 8.35140401e-09, 0.162732586, -1.94483754e-08, 1, 6.6598389e-08, -0.162732586, -6.88755293e-08, 0.986670196)
    end
})





Tabs.Tp:AddButton({
    Title = "Market",
    Description = "Teleport To Market",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28.0548782, 70.1997757, -108.054405, 0.786984861, 1.86600291e-09, -0.616972327, 4.16374135e-08, 1, 5.61354447e-08, 0.616972327, -6.98668785e-08, 0.786984861)
    end
})


Tabs.Tp:AddButton({
    Title = "Jinx's Cauldron",
    Description = "Teleport To Jinx's Cauldron",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-114.476074, 68.593689, -144.418213, -0.425411254, 3.78284035e-08, -0.90500015, 3.78207954e-09, 1, 4.00215008e-08, 0.90500015, 1.3602814e-08, -0.425411254)
    end
})


Tabs.Tp:AddButton({
    Title = "Backroom",
    Description = "Teleport To Backroom",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-248.705948, -1216.1001, -52.4668922, 0.747585952, -3.66916169e-08, -0.66416508, 2.22550529e-08, 1, -3.01943786e-08, 0.66416508, 7.79186315e-09, 0.747585952)
    end
})



Tabs.Tp:AddButton({
    Title = "Space",
    Description = "Teleport To Space",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-42173.7617, 529.839417, -118.53688, 0.966301262, -1.5619916e-08, 0.257413775, 6.48822107e-09, 1, 3.63241597e-08, -0.257413775, -3.34299237e-08, 0.966301262)
    end
})






-- Proximity Prompt Toggle Script
local ProximityPromptService = game:GetService("ProximityPromptService")
local proximityConnection -- To store the connection

-- Function to enable/disable Proximity Prompt interactions
local function toggleProximityPrompt(enable)
    if enable then
        -- Connect to the event if enabled
        proximityConnection = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
            fireproximityprompt(prompt)
        end)
    elseif proximityConnection then
        -- Disconnect the event if it was connected
        proximityConnection:Disconnect()
        proximityConnection = nil -- Reset the variable after disconnecting
    end
end

-- Toggle for Proximity Prompt in the UI
local ToggleProximity = Tabs.Misc:AddToggle("ProximityPromptToggle", {Title = "Instance Interact", Default = true})

-- Handle the toggle state change
ToggleProximity:OnChanged(function()
    local isProximityOn = ToggleProximity.Value
    toggleProximityPrompt(isProximityOn)
end)


-- Initialize variables
local fullbrightEnabled = false
local lighting = game:GetService("Lighting")
local originalSettings = {
    Brightness = lighting.Brightness,
    ClockTime = lighting.ClockTime,
    Ambient = lighting.Ambient,
    OutdoorAmbient = lighting.OutdoorAmbient,
}

-- Function to enable Fullbright
local function enableFullbright()
    lighting.Brightness = 2
    lighting.ClockTime = 14 -- Set to daytime
    lighting.Ambient = Color3.new(1, 1, 1)
    lighting.OutdoorAmbient = Color3.new(1, 1, 1)
end

-- Function to disable Fullbright
local function disableFullbright()
    lighting.Brightness = originalSettings.Brightness
    lighting.ClockTime = originalSettings.ClockTime
    lighting.Ambient = originalSettings.Ambient
    lighting.OutdoorAmbient = originalSettings.OutdoorAmbient
end



-- Add toggle to the UI
local Toggle = Tabs.Misc:AddToggle("FullbrightToggle", { Title = "Fullbright", Default = false })

-- Handle toggle state changes
Toggle:OnChanged(function()
    fullbrightEnabled = Toggle.Value
    

    if fullbrightEnabled then
        enableFullbright()
    else
        disableFullbright()
    end
end)


Tabs.Misc:AddSection("Player Misc")  




local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local Toggle = Tabs.Misc:AddToggle("MyToggle", {Title = "Noclip", Default = false})
local noclipConnection
local originalCollisions = {}

-- Save the character's current collision states
local function saveOriginalCollisions()
    originalCollisions = {}
    if LocalPlayer.Character then
        for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                originalCollisions[part] = part.CanCollide
            end
        end
    end
end

saveOriginalCollisions() -- << ADD THIS after defining the function!

-- Apply noclip (force CanCollide false)
local function startNoclip()
    if noclipConnection then
        noclipConnection:Disconnect()
    end

    saveOriginalCollisions()

    noclipConnection = RunService.Stepped:Connect(function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end

-- Restore original collision
local function stopNoclip()
    if noclipConnection then
        noclipConnection:Disconnect()
        noclipConnection = nil
    end
    for part, canCollide in pairs(originalCollisions) do
        if part and part:IsA("BasePart") then
            part.CanCollide = canCollide
        end
    end
    originalCollisions = {}
end

-- When toggle is changed
Toggle:OnChanged(function()
    if Toggle.Value then
        startNoclip()
    else
        stopNoclip()
    end
end)

-- Handle respawn
LocalPlayer.CharacterAdded:Connect(function()
    repeat task.wait() until LocalPlayer.Character:FindFirstChild("Humanoid")
    saveOriginalCollisions()

    if Toggle.Value then
        startNoclip()
    end
end)

Toggle:SetValue(false)

-- Initialize variables
local speedEnabled = false
local jumpEnabled = false
local desiredSpeed = 16 -- Default Roblox speed
local defaultSpeed = 16
local desiredJumpPower = 50 -- Default Roblox jump power
local defaultJumpPower = 50
local player = game.Players.LocalPlayer

-- Function to set player speed
local function setSpeed(speed)
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.WalkSpeed = speed
    end
end

-- Function to set player jump power
local function setJumpPower(jumpPower)
    if player and player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.JumpPower = jumpPower
    end
end



-- Monitor respawn to ensure speed and jump power persist
player.CharacterAdded:Connect(function(character)
    -- Wait for the character to load
    repeat task.wait() until character:FindFirstChild("Humanoid")

    -- Reapply speed if the toggle is on
    if speedEnabled then
        setSpeed(desiredSpeed)
    end

    -- Reapply jump power if the toggle is on
    if jumpEnabled then
        setJumpPower(desiredJumpPower)
    end
end)

-- Toggle for Speed Control
local SpeedToggle = Tabs.Misc:AddToggle("SpeedToggle", { Title = "Player Speed Boost", Default = false })

SpeedToggle:OnChanged(function()
    speedEnabled = SpeedToggle.Value

    if speedEnabled then
        -- Apply the current desired speed and start the monitoring loop
        setSpeed(desiredSpeed)
        task.spawn(function()
            while speedEnabled do
                if player.Character and player.Character:FindFirstChild("Humanoid") then
                    if player.Character.Humanoid.WalkSpeed ~= desiredSpeed then
                        setSpeed(desiredSpeed)
                    end
                end
                task.wait(0.1)
            end
        end)
    else
-- Reset to default speed when toggled off
        setSpeed(defaultSpeed)
    end
end)

-- Slider for Speed Adjustment
local SpeedSlider = Tabs.Misc:AddSlider("SpeedSlider", {
    Title = "Player Speed",
    Description = "Adjust your walk speed",
    Default = 16,
    Min = 1,
    Max = 120, -- Increased max speed to 120
    Rounding = 0,
    Callback = function(Value)
        desiredSpeed = Value
        if speedEnabled then
            setSpeed(desiredSpeed)
        end
    end,
})
SpeedSlider:SetValue(16) -- Set initial value

-- Toggle for Jump Power Control
local JumpToggle = Tabs.Misc:AddToggle("JumpToggle", { Title = "Jump Boost", Default = false })

JumpToggle:OnChanged(function()
    jumpEnabled = JumpToggle.Value

    if jumpEnabled then
        -- Apply the current desired jump power
        setJumpPower(desiredJumpPower)
    else
        -- Reset to default jump power when toggled off
        setJumpPower(defaultJumpPower)
    end
end)

-- Slider for Jump Power Adjustment
local JumpPowerSlider = Tabs.Misc:AddSlider("JumpPowerSlider", {
    Title = "Jump Power",
    Description = "Adjust your jump power",
    Default = 50,
    Min = 1,
    Max = 200, -- Increased max jump power to 200
    Rounding = 0,
    Callback = function(Value)
        desiredJumpPower = Value
        if jumpEnabled then
            setJumpPower(desiredJumpPower)
        end
    end,
})
JumpPowerSlider:SetValue(50) -- Set initial value


-- Gravity toggle
local GravityToggle = Tabs.Misc:AddToggle("GravityToggle", {Title = "Change Gravity",Default = false,})

GravityToggle:OnChanged(function()
    if Options.GravityToggle.Value then
        workspace.Gravity = Options.GravityValueSlider.Value
    else
        workspace.Gravity = 196.2 -- Reset to default gravity
    end
end)

Options.GravityToggle:SetValue(false)

-- Gravity slider
local GravityValueSlider = Tabs.Misc:AddSlider("GravityValueSlider", {
    Title = "Change Your Gravity Value",
    Description = "Adjust gravity strength",
    Default = 196.2,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        if Options.GravityToggle.Value then
            workspace.Gravity = Value
        end
    end,
})

GravityValueSlider:OnChanged(function(Value)
    if Options.GravityToggle.Value then
        workspace.Gravity = Value
    end
end)

GravityValueSlider:SetValue(196.2)

-- Handle respawn
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1) -- Wait a little to make sure character fully loads
    if Options.GravityToggle.Value then
        workspace.Gravity = Options.GravityValueSlider.Value
    else
        workspace.Gravity = 196.2
    end
end)










-- Anti-AFK Toggle
local virtualUser = game:GetService("VirtualUser")
local AntiAFKToggle = Tabs.Misc:AddToggle("AntiAFKToggle", { Title = "Anti-AFK", Default = true })

AntiAFKToggle:OnChanged(function(value)
    if value then
        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            virtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            task.wait(1)
            virtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        end)
    end
end)


Tabs.Mul:AddButton({
        Title = "Create Server",
        Description = "Create a multiplayer server",
        Callback = function()
            Window:Dialog({
                Title = "Multiplayer server",
                Content = "after you press confirm you have to wait for like 2-20 seconds depends on your internet",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            game:GetService("ReplicatedStorage").Functions["Create Server"]:InvokeServer()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            -- Nothing to do here
                        end
                    }
                }
            })
        end
    })


local Input = Tabs.Mul:AddInput("Input", {
    Title = "Multiplayer Server Code",
    Default = "",
    Placeholder = "Enter server code",
    Numeric = false, -- Allows both letters and numbers
    Finished = true, -- Callback only triggers after pressing enter
    Callback = function(Value)
        -- Store the entered server code
        ServerCode = Value
    end
})

Tabs.Mul:AddButton({
    Title = "Join Server",
    Description = "Join multiplayer server using code (ask your friend for code and enter the code)",
    Callback = function()
        if ServerCode and ServerCode ~= "" then
            -- Confirm joining the server
            Window:Dialog({
                Title = "Join Server",
                Content = "Do you want to join the server with code: " .. ServerCode .. "?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(
                                game.PlaceId,
                                ServerCode,
                                game.Players.LocalPlayer
                            )
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            -- User cancelled the operation
                        end
                    }
                }
            })
        else
            -- Show a dialog if no server code was entered
            Window:Dialog({
                Title = "Error",
                Content = "Please enter a valid server code.",
                Buttons = {
                    {
                        Title = "OK",
                        Callback = function() end
                    }
                }
            })
        end
    end
})


Tabs.Mul:AddButton({
    Title = "Rejoin",
    Description = "Rejoin current server",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local function rejoin()
    local player = Players.LocalPlayer
    if player then
        TeleportService:Teleport(game.PlaceId, player)
    end
end

-- Rejoin when this script runs
rejoin()
    end
})





Tabs.Other:AddSection("Universal Script")



Tabs.Other:AddButton({
    Title = "Infinite yield",
    Description = "Best fe command script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
    end
})


Tabs.Other:AddButton({
    Title = "Fly Gui",
    Description = "Best Fly Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})



Tabs.Other:AddButton({
    Title = "Dex V4 Mobile",
    Description = "Dark Dex V4 Mobile (No key) Credits to Yume Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Artifacttx/YumeHub/refs/heads/main/Universal/DarkDex_Mobile", true))()
    end
})



Tabs.Other:AddSection("Built-in Executor (Why did i even made this🥀)")

local ExecutableScript = ""

-- Create the Input
local Input = Tabs.Other:AddInput("ScriptInput", {
    Title = "Put your script here", -- Changed the title
    Default = "",
    Placeholder = "Paste your script here...",
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        ExecutableScript = Value
    end
})

Input:OnChanged(function()
    ExecutableScript = Input.Value
end)

-- Execute Script Button
Tabs.Other:AddButton({
    Title = "Execute Script", -- Button title
    Description = "Execute the script you input above.",
    Callback = function()
        Window:Dialog({
            Title = "Execute Script?",
            Content = "Do you really want to execute the script?",
            Buttons = {
                {
                    Title = "Yes",
                    Callback = function()
                        local func, err = loadstring(ExecutableScript)
                        if func then
                            func()
                        else
                            warn("Failed to load script:", err)
                        end
                    end
                },
                {
                    Title = "No",
                    Callback = function()
                        -- Cancelled, do nothing
                    end
                }
            }
        })
    end
})

-- Clear Textbox Button
Tabs.Other:AddButton({
    Title = "Clear Textbox", -- Updated title
    Description = "Clear the script input box.",
    Callback = function()
        Input:SetValue("") -- Clear the input box
        ExecutableScript = "" -- Clear the stored script
    end
})
