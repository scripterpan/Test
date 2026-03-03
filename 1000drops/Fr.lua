local url = "https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"
local ok, body = pcall(function() return game:HttpGet(url) end)
if not ok or not body or body == "" then
    warn("HttpGet failed:", body)
    return
end

local f, err = loadstring(body)
if not f then
    warn("loadstring failed:", err)
    return
end

local WindUI = f()
if type(WindUI) ~= "table" then
    warn("WindUI loader returned nil or wrong type")
    return
end

local Window = WindUI:CreateWindow({
    Title = "Bss modded x1000 drop",
    Icon = "cat",
    Author = "Pann Hub",
    Folder = "PannHub-WindUi-Bssm1000x",
    Size = UDim2.fromOffset(520, 360),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    Background = "", -- rbxassetid only
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    User = {
        Enabled = true,
        Anonymous = false,
    }
})

Window:EditOpenButton({
    Title = "Bss modded x1000 drop",
    Icon = "cat",
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

local Tuff = Window:Tab({
    Title = "Boii",
    Icon = "bird", -- optional
    Locked = false,
})

local RunService = game:GetService("RunService")
local digging = false
local digConnection

Tuff:Toggle({
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

Tuff:Toggle({
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
                    task.wait(2)
                end
            end)
        end
    end
})
