local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Modded Tuff Game",
    Icon = "door-open", -- lucide icon. optional
    Author = "by Tuff Boiii", -- optional

    Size = UDim2.fromOffset(520, 360),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
})

Window:EditOpenButton({
    Title = "Open UI",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})


local func = Window:Tab({
    Title = "function",
    Icon = "bird", -- optional
    Locked = false,
})

local RunService = game:GetService("RunService")
local digging = false
local digConnection

func:Toggle({
    Title = "Auto Dig",
    Desc = "Automatically dig",
    Icon = "bird",
    Type = "Toggle",
    Value = false,
    Callback = function(state)
        digging = state
        if state then
            digConnection = RunService.Heartbeat:Connect(function()
                game:GetService("ReplicatedStorage").remoteFunctions.toolClick:InvokeServer()
            end)
        else
            if digConnection then
                digConnection:Disconnect()
                digConnection = nil
            end
        end
    end
})


local planting = false
local plantTask

func:Toggle({
    Title = "Auto Plant Sprout",
    Desc = "Automatically plant magic bean",
    Icon = "bird",
    Type = "Toggle",
    Value = false,
    Callback = function(state)
        planting = state
        if state then
            plantTask = task.spawn(function()
                while planting do
                    local args = {
                        [1] = {
                            ["Name"] = "Magic Bean"
                        }
                    }
                    game:GetService("ReplicatedStorage").remoteFunctions.PlayerActivesCommand:InvokeServer(unpack(args))
                    task.wait(0.2)
                end
            end)
        end
    end
})


local stinger = false
local stingerTask

func:Toggle({
    Title = "Auto Stinger",
    Desc = "Use Stinger every 30s",
    Icon = "bird",
    Type = "Toggle",
    Value = false,
    Callback = function(state)
        stinger = state
        if state then
            stingerTask = task.spawn(function()
                while stinger do
                    local args = {
                        [1] = {
                            ["Name"] = "Stinger"
                        }
                    }
                    game:GetService("ReplicatedStorage").remoteFunctions.PlayerActivesCommand:InvokeServer(unpack(args))
                    task.wait(30)
                end
            end)
        end
    end
})
