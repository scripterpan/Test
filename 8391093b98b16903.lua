-- This file was generated with UnveilR 2.1.8 at discord.gg/threaded or discord.gg/aqfudJEEeE (hookOp is on).

local BUtT = "BUtT";
local Ray = "Ray";
local Instance = "Instance";
local Tamper_Detected = "Tamper Detected!";
local Table = "table";
local Connect = "Connect";
local WaitForChild = "WaitForChild";
local Destroy = "Destroy";
local GetState = "GetState";
local Inverse = "Inverse";
local Random = "random";
local Floor = "floor";
local Remove = "remove";
local Error = "error";
local Unpack = "unpack";
local Disconnect = "Disconnect";
local Gmatch = "gmatch";
local Game = "game";
local Task = "task";
local String = "string";
local Warn = "warn";
local Math = "math";
local Char = "char";
local GetService = "GetService";
local Concat = "concat";
local var26 = (table and 11233220); -- 11233220
local var27 = (var26 or 16222766);
local Players = "Players";
local Players_2 = game:GetService(Players);
local RunService = "RunService";
local RunService_2 = game:GetService(RunService);
local UserInputService = game:GetService("UserInputService");
local Workspace = game:GetService("Workspace");
local LocalPlayer = Players_2.LocalPlayer;
local PlayerGui = "PlayerGui";
local PlayerGui_2 = LocalPlayer:WaitForChild(PlayerGui);
local CurrentCamera = workspace.CurrentCamera;
local New = "new";
local ScreenGui = "ScreenGui";
local ScreenGui_2 = Instance.new(ScreenGui);
local Name = "Name";
ScreenGui_2[Name] = "DesyncGui";
local ResetOnSpawn = "ResetOnSpawn";
ScreenGui_2[ResetOnSpawn] = false;
local Parent = "Parent";
ScreenGui_2[Parent] = PlayerGui_2;
local TextButton = "TextButton";
local TextButton_2 = Instance.new(TextButton);
local Name_2 = "Name";
TextButton_2[Name_2] = "DesyncButton";
local Size = "Size";
local UDim2_New = UDim2[New];
local UDim2_Value = UDim2_New(0, 150, 0, 40);
TextButton_2[Size] = UDim2_Value;
local Position = "Position";
local UDim2_Value_2 = UDim2_New(0, 20, 0, 100);
TextButton_2[Position] = UDim2_Value_2;
local Color3_FromRGB = Color3.fromRGB;
local Color3_Value = Color3_FromRGB(30, 30, 30);
TextButton_2.BackgroundColor3 = Color3_Value;
local Color3_Value_2 = Color3_FromRGB(240, 240, 240);
TextButton_2.TextColor3 = Color3_Value_2;
local Font = "Font";
local Font_2 = "Font";
local Enum_Font_2 = Enum[Font_2];
local Gotham = "Gotham";
local Gotham_2 = Enum_Font_2[Gotham];
TextButton_2[Font_2] = Gotham_2;
TextButton_2.TextSize = 18;
local Text_4 = "Text";
TextButton_2[Text_4] = "Toggle Desync";
TextButton_2.BorderSizePixel = 0;
TextButton_2.Draggable = true;
TextButton_2[Parent] = ScreenGui_2;
local KeyboardEnabled = UserInputService.KeyboardEnabled;
local WaitForChild_2 = PlayerGui_2[WaitForChild];
local TouchGui = "TouchGui";
local TouchGui_2 = PlayerGui_2:WaitForChild(TouchGui);
if not TouchGui_2 then -- didnt run, expr id 1, has an else.
else
    local FindFirstChild = TouchGui_2.FindFirstChild;
    local TouchControlFrame = TouchGui_2:FindFirstChild("TouchControlFrame", true);
end
local var136 = (TouchControlFrame and 14824450); -- 14824450
local FindFirstChild_2 = TouchControlFrame.FindFirstChild;
local ThumbstickFrame = TouchControlFrame:FindFirstChild("ThumbstickFrame");
if TouchControlFrame then -- ran, expr id 2, has an else.
    local FindFirstChild_3 = TouchControlFrame.FindFirstChild;
end
local DynamicThumbstickFrame = TouchControlFrame:FindFirstChild("DynamicThumbstickFrame");
local Vector2_New = Vector2[New];
local Vector2_Value = Vector2_New(0, 0);
local InputBegan = "InputBegan";
local Connection;
Connection = UserInputService[InputBegan]:Connect(function(Input, GameProcessedEvent) -- args: Input_2, GameProcessedEvent_2;
    local Input_2 = Input[1];
end);
local InputEnded = "InputEnded";
local Connection_2;
Connection_2 = UserInputService[InputEnded]:Connect(function(Input_3) -- args: Input_4, GameProcessedEvent_3;
    local Input_4 = Input_3[1];
end);
local Connection_3;
Connection_3 = UserInputService.InputChanged:Connect(function(Input_5, GameProcessedEvent_4, p3_0) -- args: Input_6, GameProcessedEvent_5;
    local Input_6 = Input_5[1];
    local Input_6_Is_Nil = (Input_6 == nil);
    -- false, eq id 1
end);
local TouchPinch = "TouchPinch";
local Connection_4;
Connection_4 = UserInputService[TouchPinch]:Connect(function(TouchPositions, Scale, Velocity, State_2, GameProcessedEvent_6, p6_0) -- args: TouchPositions_2, Scale_2, Velocity_2, State_3, GameProcessedEvent_7;
    local State_3 = TouchPositions[4];
    local TouchPositions_2 = TouchPositions[1];
    local Scale_2 = TouchPositions[2];
    local Velocity_2 = TouchPositions[3];
end);
local Vector3_New = Vector3[New];
local Vector3_Value = Vector3_New(0, 1, 0);
local Enum_HumanoidStateType = Enum.HumanoidStateType;
local FallingDown = Enum_HumanoidStateType.FallingDown;
local GettingUp = "GettingUp";
local GettingUp_2 = Enum_HumanoidStateType[GettingUp];
local Seated = "Seated";
local Seated_2 = Enum_HumanoidStateType[Seated];
local Ragdoll = "Ragdoll";
local Ragdoll_2 = Enum_HumanoidStateType[Ragdoll];
local Dead = "Dead";
local Dead_2 = Enum_HumanoidStateType[Dead];
local Physics = "Physics";
local Physics_2 = Enum_HumanoidStateType[Physics];
local Connection_5;
Connection_5 = TextButton_2.MouseButton1Click:Connect(function(p1_0, p2_0, p3_0, p4_0)
    TextButton_2[Text_4] = "Desync: ON";
    local Color3_Value_3 = Color3_FromRGB(0, 255, 127);
    TextButton_2.TextColor3 = Color3_Value_3;
    if Character_5 then -- ran, expr id 4, has an else.
    local Human_8 = "Human";
    local HumanoidRootPart = Character_5:FindFirstChild("HumanoidRootPart");
    local LowerTorso = "LowerTorso";
    local LowerTorso_2 = Character_5:FindFirstChild(LowerTorso);
    local var276 = (LowerTorso_2 and true); -- true
    -- local _ = var276 or (unknown_value)
    local LowerTorso_3 = "LowerTorso";
    local LowerTorso_4 = Character_5:FindFirstChild(LowerTorso_3);
    if LowerTorso_2 then -- ran, expr id 5, has an else.
        local Root = "Root";
        local FindFirstChild_4 = LowerTorso_2.FindFirstChild(LowerTorso_4, Root);
    end
    local Vector3_Value_2 = Vector3_New(0, 0.5, 0);
    local var283 = (HumanoidRootPart and 14854409); -- 14854409
    local var284 = (var283 or 15212344);
    local Not_FindFirstChild_4 = not FindFirstChild_4;
    -- true
    local var285 = (Not_FindFirstChild_4 and 11541215); -- 11541215
    warn("Desync Error: Could not find required character parts for the current rig.")
    local var286 = (FindFirstChild_4 and 12875853);
    local var287 = (FindFirstChild_4 and 13168423);
    local var288 = (LowerTorso_4 and 13548183); -- 13548183
    local Parent_2 = LowerTorso_2[Parent];
    local var291 = (Parent_2 and 12073761); -- 12073761
    local var292 = (var291 or 14385300);
    if not HumanoidRootPart then -- didnt run, expr id 6, has an else.
    else
    end
    local Parent_3 = HumanoidRootPart[Parent];
    local Transparency = "Transparency";
    HumanoidRootPart[Transparency] = 0;
end);
local Connection_6;
Connection_6 = LocalPlayer.CharacterAdded:Connect(function(Character_6, p2_0, p3_0, p4_0) -- args: Character_7;
    local Character_7 = Character_6[1];
    if Connected then -- ran, expr id 7, has an else.
        local Disconnect_2 = Connected[Disconnect];
        local Disconnect_3 = Connected:Disconnect();
    end
    local WaitForChild_3 = Character_7[WaitForChild];
    local Humanoid_10 = Character_7:WaitForChild("Humanoid");
    local StateChanged_2 = Humanoid_10.StateChanged;
    local Connect_3 = StateChanged_2[Connect];
    local Connected_2 = StateChanged_2:Connect(function(p1_0, p2_0)
        local Not_Character_7 = not Character_7;
        -- false
        local var299 = (Not_Character_7 and 10363141);
        local FindFirstChildOfClass = Character_7.FindFirstChildOfClass;
        local Humanoid_11 = "Humanoid";
        local Humanoid_12 = Character_7:FindFirstChildOfClass(Humanoid_11);
        local Not_Humanoid_12 = not Humanoid_12;
        -- false
        local var305 = (Not_Humanoid_12 and 11513413);
        local GetState_2 = Humanoid_12[GetState];
        local State_4 = Humanoid_12:GetState();
        local Dictionary = {
            [Ragdoll_2] = true,
            [Dead_2] = true,
            [FallingDown] = true,
            [GettingUp_2] = true,
            [Seated_2] = true,
            [Physics_2] = true,
        };
        local var307 = Env[State_4];
        local Not_Var307 = not var307;
        -- false
    end);
    local var308 = (FindFirstChild_4 and 12875853);
    local var309 = (FindFirstChild_4 and 13168423);
    local var310 = (LowerTorso_4 and 13548183); -- 13548183
    local Parent_4 = LowerTorso_2[Parent];
    local var311 = (Parent_4 and 12073761); -- 12073761
    local var312 = (var311 or 14385300);
    if not HumanoidRootPart then -- didnt run, expr id 8, has an else.
    else
        local Parent_5 = HumanoidRootPart[Parent];
    end
    HumanoidRootPart[Transparency] = 0;
    local Wait = "wait";
    local Waited_For = task.wait();
    if Character_7 then -- ran, expr id 9, has an else.
        local FindFirstChild_5 = Character_7.FindFirstChild;
        local HumanoidRootPart_2 = Character_7:FindFirstChild("HumanoidRootPart");
    end
    local FindFirstChild_6 = Character_7.FindFirstChild;
    local LowerTorso_5 = Character_7:FindFirstChild(LowerTorso_3);
    local var314 = (LowerTorso_5 and true); -- true
    -- local _ = var314 or (unknown_value)
    local FindFirstChild_7 = Character_7.FindFirstChild;
    local LowerTorso_6 = Character_7:FindFirstChild(LowerTorso_3);
    if LowerTorso_6 then -- ran, expr id 10, has an else.
        local FindFirstChild_8 = LowerTorso_6.FindFirstChild;
        local Root_2 = LowerTorso_6:FindFirstChild(Root);
    end
    local Vector3_Value_3 = Vector3_New(0, 0.5, 0);
    local var315 = (HumanoidRootPart_2 and 14854409); -- 14854409
    local var316 = (var315 or 15212344);
    local Not_Root_2 = not Root_2;
    -- false
    local var317 = (Not_Root_2 and 11541215);
    local CameraType = "CameraType";
    local CameraType_2 = "CameraType";
    local CameraType_3 = CurrentCamera[CameraType_2];
    local CameraType_4 = "CameraType";
    local Enum_CameraType_4 = Enum[CameraType_4];
    local Scriptable = Enum_CameraType_4.Scriptable;
    CurrentCamera[CameraType_4] = Scriptable;
    local Transparency_2 = HumanoidRootPart_2[Transparency];
    local CanCollide = "CanCollide";
    local CanCollide_2 = HumanoidRootPart_2[CanCollide];
    HumanoidRootPart_2[Transparency] = 1;
    local CanCollide_3 = "CanCollide";
    HumanoidRootPart_2[CanCollide_3] = true;
    local Enabled = "Enabled";
    Root_2[Enabled] = false;
    local CanCollide_4 = "CanCollide";
    local CanCollide_5 = "CanCollide";
    local CanCollide_6 = LowerTorso_6[CanCollide_5];
    LowerTorso_6[CanCollide_5] = false;
    local SelectionBox = Instance.new("SelectionBox");
    local Name_3 = "Name";
    SelectionBox[Name_3] = "HRPHighlight";
    local Adornee = "Adornee";
    SelectionBox[Adornee] = HumanoidRootPart_2;
    local Color3_Value_4 = Color3_FromRGB(255, 255, 0);
    SelectionBox.Color3 = Color3_Value_4;
    SelectionBox.LineThickness = 0.05;
    SelectionBox[Parent] = ScreenGui_2;
    local Not_Character_7_2 = not Character_7;
    -- false
    local var378 = (Not_Character_7_2 and 10363141);
    local FindFirstChildOfClass_2 = Character_7.FindFirstChildOfClass;
    local Humanoid_13 = Character_7:FindFirstChildOfClass(Humanoid_11);
    local Not_Humanoid_13 = not Humanoid_13;
    -- false
    local var379 = (Not_Humanoid_13 and 11513413);
    local GetState_3 = Humanoid_13[GetState];
    local State_5 = Humanoid_13:GetState();
    local var381 = Dictionary[State_5];
    local Not_Var381 = not var381;
    -- false
    local Connection_7;
    Connection_7 = RunService_2.RenderStepped:Connect(function(DeltaTime, p2_0, p3_0, p4_0, p5_0, p6_0) -- args: DeltaTime_2;
        local DeltaTime_2 = DeltaTime[1];
        local var392 = (HumanoidRootPart_2 and 15173168); -- 15173168
        local Parent_6 = HumanoidRootPart_2[Parent];
        if not Parent_6 then -- didnt run, expr id 11, has an else.
        else
            local var395 = (LowerTorso_6 and 13831520); -- 13831520
        end
        local Parent_7 = LowerTorso_6[Parent];
        local var398 = (Parent_7 and 12034742); -- 12034742
        local CameraType_5 = "CameraType";
        local CameraType_6 = CurrentCamera[CameraType_5];
        local CameraType_7 = "CameraType";
        local Scriptable_2 = Enum_CameraType_4.Scriptable;
        local var416 = (CameraType_6 == Scriptable_2);
        -- true, eq id 2
        local Not_Var416 = not var416;
        -- false
        local var417 = (Not_Var416 and 10111935);
        local Clamp = "clamp";
        local Y = Vector2_Value.Y;
        local var421 = Y * 0.8;
        -- 0.000000
        local var422 = 0 - var421;
        -- 0.000000
        local X = Vector2_Value.X;
        local var424 = X * 0.8;
        -- 0.000000
        local var425 = 0 - var424;
        -- 0.000000
        local Clamp_2 = "clamp";
        local Position_2 = "Position";
        local Position_3 = HumanoidRootPart_2[Position_2];
        local var432 = Position_3 + Vector3_Value_3;
        local Angles = "Angles";
        local CFrame_Angles = CFrame[Angles];
        local Rad = "rad";
        local CFrame_Value = CFrame_Angles(0, 0, 0);
        local Angles_2 = "Angles";
        local CFrame_Value_2 = CFrame_Angles(0, 0, 0);
        local var438 = CFrame_Value * CFrame_Value_2;
        -- CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        local LookVector = "LookVector";
        local LookVector_2 = var438[LookVector];
        local var445 = LookVector_2 * 15;
        local var446 = var432 - var445;
        local Ray_New = Ray[New];
        local var447 = var446 - var432;
        local Unit = "Unit";
        local Unit_2 = var447[Unit];
        local var449 = Unit_2 * 15;
        local Ray_Value = Ray_New(var432, var449);
        local var450 = (SelectionBox and 10781693); -- 10781693
        local Parent_8 = SelectionBox[Parent];
        -- local _ = Parent_8 or (unknown_value)
        local FindPartOnRayWithIgnoreList = workspace.FindPartOnRayWithIgnoreList;
        local FindPartOnRayWithIgnoreList_2 = workspace:FindPartOnRayWithIgnoreList(Ray_Value, Character_7);
        local var454 = (FindPartOnRayWithIgnoreList_2 and 11298143); -- 11298143
        local var455 = (var454 or 11083069);
        local Direction = "Direction";
    end);
end);
local Character_2 = "Character";
local Character_3 = LocalPlayer[Character_2];
if Character_3 then -- ran, expr id 3, has an else.
    local Character_4 = "Character";
    local Character_5 = LocalPlayer[Character_4];
    local Humanoid_7 = "Humanoid";
    local Humanoid_8 = Character_5:WaitForChild(Humanoid_7);
    local StateChanged = Humanoid_8.StateChanged;
    local Connect_2 = StateChanged[Connect];
    local Connected = StateChanged:Connect(function(p1_0, p2_0)
        local Not_Character_7_3 = not Character_7;
        -- false
        local var388 = (Not_Character_7_3 and 10363141);
        local FindFirstChildOfClass_3 = Character_7.FindFirstChildOfClass;
        local Humanoid_14 = Character_7:FindFirstChildOfClass(Humanoid_11);
        local Not_Humanoid_14 = not Humanoid_14;
        -- false
        local var389 = (Not_Humanoid_14 and 11513413);
        local GetState_4 = Humanoid_14[GetState];
        local State_6 = Humanoid_14:GetState();
        local var391 = Dictionary[State_6];
        local Not_Var391 = not var391;
        -- false
    end);
end