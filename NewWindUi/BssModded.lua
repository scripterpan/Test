local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

--[[
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
]]

-- */  Window  /* --
local Window = WindUI:CreateWindow({
	Title = "Modded Tuff Game",
	--Author = "by Tuff Guy",
	Folder = "samadih lihmabal",
	Icon = "solar:folder-2-bold-duotone",
	--Theme = "Mellowsi",
	--IconSize = 22*2,
	NewElements = true,
	--Size = UDim2.fromOffset(700,700),

	HideSearchBar = false,

	OpenButton = {
		Title = "Open Tuff UI", -- can be changed
		CornerRadius = UDim.new(1, 0), -- fully rounded
		StrokeThickness = 3, -- removing outline
		Enabled = true, -- enable or disable openbutton
		Draggable = true,
		OnlyMobile = false,
		Scale = 0.5,

		Color = ColorSequence.new( -- gradient
			Color3.fromHex("#30FF6A"),
			Color3.fromHex("#e7ff2f")
		),
	},
	Topbar = {
		Height = 44,
		ButtonsType = "Mac", -- Default or Mac
	},

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
