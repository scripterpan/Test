local a=game:GetService("Players")local b=a.LocalPlayer
local c=game:GetService("Lighting")local d=game:GetService("VirtualUser")local e=game:GetService("RunService")local f=game:GetService("PathfindingService")local g=game:GetService("ReplicatedStorage")local h=game:GetService("ProximityPromptService")local i=game:GetService("UserInputService")local j=game:GetService("Workspace")local k=game:GetService("SoundService")local l=game:GetService("Debris")local m=4590657391
local n=true
function
    Sound()local o=Instance.new("Sound",k)o.Volume=2.5
    o.SoundId="rbxassetid://"..m
    o.Playing=n and true or false
    l:AddItem(o,2)
end
Sound()
function
    WaitForChildOfClass(p,q)local r=p:FindFirstChildOfClass(q)
    while
        r==nil do task.wait()r=p.DescendantAdded:Wait()
        if
        r:IsA(q)then
            return
            r
        end
    end
    return
    r
end
function
    setcantouch(q,s)
    if
    q:IsA("Model")then
        for
            t,v in ipairs(q:GetChildren())do
                if
                v:IsA("BasePart")then v.CanTouch=s
            end
        end
    elseif
        q:IsA("BasePart")then q.CanTouch=s
    end
end
if
b:GetAttribute("mshaxLoaded")then print("mshax already loaded")
return
end
if
game:GetService("ReplicatedStorage"):FindFirstChild("RemotesFolder")or game.ReplicatedStorage:FindFirstChild("EntityInfo")or game.ReplicatedStorage:FindFirstChild("Bricks")then
    repeat
        task.wait()until workspace.CurrentRooms:FindFirstChildOfClass("Model")local u=false
        local w=false
        local x=false
        local y=false
        local z=false
        local A
        local B
        local C
        local D='https://raw.githubusercontent.com/mstudio45/Obsidian/main/'local E=identifyexecutor()or getexecutorname()or"Unknown"local F=loadstring(game:HttpGet(D..'Library.lua'))()F:Notify("Loading mshax
        for
            DOORS",5)
            if
            E=="Xeno"or E=="xeno"then F:Notify("Not Supported Executor",3)
            return
        end
        local G,H=pcall(
        function
            ()
            return
            RequiredMainGame
        end
        )
        if
        not G then F:Notify("Require Is Not Supported Some Features would be disabled",3)u=true
        print("false require")
    end
    print("true require")
    if
    not isnetworkowner then F:Notify("isnetworkowner not supported some features would be disabled",3)w=true
    print("false isnetworkowner")
end
print("true isnetworkowner")local I=Instance.new("ProximityPrompt",workspace)I.Name="TestPrompt"local G,H=pcall(
function
    ()
    return
    fireproximityprompt(I)
end
)
if
not G then I:Destroy()F:Notify("fireproximityprompt is not supported methods would change stillwork but less reliable some will not work will be disabled",4)x=true
print("false fireproximityprompt")
end
print("true fireproximityprompt")I:Destroy()
if
not replicatesignal then y=true
F:Notify("replicatesignal not supported methods would change stillwork but less reliable",3)print("false replicatesignal")
end
print("true replicatesignal")
if
not hookmetamethod or not newcclosure then F:Notify("Hooking not supported some features would be disabled",3)print("false hookmetamethod")z=true
end
print("true hookmetamethod")ThemeManager=loadstring(game:HttpGet(D..'addons/ThemeManager.lua'))()SaveManager=loadstring(game:HttpGet(D..'addons/SaveManager.lua'))()Options=F.Options
Toggles=F.Toggles
local J=loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHunterSolo1/Scripts/main/ESPLibrary"))()local K=RaycastParams.new()
function
    GetNearestCloset()local L=nil
    local M=math.huge
    local N=workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]
    if
    N then
        for
            t,v in ipairs(N:FindFirstChild("Assets",true):GetChildren())do
                if
                v.Name=="Wardrobe"or v.Name=="Rooms_Locker"or v.Name=="Rooms_Locker_Fridge"or v.Name=="Toolshed"or v.Name=="Locker_Large"or v.Name=="Backdoor_Wardrobe"or v.Name=="Bed"or v.Name=="Double_Bed"then
                    if
                    v.PrimaryPart then local O=(b.Character.HumanoidRootPart.Position-v.PrimaryPart.Position).Magnitude
                    if
                    O<M then L=v
                    M=O
                end
            end
        end
    end
end
return
L
end
function
    GetNearestLocker()local L=nil
    local M=math.huge
    for
        t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
            if
            v.Name=="Rooms_Locker"or v.Name=="Rooms_Locker_Fridge"then
                if
                v.PrimaryPart then local O=(b.Character.HumanoidRootPart.Position-v.PrimaryPart.Position).Magnitude
                if
                O<M then L=v
                M=O
            end
        end
    end
end
return
L
end
function
    fireInteract(P)
    if
    x==true then P:InputHoldBegin()P:InputHoldEnd(P.HoldDuration)
elseif
    x==false then fireproximityprompt(P)
end
end
local Q=nil
Q=game:GetService("ProximityPromptService").PromptTriggered:Connect(
function
    (v)
    if
    F.Unloaded==true then Q:Disconnect()Q=nil
end
if
v.Name=="FakePrompt"then
    if
    game.Players.LocalPlayer.Character:FindFirstChild("Lockpick")or game.Players.LocalPlayer.Character:FindFirstChild("SkeletonKey")then local R=game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Animations",9e9).usefinish)R:Play()
elseif
    game.Players.LocalPlayer.Character:FindFirstChild("Shears")then local R=game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Animations",9e9).promptanimend)R:Play()game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle").sound_promptend:Play()
end
end
end
)local S=nil
S=game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(
function
    (v)
    if
    F.Unloaded==true then S:Disconnect()S=nil
end
if
v.Name=="FakePrompt"then
    if
    game.Players.LocalPlayer.Character:FindFirstChild("Lockpick")or game.Players.LocalPlayer.Character:FindFirstChild("SkeletonKey")then local R=game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Animations").use)R:Play()
elseif
    game.Players.LocalPlayer.Character:FindFirstChild("Shears")then local R=game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Animations",9e9).promptanim)R:Play()game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Handle").sound_prompt:Play()
end
end
end
)b:SetAttribute("mshaxLoaded",true)Floor=g.GameData.Floor
RemoteFolder=g:FindFirstChild("EntityInfo")or g:FindFirstChild("RemotesFolder")or g:FindFirstChild("Bricks")MainGame=b.PlayerGui.MainUI.Initiator.Main_Game
RequiredMainGame=require(b.PlayerGui.MainUI.Initiator.Main_Game)RemoteListener=MainGame.RemoteListener
Modules=RemoteListener.Modules
ClientModules=game:GetService("ReplicatedStorage"):FindFirstChild("ModulesClient")or game:GetService("ReplicatedStorage"):FindFirstChild("ClientModules")
if
g:FindFirstChild("RemotesFolder")then Modifiers=g:WaitForChild("LiveModifiers")
end
local T=b.PlayerGui
Fog=c:FindFirstChild("Fog")or c:FindFirstChild("CaveAtmosphere")CollisionClone=nil
CollisionClone2=nil
C=Instance.new("Folder",workspace)C.Name="Path Node"local U
local V
local W=nil
if
b.Character then K.FilterDescendantsInstances={b.Character}K.FilterType=Enum.RaycastFilterType.Blacklist
if
b.PlayerGui.MainUI.MainFrame.MobileButtons:FindFirstChild("JumpButton")then U=b.PlayerGui.MainUI.MainFrame.MobileButtons.JumpButton.MouseButton1Click:Connect(
function
    ()
    if
    Toggles and Toggles.InfiniteJump and Toggles.InfiniteJump.Value then
        if
        W then W.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
end
)
end
W=b.Character
if
W.Collision:FindFirstChild("CollisionCrouch")then W.Collision.CollisionCrouch.Size=Vector3.new(0.5,0.001,3)
end
if
g:FindFirstChild("RemotesFolder")then CollisionClone=W.CollisionPart:Clone()CollisionClone.Parent=W
CollisionClone.Massless=true
CollisionClone.CanCollide=false
CollisionClone.Name="_CollisionPart"
if
CollisionClone:FindFirstChild("CollisionCrouch")then CollisionClone.CollisionCrouch:Destroy()
end
CollisionClone2=W.CollisionPart:Clone()CollisionClone2.Parent=W
CollisionClone2.Massless=true
CollisionClone2.CanCollide=false
CollisionClone2.Name="_CollisionPart2"
if
CollisionClone2:FindFirstChild("CollisionCrouch")then CollisionClone2.CollisionCrouch:Destroy()
end
end
end
local X=b.CharacterAdded:Connect(
function
    ()task.wait(1.5)
    if
    CrouchConnection then CrouchConnection:Disconnect()CrouchConnection=nil
end
if
U then U:Disconnect()U=nil
end
K.FilterDescendantsInstances={b.Character}K.FilterType=Enum.RaycastFilterType.Blacklist
if
b.PlayerGui.MainUI.MainFrame.MobileButtons:FindFirstChild("JumpButton")then U=b.PlayerGui.MainUI.MainFrame.MobileButtons.JumpButton.MouseButton1Click:Connect(
function
    ()
    if
    Toggles.InfiniteJump.Value then
        if
        W then W.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
end
)
end
MainGame=b.PlayerGui.MainUI.Initiator.Main_Game
RequiredMainGame=require(b.PlayerGui.MainUI.Initiator.Main_Game)RemoteListener=MainGame.RemoteListener
Modules=RemoteListener.Modules
W=b.Character
if
W.Collision:FindFirstChild("CollisionCrouch")then W.Collision.CollisionCrouch.Size=Vector3.new(0.5,0.001,3)
end
if
g:FindFirstChild("RemotesFolder")then CollisionClone=W.CollisionPart:Clone()CollisionClone.Parent=W
CollisionClone.Massless=true
CollisionClone.CanCollide=false
CollisionClone.Name="_CollisionPart"CollisionClone2=W.CollisionPart:Clone()CollisionClone2.Parent=W
CollisionClone2.Massless=true
CollisionClone2.CanCollide=false
CollisionClone2.Name="_CollisionPart2"
if
CollisionClone2:FindFirstChild("CollisionCrouch")then CollisionClone2.CollisionCrouch:Destroy()
end
end
end
)local Y=g.GameData.LatestRoom.Value
local Z={}Window=F:CreateWindow({Title='mshax v4.5 | DOORS ',Center=true,AutoShow=true})Tabs={Main=Window:AddTab('Main'),Player=Window:AddTab('Player'),Exploits=Window:AddTab('Exploits'),Visuals=Window:AddTab('Visuals'),Floor=Window:AddTab('Floor'),UISettings=Window:AddTab('Config'),Addons=Window:AddTab('Addons')}AddonBox=Tabs.Addons:AddLeftGroupbox('Addons')local _=Tabs.Main:AddLeftTabbox()local a0=_:AddTab("Miscellaneous")local a1=_:AddTab("Notifying / ESP")local a2=Tabs.Player:AddLeftTabbox()local a3=a2:AddTab("Movement")local a4=a2:AddTab("Camera")local a5=Tabs.Exploits:AddLeftTabbox()local a6=a5:AddTab("Entitys")local a7=a5:AddTab("Bypass")Automation=Tabs.Exploits:AddRightGroupbox('Automation')InfiniteBox=Tabs.Player:AddRightGroupbox('Infinite Items')local a8=Tabs.Main:AddRightGroupbox('Reach')FloorAnti=Tabs.Floor:AddLeftGroupbox('Entites Bypass')ModifiersBox=Tabs.Floor:AddLeftGroupbox('Modifiers')FloorESP=Tabs.Floor:AddRightGroupbox('ESP')ESP=Tabs.Visuals:AddRightGroupbox('Esp')SettingsESP=Tabs.Visuals:AddLeftGroupbox('Settings')ClosetTran=Tabs.Visuals:AddLeftGroupbox('Transparent')SettingsBox=Tabs.UISettings:AddRightGroupbox('UI')
if
Floor.Value=="Rooms"then
    function
        addpart(a9)local q=Instance.new("Part",workspace:FindFirstChild("Path Node"))q.Name="Waypoint"q.Size=Vector3.new(0.3,0.3,0.3)q.Position=a9
        q.Anchored=true
        q.CanCollide=false
        q.Color=Color3.new(0,1,0)
    end
    function
        moveto(aa)local ab=f:CreatePath({AgentRadius=2,AgentHeight=0.1,AgentCanClimb=true,AgentCanJump=true,WaypointSpacing=4.5})ab:ComputeAsync(b.Character.HumanoidRootPart.Position,aa.Position)
        if
        ab.Status==Enum.PathStatus.Success then
            for
                t,ac in ipairs(ab:GetWaypoints())do b.Character.Humanoid:MoveTo(ac.Position)b.Character.Humanoid.MoveToFinished:Wait()
            end
        end
    end
    function
        moveto(aa)local ad=f:CreatePath({AgentRadius=2,AgentHeight=0.1,AgentCanClimb=false,AgentCanJump=false,WaypointSpacing=5})ad:ComputeAsync(b.Character.HumanoidRootPart.Position,aa.Position)
        if
        ad.Status==Enum.PathStatus.Success then
            for
                t,ac in ipairs(ad:GetWaypoints())do b.Character.Humanoid:MoveTo(ac.Position)b.Character.Humanoid.MoveToFinished:Wait()
            end
        end
    end
    FloorAnti:AddToggle('AutoRooms',{Text="Auto Rooms",Default=false})FloorAnti:AddLabel('Recommended Speed 45-40 , No Noclip',true)Toggles.AutoRooms:OnChanged(
    function
        (s)
        if
        not s then b.Character.Humanoid:MoveTo(b.Character.HumanoidRootPart.Position)
    end
end
)FloorAnti:AddDivider()
end
if
Floor.Value=="Hotel"and g:FindFirstChild("RemotesFolder")then Objects={DoorNormal=true,DoorFrame=true,Luggage_Cart_Crouch=true,Carpet=true,CarpetLight=true,Luggage_Cart=true,DropCeiling=true,End_DoorFrame=true,Start_DoorFrame=true,TriggerEventCollision=true,StairCollision=true}Set={Pillar=true,Potted_Plant=true,Wall=true,Wall_Strip=true}FloorAnti:AddToggle('AutoDoors',{Text="Auto Doors (99 Doors)",Default=false,Risky=true,Visible=false})
function
    canhit(ae)
    if
    ae:IsA("BasePart")then ae.CanCollide=false
elseif
    ae:IsA("Model")then
        for
            t,v in pairs(ae:GetChildren())do
                if
                v:IsA("BasePart")then v.CanCollide=false
            end
        end
    end
end
Toggles.AutoDoors:OnChanged(
function
    (s)
    if
    s then
        if
        not Toggles.AntiHear.Value then Toggles.AntiHear:SetValue(true)
    end
    if
    not Toggles.NoCutscenes.Value then Toggles.NoCutscenes:SetValue(true)
end
F:Notify("Enable Auto Interact / Auto Library Code / Automation Godmode For Auto Doors to Work Properly",5)
for
    t,v in pairs(workspace.CurrentRooms:GetDescendants())do
        if
        Objects[v.Name]then canhit(v)
    end
    if
    v.Name=="LiveObstructionNew"or v.Name=="LiveObstructionNewIntro"then canhit(v:WaitForChild("Collision"))
end
if
v.Name=="FigureRig"then
    if
    not v:FindFirstChild("AvoidHitbox")then local af=Instance.new("Part",v)af.Name="AvoidHitbox"af.Size=Vector3.new(15,15,15)af.CanCollide=true
    af.CanQuery=true
    af.Transparency=1
    af.Position=v:WaitForChild("Root")
end
for
    t,ag in pairs(v:GetDescendants())do
        if
        ag:IsA("BasePart")and not ag:FindFirstChild("AvoidPath")then local ah=Instance.new("PathfindingModifier",ag)ah.PassThrough=false
        ah.Name="AvoidPath"
    end
end
v.DescendantAdded:Connect(
function
    (ag)
    if
    ag:IsA("BasePart")and not ag:FindFirstChild("AvoidPath")then local ah=Instance.new("PathfindingModifier",ag)ah.PassThrough=false
    ah.Name="AvoidPath"
end
end
)
end
if
not v:IsA("Part")and v.Name=="SeeThroughGlass"then canhit(v)
end
if
v.Name=="Collision"and v.Parent and v.Parent.Name=="Parts"then v.CanCollide=false
end
if
v.Name=="DoorLattice"then canhit(v:WaitForChild("Door",9e9))
end
if
Set[v.Name]then local q=Instance.new("Part",v)q.Size=v:FindFirstChildWhichIsA("BasePart")and v:FindFirstChildWhichIsA("BasePart").Size+Vector3.new(0,0,1)or v.Size and v.Size+Vector3.new(0,0,1)or Vector3.new(1,1,1)q.Transparency=1
q.Anchored=true
q.Position=v:IsA("Model")and v:FindFirstChildWhichIsA("BasePart").Position or v:IsA("BasePart")and v.Position or Vector3.new(0,0,0)
end
end
end
end
)
function
    moveTo(ae)local ai=ae.Position+ae.CFrame.LookVector*-2
    local ab=f:CreatePath({AgentRadius=0.35,AgentHeight=0.35,AgentCanJump=true,AgentCanClimb=true,WaypointSpacing=3})ab:ComputeAsync(b.Character.HumanoidRootPart.Position,ai)
    if
    ab.Status==Enum.PathStatus.Success then
        for
            t,ac in pairs(ab:GetWaypoints())do b.Character.Humanoid:MoveTo(ac.Position)b.Character.Humanoid.MoveToFinished:Wait()
        end
    end
end
local aj=true
table.insert(Z,e.Heartbeat:Connect(
function
    ()
    if
    Toggles.AutoDoors.Value then
        if
        not B then
            return
        end
        if
        g.GameData.LatestRoom.Value<99 then local ak=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("KeyObtain",true)local al=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("LeverForGate",true)local am=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("LiveHintBook",true)local an=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("LibraryHintPaper",true)local ao=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door
        if
        ao.CanCollide then ao.CanCollide=false
    end
    if
    not ak or b.Character:FindFirstChild("Key")then
        if
        aj then moveTo(ao)
    end
elseif
    ak and not b.Character:FindFirstChild("Key")then moveTo(ak.PrimaryPart)
end
if
al then local ap=al:FindFirstChild("LeverConstraint")
if
ap then
    if
    ap.TargetPosition==-1 then moveTo(al:GetPivot())
end
end
end
if
g.GameData.LatestRoom.Value==50 then
    if
    am then aj=false
    moveTo(am.PrimaryPart)
elseif
    not am then
        if
        not b.Character:FindFirstChild("LibraryHintPaper")or not b.Character:FindFirstChild("LibraryHintPaperHard")or not b.Backpack:FindFirstChild("LibraryHintPaper")or not b.Backpack:FindFirstChild("LibraryHintPaperHard")then
            if
            an then moveTo(an.PrimaryPart)
        end
    end
end
if
b.Character:FindFirstChild("LibraryHintPaper")or b.Character:FindFirstChild("LibraryHintPaperHard")or b.Backpack:FindFirstChild("LibraryHintPaper")or b.Backpack:FindFirstChild("LibraryHintPaperHard")then aj=true
local aq=b.Character:FindFirstChild("LibraryHintPaper")or b.Character:FindFirstChild("LibraryHintPaperHard")or b.Backpack:FindFirstChild("LibraryHintPaperHard")or b.Backpack:FindFirstChild("LibraryHintPaper")
if
aq then
    if
    (b.Character.CollisionPart.Position-workspace:FindFirstChild("Padlock",true):GetPivot().Position).Magnitude<45 then aq.Parent=b.Character
elseif
    (b.Character.CollisionPart.Position-workspace:FindFirstChild("Padlock",true):GetPivot().Position).Magnitude>45 then aq.Parent=b.Backpack
end
end
end
end
end
end
end
))
end
ModifiersBox:AddButton({Text="Death Farm",Func=
function
    ()
    if
    not replicatesignal or not queue_on_teleport then F:Notify("Your Executor Won't Support replicatesignal or queue_on_teleport which breaks functionality",3)
    return
end
if
queue_on_teleport then F:Notify("Starting Now Wait",2)loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHunterSolo1/Op-Ninja-Simulator-/Main/M1reset"))()queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHunterSolo1/Op-Ninja-Simulator-/Main/M1reset"))()')
end
end
})
if
g:FindFirstChild("EntityInfo")or g:FindFirstChild("Bricks")then FloorAnti:AddToggle('AntiBanana',{Text="Anti-Banana",Default=false,Callback=
function
    (s)
    for
        t,v in ipairs(workspace:GetChildren())do
            if
            v.Name=="BananaPeel"then setcantouch(v,not s)
        end
    end
end
})FloorAnti:AddToggle('AntiJeff',{Text="Anti-Jeff",Default=false,Callback=
function
    (s)
    for
        t,v in ipairs(workspace:GetChildren())do
            if
            v.Name=="JeffTheKiller"then setcantouch(v,not s)
        end
    end
end
})workspace.ChildAdded:Connect(
function
    (v)
    if
    v.Name=="BananaPeel"then setcantouch(v,not Toggles.AntiBanana.Value)
end
if
v.Name=="JeffTheKiller"then v.ChildAdded:Connect(
function
    ()
    for
        t,ae in v:GetChildren()do
            if
            ae:IsA("BasePart")then ae.CanTouch=not Toggles.AntiJeff.Value
        end
    end
end
)setcantouch(v,not Toggles.AntiJeff.Value)
end
end
)
if
g:FindFirstChild("EntityInfo")then FloorAnti:AddToggle('DeleteFigureFools',{Text="Delete Figure (FE)",Default=false,Disabled=w})
end
if
g:FindFirstChild("Bricks")or g:FindFirstChild("EntityInfo")then FloorAnti:AddToggle('Godmode',{Text="GodMode",Default=false,Callback=
function
    (s)
    if
    s then
        if
        not Toggles.Noclip.Value then Toggles.Noclip:SetValue(true)
    end
    b.Character.Collision.Position=b.Character.Collision.Position-Vector3.new(0,11,0)
else
    b.Character.Collision.Position=b.Character.Collision.Position+Vector3.new(0,11,0)
end
end
})FloorAnti:AddToggle('FigureGodmode',{Text="Figure GodMode",Default=false,Callback=
function
    (s)
end
})
end
FloorAnti:AddToggle('DeleteSeek',{Text="Delete Seek (FE)",Default=false})task.spawn(
function
    ()
    while
        task.wait(0.09)do
            if
            Toggles.DeleteSeek.Value then local ar=workspace:FindFirstChild("TriggerEventCollision",true)local as=workspace:FindFirstChild("TriggerSeek",true)
            if
            as then as:Destroy()
        end
        if
        ar then ar:ClearAllChildren()
    end
end
end
end
)
end
ModifiersBox:AddDivider()SettingsBox:AddToggle('FpsUnlocker',{Text="Fps Unlocker",Default=true,Callback=
function
    (s)setfpscap(s and 9999999 or 60)
end
})local at={RushMoving=54,AmbushMoving=67,A60=70}InfiniteBox:AddToggle('InfiniteCrucifix',{Text="Infinite Crucifixs",Default=false,Risky=true,Tooltip="Risky You Can die or Lose the Crucifix recommendations have low ping and stable fps (good fps also)"})InfiniteBox:AddDivider()local au
au=e.RenderStepped:Connect(
function
    ()
    if
    Toggles.InfiniteCrucifix.Value then
        for
            t,v in ipairs(workspace:GetChildren())do local av=at[v.Name]
            if
            av and v.PrimaryPart then v.PrimaryPart.CanCollide=true
            v.PrimaryPart.CanQuery=true
            local aw=b.Character.CollisionPart.Position
            local ax=v.PrimaryPart.Position-aw
            local ay=workspace:Raycast(aw,ax,K)
            if
            ay and ay.Instance:IsDescendantOf(v)then
                if
                (b.Character.CollisionPart.Position-v.PrimaryPart.Position).Magnitude<av then g.RemotesFolder.DropItem:FireServer(b.Character:FindFirstChildOfClass("Tool"))task.wait(0.54)
                if
                j:FindFirstChild("Drops")and j.Drops:FindFirstChild("Crucifix")then fireproximityprompt(workspace.Drops:WaitForChild("Crucifix"):FindFirstChildOfClass("ProximityPrompt"))
            end
        end
    end
end
end
end
end
)SettingsBox:AddToggle('PlaySound',{Text="Play Sound",Default=true,Callback=
function
    (s)n=s
end
})F.NotifySide=F.IsMobile==true and"Right"or"Left"SettingsBox:AddDropdown("LibraryNotifySide",{Values={"Right","Left"},Default=F.NotifySide,Multi=false,Text="Notify Side",Callback=
function
    (s)F.NotifySide=s
end
})local az="Obsidian"
function
    Notify(aA,aB,aC)
    if
    az then F:Notify(aA,3)
elseif
    az=="Doors"then local aD=game:GetService("Players").LocalPlayer.PlayerGui.MainUI.AchievementsHolder.Achievement:Clone()aD.Size=UDim2.new(0,0,0,0)aD.Visible=true
    aD:WaitForChild("Sound",9e9):Play()aD:WaitForChild("Frame"):WaitForChild("Details").Title.Text=aA
    aD:WaitForChild("Frame"):WaitForChild("Details").Reason.Text=aC
    aD:WaitForChild("Frame"):WaitForChild("Details").Desc.Text=aB
    game:GetService("TweenService"):Create(aD,TweenInfo.new(1.5),{Size=UDim2.new(1,0,0,0)}):Play()task.wait(1)aD:Destroy()
end
end
a0:AddToggle('InstantPrompt',{Text="Instant Interacts",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v:IsA("ProximityPrompt")then v:SetAttribute("Hold",v.HoldDuration)v.HoldDuration=0
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v:IsA("ProximityPrompt")then v.HoldDuration=v:GetAttribute("Hold")or 0.7
            end
        end
    end
end
})a0:AddToggle('PromptClip',{Text="Prompt Clip",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v:IsA("ProximityPrompt")then v.RequiresLineOfSight=false
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v:IsA("ProximityPrompt")then v.RequiresLineOfSight=true
            end
        end
    end
end
})a0:AddToggle('AntiAfk',{Text="Disable AFK",Default=false})table.insert(Z,b.Idled:Connect(
function
    ()
    if
    Toggles.AntiAfk.Value then d:CaptureController()d:ClickButton2(Vector2.new())
end
end
))a0:AddToggle('AntiLag',{Text="Anti Lag",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v:IsA("BasePart")then v.Material=Enum.Material.Plastic
            end
            if
            v.Name=="LightFixture"or v.Name=="Carpet"or v.Name=="CarpetLight"then v:Destroy()
        end
    end
end
end
})a8:AddToggle('PromptReach',{Text="Prompt Reach",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v:IsA("ProximityPrompt")then v:SetAttribute("Distance",v.MaxActivationDistance)v.MaxActivationDistance=v.MaxActivationDistance*2
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v:IsA("ProximityPrompt")then v.MaxActivationDistance=v:GetAttribute("Distance")or 7
            end
        end
    end
end
})local aE=20
a8:AddToggle('DoorReach',{Text="Door Reach",Default=false})a8:AddSlider("DoorReachRange",{Text="Door Reach Range",Default=20,Min=15,Max=30,Rounding=1,Compact=true,Callback=
function
    (s)aE=s
end
})a0:AddToggle('NoCutscenes',{Text="No Cutscenes",Default=false})local aF=0.5
ClosetTran:AddSlider("TransparencySlider",{Text="Transparency Slider",Default=0.5,Min=0.1,Max=1,Rounding=1,Compact=true,Callback=
function
    (s)aF=s
end
})ClosetTran:AddToggle('TransparencyCloset',{Text="Transparency Closet",Default=false})ClosetTran:AddDivider()local aG=0.5
ClosetTran:AddSlider("CartTransparencySlider",{Text="Transparency Slider",Default=0.5,Min=0.1,Max=1,Rounding=1,Compact=true,Callback=
function
    (s)aG=s
end
})ClosetTran:AddToggle('TransparencyCart',{Text="Transparency Cart",Default=false})a4:AddToggle('Fullbright',{Text="Fullbright",Default=false,Callback=
function
    (s)
    if
    s then
    else
        game.Lighting.Ambient=Color3.fromRGB(0,0,0)
    end
end
})a4:AddToggle('NoCameraShake',{Text="No Camera Shake",Default=false,Disabled=u})local aH=0
local aI=6
local aJ=2
a4:AddDivider()a4:AddToggle('ThirdPerson',{Text="Third Person",Default=false}):AddKeyPicker('ThirdPKeybind',{Default='T',SyncToggleState=true,Mode='Toggle',Text='Third Person',NoUI=false,Callback=
function
    (s)
end
,ChangedCallback=
function
    (aK)
end
})a4:AddSlider("X",{Text="X",Default=aJ,Min=-10,Max=10,Rounding=0,Compact=true,Callback=
function
    (s)aJ=s
end
})a4:AddSlider("Y",{Text="Y",Default=aH,Min=-10,Max=10,Rounding=0,Compact=true,Callback=
function
    (s)aH=s
end
})a4:AddSlider("Z",{Text="Z",Default=aI,Min=-10,Max=10,Rounding=0,Compact=true,Callback=
function
    (s)aI=s
end
})a4:AddDivider()local aL={RushMoving=true,AmbushMoving=true,A60=true,A120=true,GlitchRush=true,GlitchAmbush=true}a4:AddToggle('SpectateEntity',{Text="Spectate Entity",Default=false})a1:AddDropdown("EntitiesPicker",{Values={"Rush","Ambush","A-60","A-120","Bramble","Grumble","Eyes","Lookman","Blitz","Figure","GlitchRush","GlitchAmbush","Monument","Groundskeeper"},Default=1,Multi=true,Text="Entities",Callback=
function
    (s)
end
})a1:AddToggle('EntityNotifys',{Text="Entity Notifys",Default=false})a1:AddToggle('EntitesESP',{Text="Entities ESP",Default=false})a0:AddButton({Text="Reset",DoubleClick=true,Func=
function
    ()
    if
    y==false then replicatesignal(b.Kill)
elseif
    y==true then b.Character.Humanoid.Health=0
end
end
})a0:AddButton({Text="Play Again",DoubleClick=true,Func=
function
    ()RemoteFolder.PlayAgain:FireServer()
end
})a0:AddButton({Text="Lobby",DoubleClick=true,Func=
function
    ()RemoteFolder.Lobby:FireServer()
end
})a0:AddButton({Text="Revive",DoubleClick=true,Func=
function
    ()RemoteFolder.Revive:FireServer()
end
})
if
g:FindFirstChild("RemotesFolder")then local aM=RemoteFolder:FindFirstChild("DropItem")
function
    addFake(P,aN)
    if
    not P or not P:IsA("ProximityPrompt")then
        return
    end
    if
    P:GetAttribute("HasFake")then
        return
    end
    P:SetAttribute("HasFake",true)local aO=P:Clone()aO.Name="FakePrompt"aO.Parent=P.Parent
    aO.Enabled=true
    aO.ClickablePrompt=true
    P.Enabled=false
    P.ClickablePrompt=false
    aO.Triggered:Connect(
    function
        ()local aP=b.Character and b.Character:FindFirstChildOfClass("Tool")
        if
        not aP then
            return
        end
        aM:FireServer(aP)local con
        con=j.Drops.ChildAdded:Connect(
        function
            (v)local ag=v:FindFirstChildOfClass("ProximityPrompt")
            if
            ag then
                if
                aN=="Lockpick"then fireInteract(ag)fireInteract(P)
            elseif
                aN=="Shears"then fireInteract(P)fireInteract(ag)
            end
            task.wait(0.3)con:Disconnect()task.wait(1)aO:SetAttribute("Interactions",1)
        end
    end
    )
end
)
end
local
function
    scanPrompts(aQ,aR)local aS={}
    for
        t,v in ipairs(j.CurrentRooms:GetDescendants())do
            if
            v:IsA("ProximityPrompt")and(aQ[v.Parent.Name]or aR[v.Name])then table.insert(aS,v)
        end
    end
    return
    aS
end
function
    cleanupEnableReal()
    for
        t,v in ipairs(j.CurrentRooms:GetDescendants())do
            if
            v.Name=="FakePrompt"and v.Parent then v:Destroy()
        end
        if
        v:IsA("ProximityPrompt")and v.Name~="FakePrompt"then pcall(
        function
            ()v.Enabled=true
            v.ClickablePrompt=true
            if
            v:GetAttribute("HasFake")==true then v:SetAttribute("HasFake",nil)
        end
    end
    )
end
end
end
LockpickParents={ChestBoxLocked=true,Locker_Small_Locked=true,Toolbox_Locked=true}LockpickNames={UnlockPrompt=true,ThingToEnable=true,LockPrompt=true,SkullPrompt=true,FusesPrompt=true}ShearsParents={Chest_Vine=true,CuttableVines=true,Cellar=true}ShearsNames={SkullPrompt=true}local aT=false
InfStore={}local aU=false
InfiniteBox:AddToggle('InfiniteItems',{Text="Infinite LockPicks Infinite Skeleton Key",Disabled=x,Default=false,Callback=
function
    (s)aT=s
    if
    not aT then cleanupEnableReal()InfStore={}
    return
end
InfStore=scanPrompts(LockpickParents,LockpickNames)
end
})local aV=false
InfSStore={}local aW=false
InfiniteBox:AddToggle('InfiniteSItems',{Text="Infinite Shears",Disabled=x,Default=false,Callback=
function
    (s)aV=s
    if
    not aV then cleanupEnableReal()InfSStore={}
    return
end
InfSStore=scanPrompts(ShearsParents,ShearsNames)
end
})
end
a3:AddDivider()Speed=15
a3:AddSlider("SpeedBoostSlider",{Text="Speed Boost Slider",Default=15,Min=15,Max=21,Rounding=1,Compact=false,Callback=
function
    (s)Speed=s
end
})a3:AddToggle('SpeedBoost',{Text="Speed Boost",Default=false})a3:AddDivider()a3:AddToggle('Noclip',{Text="Noclip",Default=false}):AddKeyPicker('NoclipKeybind',{Default='N',SyncToggleState=true,Mode='Toggle',Text='Noclip',NoUI=false,Callback=
function
    (s)
end
,ChangedCallback=
function
    (aK)
end
})Toggles.Noclip:OnChanged(
function
    (s)
    if
    not s then b.Character.Collision.CanCollide=true
    if
    W.Collision:FindFirstChild("CollisionCrouch")then b.Character.Collision.CollisionCrouch.CanCollide=true
end
b.Character.HumanoidRootPart.CanCollide=true
if
b.Character:FindFirstChild("CollisionPart")then b.Character:FindFirstChild("CollisionPart").CanCollide=true
end
end
end
)a3:AddDivider()a3:AddToggle('EnableJump',{Text="Enable Jump",Default=false})a3:AddToggle('InfiniteJump',{Text="Infinite Jump",Default=false})a3:AddDivider()SettingsESP:AddToggle('EnableShowDistancws',{Text="Enable Show Distances",Default=false,Callback=
function
    (s)J:ShowDistance(s)
end
})Ignore={HidePrompt=true,RiftPrompt=true,StarRiftPrompt=true,InteractPrompt=true,PushPrompt=true,ClimbPrompt=true,RevivePrompt=true,PropPrompt=true,NoHidingLilBro=true,DonatePrompt=true}AutoInteractTable={}Automation:AddToggle('AutoInteract',{Text="Auto Interact",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                not Ignore[v.Name]then
                    if
                    v:IsA("ProximityPrompt")then table.insert(AutoInteractTable,v)
                end
            end
        end
    else
        table.clear(AutoInteractTable)
    end
end
}):AddKeyPicker('AutoInteractKeybind',{Default='R',SyncToggleState=true,Mode='Toggle',Text='Auto Interact',NoUI=false,Callback=
function
    (s)
end
,ChangedCallback=
function
    (aK)
end
})Automation:AddDropdown("IgnoreList",{Values={"Jeff Items","Gold","Drops"},Default=1,Multi=true,Text="Ignore List",Callback=
function
    (s)
end
})Automation:AddDivider()Automation:AddToggle('AutoHeartbeatMiniGame',{Text="Auto Heartbeat Minigame",Disabled=z,Default=false})local aX=40
Automation:AddSlider('UnlockPadLockDistance',{Text='Unlock Padlock Distance',Min=40,Max=100,Default=40,Rounding=1,Callback=
function
    (v)aX=v
end
})local aY=game:GetService("ReplicatedStorage")local aZ=game:GetService("Players")local T=b.PlayerGui
local
function
    a_()
    return
    RemoteFolder:FindFirstChild("PL")
end
local b0=a_()local
function
    b1(b2,b3)local b4=b2:WaitForChild("UI"):GetChildren()local b5,b6={},{}
    for
        b7=1,#b4 do local b8=b4[b7]local b9=tonumber(b8.Name)
        if
        b9 then local ba=b8.ImageRectOffset.X.."_"..b8.ImageRectOffset.Y
        b5[ba]={b9,""}b6[b9]=ba
    end
end
if
b3 then
    for
        t,bb in ipairs(b3:GetChildren())do
            if
            bb.Name=="Icon"then local ba=bb.ImageRectOffset.X.."_"..bb.ImageRectOffset.Y
            local bc=b5[ba]
            if
            bc then local bd=bb:FindFirstChildWhichIsA("TextLabel")
            if
            bd then bc[2]=bd.Text
        end
    end
end
end
end
local be={}
for
    b7=1,#b6 do be[b7]=b5[b6[b7]][2]
end
return
table.concat(be)
end
local
function
    bf(bg,aN,bh)local bi={}local bj={}local bk={}local bl
    local bm={}local bn=false
    local
    function
        bo()
        for
            t,b8 in ipairs(bm)do
                if
                b8.Disconnect then b8:Disconnect()
            end
        end
        bm={}
    end
    local
    function
        bp()local b9=aY.GameData.LatestRoom.Value
        local bq=workspace.CurrentRooms and workspace.CurrentRooms[b9]
        if
        bq then local br=bq:FindFirstChild("Padlock",true)bl=br and(br.PrimaryPart or br:FindFirstChildWhichIsA("BasePart"))
    else
        bl=nil
    end
end
local
function
    bs(b2)local bt=T:FindFirstChild("PermUI")and T.PermUI:FindFirstChild("Hints")local bu=b1(b2,bt)
    if
    bj[b2]~=bu and bu~=""then bj[b2]=bu
    if
    aN=="Fire"then
        if
        bl and b.Character and b.Character:FindFirstChild("HumanoidRootPart")then local bv=(b.Character.HumanoidRootPart.Position-bl.Position).Magnitude
        if
        bv<=aX then local bw=tick()
        if
        not bk[bu]or bw-bk[bu]>1 then local bx=pcall(
        function
            ()
            if
            b0 then b0:FireServer(bu)
        end
    end
    )
    if
    bx then bk[bu]=bw
end
end
end
end
else
    F:Notify("Library Code is "..bu,3)
end
end
end
local
function
    by(b2)
    if
    bi[b2]then
        return
    end
    bi[b2]=true
    bm[#bm+1]=b2.DescendantAdded:Connect(
    function
        ()bs(b2)
    end
    )bm[#bm+1]=b2.DescendantRemoving:Connect(
    function
        ()bs(b2)
    end
    )bs(b2)
end
local
function
    bz(b2)bi[b2]=nil
    bj[b2]=nil
end
bh:AddToggle(bg,{Text=aN=="Fire"and"Automation Library Code"or"Notify Library Code",Default=false,Tooltip=aN=="Fire"and"Automatically unlock padlock when in range"or"Show code as notification",Callback=
function
    (bA)bn=bA
    bo()table.clear(bi)table.clear(bj)table.clear(bk)
    if
    bn then
        while
            aY.GameData.LatestRoom.Value<50 do task.wait(0.4)
            if
            not bn then
                return
            end
        end
        bp()bm[#bm+1]=aY.GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(bp)local
        function
            bB(bC)
            for
                t,bD in ipairs(bC:GetChildren())do
                    if
                    bD.Name=="LibraryHintPaper"or bD.Name=="LibraryHintPaperHard"then by(bD)
                end
            end
        end
        bB(b.Character)bB(b.Backpack)bm[#bm+1]=b.Backpack.ChildAdded:Connect(
        function
            (bD)
            if
            bD.Name=="LibraryHintPaper"or bD.Name=="LibraryHintPaperHard"then by(bD)
        end
    end
    )bm[#bm+1]=b.Backpack.ChildRemoved:Connect(bz)bm[#bm+1]=b.Backpack.ChildAdded:Connect(
    function
        (bD)
        if
        bD.Name=="LibraryHintPaper"or bD.Name=="LibraryHintPaperHard"then by(bD)
    end
end
)bm[#bm+1]=b.Backpack.ChildRemoved:Connect(bz)
end
end
})
end
bf("AutoCodeFire","Fire",Automation)bf("AutoCodeNotify","Notify",a1)Automation:AddDivider()local bE=nil
Automation:AddToggle('AutoBreakerBox',{Text="Auto Breaker Box",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="ElevatorBreaker"then bE=v
            end
        end
        while
            task.wait()do
                if
                not Toggles.AutoBreakerBox.Value then break
            end
            if
            bE then
                for
                    t,v in ipairs(bE:GetChildren())do
                        if
                        v.Name=="BreakerSwitch"then
                            if
                            v:GetAttribute("ID")==tonumber(bE:WaitForChild("SurfaceGui").Frame.Code.Text)then
                                if
                                bE:WaitForChild("SurfaceGui").Frame.Code.Frame.BackgroundTransparency==0 then v:SetAttribute("Enabled",true)
                                if
                                v:WaitForChild("Sound").Playing==false then v:WaitForChild("Sound",1e1).Playing=true
                            end
                            v.Material=Enum.Material.Neon
                            v:WaitForChild("Light",1e1).Attachment.Spark:Emit(1)v:WaitForChild("PrismaticConstraint").TargetPosition=-0.2
                        else
                            v:SetAttribute("Enabled",false)
                            if
                            v:WaitForChild("Sound").Playing==false then v:WaitForChild("Sound",1e1).Playing=true
                        end
                        v:WaitForChild("PrismaticConstraint").TargetPosition=0.2
                        v.Material=Enum.Material.Glass
                    end
                end
            end
        end
    end
end
end
end
})local bF={RushMoving=85,AmbushMoving=144,GlitchRush=120,GlitchAmbush=155,A60=130,A120=75}Automation:AddToggle('AutoCloset',{Text="Auto Closet",Default=false}):AddKeyPicker('AutoClosetKeybind',{Default='Q',SyncToggleState=true,Mode='Toggle',Text='Auto Closet',NoUI=false,Callback=
function
    (s)
end
,ChangedCallback=
function
    (aK)
end
})a3:AddDivider()a3:AddToggle('Noacceleration',{Text="No Acceleration",Default=false})a3:AddDivider()a3:AddToggle('NoClosetExitDelay',{Text="No Closet Exit Delay",Default=false})a3:AddDivider()Fly=Fly or{}Fly.Enabled=false
Fly.Speed=15
Fly.FlyBody=nil
Fly.FlyGyro=nil
local bG
local bH=nil
function
    Fly.SetupBodies(bI)local bJ=bI:FindFirstChild("HumanoidRootPart")
    if
    not bJ then
        return
    end
    local bK=Instance.new("BodyVelocity")bK.Name="FlyBodyVelocity"bK.MaxForce=Vector3.new(9e99,9e99,9e99)bK.Velocity=Vector3.zero
    bK.Parent=bJ
    Fly.FlyBody=bK
    local bL=Instance.new("BodyGyro")bL.Name="FlyBodyGyro"bL.MaxTorque=Vector3.new(9e9,9e9,9e9)local bM=workspace.CurrentCamera
    if
    bM then bL.CFrame=bM.CFrame
end
bL.Parent=bJ
Fly.FlyGyro=bL
local bN=bI:FindFirstChild("Humanoid")
if
bN then bN.PlatformStand=true
end
end
function
    Fly.CleanupBodies()
    if
    Fly.FlyBody then Fly.FlyBody:Destroy()Fly.FlyBody=nil
end
if
Fly.FlyGyro then Fly.FlyGyro:Destroy()Fly.FlyGyro=nil
end
if
W then local bN=W:FindFirstChild("Humanoid")
if
bN then bN.PlatformStand=false
end
end
end
local
function
    bO()
    if
    not Fly.Enabled then
        return
    end
    local bI=W
    if
    not bI then
        return
    end
    local bN=bI:FindFirstChild("Humanoid")local bJ=bI:FindFirstChild("HumanoidRootPart")local bM=workspace.CurrentCamera
    if
    not bN or not bJ or not Fly.FlyBody or not Fly.FlyGyro or not bM then
        return
    end
    local bP=Vector3.zero
    if
    i.KeyboardEnabled then local bQ=i:IsKeyDown(Enum.KeyCode.W)local bR=i:IsKeyDown(Enum.KeyCode.S)local bS=i:IsKeyDown(Enum.KeyCode.A)local bT=i:IsKeyDown(Enum.KeyCode.D)local bU=bM.CFrame
    local bV=bU.LookVector
    local bW=bU.RightVector
    if
    bQ then bP=bP+bV
end
if
bR then bP=bP-bV
end
if
bS then bP=bP-bW
end
if
bT then bP=bP+bW
end
else
    local bX=bN.MoveDirection
    if
    bX.Magnitude>0 then local bU=bM.CFrame
    local bY=Vector3.new(bU.LookVector.X,0,bU.LookVector.Z)local bZ=Vector3.new(bU.RightVector.X,0,bU.RightVector.Z)
    if
    bY.Magnitude>0 then bY=bY.Unit
end
if
bZ.Magnitude>0 then bZ=bZ.Unit
end
local b_=bX:Dot(bY)local c0=bX:Dot(bZ)bP=bU.LookVector*b_+bU.RightVector*c0
end
end
if
bP.Magnitude>0 then Fly.FlyBody.Velocity=bP.Unit*Fly.Speed
else
    Fly.FlyBody.Velocity=Vector3.zero
end
Fly.FlyGyro.CFrame=bM.CFrame
bN.PlatformStand=true
end
function
    Fly.Enable()
    if
    Fly.Enabled then
        return
    end
    Fly.Enabled=true
    local bI=W
    if
    bI then Fly.SetupBodies(bI)
end
if
not bG then bG=e.RenderStepped:Connect(bO)
end
if
not bH then bH=player.CharacterAdded:Connect(
function
    (c1)
    if
    Fly.Enabled then c1:WaitForChild("HumanoidRootPart")Fly.SetupBodies(c1)
end
end
)
end
end
function
    Fly.Disable()
    if
    not Fly.Enabled then
        return
    end
    Fly.Enabled=false
    Fly.CleanupBodies()
    if
    bG then bG:Disconnect()bG=nil
end
if
bH then bH:Disconnect()bH=nil
end
end
function
    Fly.Toggle()
    if
    Fly.Enabled then Fly.Disable()
else
    Fly.Enable()
end
end
function
    Fly.SetSpeed(c2)Fly.Speed=c2 or Fly.Speed
end
FlySpeed=a3:AddSlider("FlySpeed",{Text="Fly Speed",Min=10,Max=21,Default=Fly.Speed,Rounding=0,Callback=
function
    (v)Fly.SetSpeed(v)
end
})a3:AddToggle("Fly",{Text="Fly",Default=false,Callback=
function
    (bn)
    if
    bn then Fly.Enable()
else
    Fly.Disable()
end
end
}):AddKeyPicker('Fly Keybind',{Default='F',SyncToggleState=true,Mode='Toggle',Text='Fly',NoUI=false,Callback=
function
    (s)
end
,ChangedCallback=
function
    (aK)
end
})View=70
a4:AddSlider("FieldofViewAdjust",{Text="FOV Slider",Default=70,Min=View,Max=120,Rounding=1,Compact=false,Callback=
function
    (s)View=s
end
})a4:AddToggle('Fieldofview',{Text="FOV",Default=false})a6:AddToggle('AntiDread',{Text="Anti-Dread",Default=false,Callback=
function
    (s)local c3=Modules:FindFirstChild("Dread")or Modules:FindFirstChild("_Dread")
    if
    c3 then c3.Name=s and"_Dread"or"Dread"
end
end
})a6:AddToggle('AntiScreech',{Text="Anti-Screech",Default=false,Callback=
function
    (s)local c4=Modules:FindFirstChild("Screech")or Modules:FindFirstChild("_Screech")c4.Name=s and"_Screech"or"Screech"
end
})a6:AddToggle('AntiA90',{Text="Anti-A90",Default=false,Callback=
function
    (s)local c5=Modules:FindFirstChild("A90")or Modules:FindFirstChild("_A90")
    if
    c5 then c5.Name=s and"_A90"or"A90"
end
end
})a6:AddToggle('AntiEyes',{Text="Anti-Eyes",Default=false})a6:AddToggle('AntiSnare',{Text="Anti-Snare",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="Snare"and v.Parent and v.Parent.Name~="Snare"then v:WaitForChild("Hitbox").CanTouch=false
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="Snare"and v.Parent and v.Parent.Name~="Snare"then v:WaitForChild("Hitbox").CanTouch=true
            end
        end
    end
end
})a6:AddToggle('AntiDupe',{Text="Anti-Dupe",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="DoorFake"then v:WaitForChild("Hidden").CanTouch=false
                if
                v:FindFirstChild("Lock")then v:FindFirstChild("Lock"):FindFirstChildOfClass("ProximityPrompt").ClickablePrompt=false
            end
        end
    end
else
    for
        t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
            if
            v.Name=="DoorFake"then v:WaitForChild("Hidden").CanTouch=false
            if
            v:FindFirstChild("Lock")then v:FindFirstChild("Lock"):FindFirstChildOfClass("ProximityPrompt").ClickablePrompt=false
        end
    end
end
end
end
})a6:AddToggle('AntiHear',{Text="Anti-Figure-Hearing",Default=false})Toggles.AntiHear:OnChanged(
function
    (s)
    if
    not s then RemoteFolder.Crouch:FireServer(false)
end
end
)a6:AddToggle('AntiHalt',{Text="Anti-Halt",Default=false,Callback=
function
    (s)local c6=ClientModules.EntityModules:FindFirstChild("Shade")or ClientModules.EntityModules:FindFirstChild("_Shade")c6.Name=s and"_Shade"or"Shade"
end
})local c7=false
local c8=Vector3.new(0,-50,0)task.spawn(
function
    ()
    while
        task.wait(0.35)do
            if
            b.Character and not F.Unloaded then local c9=b.Character.HumanoidRootPart.Position
            local H=workspace:Raycast(c9,c8,K)
            if
            H then c7=false
        else
            c7=true
        end
    end
end
end
)
if
g:FindFirstChild("RemotesFolder")then a7:AddToggle('SpeedBypass',{Text="Speed Bypass",Default=false,Callback=
function
    (s)Options.SpeedBoostSlider:SetMax(s and 100 or 21)Options.SpeedBoostSlider:SetValue(s and Options.SpeedBoostSlider.Value or 21)Options.FlySpeed:SetMax(s and 100 or 21)Options.FlySpeed:SetValue(s and Options.FlySpeed.Value or 21)
    while
        true do task.wait(0.185)
        if
        B then local ca=b.Character:WaitForChild("_CollisionPart")local cb=b.Character:WaitForChild("_CollisionPart2")
        if
        not Toggles.SpeedBypass.Value or F.Unloaded then ca.Massless=true
        cb.Massless=true
        break
    end
    if
    W.CollisionPart.Anchored or c7 or Toggles.AnticheatManipulation and Toggles.AnticheatManipulation.Value then ca.Massless=true
    cb.Massless=true
    task.wait(0.35)
else
    ca.Massless=false
    cb.Massless=false
    task.wait(0.185)cb.Massless=true
    ca.Massless=true
end
end
end
end
})
end
if
not g:FindFirstChild("RemotesFolder")then Options.SpeedBoostSlider:SetMax(80)Options.FlySpeed:SetMax(80)
end
a7:AddDivider()
if
g:FindFirstChild("RemotesFolder")then a7:AddDropdown("GMDropdown",{Values={"Automation","Toggle"},Default=2,Multi=false,Text="Godmode Dropdown",Callback=
function
    (s)
end
})a7:AddToggle('GodMode',{Text="God Mode",Default=false,Callback=
function
    (s)
    if
    s then
        if
        not Toggles.AntiHear.Value then Toggles.AntiHear:SetValue(true)F:Notify("Automatically Enabled Anti-Figure Hearing Needs to enabld
        for
            godmode to work",3)
        end
        W.Collision.Size=Vector3.new(1,0.001,5)W.Humanoid.HipHeight=0.0001
    else
        b.Character.HumanoidRootPart.CFrame=b.Character.HumanoidRootPart.CFrame+Vector3.new(0,3,0)W.Collision.Size=Vector3.new(5.5,3,5)W.Humanoid.HipHeight=2.4
    end
end
}):AddKeyPicker('GodmodeKeybind',{Default='G',SyncToggleState=true,Mode='Toggle',Text='God Mode',NoUI=false,Callback=
function
    (s)
end
,ChangedCallback=
function
    (aK)
end
})a7:AddToggle('AnticheatManipulation',{Text="Anti Cheat Manipulation",Default=false}):AddKeyPicker('AnticheatManipulationKeybind',{Default='H',SyncToggleState=true,Mode='Toggle',Text='Anti Cheat Manipulation',NoUI=false,Callback=
function
    (s)
end
,ChangedCallback=
function
    (aK)
end
})
end
FloorAnti:AddToggle('RankedAntiBanana',{Text="Anti Nanner Banana",Default=false,Callback=
function
    (s)
    for
        t,v in ipairs(workspace:GetChildren())do
            if
            v.Name=="NannerPeel"then v.CanTouch=not s
            v:WaitForChild("Hitbox",9e9).CanTouch=not s
        end
    end
end
})FloorAnti:AddDivider()FloorAnti:AddToggle('AntiSeekObstructions',{Text="Anti Seek-Obstructions",Default=false,Callback=
function
    (s)
    for
        t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
            if
            v.Name=="ChandelierObstruction"or v.Name=="Seek_Arm"then
                for
                    t,ae in ipairs(v:GetChildren())do
                        if
                        ae:IsA("BasePart")then ae.CanTouch=not s
                    end
                end
            end
        end
    end
    })
    if
    Floor.Value=="Mines"then local T=b.PlayerGui
    local cc=T.MainUI
    local cd=false
    FloorAnti:AddToggle("NotifyAnchorCode",{Text="Notify Anchor Code",Default=false,Callback=
    function
        (bn)local ce=cc:WaitForChild("AnchorHintFrame")cd=bn
        while
            cd do task.wait(0.9)local cf=nil
            local cg=ce.AnchorCode.Text
            local ch=ce.Code.Text
            for
                t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                    if
                    v.Name=="MinesAnchor"and v.Sign.TextLabel.Text==cg then cf=v
                    break
                end
            end
            if
            not cf then task.wait()
        end
        if
        cf then local ci=cf:FindFirstChild("Note")
        if
        not ci then F:Notify(("Anchor %s Code is %s"):format(cf.Sign.TextLabel.Text,ch),3)
    else
        local cj=ci.SurfaceGui.TextLabel.Text
        local ck=tonumber(cj)or 0
        local cl=""
        for
            b7=1,#ch do local cm=tonumber(ch:sub(b7,b7))or 0
            cm=(cm+ck)%10
            cl=cl..cm
        end
        F:Notify(("Anchor %s Code is %s"):format(cf.Sign.TextLabel.Text,cl),1)
    end
end
end
end
})FloorAnti:AddToggle('DeleteFigure',{Text="Remove Figure (FE)",Default=false,Disabled=w})FloorAnti:AddDivider()local cn={}local co={}local
function
    cp(cq)
    if
    cq.Parent:FindFirstChild("AntiBridge")then
        return
    end
    local cr=cq:Clone()cr.Name="AntiBridge"cr.Size=Vector3.new(cq.Size.X,cq.Size.Y,30)cr.Color=Color3.new(0,0,0.5)cr.CFrame=cq.CFrame*CFrame.new(0,0,-5)cr.Transparency=0
    cr.Anchored=true
    cr.CanCollide=true
    cr.CanTouch=true
    cr.Parent=cq.Parent
    table.insert(cn,cr)
end
local
function
    cs(ct)
    if
    ct:FindFirstChild("AntiBridge")then
        return
    end
    for
        t,ae in ipairs(ct:GetChildren())do
            if
            ae.Name=="PlayerBarrier"and ae.Size.Y==2.75 and ae.Rotation.X%180==0 then cp(ae)
        end
    end
    local conn=ct.ChildAdded:Connect(
    function
        (b8)
        if
        b8.Name=="PlayerBarrier"then cp(b8)
    end
end
)table.insert(co,conn)
end
FloorAnti:AddToggle("ABF",{Text="Anti Bridge Fall",Default=false,Callback=
function
    (bA)
    for
        t,b8 in ipairs(co)do b8:Disconnect()
    end
    co={}
    for
        t,b8 in ipairs(cn)do
            if
            b8 and b8.Parent then b8:Destroy()
        end
    end
    cn={}
    if
    not bA then
        return
    end
    task.spawn(
    function
        ()
        for
            t,cu in ipairs(workspace.CurrentRooms:GetChildren())do local be=cu:FindFirstChild("Parts")
            if
            be then
                for
                    t,bD in ipairs(be:GetChildren())do
                        if
                        bD.Name=="Bridge"then cs(bD)
                    end
                end
                local conn=be.ChildAdded:Connect(
                function
                    (b8)
                    if
                    b8.Name=="Bridge"then cs(b8)
                end
            end
            )table.insert(co,conn)
        end
    end
end
)local roomConn=workspace.CurrentRooms.ChildAdded:Connect(
function
    (cu)task.defer(
    function
        ()local be=cu:WaitForChild("Parts",3)
        if
        be then
            for
                t,bD in ipairs(be:GetChildren())do
                    if
                    bD.Name=="Bridge"then cs(bD)
                end
            end
            local conn=be.ChildAdded:Connect(
            function
                (b8)
                if
                b8.Name=="Bridge"then cs(b8)
            end
        end
        )table.insert(co,conn)
    end
end
)
end
)table.insert(co,roomConn)
end
})
function
    showpath(ae)
    if
    ae.Name=="SeekGuidingLight"then local q=Instance.new("Part",C)q.Name="ShowPath"q.Position=ae.Position
    q.Size=Vector3.new(2,1,2)q.Anchored=true
    q.CanCollide=false
    q.CanTouch=false
    q.CanQuery=true
    l:AddItem(q,150)
end
end
FloorAnti:AddToggle("ShowSeekPath",{Text="Show Seek Path",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace:GetDescendants())do showpath(v)
        end
    else
        C:ClearAllChildren()
    end
end
})FloorAnti:AddToggle('AnticheatBypass',{Text="Anticheat Bypass",Default=false})Toggles.AnticheatBypass:OnChanged(
function
    (s)
    if
    not s then RemoteFolder.ClimbLadder:FireServer()
end
if
s then F:Notify("Please Get In Ladder and Wait",9)
end
end
)b.Character:GetAttributeChangedSignal("Climbing"):Connect(
function
    ()
    if
    b.Character:GetAttribute("Climbing")==true then
        if
        Toggles.AnticheatBypass.Value then task.wait(0.4)b.Character:SetAttribute("Climbing",false)F:Notify("Bypassed anticheat this works until cutscene or halt",7)
    end
end
end
)
end
local cv=nil
cv=workspace.ChildAdded:Connect(
function
    (v)
    if
    Toggles.RankedAntiBanana and Toggles.RankedAntiBanana.Value then
        if
        v.Name=="NannerPeel"then v.CanTouch=false
        v:WaitForChild("Hitbox",9e9).CanTouch=false
    end
end
end
)ModifiersBox:AddToggle('AntiLookman',{Text="Anti Lookman",Default=false})ModifiersBox:AddDivider()ModifiersBox:AddToggle('AntiFog',{Text="Anti Fog",Default=false})
if
Floor.Value=="Party"then FloorAnti:AddToggle('AutoGetPowerUps',{Text="Auto Get Power Ups",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="PowerupPad"then v:WaitForChild("Hitbox",9e9).Size=Vector3.new(90,90,90)
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="PowerupPad"then v:WaitForChild("Hitbox",9e9).Size=Vector3.new(5,5,5)
            end
        end
    end
end
})
end
ModifiersBox:AddToggle('AntiGiggle',{Text="Anti Giggle",Default=false,Callback=
function
    (s)
    for
        t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
            if
            v.Name=="GiggleCeiling"then v:WaitForChild("Hitbox",9e9).CanTouch=not s
        end
    end
end
})ModifiersBox:AddToggle('AntiJam',{Text="Anti Jamming",Default=false,Callback=
function
    (s)
    if
    Modifiers and not Modifiers:FindFirstChild("Jammin")then
        return
    end
    local cw=game["SoundService"]:FindFirstChild("Main")
    if
    cw then local cx=cw:FindFirstChild("Jamming")
    if
    cx then cx.Enabled=not s
end
end
local cy=b:FindFirstChild("PlayerGui")and b.PlayerGui:FindFirstChild("MainUI")
if
cy then local cz=cy:FindFirstChild("Initiator")and cy.Initiator:FindFirstChild("Main_Game")and cy.Initiator.Main_Game:FindFirstChild("Health")
if
cz then local cA=cz:FindFirstChild("Jam")
if
cA then cA.Playing=not s
end
end
end
end
})ModifiersBox:AddToggle('AntiGloomPile',{Text="Anti Gloom Egg",Default=false,Callback=
function
    (s)
    for
        t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
            if
            v.Name=="GloomEgg"then v:WaitForChild("Egg",9e9).CanTouch=not s
        end
    end
end
})ModifiersBox:AddToggle('AntiVacuum',{Text="Anti Vacuum",Default=false,Callback=
function
    (s)
    for
        t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
            if
            v.Name=="SideroomSpace"then
                for
                    t,ae in ipairs(v:GetChildren())do
                        if
                        ae:IsA("BasePart")then ae.CanTouch=not s
                        ae.CanCollide=s
                    end
                end
            end
        end
    end
    })
    if
    Floor.Value=="Garden"then A=Instance.new("RemoteEvent",g)A.Name="SurgeRemote"FloorAnti:AddToggle('AntiSurge',{Text="Anti Surge",Default=false,Callback=
    function
        (s)
        if
        s then g.RemotesFolder.SurgeRemote.Parent=g
        A.Parent=g.RemotesFolder
    else
        g.RemotesFolder.SurgeRemote.Parent=g.RemotesFolder
        A.Parent=g
    end
end
})
end
function
    AddESP(cB,aA,cC)J:AddESP(cB,aA,cC)
end
local cD=Color3.new(0,1,1)local cE=Color3.new(0,1,0)local cF=Color3.new(0,1,0)local cG=Color3.new(0,1,0)local cH=Color3.new(1,1,1)local cI=Color3.new(0,1,0)local cJ=Color3.new(0,0.5,0)local cK=Color3.new(0,1,0)local cL=Color3.new(0,1,0)local cM=Color3.new(0,1,0)local cN=Color3.new(0,0,1)local cO=Color3.new(1,0.8,0)local cP=Color3.new(0,1,0)local cQ=Color3.new(0,0,1)ESP:AddToggle('Door',{Text="Door",Default=false,Callback=
function
    (s)
    if
    s then local ao=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door
    if
    not ao:GetAttribute("Used")then AddESP(ao,(ao.Parent:FindFirstChild("Lock")and"Locked "or"").."Door "..ao.Parent:GetAttribute("RoomID"),cD)
end
else
    for
        t,cu in ipairs(workspace.CurrentRooms:GetChildren())do
            for
                t,v in ipairs(cu:GetChildren())do
                    if
                    v.Name=="Door"and v:FindFirstChild("Door")then J:RemoveESP(v.Door)
                end
            end
        end
    end
end
}):AddColorPicker('DoorColo',{Default=cD,Title='Door Color',Transparency=0,Callback=
function
    (s)cD=s
    if
    Toggles.Door.Value then Toggles.Door:SetValue(false)Toggles.Door:SetValue(true)
end
end
})FloorESP:AddToggle('TimerLever',{Text="Timer Lever ESP",Default=false,Callback=
function
    (s)
    if
    s then local v=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("TimerLever",true)
    if
    v and v.Name=="TimerLever"then AddESP(v,"TimerLever",cG)
end
else
    local v=workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:FindFirstChild("TimerLever",true)
    if
    v and v.Name=="TimerLever"then J:RemoveESP(v)
end
end
end
}):AddColorPicker('TimeLeverColo',{Default=cG,Title='Timer Lever Color',Transparency=0,Callback=
function
    (s)cG=s
    if
    Toggles.TimerLever.Value then Toggles.TimerLever:SetValue(false)Toggles.TimerLever:SetValue(true)
end
end
})FloorESP:AddDivider()
if
Floor.Value=="Garden"then FloorESP:AddToggle('LeverESP',{Text="Lever ESP",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetDescendants())do
                if
                v and v.Parent and v.Parent.Name=="VineGuillotine"and v.Name=="Lever"then AddESP(v,"Lever",cK)
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetDescendants())do
                if
                v and v.Parent and v.Parent.Name=="VineGuillotine"and v.Name=="Lever"then J:RemoveESP(v)
            end
        end
    end
end
}):AddColorPicker('LeverColo',{Default=cK,Title='Lever Color',Transparency=0,Callback=
function
    (s)cK=s
    if
    Toggles.Lever.Value then Toggles.Lever:SetValue(false)Toggles.Lever:SetValue(true)
end
end
})
end
if
Floor.Value=="Mines"then FloorESP:AddToggle('Generator',{Text="Generator ESP",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="GeneratorMain"then AddESP(v,"Generator",cI)
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="GeneratorMain"then J:RemoveESP(v)
            end
        end
    end
end
}):AddColorPicker('GeneratorColo',{Default=cI,Title='Generator Color',Transparency=0,Callback=
function
    (s)cI=s
    if
    Toggles.Generator.Value then Toggles.Generator:SetValue(false)Toggles.Generator:SetValue(true)
end
end
})FloorESP:AddToggle('Ladder',{Text="Ladder ESP",Default=false,Callback=
function
    (s)
    for
        t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
            if
            v.Name=="Ladder"then AddESP(v,"Ladder",Color3.new(0,3,2))
        end
    end
end
})
end
if
Floor.Value=="Mines"then FloorESP:AddToggle('Fuse',{Text="Fuse ESP",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="FuseObtain"then AddESP(v,"Fuse",cP)
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="FuseObtain"then J:RemoveESP(v)
            end
        end
    end
end
}):AddColorPicker('FuseESP',{Default=cP,Title='Fuse Color',Transparency=0,Callback=
function
    (s)cP=s
    if
    Toggles.Fuse.Value then Toggles.Fuse:SetValue(false)Toggles.Fuse:SetValue(true)
end
end
})
end
if
Floor.Value=="Mines"then FloorESP:AddToggle('Anchor',{Text="Anchor ESP",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="MinesAnchor"then AddESP(v,"Anchor "..v:WaitForChild("Sign").TextLabel.Text,cQ)
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="MinesAnchor"then J:RemoveESP(v)
            end
        end
    end
end
}):AddColorPicker('AnchorColo',{Default=cQ,Title='Anchor Color',Transparency=0,Callback=
function
    (s)cQ=s
    if
    Toggles.Anchor.Value then Toggles.Anchor:SetValue(false)Toggles.Anchor:SetValue(true)
end
end
})FloorESP:AddToggle('WaterPump',{Text="Water Pump ESP",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="WaterPump"then AddESP(v,"Water Pump",Color3.new(0,1,0))
            end
        end
    end
end
})
end
ESP:AddToggle('Key',{Text="Key",Default=false,Callback=
function
    (s)
    if
    s then local v=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("KeyObtain",true)
    if
    v and not v:GetAttribute("Used")then AddESP(v,"Key",cE)
end
else
    local ak=workspace:FindFirstChild("KeyObtain",true)J:RemoveESP(ak)
end
end
}):AddColorPicker('KeyColo',{Default=cE,Title='Key Color',Transparency=0,Callback=
function
    (s)cE=s
    if
    Toggles.Key.Value then Toggles.Key:SetValue(false)Toggles.Key:SetValue(true)
end
end
})local cR={Wardrobe="Closet",Rooms_Locker="Locker",Backdoor_Wardrobe="Closet",Toolshed="Closet",Locker_Large="Locker",Bed="Bed",CircularVent="Vent",Rooms_Locker_Fridge="Fridge",RetroWardrobe="Closet",Dumpster="Dump Ster",Double_Bed="Double Bed"}ESP:AddToggle('HidingSpot',{Text="Closet ESP",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:FindFirstChild("Assets",true):GetChildren())do local cS=cR[v.Name]
            if
            cS and v.PrimaryPart then AddESP(v,cS,cJ)
        end
    end
else
    for
        t,v in ipairs(workspace.CurrentRooms:GetDescendants())do local cS=cR[v.Name]
        if
        cS and v.PrimaryPart then J:RemoveESP(v)
    end
end
end
end
}):AddColorPicker('HidingSpot',{Default=cJ,Title='Hiding Place Color',Transparency=0,Callback=
function
    (s)cJ=s
    if
    Toggles.HidingSpot.Value then Toggles.HidingSpot:SetValue(false)Toggles.HidingSpot:SetValue(true)
end
end
})ESP:AddToggle('GateLever',{Text="Gate Lever",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetDescendants())do
                if
                v.Name=="LeverForGate"then AddESP(v,"Gate Lever",cF)
            end
        end
    else
        local cT=workspace.CurrentRooms:FindFirstChild("LeverForGate",true)
        if
        cT then J:RemoveESP(cT)
    end
end
end
}):AddColorPicker('GateLeverColo',{Default=cF,Title='Gate Lever Color',Transparency=0,Callback=
function
    (s)cF=s
    if
    Toggles.GateLever.Value then Toggles.GateLever:SetValue(false)Toggles.GateLever:SetValue(true)
end
end
})ESP:AddToggle('Players',{Text="Players ESP",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,cU in ipairs(a:GetPlayers())do
                if
                cU~=b and cU.Character then AddESP(cU.Character,cU.Name,cH)
            end
        end
    else
        for
            t,cU in ipairs(a:GetPlayers())do
                if
                cU~=b and cU.Character then J:RemoveESP(cU.Character)
            end
        end
    end
end
}):AddColorPicker('PlayersColo',{Default=cH,Title='Players Color',Transparency=0,Callback=
function
    (s)cH=s
    if
    Toggles.Players.Value then Toggles.Players:SetValue(false)Toggles.Players:SetValue(true)
end
end
})local cV
for
    t,v in ipairs(a:GetPlayers())do cV=v.CharacterAdded:Connect(
    function
        ()
        for
            t,cU in ipairs(a:GetPlayers())do
                if
                cU~=b and cU.Character then AddESP(cU.Character,cU.Name,cH)
            end
        end
    end
    )
end
ESP:AddToggle('Books',{Text="Books",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetDescendants())do
                if
                v.Name=="LiveHintBook"then AddESP(v,"Book",cL)
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetDescendants())do
                if
                v.Name=="LiveHintBook"then J:RemoveESP(v)
            end
        end
    end
end
}):AddColorPicker('BooksColo',{Default=cL,Title='Books Color',Transparency=0,Callback=
function
    (s)cL=s
    if
    Toggles.Books.Value then Toggles.Books:SetValue(false)Toggles.Books:SetValue(true)
end
end
})ESP:AddToggle('Breaker',{Text="Breaker",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetDescendants())do
                if
                v.Name=="LiveBreakerPolePickup"then AddESP(v,"Breaker",cM)
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetDescendants())do
                if
                v.Name=="LiveBreakerPolePickup"then J:RemoveESP(v)
            end
        end
    end
end
}):AddColorPicker('BreakerColo',{Default=cM,Title='Breaker Color',Transparency=0,Callback=
function
    (s)cM=s
    if
    Toggles.Breaker.Value then Toggles.Breaker:SetValue(false)Toggles.Breaker:SetValue(true)
end
end
})Item={Flashlight="Flash Light",Lockpick="Lock Pick",Vitamins="Vitamin",Bandage="Bandage",StarVial="Star Vial",StarBottle="Star Bottle",StarJug="Star Jug",Shakelight="Shake Light",Straplight="Strap Light",Bulklight="Bulk Light",Battery="Battery",Candle="Candle",Crucifix="Crucifix",CrucifixWall="Crucifix",Glowsticks="Glow Stick",SkeletonKey="Skeleton Key",Candy="Candy",ShieldMini="Mini Shield",ShieldBig="Big Shield",BandagePack="Bandage Pack",BatteryPack="Flashlight BatteryPack",RiftCandle="Moonlight Candle",LaserPointer="Laser Pointer",HolyGrenade="Holy Grenade",Shears="Shears",Smoothie="Smoothie",Cheese="Cheese",Bread="Bread",AlarmClock="Alarm Clock",RiftSmoothie="Moonlight Smoothie",GweenSoda="Gween Soda",GlitchCub="Glitch Cube",RiftJar="Rift Jar",Compass="Compass",Lantern="Lantern",Multitool="Multi Tool",Lotus="Lotus",TipJar="Jeff Tip",LotusPetalPickup="Lotus Petal",KeyIron="Iron Key",Donut="Donut",Toolshed_Small="Shears Toolshed",Chest_Vine="Chest Vine",ChestBoxLocked="[Locked] Chest",ChestBox="Chest",StardustPickup="Star Dust"}ESP:AddToggle('Items',{Text="Items ESP",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,b7 in ipairs(workspace.CurrentRooms:GetDescendants())do local cW=Item[b7.Name]
            if
            cW and b7.PrimaryPart then AddESP(b7,cW,cN)
        end
    end
else
    for
        t,b7 in ipairs(workspace.CurrentRooms:GetDescendants())do local cW=Item[b7.Name]
        if
        cW and b7.PrimaryPart then J:RemoveESP(b7)
    end
end
end
end
}):AddColorPicker('ItemsColo',{Default=cN,Title='Items Color',Transparency=0,Callback=
function
    (s)cN=s
    if
    Toggles.Items.Value then Toggles.Items:SetValue(false)Toggles.Items:SetValue(true)
end
end
})ESP:AddToggle('Gold',{Text="Gold ESP",Default=false,Callback=
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v and v.Name=="GoldPile"then AddESP(v,"Gold "..v:GetAttribute("GoldValue"),cO)
            end
        end
    else
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v.Name=="GoldPile"then J:RemoveESP(v)
            end
        end
    end
end
}):AddColorPicker('GoldColor',{Default=cO,Title='Gold Color',Transparency=0,Callback=
function
    (s)cO=s
    if
    Toggles.Gold.Value then Toggles.Gold:SetValue(false)Toggles.Gold:SetValue(true)
end
end
})table.insert(Z,i.JumpRequest:Connect(
function
    ()task.wait(0.3)
    if
    Toggles.InfiniteJump.Value then
        if
        W then W.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
end
))table.insert(Z,b.CharacterAdded:Connect(
function
    ()task.wait(2)F:Notify("Settings Everything up",4)
    if
    Toggles.EnableJump.Value then b.Character:SetAttribute("CanJump",true)
end
if
Toggles.Godmode.Value then b.Character.Collision.Position=b.Character.Collision.Position-Vector3.new(0,11,0)
end
task.wait(3)MainGame=b:WaitForChild("PlayerGui"):WaitForChild("MainUI"):WaitForChild("Initiator").Main_Game
RequiredMainGame=require(b.PlayerGui.MainUI.Initiator.Main_Game)RemoteListener=MainGame.RemoteListener
Modules=RemoteListener.Modules
if
Toggles.AntiScreech.Value then local c4=Modules:FindFirstChild("Screech")or Modules:FindFirstChild("_Screech")c4.Name="_Screech"
end
if
Toggles.AntiA90.Value then local c5=Modules:FindFirstChild("A90")or Modules:FindFirstChild("_A90")
if
c5 then c5.Name="_A90"
end
end
end
))
function
    addESP(entity,cX)local cY
    while
        entity.PrimaryPart==nil do cY=entity:FindFirstChildWhichIsA("BasePart")task.wait()
    end
    cY=entity.PrimaryPart
    if
    not entity:FindFirstChildOfClass("Humanoid")then Instance.new("Humanoid",entity)
end
if
cY then cY.Transparency=0.99
end
J:AddESP(entity,cX,Color3.new(1,0,0))
end
Toggles.EntityNotifys:OnChanged(
function
    (s)
    if
    s then
        for
            t,v in ipairs(workspace:GetChildren())do
                if
                v.Name=="RushMoving"and Options.EntitiesPicker.Value["Rush"]then Notify("Rush Has Spawned, Find A hidingSpot",3)Sound()
            end
            if
            v.Name=="BackdoorRush"and Options.EntitiesPicker.Value["Blitz"]then Notify("Blitz Has Spawned, Find A hidingSpot",3)Sound()
        end
        if
        v.Name=="AmbushMoving"and Options.EntitiesPicker.Value["Ambush"]then Notify("Ambush Has Spawned, Find A hidingSpot",3)Sound()
    end
    if
    v.Name=="A60"and Options.EntitiesPicker.Value["A-60"]then Notify("A-60 Has Spawned, Find A hidingSpot",3)Sound()
end
if
v.Name=="A120"and Options.EntitiesPicker.Value["A-120"]then Notify("A-120 Has Spawned, Find A Hiding Spot",3)Sound()
end
if
v.Name=="Eyes"and Options.EntitiesPicker.Value["Eyes"]then Notify("Eyes Has Spawned Avoid Looking at it",3)Sound()
end
if
v.Name=="GlitchRush"and Options.EntitiesPicker.Value["GlitchRush"]then Notify("GlitchRush Has Spawned, Find a Hiding Spot",3)Sound()
end
if
v.Name=="GlitchAmbush"and Options.EntitiesPicker.Value["GlitchAmbush"]then Notify("GlitchAmbush Has Spawned, Find A hidingSpot",3)Sound()
end
if
v.Name=="MonumentEntity"and Options.EntitiesPicker.Value["Monument"]then Notify("Monument Has spawned, Look At It",3)Sound()
end
end
if
Toggles.EntitesESP.Value then
    if
    v.Name=="RushMoving"and Options.EntitiesPicker.Value["Rush"]then addESP(v,"Rush")
end
if
v.Name=="AmbushMoving"and Options.EntitiesPicker.Value["Ambush"]then addESP(v,"Ambush")
end
if
v.Name=="A60"and Options.EntitiesPicker.Value["A-60"]then addESP(v,"A-60")
end
if
v.Name=="A120"and Options.EntitiesPicker.Value["A-120"]then addESP(v,"A-120")
end
if
v.Name=="Eyes"and Options.EntitiesPicker.Value["Eyes"]then addESP(v,"Eyes")
end
if
v.Name=="BackdoorLookman"and Options.EntitiesPicker.Value["Lookman"]then addESP(v,"Lookman")
end
if
v.Name=="MonumentEntity"and Options.EntitiesPicker.Value["Monument"]then addESP(v:WaitForChild("Top"),"Monument")
end
end
end
end
)table.insert(Z,workspace.ChildAdded:Connect(
function
    (v)
    if
    Toggles.EntityNotifys.Value then
        if
        v.Name=="RushMoving"and Options.EntitiesPicker.Value["Rush"]then Notify("Rush Has Spawned, Find A hidingSpot",3)Sound()
    end
    if
    v.Name=="BackdoorRush"and Options.EntitiesPicker.Value["Blitz"]then Notify("Blitz Has Spawned, Find A hidingSpot",3)Sound()
end
if
v.Name=="AmbushMoving"and Options.EntitiesPicker.Value["Ambush"]then Notify("Ambush Has Spawned, Find A hidingSpot",3)Sound()
end
if
v.Name=="A60"and Options.EntitiesPicker.Value["A-60"]then Notify("A-60 Has Spawned, Find A hidingSpot",3)Sound()
end
if
v.Name=="A120"and Options.EntitiesPicker.Value["A-120"]then Notify("A-120 Has Spawned, Find A hidingSpot",3)Sound()
end
if
v.Name=="Eyes"and Options.EntitiesPicker.Value["Eyes"]then Notify("Eyes Has Spawned,Avoid Looking At it",3)Sound()
end
if
v.Name=="GlitchRush"and Options.EntitiesPicker.Value["GlitchRush"]then Notify("GlitchRush Has Spawned, Find A hidingSpot",3)Sound()
end
if
v.Name=="GlitchAmbush"and Options.EntitiesPicker.Value["GlitchAmbush"]then Notify("GlitchAmbush Has Spawned, Find A hidingSpot",3)Sound()
end
if
v.Name=="MonumentEntity"and Options.EntitiesPicker.Value["Monument"]then Notify("Monument Has spawned, Look At It",3)Sound()
end
end
if
Toggles.EntitesESP.Value then
    if
    v.Name=="RushMoving"and Options.EntitiesPicker.Value["Rush"]then addESP(v,"Rush")
end
if
v.Name=="AmbushMoving"and Options.EntitiesPicker.Value["Ambush"]then addESP(v,"Ambush")
end
if
v.Name=="A60"and Options.EntitiesPicker.Value["A-60"]then addESP(v,"A-60")
end
if
v.Name=="A120"and Options.EntitiesPicker.Value["A-120"]then addESP(v,"A-120")
end
if
v.Name=="Eyes"and Options.EntitiesPicker.Value["Eyes"]then addESP(v,"Eyes")
end
if
v.Name=="BackdoorLookman"and Options.EntitiesPicker.Value["Lookman"]then addESP(v,"Lookman")
end
if
v.Name=="BackdoorRush"and Options.EntitiesPicker.Value["Blitz"]then addESP(v,"Blitz")
end
if
v.Name=="MonumentEntity"and Options.EntitiesPicker.Value["Monument"]then addESP(v:WaitForChild("Top"),"Monument")
end
end
end
))Toggles.TransparencyCloset:OnChanged(
function
    (s)
    if
    not s then
        for
            t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
                if
                v:FindFirstChild("HidePrompt")then
                    for
                        t,cY in ipairs(v:GetChildren())do
                            if
                            cY:IsA("BasePart")and not(cY.Name=="PlayerCollision"or cY.Name=="Collision")then cY.Transparency=0
                        end
                    end
                end
            end
        end
    end
    )table.insert(Z,W:GetAttributeChangedSignal("Hiding"):Connect(
    function
        ()Closet=nil
        if
        W:GetAttribute("Hiding")==true then
            for
                t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetDescendants())do
                    if
                    v:FindFirstChild("HidePrompt")then
                        if
                        v:FindFirstChild("HiddenPlayer")and v.HiddenPlayer.Value~=nil then Closet=v
                    end
                end
            end
        else
            for
                t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetDescendants())do
                    if
                    v:FindFirstChild("HidePrompt")then
                        for
                            t,cY in ipairs(v:GetChildren())do
                                if
                                cY:IsA("BasePart")and not(cY.Name=="PlayerCollision"or cY.Name=="Collision")then cY.Transparency=0
                            end
                        end
                    end
                end
            end
        end
        ))print("RenderStepped")table.insert(Z,e.Heartbeat:Connect(
        function
            ()
            if
            B then
                if
                Toggles.AutoRooms and Toggles.AutoRooms.Value then
                    if
                    g.GameData.LatestRoom.Value==1000 then
                        return
                    end
                    if
                    Toggles.AutoCloset.Value then Toggles.AutoCloset:SetValue(false)F:Notify("Disabled Auto Closet
                    for
                        auto rooms to work properly",4)
                    end
                    local cZ=j:FindFirstChild("A60")or j:FindFirstChild("A120")or j:FindFirstChild("GlitchRush")or j:FindFirstChild("GlitchAmbush")
                    if
                    cZ and cZ.PrimaryPart and cZ.PrimaryPart.Position.Y>-6 then local c_=GetNearestLocker()
                    if
                    c_ then
                        if
                        not c_:FindFirstChild("Hide")then local q=Instance.new("Part",c_)q.Position=c_.PrimaryPart.Position+c_.PrimaryPart.CFrame.LookVector*7
                        q.Size=Vector3.new(1,1,1)q.CanCollide=false
                        q.Transparency=1
                        q.Anchored=true
                        q.Name="Hide"
                    end
                    moveto(c_:WaitForChild("Hide"))
                    if
                    not b.Character.CollisionPart.Anchored then fireproximityprompt(c_:WaitForChild("HidePrompt"))
                end
            end
        elseif
            not entity or entity.PrimaryPart.Position.Y<-9 then b.Character:SetAttribute("Hiding",false)moveto(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door.Door)
        end
    end
end
end
))table.insert(Z,e.RenderStepped:Connect(
function
    ()B=b:GetAttribute("Alive")
    if
    B then
        if
        Toggles.Fullbright.Value then c.Ambient=Color3.fromRGB(255,255,255)
    end
    if
    Options.GMDropdown and Options.GMDropdown.Value=="Automation"then local d0=workspace:FindFirstChild("RushMoving")or workspace:FindFirstChild("AmbushMoving")or workspace:FindFirstChild("GlitchRush")or workspace:FindFirstChild("GlitchAmbush")or workspace:FindFirstChild("BackdoorRush")
    if
    d0 and not Toggles.GodMode.Value then Toggles.GodMode:SetValue(true)
elseif
    not d0 and Toggles.GodMode.Value then Toggles.GodMode:SetValue(false)
end
end
if
Toggles.TransparencyCloset.Value then
    if
    Closet then
        for
            t,v in ipairs(Closet:GetChildren())do
                if
                v:IsA("BasePart")and not(v.Name=="PlayerCollision"or v.Name=="Collision")then v.Transparency=aF
            end
        end
    end
end
if
Toggles.SpeedBoost.Value then W.Humanoid.WalkSpeed=Speed
end
if
Toggles.Fieldofview.Value then j.CurrentCamera.FieldOfView=View
end
if
Toggles.AutoCloset.Value then local Closet=GetNearestCloset()
for
    t,v in ipairs(workspace:GetChildren())do local d1=bF[v.Name]
    if
    d1 and v.PrimaryPart then
        if
        (b.Character.HumanoidRootPart.Position-v.PrimaryPart.Position).Magnitude<=d1 then
            if
            Closet then
                if
                not b.Character.PrimaryPart.Anchored then fireInteract(Closet:WaitForChild("HidePrompt"))
            end
        end
    elseif
        (b.Character.HumanoidRootPart.Position-v.PrimaryPart.Position).Magnitude>d1 then b.Character:SetAttribute("Hiding",false)
        if
        not v:GetAttribute("Destroying")then v:SetAttribute("Destroying",true)v.Destroying:Connect(
        function
            ()b.Character:SetAttribute("Hiding",false)
        end
        )
    end
end
end
end
end
if
Toggles.NoClosetExitDelay.Value then
    if
    b.Character:GetAttribute("Hiding")==true then
        if
        W.Humanoid.MoveDirection.Magnitude>0.5 then RemoteFolder.CamLock:FireServer()
    end
end
end
if
Toggles.NoCutscenes.Value then
    if
    g.GameData.LatestRoom.Value>89 then Toggles.NoCutscenes:SetValue(false)
end
end
if
Toggles.InfiniteItems and Toggles.InfiniteItems.Value then local d2=W:FindFirstChild("Lockpick")or W:FindFirstChild("SkeletonKey")
if
d2 then
    for
        t,P in ipairs(InfStore)do
            if
            P and P.Parent and not P:GetAttribute("HasFake")==true then addFake(P,"Lockpick")
        end
    end
end
end
if
Toggles.InfiniteSItems and Toggles.InfiniteSItems.Value then local d2=b.Character:FindFirstChild("Shears")
if
d2 then
    for
        t,P in ipairs(InfSStore)do
            if
            P and P.Parent and not P:GetAttribute("HasFake")==true then addFake(P,"Shears")
        end
    end
end
end
if
Toggles.Noacceleration.Value then W.HumanoidRootPart.CustomPhysicalProperties=PhysicalProperties.new(100,0.5,0.2)W.Collision.CustomPhysicalProperties=PhysicalProperties.new(100,0.5,0.2)
else
    W.HumanoidRootPart.CustomPhysicalProperties=PhysicalProperties.new(0.4,0.2,0.2)W.Collision.CustomPhysicalProperties=PhysicalProperties.new(0.4,0.2,0.2)
end
if
Toggles.AntiHear.Value and g:FindFirstChild("RemotesFolder")then RemoteFolder.Crouch:FireServer(true)
end
if
Toggles.Noclip.Value then
    if
    B then b.Character.Collision.CanCollide=false
    if
    b.Character.Collision:FindFirstChild("CollisionCrouch")then b.Character.Collision.CollisionCrouch.CanCollide=false
end
if
b.Character:FindFirstChild("CollisionPart")then b.Character:FindFirstChild("CollisionPart").CanCollide=false
end
b.Character.HumanoidRootPart.CanCollide=false
end
end
if
Toggles.NoCameraShake.Value then
    if
    B then RequiredMainGame.csgo=CFrame.new()
end
end
if
Toggles.DeleteFigure and Toggles.DeleteFigure.Value then
    if
    B then local d3=workspace.CurrentRooms:FindFirstChild("FigureRig",true)
    if
    d3 and d3:FindFirstChild("Root")and isnetworkowner(d3.Root)then
        if
        d3:FindFirstChild("Root")then d3.Root.Size=Vector3.new(0.4,2000,0.4)d3.Root.CanCollide=false
        d3.Hitbox.CanCollide=false
    end
end
end
end
if
Toggles.DeleteFigureFools and Toggles.DeleteFigureFools.Value then
    if
    B then local d3=workspace:FindFirstChild("FigureRagdoll",true)
    if
    d3 and d3:FindFirstChild("Root")and isnetworkowner(d3.Root)then
        if
        d3:FindFirstChild("Root")then d3:PivotTo(d3.Root.CFrame*CFrame.new(30,900,300))d3.Root.CanCollide=false
    end
end
end
end
if
Toggles.DoorReach.Value then
    if
    B then local ao=workspace.CurrentRooms[g.GameData.LatestRoom.Value].Door
    if
    ao and ao:FindFirstChild("ClientOpen")then
        if
        (W.HumanoidRootPart.Position-ao.Door.Position).Magnitude<aE then ao.ClientOpen:FireServer()
    end
end
end
end
if
Toggles.ThirdPerson.Value then
    if
    B then j.CurrentCamera.CFrame=j.CurrentCamera.CFrame*CFrame.new(aJ,aH,aI)
    for
        t,ae in ipairs(b.Character:GetDescendants())do
            if
            ae:IsA("BasePart")and ae.Name=="Head"then ae.LocalTransparencyModifier=Toggles.ThirdPerson.Value and 0 or 1
        elseif
            ae:IsA("Accessory")and ae:FindFirstChild("Handle")then ae.Handle.LocalTransparencyModifier=Toggles.ThirdPerson.Value and 0 or 1
        end
    end
end
end
if
Toggles.AntiEyes.Value then
    if
    B then
        if
        j:FindFirstChild("Eyes")then
            if
            RemoteFolder.Name=="Bricks"or RemoteFolder.Name=="EntityInfo"then RemoteFolder.MotorReplication:FireServer(0,-100,0,false)
        else
            RemoteFolder.MotorReplication:FireServer(-890)
        end
    end
end
end
if
Toggles.AnticheatManipulation and Toggles.AnticheatManipulation.Value then
    if
    B then W:PivotTo(b.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,10000))
end
end
if
Toggles.SpectateEntity.Value then
    if
    B then
        for
            t,entity in ipairs(workspace:GetChildren())do
                if
                aL[entity.Name]then
                    if
                    entity.PrimaryPart then
                        if
                        W:GetAttribute("Hiding")==true then j.Camera.CFrame=CFrame.lookAt(j.CurrentCamera.CFrame.Position,entity.PrimaryPart.Position)
                    end
                end
            end
        end
    end
end
if
Toggles.AntiLookman.Value then
    if
    B then
        if
        j:FindFirstChild("BackdoorLookman")then RemoteFolder.MotorReplication:FireServer(-890)
    end
end
end
if
Fog then Fog.Density=Toggles.AntiFog.Value and 0 or 0.94
end
if
Toggles.AntiFog.Value then c.FogEnd=9e9
end
if
Toggles.TransparencyCart.Value then
    if
    j.CurrentCamera and j.CurrentCamera:FindFirstChild("MinecartRig")then
        for
            t,v in ipairs(workspace.CurrentCamera.MinecartRig:GetChildren())do
                if
                v:IsA("BasePart")then v.Transparency=aG
            end
        end
    end
end
if
Toggles.FigureGodmode then local d3=workspace:FindFirstChild("FigureRagdoll",true)
if
d3 then
    for
        t,v in d3:GetChildren()do
            if
            v:IsA("BasePart")then v.CanTouch=not Toggles.FigureGodmode.Value
        end
    end
end
end
if
Toggles.AutoInteract.Value then
    for
        t,P in ipairs(AutoInteractTable)do
            if
            P and P.Parent then local d4=P:GetAttribute("Interactions")
            if
            not d4 or d4<1 then local d5
            if
            P.Parent:IsA("BasePart")then d5=P.Parent
        elseif
            P.Parent.Parent and P.Parent.Parent:IsA("BasePart")then d5=P.Parent.Parent
        elseif
            P.Parent and P.Parent:FindFirstChildWhichIsA("BasePart")then d5=P.Parent:FindFirstChildWhichIsA("BasePart")
        else
            if
            P.Parent.Parent and P.Parent.Parent:FindFirstChildOfClass("BasePart")then d5=P.Parent.Parent:FindFirstChildOfClass("BasePart")
        end
    end
    if
    d5 and(b.Character.HumanoidRootPart.Position-d5.Position).Magnitude<P.MaxActivationDistance then
        if
        P.Parent and P.Parent.Name=="GoldPile"and Options.IgnoreList.Value["Gold"]then
            return
        end
        if
        P.Parent:GetAttribute("JeffShop")and Options.IgnoreList.Value["Jeff Items"]then
            return
        end
        if
        P.Parent.Parent and P.Parent.Parent.Name=="Drops"and Options.IgnoreList.Value["Drops"]then
            return
        end
        if
        P.Name=="ModulePrompt"and P.Parent and P.Parent.Name=="Hole"then
            return
        end
        if
        P.Name=="ModulePrompt"and P.Parent and P.Parent.Name=="Mandrake"then
            return
        end
        if
        P.Parent and P.Parent.Name=="Padlock"then
            return
        end
        if
        P.Parent and P.Parent.Parent and P.Parent.Parent.Name=="Locker_Small_Locked"then
            return
        end
        if
        P.Parent and P.Parent.Name=="KeyObtainFake"then
            return
        end
        if
        P.ClickablePrompt then fireInteract(P)
    end
end
end
end
end
end
if
CollisionClone and CollisionClone.Anchored then CollisionClone.Anchored=false
end
if
CollisionClone2 and CollisionClone2.Anchored then CollisionClone2.Anchored=false
end
end
end
))table.insert(Z,b:GetAttributeChangedSignal("CurrentRoom"):Connect(
function
    ()
    if
    Toggles.AntiSnare.Value then
        if
        Floor.Value=="Garden"then
            for
                t,cu in ipairs(workspace.CurrentRooms:GetChildren())do
                    if
                    cu:FindFirstChild("Snares")then
                        for
                            t,v in ipairs(cu.Snares:GetChildren())do
                                if
                                v.Name=="Snare"then v:WaitForChild("Hitbox",9e9).CanTouch=false
                            end
                        end
                    end
                end
            else
                for
                    t,cu in ipairs(workspace.CurrentRooms:GetChildren())do
                        if
                        cu:FindFirstChild("Assets")then
                            for
                                t,v in ipairs(cu.Assets:GetChildren())do
                                    if
                                    v.Name=="Snare"then v:WaitForChild("Hitbox",9e9).CanTouch=false
                                end
                            end
                        end
                    end
                end
            end
            if
            Toggles.AntiDupe.Value then
                for
                    t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetChildren())do
                        if
                        v and v.Name=="SideroomDupe"then v:WaitForChild("DoorFake",9e9):WaitForChild("Hidden",9e9).CanTouch=false
                    end
                end
            end
            for
                t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetChildren())do
                    if
                    v.Name=="SideroomDupe"then
                        if
                        v:WaitForChild("DoorFake"):FindFirstChild("Lock")then v:WaitForChild("DoorFake"):FindFirstChild("Lock"):FindFirstChildOfClass("ProximityPrompt").Enabled=not Toggles.AntiDupe.Value
                    end
                end
            end
            if
            Toggles.AntiGiggle and Toggles.AntiGiggle.Value then
                for
                    t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:GetChildren())do
                        if
                        v.Name=="GiggleCeiling"then v:WaitForChild("Hitbox",9e9).CanTouch=false
                    end
                end
            end
            if
            Toggles.AntiVacuum.Value then
                for
                    t,v in ipairs(workspace.CurrentRooms:GetChildren())do
                        if
                        v.Name=="SideroomSpace"then v:WaitForChild("Collision").CanTouch=false
                        v:WaitForChild("Collision").CanCollide=true
                    end
                end
            end
            if
            Toggles.Door.Value then local cu=b:GetAttribute("CurrentRoom")local d6=cu-1
            local ao=workspace.CurrentRooms[d6].Door.Door
            if
            ao then J:RemoveESP(ao)
        end
        local ao=workspace.CurrentRooms[b:GetAttribute("CurrentRoom")].Door.Door
        if
        not ao:GetAttribute("Used")then AddESP(ao,(ao.Parent:FindFirstChild("Lock")and"[Locked] "or"").."Door "..ao.Parent:GetAttribute("RoomID"),cD)
    end
end
if
Toggles.EntityNotifys.Value then local v=workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:FindFirstChild("Groundskeeper",true)
if
v and Options.EntitiesPicker.Value["Groundskeeper"]then F:Notify("Grounds Keeper has spawned",3)Sound()
end
end
if
Toggles.Ladder and Toggles.Ladder.Value then local v=workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:FindFirstChild("Ladder",true)
if
v then AddESP(v,"Ladder",Color3.new(0,3,2))
end
end
if
Toggles.Key.Value then local v=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("KeyObtain",true)
if
v and not v:GetAttribute("Used")then AddESP(v,"Key",cE)
end
end
if
Toggles.GateLever.Value then local cT=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("Assets"):FindFirstChild("LeverForGate")
if
cT then AddESP(cT,"Lever ",cF)
end
end
if
Toggles.EntitesESP.Value and Options.EntitiesPicker.Value["Figure"]then local d3=workspace.CurrentRooms:FindFirstChild("FigureRig",true)or workspace.CurrentRooms:FindFirstChild("FigureRagdoll",true)
if
d3 then addESP(d3,"Figure")
end
end
if
Toggles.EntitesESP.Value and Options.EntitiesPicker.Value["Bramble"]then local av=workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:FindFirstChild("LiveEntityBramble",true)
if
av then addESP(av,"Bramble")
end
end
if
Toggles.Generator and Toggles.Generator.Value then local v=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("GeneratorMain",true)
if
v then AddESP(v,"Generator",cI)
end
end
if
Toggles.TimerLever.Value then local v=workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("TimerLever",true)
if
v then AddESP(v,"TimerLever",cG)
end
end
if
Toggles.HidingSpot.Value then
    if
    g:FindFirstChild("RemotesFolder")then local cu=b:GetAttribute("CurrentRoom")
    if
    cu and cu>0 then local d6=cu-1
    for
        t,v in ipairs(workspace.CurrentRooms[d6]:GetDescendants())do local cS=cR[v.Name]
        if
        cS and v.PrimaryPart then J:RemoveESP(v)
    end
end
end
end
for
    t,v in ipairs(workspace.CurrentRooms[b:GetAttribute("CurrentRoom")]:FindFirstChild("Assets",true):GetChildren())do local cS=cR[v.Name]
    if
    cS and v.PrimaryPart then AddESP(v,cS,cJ)
end
end
end
end
))Toggles.NoCutscenes:OnChanged(
function
    (s)local d7=RemoteListener:FindFirstChild("Cutscenes")or RemoteListener:FindFirstChild("_Cutscenes")d7.Name=s and"_Cutscenes"or"Cutscenes"
end
)Toggles.EnableJump:OnChanged(
function
    (s)
    if
    W then W:SetAttribute("CanJump",s)
end
end
)print("hi0")local d8={}local d9={Chest_Vine=true,CuttableVines=true,Cellar=true,UnlockPrompt=true,ThingToEnable=true,LockPrompt=true,SkullPrompt=true,FusesPrompt=true,ChestBoxLocked=true,Locker_Small_Locked=true,Toolbox_Locked=true}local da={LiveObstructionNew=true,LiveObstructionNewIntro=true,ChandelierObstruction=true,Seek_Arm=true,FigureRig=true,Egg=true,LiveHintBook=true,LiveBreakerPolePickup=true,Lever=true,MinesAnchor=true,VineGuillotine=true,GoldPile=true,FuseObtain=true,Toolbox=true,CuttableVines=true,Cellar=true,UnlockPrompt=true,ThingToEnable=true,LockPrompt=true,SkullPrompt=true,FusesPrompt=true,Locker_Small_Locked=true,Toolbox_Locked=true,Flashlight=true,Lockpick=true,Vitamins=true,Bandage=true,StarVial=true,StarBottle=true,StarJug=true,Shakelight=true,Straplight=true,Wall=true,Wall_Strip=true,Bulklight=true,Battery=true,Candle=true,Crucifix=true,CrucifixWall=true,Glowsticks=true,SkeletonKey=true,Candy=true,ShieldMini=true,ShieldBig=true,BandagePack=true,BatteryPack=true,RiftCandle=true,LaserPointer=true,HolyGrenade=true,Shears=true,Smoothie=true,Cheese=true,Bread=true,AlarmClock=true,RiftSmoothie=true,GweenSoda=true,GlitchCub=true,RiftJar=true,Compass=true,Lantern=true,Multitool=true,Lotus=true,TipJar=true,LotusPetalPickup=true,KeyIron=true,Donut=true,Toolshed_Small=true,Chest_Vine=true,ChestBoxLocked=true,ChestBox=true,StardustPickup=true,ElevatorBreaker=true,WaterPump=true,GrumbleRig=true,PowerupPad=true,SeekGuidingLight=true,DoorNormal=true,DoorFrame=true,Luggage_Cart_Crouch=true,Carpet=true,Floor=true,CarpetLight=true,Luggage_Cart=true,DropCeiling=true,End_DoorFrame=true,SeeThroughGlass=true,Start_DoorFrame=true,TriggerEventCollision=true,DoorLattice=true,Collision=true}table.insert(Z,workspace.DescendantAdded:Connect(
function
    (v)d8[#d8+1]=v
end
))delaytimer=0.07
local db=0
table.insert(Z,e.Heartbeat:Connect(
function
    (dc)db=db+dc
    if
    db>delaytimer then db=0
    local dd=d8
    d8={}
    for
        b7=1,#dd do local v=dd[b7]
        if
        v:IsA("ProximityPrompt")then
            if
            Toggles.AutoInteract.Value then
                if
                v then
                    if
                    not Ignore[v.Name]then
                        if
                        v:IsA("ProximityPrompt")then table.insert(AutoInteractTable,v)
                    end
                end
            end
        end
        if
        Toggles.PromptReach.Value then v:SetAttribute("Distance",v.MaxActivationDistance)v.MaxActivationDistance=v.MaxActivationDistance*2
    end
    if
    Toggles.PromptClip.Value then v.RequiresLineOfSight=false
end
if
Toggles.InstantPrompt.Value then v:SetAttribute("Hold",v.HoldDuration)v.HoldDuration=0
end
end
if
Toggles.AntiLag.Value then
    if
    v:IsA("BasePart")then v.Material=Enum.Material.Plastic
end
if
v.Name=="LightFixture"or v.Name=="Carpet"or v.Name=="CarpetLight"then v:Destroy()
end
if
v:IsA("Texture")then v:Destroy()
end
end
if
Toggles.AutoDoors and Toggles.AutoDoors.Value then
    if
    Objects[v.Name]then canhit(v)
end
if
v.Name=="LiveObstructionNew"or v.Name=="LiveObstructionNewIntro"then canhit(v:WaitForChild("Collision"))
end
if
v.Name=="FigureRig"then
    if
    not v:FindFirstChild("AvoidHitbox")then local af=Instance.new("Part",v)af.Name="AvoidHitbox"af.Size=Vector3.new(15,15,15)af.CanCollide=true
    af.CanQuery=true
    af.Transparency=1
    af.Position=v:WaitForChild("Root")
end
for
    t,ag in pairs(v:GetDescendants())do
        if
        ag:IsA("BasePart")and not ag:FindFirstChild("AvoidPath")then local ah=Instance.new("PathfindingModifier",ag)ah.PassThrough=false
        ah.Name="AvoidPath"
    end
end
v.DescendantAdded:Connect(
function
    (ag)
    if
    ag:IsA("BasePart")and not ag:FindFirstChild("AvoidPath")then local ah=Instance.new("PathfindingModifier",ag)ah.PassThrough=false
    ah.Name="AvoidPath"
end
end
)
end
if
not v:IsA("Part")and v.Name=="SeeThroughGlass"then canhit(v)
end
if
v.Name=="Collision"and v.Parent and v.Parent.Name=="Parts"then v.CanCollide=false
end
if
v.Name=="DoorLattice"then canhit(v:WaitForChild("Door",9e9))
end
if
Set[v.Name]then local q=Instance.new("Part",v)q.Size=v:FindFirstChildWhichIsA("BasePart")and v:FindFirstChildWhichIsA("BasePart").Size+Vector3.new(0,0,1)or v.Size and v.Size+Vector3.new(0,0,1)or Vector3.new(1,1,1)q.Transparency=1
q.Anchored=true
q.Position=v:IsA("Model")and v:FindFirstChildWhichIsA("BasePart").Position or v:IsA("BasePart")and v.Position or Vector3.new(0,0,0)
end
end
if
Toggles.AutoBreakerBox.Value then
    if
    v.Name=="ElevatorBreaker"then bE=v
end
end
if
Toggles.WaterPump and Toggles.WaterPump.Value then
    if
    v.Name=="WaterPump"then AddESP(v,"Water Pump",Color3.new(0,1,0))
end
end
if
Toggles.InfiniteSItems and Toggles.InfiniteSItems.Value then
    if
    v.Parent then
        if
        ShearsParents[v.Name]or ShearsNames[v.Name]then
            if
            v:IsA("ProximityPrompt")then table.insert(InfSStore,v)
        else
            table.insert(InfSStore,v:FindFirstChildOfClass("ProximityPrompt"))
        end
    end
end
end
if
Toggles.InfiniteItems and Toggles.InfiniteItems.Value then
    if
    v.Parent then
        if
        LockpickNames[v.Name]or LockpickParents[v.Name]or v.Parent.Name=="Door"and v.Parent.Parent.Name=="Locker_Small_Locked"then
            if
            v:IsA("ProximityPrompt")then table.insert(InfStore,v)
        else
            table.insert(InfStore,v:FindFirstChildOfClass("ProximityPrompt"))
        end
    end
end
end
if
Toggles.ShowSeekPath and Toggles.ShowSeekPath.Value then showpath(v)
end
if
Toggles.AntiSeekObstructions.Value then
    if
    v.Name=="ChandelierObstruction"or v.Name=="Seek_Arm"then
        for
            t,ae in ipairs(v:GetChildren())do
                if
                ae:IsA("BasePart")then ae.CanTouch=false
            end
        end
    end
end
if
Toggles.Books.Value then
    if
    v.Name=="LiveHintBook"then AddESP(v,"Book",cL)
end
end
if
Toggles.Breaker.Value then
    if
    v.Name=="LiveBreakerPolePickup"then AddESP(v,"Breaker",cM)
end
end
if
Toggles.EntitesESP.Value and v.Name=="Groundskeeper"and Options.EntitiesPicker.Value["Groundskeeper"]then addESP(v,"Grounds Keeper")
end
if
Toggles.AntiGloomPile and Toggles.AntiGloomPile.Value then
    if
    v.Name=="Egg"then v.CanTouch=false
end
end
if
Toggles.Anchor and Toggles.Anchor.Value then
    if
    v.Name=="MinesAnchor"then AddESP(v,"Anchor "..v:WaitForChild("Sign").TextLabel.Text,cQ)
end
end
if
Toggles.Items.Value then local cW=Item[v.Name]
if
cW then AddESP(v,cW,cN)
end
end
if
Toggles.Fuse and Toggles.Fuse.Value then
    if
    v.Name=="FuseObtain"then AddESP(v,"Fuse",cP)
end
end
if
v.Name=="GrumbleRig"and Options.EntitiesPicker.Value["Grumble"]then addESP(v,"Grumble")
end
if
Toggles.Gold.Value then
    if
    v.Name=="GoldPile"then AddESP(v,"Gold "..v:GetAttribute("GoldValue"),cO)
end
end
if
Floor.Value=="Garden"and Toggles.LeverESP.Value then
    if
    v and v.Parent and v.Parent.Name=="VineGuillotine"and v.Name=="Lever"then AddESP(v,"Lever",Color3.new(0,1,0))
end
end
if
Toggles.AutoGetPowerUps and Toggles.AutoGetPowerUps.Value and v.Name=="PowerupPad"then v:WaitForChild("Hitbox",9e9).Size=Vector3.new(90,90,90)
end
end
end
end
))local de
print("Hi1")
if
not z then de=hookmetamethod(game,"__namecall",newcclosure(
function
    (self,...)local df={...}local dg=getnamecallmethod()
    if
    self.Name=="ClutchHeartbeat"and dg=="FireServer"and Toggles.AutoHeartbeatMiniGame.Value then df[1]=true
    return
    de(self,unpack(df()))
end
return
de(self,...)
end
))
end
print("hi2")
function
    Unload()
    if
    AutoDoorsConnection then AutoDoorsConnection:Disconnect()AutoDoorsConnection=nil
end
b.Character.Head.PointLight.Brightness=1
b.Character.Humanoid:MoveTo(b.Character.HumanoidRootPart.Position)
if
workspace:FindFirstChild("Path Node")then workspace:FindFirstChild("Path Node"):Destroy()
end
b:SetAttribute("mshaxLoaded",false)F.Unloaded=true
for
    b7,dh in ipairs(Toggles)do dh:SetValue(false)
end
for
    t,di in ipairs(Z)do di:Disconnect()
end
F:Unload()J:Unload()
if
W.HumanoidRootPart:FindFirstChild("FlyBodyVelocity")then W.HumanoidRootPart:FindFirstChild("FlyBodyVelocity"):Destroy()
end
if
W.HumanoidRootPart:FindFirstChild("FlyBodyGyro")then W.HumanoidRootPart:FindFirstChild("FlyBodyGyro"):Destroy()
end
if
RemoteFolder:FindFirstChild("Crouch")then RemoteFolder.Crouch:FireServer(false)
end
W.Humanoid.PlatformStand=false
W:SetAttribute("CanJump",false)
if
A then A:Destroy()
end
if
g:FindFirstChild("SurgeRemote")then g.SurgeRemote.Parent=g.RemotesFolder
end
if
ClientModules.EntityModules:FindFirstChild("_Shade")then ClientModules.EntityModules:FindFirstChild("_Shade").Name="Shade"
end
for
    t,P in ipairs(workspace.CurrentRooms:GetDescendants())do
        if
        P:IsA("ProximityPrompt")then P.MaxActivationDistance=7
        P.HoldDuration=P:GetAttribute("Hold")or 7
    end
end
c.GlobalShadows=true
c.Brightness=0
for
    t,v in ipairs(workspace:GetDescendants())do
        if
        v:GetAttribute("HasFake")then v:SetAttribute("HasFake",nil)
    end
    if
    v:GetAttribute("Used")then v:SetAttribute("Used",nil)
end
end
if
roomConn then roomConn:Disconnect()roomConn=nil
end
if
AutoRoomsConnection then AutoRoomsConnection:Disconnect()AutoRoomsConnection=nil
end
if
conn then conn:Disconnect()conn=nil
end
if
U then U:Disconnect()U=nil
end
if
bG then bG:Disconnect()bG=nil
end
if
AutoAnticheat then AutoAnticheat:Disconnect()AutoAnticheat=nil
end
if
con then con:Disconnect()con=nil
end
if
Toggles.Godmode and Toggles.Godmode.Value then b.Character.Collision.Position=b.Character.Collision.Position+Vector3.new(0,11,0)
end
if
X then X:Disconnect()X=nil
end
for
    t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
        if
        v:FindFirstChild("HidePrompt")then
            for
                t,cY in ipairs(v:GetChildren())do
                    if
                    cY:IsA("BasePart")and not(cY.Name=="PlayerCollision"or cY.Name=="Collision")then cY.Transparency=0
                end
            end
        end
    end
    if
    NoclipConnection then NoclipConnection:Disconnect()NoclipConnection=nil
end
if
FixingConnection then FixingConnection:Disconnect()FixingConnection=nil
end
if
W:FindFirstChild("_CollisionPart")then W:FindFirstChild("_CollisionPart"):Destroy()
end
if
W:FindFirstChild("_CollisionPart2")then W:FindFirstChild("_CollisionPart2"):Destroy()
end
if
SeekPath then SeekPath:Disconnect()SeekPath=nil
end
if
AddChild then AddChild:Disconnect()AddChild=nil
end
for
    t,v in ipairs(workspace.CurrentRooms:GetDescendants())do
        if
        v.Name=="Snare"and v.Parent and v.Parent.Name~="Snare"then v:WaitForChild("Hitbox").CanTouch=false
    end
end
if
AutoLibraryCodeConnection then AutoLibraryCodeConnection:Disconnect()AutoLibraryCodeConnection=nil
end
if
au then au:Disconnect()au=nil
end
if
ConInf then ConInf:Disconnect()ConInf=nil
end
if
cV then cV:Disconnect()cV=nil
end
if
cv then cv:Disconnect()cv=nil
end
end
V=b.Character.ChildAdded:Connect(
function
    (v)
    if
    v.Name=="Key"and g:FindFirstChild("RemotesFolder")then cleanupEnableReal()
end
if
v.Name=="Lockpick"then
    if
    Toggles.InfiniteItems and Toggles.InfiniteItems.Value then scanPrompts(LockpickParents,LockpickNames)
end
if
Toggles.InfiniteSItems and Toggles.InfiniteSItems.Value then scanPrompts(ShearsParents,ShearsNames)
end
end
end
)b.CharacterAdded:Connect(
function
    ()
    if
    V then V:Disconnect()V=nil
end
V=b.Character.ChildAdded:Connect(
function
    (v)
    if
    v.Name=="Key"then cleanupEnableReal()
end
if
v.Name=="Lockpick"then
    if
    Toggles.InfiniteItems and Toggles.InfiniteItems.Value then scanPrompts(LockpickParents,LockpickNames)
end
if
Toggles.InfiniteSItems and Toggles.InfiniteSItems.Value then scanPrompts(ShearsParents,ShearsNames)
end
end
end
)
end
)SettingsBox:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind",{Default="RightShift",NoUI=true,Text="Menu keybind"})F.ToggleKeybind=Options.MenuKeybind
SettingsBox:AddToggle("ShowKeybinds",{Text="Show Keybinds",Default=false,Tooltip="Toggle the visibility of the keybinds menu"}):OnChanged(
function
    ()F.KeybindFrame.Visible=Toggles.ShowKeybinds.Value
end
)SettingsBox:AddToggle("ShowCustomCursor",{Text="Show Custom Cursor",Default=F.IsMobile==true and true or false,Tooltip="Toggle the visibility of the Cursor"}):OnChanged(
function
    ()F.ShowCustomCursor=Toggles.ShowCustomCursor.Value
end
)local dj=Tabs.UISettings:AddRightGroupbox("Credits")dj:AddLabel("KardinCat - Creator",true)dj:AddLabel("notzanocoddz - W Guy Made Auto Load Config",true)SettingsBox:AddButton({Text="Unload GUI",Func=
function
    ()Unload()
end
})SettingsBox:AddSlider("DelayAdded",{Text="Delay Added",Tooltip="Delay Processing Loop",Default=0.07,Min=0.04,Max=0.14,Rounding=2,Compact=false,Callback=
function
    (s)delaytimer=s
end
})SettingsBox:AddLabel('Less Value More Freeze when opening door but faster processing things',true)SettingsBox:AddButton({Text="Join Discord",Func=
function
    ()
    if
    toclipboard then toclipboard("https://discord.gg/5ANk2PAcK2")F:Notify("Copied Discord Link in Clipboard",3)
elseif
    setclipboard then setclipboard("https://discord.gg/5ANk2PAcK2")F:Notify("Copied Discord Link in Clipboard",3)
end
end
})local dk="Prohax"local dl=dk.."/Addons"
if
not isfolder(dk)then makefolder(dk)
end
if
not isfolder(dl)then makefolder(dl)
end
Prohax=Prohax or{}Prohax.Addons={}
for
    t,dm in ipairs(listfiles(dl))do
        if
        dm:sub(-4)==".lua"or dm:sub(-4)==".txt"then local G,dn=pcall(
        function
            ()
            return
            loadstring(readfile(dm))()
        end
        )
        if
        G and type(dn)=="table"then table.insert(Prohax.Addons,dn)AddonBox:AddToggle(dn.Text,{Text=dn.Text,Default=dn.Default,Callback=dn.Callback})
    end
end
end
local dp="Prohax"local dq="Doors"ThemeManager:SetLibrary(F)SaveManager:SetLibrary(F)SaveManager:IgnoreThemeSettings()SaveManager:SetIgnoreIndexes({'MenuKeybind'})ThemeManager:SetFolder(dp)SaveManager:SetFolder(dp..'/'..dq)SaveManager:BuildConfigSection(Tabs['UISettings'])ThemeManager:ApplyToTab(Tabs['UISettings'])SaveManager:GetAutoloadConfig()SaveManager:LoadAutoloadConfig()SaveManager:SaveAutoloadConfig(dq)
end
if
game.PlaceId==3101667897 then game.Players.LocalPlayer:SetAttribute("mshaxLoaded",true)local D='https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'local E=identifyexecutor()or getexecutorname()local F=loadstring(game:HttpGet(D..'Library.lua'))()F:Notify("Loading mshax
for
    Legends of speed ",5)task.wait(1.5)Sound()ThemeManager=loadstring(game:HttpGet(D..'addons/ThemeManager.lua'))()SaveManager=loadstring(game:HttpGet(D..'addons/SaveManager.lua'))()Options=F.Options
    Toggles=F.Toggles
    local J=loadstring(game:HttpGet("https://raw.githubusercontent.com/bocaj111004/ESPLibrary/refs/heads/main/Library.lua"))()local Z={}Window=F:CreateWindow({Title='mshax v4.5 |LOS ',Center=true,AutoShow=true})Tabs={Main=Window:AddTab('Main'),UISettings=Window:AddTab('Config')}local dr=Tabs.Main:AddRightGroupbox("Main")local SettingsBox=Tabs.UISettings:AddRightGroupbox("UI")dr:AddToggle("AutoFarm",{Text="Auto Farm",Default=false})dr:AddToggle("AutoRebirth",{Text="Auto Rebirth",Default=false})table.insert(Z,e.RenderStepped:Connect(
    function
        ()
        if
        b.Character and b.Character.Humanoid.Health>0 then
            if
            Toggles.AutoFarm.Value then local df={"collectOrb","Blue Orb",b.Character.areaNameValue.Value}game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(df))local df={"collectOrb","Red Orb",b.Character.areaNameValue.Value}game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(df))local df={"collectOrb","Gem",b.Character.areaNameValue.Value}game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(df))local df={"collectOrb","Yellow Orb",b.Character.areaNameValue.Value}game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(df))local df={"collectOrb","Yellow Orb",b.Character.areaNameValue.Value}game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(df))local df={"collectOrb","Yellow Orb",b.Character.areaNameValue.Value}game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(df))local df={"collectOrb","Yellow Orb",b.Character.areaNameValue.Value}game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer(unpack(df))
        end
        if
        Toggles.AutoRebirth.Value then local df={"rebirthRequest"}game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthEvent"):FireServer(unpack(df))
    end
end
end
))SettingsBox:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind",{Default="RightShift",NoUI=true,Text="Menu keybind"})F.ToggleKeybind=Options.MenuKeybind
SettingsBox:AddToggle("ShowKeybinds",{Text="Show Keybinds",Default=false,Tooltip="Toggle the visibility of the keybinds menu"}):OnChanged(
function
    ()F.KeybindFrame.Visible=Toggles.ShowKeybinds.Value
end
)SettingsBox:AddToggle("ShowCustomCursor",{Text="Show Custom Cursor",Default=F.IsMobile==true and true or false,Tooltip="Toggle the visibility of the Cursor"}):OnChanged(
function
    ()F.ShowCustomCursor=Toggles.ShowCustomCursor.Value
end
)local dj=Tabs.UISettings:AddRightGroupbox("Credits")dj:AddLabel("KardinCat - Creator",true)
function
    Unload()game.Players.LocalPlayer:SetAttribute("mshaxLoaded",false)F.Unloaded=true
    F:Unload()J:Unload()
    for
        t,con in pairs(Z)do con:Disconnect()
    end
end
SettingsBox:AddButton({Text="Unload GUI",Func=
function
    ()Unload()
end
})local dp="Prohax"local dq="Legends Of Speed"ThemeManager:SetLibrary(F)SaveManager:SetLibrary(F)SaveManager:IgnoreThemeSettings()SaveManager:SetIgnoreIndexes({'MenuKeybind'})ThemeManager:SetFolder(dp)SaveManager:SetFolder(dp..'/'..dq)SaveManager:SetSubFolder(dq)SaveManager:BuildConfigSection(Tabs['UISettings'])ThemeManager:ApplyToTab(Tabs['UISettings'])
end
if
game.PlaceId==4225025295 then local D='https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'local E=identifyexecutor()or getexecutorname()or"Unknown"local F=loadstring(game:HttpGet(D..'Library.lua'))()F:Notify("Loading mshax
for
    OP Ninja Simulator ",5)task.wait(2)ThemeManager=loadstring(game:HttpGet(D..'addons/ThemeManager.lua'))()SaveManager=loadstring(game:HttpGet(D..'addons/SaveManager.lua'))()Options=F.Options
    Toggles=F.Toggles
    local J=loadstring(game:HttpGet("https://raw.githubusercontent.com/bocaj111004/ESPLibrary/refs/heads/main/Library.lua"))()local Z={}Window=F:CreateWindow({Title='mshax v4.5 |Op Ninja Simulator. ',Center=true,AutoShow=true})Tabs={Main=Window:AddTab('Main'),UISettings=Window:AddTab('Configuration')}local ds=Tabs.Main:AddLeftGroupbox('Automation')local dt=false
    if
    not firesignal then dt=true
end
ds:AddToggle('AutoTrain',{Text="Auto Train",Default=false})ds:AddToggle('AutoUpgrade',{Text="Auto Upgrade",Default=false,Disabled=dt})local du=Tabs.Main:AddRightGroupbox('Local Player')local SettingsBox=Tabs.UISettings:AddRightGroupbox('UI')du:AddSlider("WalkspeedSlider",{Text="Walk Speed Slider",Default=15,Min=15,Max=50,Rounding=1,Compact=false,Callback=
function
    (s)
end
})du:AddToggle('EnableWalkSpeed',{Text="Enable WalkSpeed",Default=false})du:AddDivider()Fly=Fly or{}Fly.Enabled=false
Fly.Speed=15
Fly.FlyBody=nil
Fly.FlyGyro=nil
local bG
local bH=nil
function
    Fly.SetupBodies(bI)local bJ=bI:FindFirstChild("HumanoidRootPart")
    if
    not bJ then
        return
    end
    local bK=Instance.new("BodyVelocity")bK.Name="FlyBodyVelocity"bK.MaxForce=Vector3.new(9e99,9e99,9e99)bK.Velocity=Vector3.zero
    bK.Parent=bJ
    Fly.FlyBody=bK
    local bL=Instance.new("BodyGyro")bL.Name="FlyBodyGyro"bL.MaxTorque=Vector3.new(9e9,9e9,9e9)local bM=workspace.CurrentCamera
    if
    bM then bL.CFrame=bM.CFrame
end
bL.Parent=bJ
Fly.FlyGyro=bL
local bN=bI:FindFirstChild("Humanoid")
if
bN then bN.PlatformStand=true
end
end
function
    Fly.CleanupBodies()
    if
    Fly.FlyBody then Fly.FlyBody:Destroy()Fly.FlyBody=nil
end
if
Fly.FlyGyro then Fly.FlyGyro:Destroy()Fly.FlyGyro=nil
end
if
b.Character then local bN=b.Character:FindFirstChild("Humanoid")
if
bN then bN.PlatformStand=false
end
end
end
local
function
    bO()
    if
    not Fly.Enabled then
        return
    end
    local bI=b.Character
    if
    not bI then
        return
    end
    local bN=bI:FindFirstChild("Humanoid")local bJ=bI:FindFirstChild("HumanoidRootPart")local bM=workspace.CurrentCamera
    if
    not bN or not bJ or not Fly.FlyBody or not Fly.FlyGyro or not bM then
        return
    end
    local bP=Vector3.zero
    if
    i.KeyboardEnabled then local bQ=i:IsKeyDown(Enum.KeyCode.W)local bR=i:IsKeyDown(Enum.KeyCode.S)local bS=i:IsKeyDown(Enum.KeyCode.A)local bT=i:IsKeyDown(Enum.KeyCode.D)local bU=bM.CFrame
    local bV=bU.LookVector
    local bW=bU.RightVector
    if
    bQ then bP=bP+bV
end
if
bR then bP=bP-bV
end
if
bS then bP=bP-bW
end
if
bT then bP=bP+bW
end
else
    local bX=bN.MoveDirection
    if
    bX.Magnitude>0 then local bU=bM.CFrame
    local bY=Vector3.new(bU.LookVector.X,0,bU.LookVector.Z)local bZ=Vector3.new(bU.RightVector.X,0,bU.RightVector.Z)
    if
    bY.Magnitude>0 then bY=bY.Unit
end
if
bZ.Magnitude>0 then bZ=bZ.Unit
end
local b_=bX:Dot(bY)local c0=bX:Dot(bZ)bP=bU.LookVector*b_+bU.RightVector*c0
end
end
if
bP.Magnitude>0 then Fly.FlyBody.Velocity=bP.Unit*Fly.Speed
else
    Fly.FlyBody.Velocity=Vector3.zero
end
Fly.FlyGyro.CFrame=bM.CFrame
bN.PlatformStand=true
end
function
    Fly.Enable()
    if
    Fly.Enabled then
        return
    end
    Fly.Enabled=true
    local bI=b.Character
    if
    bI then Fly.SetupBodies(bI)
end
if
not bG then bG=e.RenderStepped:Connect(bO)
end
if
not bH then bH=b.CharacterAdded:Connect(
function
    (c1)
    if
    Fly.Enabled then c1:WaitForChild("HumanoidRootPart")Fly.SetupBodies(c1)
end
end
)
end
end
function
    Fly.Disable()
    if
    not Fly.Enabled then
        return
    end
    Fly.Enabled=false
    Fly.CleanupBodies()
    if
    bG then bG:Disconnect()bG=nil
end
if
bH then bH:Disconnect()bH=nil
end
end
function
    Fly.Toggle()
    if
    Fly.Enabled then Fly.Disable()
else
    Fly.Enable()
end
end
function
    Fly.SetSpeed(c2)Fly.Speed=c2 or Fly.Speed
end
FlySpeed=du:AddSlider("FlySpeed",{Text="Fly Speed",Min=10,Max=50,Default=Fly.Speed,Rounding=0,Callback=
function
    (v)Fly.SetSpeed(v)
end
})du:AddToggle("Fly",{Text="Fly",Default=false,Callback=
function
    (bn)
    if
    bn then Fly.Enable()
else
    Fly.Disable()
end
end
}):AddKeyPicker('Fly Keybind',{Default='F',SyncToggleState=true,Mode='Toggle',Text='Fly',NoUI=false,Callback=
function
    (s)
end
,ChangedCallback=
function
    (aK)
end
})du:AddDivider()Toggles.EnableWalkSpeed:OnChanged(
function
    (s)
    if
    not s then b.Character.Humanoid.WalkSpeed=16
end
end
)table.insert(Z,e.RenderStepped:Connect(
function
    ()
    if
    b.Character then
        if
        Toggles.EnableWalkSpeed.Value then b.Character.Humanoid.WalkSpeed=Options.WalkspeedSlider.Value
    end
    if
    Toggles.AutoTrain.Value then local dv=b.Character:FindFirstChildOfClass("Tool")
    if
    dv then dv.Enabled=true
    dv:Activate()
end
end
if
Toggles.AutoUpgrade.Value then firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.UpgradeF.SwordF.SwordImgBtn.MouseButton1Down)firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.UpgradeF.AscendF.AscendImgBtn.MouseButton1Down)firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.UpgradeF.ClassF.ClassImgBtn.MouseButton1Down)
end
end
end
))SettingsBox:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind",{Default="RightShift",NoUI=true,Text="Menu keybind"})F.ToggleKeybind=Options.MenuKeybind
SettingsBox:AddToggle("ShowKeybinds",{Text="Show Keybinds",Default=false,Tooltip="Toggle the visibility of the keybinds menu"}):OnChanged(
function
    ()F.KeybindFrame.Visible=Toggles.ShowKeybinds.Value
end
)SettingsBox:AddToggle("ShowCustomCursor",{Text="Show Custom Cursor",Default=F.IsMobile==true and true or false,Tooltip="Toggle the visibility of the Cursor"}):OnChanged(
function
    ()F.ShowCustomCursor=Toggles.ShowCustomCursor.Value
end
)local dj=Tabs.UISettings:AddRightGroupbox("Credits")dj:AddLabel("KardinCat - Creator",true)
function
    Unload()b:SetAttribute("mshaxLoaded",false)
    for
        t,con in pairs(Z)do con:Disconnect()
    end
    Fly.Disable()F.Unloaded=true
    F:Unload()J:Unload()b.Character.Humanoid.WalkSpeed=16
end
SettingsBox:AddButton({Text="Unload GUI",Func=
function
    ()Unload()
end
})SettingsBox:AddButton({Text="Join Discord",Func=
function
    ()
    if
    toclipboard then toclipboard("https://discord.gg/5ANk2PAcK2")F:Notify("Copied Discord Link in Clipboard",3)
elseif
    setclipboard then setclipboard("https://discord.gg/5ANk2PAcK2")F:Notify("Copied Discord Link in Clipboard",3)
end
end
})local dp="Prohax"local dq="Op_Ninja_Simulator"ThemeManager:SetLibrary(F)SaveManager:SetLibrary(F)SaveManager:IgnoreThemeSettings()SaveManager:SetIgnoreIndexes({'MenuKeybind'})ThemeManager:SetFolder(dp)SaveManager:SetFolder(dp..'/'..dq)SaveManager:SetSubFolder(dq)SaveManager:BuildConfigSection(Tabs['UISettings'])ThemeManager:ApplyToTab(Tabs['UISettings'])
end
if
game.PlaceId==142823291 then local D='https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'local E=identifyexecutor()or getexecutorname()or"Unknown"local F=loadstring(game:HttpGet(D..'Library.lua'))()F:Notify("Loading mshax
for
    Murder Mystery 2",5)task.wait(2)ThemeManager=loadstring(game:HttpGet(D..'addons/ThemeManager.lua'))()SaveManager=loadstring(game:HttpGet(D..'addons/SaveManager.lua'))()Options=F.Options
    Toggles=F.Toggles
    local J=loadstring(game:HttpGet("https://raw.githubusercontent.com/bocaj111004/ESPLibrary/refs/heads/main/Library.lua"))()local dw=false
    if
    not firetouchinterest then dw=true
end
local Z={}local dx=RaycastParams.new()dx.FilterDescendantsInstances={b.Character}dx.FilterType=Enum.RaycastFilterType.Blacklist
Window=F:CreateWindow({Title='mshax v4.5 | MM2',Center=true,AutoShow=true})Tabs={Main=Window:AddTab('Main'),UISettings=Window:AddTab('Configuration')}local ds=Tabs.Main:AddLeftGroupbox('Automation')ds:AddToggle('AutoGetDroppedGun',{Text="Auto Get Dropped Gun",Default=false,Disabled=dw,DisabledTooltip="This Feature is Disabled cuz your Executor"})ds:AddToggle('AutoShotMurderer',{Text="Auto Shot Murderer",Default=false})
function
    GetMurderer()local dy=nil
    for
        t,cU in ipairs(a:GetPlayers())do
            if
            cU~=b and cU.Character then
                if
                cU.Character:FindFirstChild("Knife")or cU.Backpack:FindFirstChild("Knife")then dy=cU
            end
        end
    end
    return
    dy
end
local du=Tabs.Main:AddRightGroupbox('Local Player')local SettingsBox=Tabs.UISettings:AddRightGroupbox('UI')du:AddSlider("WalkspeedSlider",{Text="Walk Speed Slider",Default=15,Min=15,Max=50,Rounding=1,Compact=false,Callback=
function
    (s)
end
})du:AddToggle('EnableWalkSpeed',{Text="Enable WalkSpeed",Default=false})du:AddToggle('PlayersESP',{Text="Players ESP",Default=false})local dz={}local dA={}
function
    addesp(v,aA,cC)J:AddESP({Object=v,Text=aA,Color=cC})
end
function
    setup(cU)local dB=cU.Character or cU.CharacterAdded:Wait()
    if
    dB then J:RemoveESP(cU.Character)local dC=dB:FindFirstChild("Knife")or cU.Backpack:FindFirstChild("Knife")local dD=dB:FindFirstChild("Gun")or cU.Backpack:FindFirstChild("Gun")
    if
    dD then addesp(dB,cU.Name,Color3.new(0,0,1))
elseif
    dC then addesp(dB,cU.Name,Color3.new(1,0,0))
else
    addesp(dB,cU.Name,Color3.new(0,1,0))
end
end
end
function
    disconnect(cU)
    if
    dz[cU]then dz[cU]:Disconnect()dz[cU]=nil
end
end
function
    disconnect2(cU)
    if
    dA[cU]then dA[cU]:Disconnect()dA[cU]=nil
end
end
function
    setupUpdate(cU)disconnect(cU)disconnect2(cU)dz[cU]=cU.CharacterAdded:Connect(
    function
        ()
        if
        Toggles.PlayersESP.Value then setup(cU)
    end
end
)local dE=cU:WaitForChild("Backpack",9e9)
if
dE then dA[cU]=cU.Backpack.ChildAdded:Connect(
function
    ()
    if
    Toggles.PlayersESP.Value then setup(cU)
end
end
)
end
end
Toggles.PlayersESP:OnChanged(
function
    (s)
    if
    s then
        for
            t,cU in ipairs(a:GetPlayers())do
                if
                cU~=b then setup(cU)setupUpdate(cU)
            end
        end
    else
        for
            t,cU in ipairs(a:GetPlayers())do J:RemoveESP(cU.Character)
        end
    end
end
)table.insert(Z,a.PlayerAdded:Connect(
function
    (cU)
    if
    Toggles.PlayersESP.Value then
        if
        cU~=b then setup(cU)setupUpdate(cU)
    end
end
end
))du:AddDivider()Fly=Fly or{}Fly.Enabled=false
Fly.Speed=15
Fly.FlyBody=nil
Fly.FlyGyro=nil
local bG
local bH=nil
function
    Fly.SetupBodies(bI)local bJ=bI:FindFirstChild("HumanoidRootPart")
    if
    not bJ then
        return
    end
    local bK=Instance.new("BodyVelocity")bK.Name="FlyBodyVelocity"bK.MaxForce=Vector3.new(9e99,9e99,9e99)bK.Velocity=Vector3.zero
    bK.Parent=bJ
    Fly.FlyBody=bK
    local bL=Instance.new("BodyGyro")bL.Name="FlyBodyGyro"bL.MaxTorque=Vector3.new(9e9,9e9,9e9)local bM=workspace.CurrentCamera
    if
    bM then bL.CFrame=bM.CFrame
end
bL.Parent=bJ
Fly.FlyGyro=bL
local bN=bI:FindFirstChild("Humanoid")
if
bN then bN.PlatformStand=true
end
end
function
    Fly.CleanupBodies()
    if
    Fly.FlyBody then Fly.FlyBody:Destroy()Fly.FlyBody=nil
end
if
Fly.FlyGyro then Fly.FlyGyro:Destroy()Fly.FlyGyro=nil
end
if
b.Character then local bN=b.Character:FindFirstChild("Humanoid")
if
bN then bN.PlatformStand=false
end
end
end
local
function
    bO()
    if
    not Fly.Enabled then
        return
    end
    local bI=b.Character
    if
    not bI then
        return
    end
    local bN=bI:FindFirstChild("Humanoid")local bJ=bI:FindFirstChild("HumanoidRootPart")local bM=workspace.CurrentCamera
    if
    not bN or not bJ or not Fly.FlyBody or not Fly.FlyGyro or not bM then
        return
    end
    local bP=Vector3.zero
    if
    i.KeyboardEnabled then local bQ=i:IsKeyDown(Enum.KeyCode.W)local bR=i:IsKeyDown(Enum.KeyCode.S)local bS=i:IsKeyDown(Enum.KeyCode.A)local bT=i:IsKeyDown(Enum.KeyCode.D)local bU=bM.CFrame
    local bV=bU.LookVector
    local bW=bU.RightVector
    if
    bQ then bP=bP+bV
end
if
bR then bP=bP-bV
end
if
bS then bP=bP-bW
end
if
bT then bP=bP+bW
end
else
    local bX=bN.MoveDirection
    if
    bX.Magnitude>0 then local bU=bM.CFrame
    local bY=Vector3.new(bU.LookVector.X,0,bU.LookVector.Z)local bZ=Vector3.new(bU.RightVector.X,0,bU.RightVector.Z)
    if
    bY.Magnitude>0 then bY=bY.Unit
end
if
bZ.Magnitude>0 then bZ=bZ.Unit
end
local b_=bX:Dot(bY)local c0=bX:Dot(bZ)bP=bU.LookVector*b_+bU.RightVector*c0
end
end
if
bP.Magnitude>0 then Fly.FlyBody.Velocity=bP.Unit*Fly.Speed
else
    Fly.FlyBody.Velocity=Vector3.zero
end
Fly.FlyGyro.CFrame=bM.CFrame
bN.PlatformStand=true
end
function
    Fly.Enable()
    if
    Fly.Enabled then
        return
    end
    Fly.Enabled=true
    local bI=b.Character
    if
    bI then Fly.SetupBodies(bI)
end
if
not bG then bG=e.RenderStepped:Connect(bO)
end
if
not bH then bH=b.CharacterAdded:Connect(
function
    (c1)
    if
    Fly.Enabled then c1:WaitForChild("HumanoidRootPart")Fly.SetupBodies(c1)
end
end
)
end
end
function
    Fly.Disable()
    if
    not Fly.Enabled then
        return
    end
    Fly.Enabled=false
    Fly.CleanupBodies()
    if
    bG then bG:Disconnect()bG=nil
end
if
bH then bH:Disconnect()bH=nil
end
end
function
    Fly.Toggle()
    if
    Fly.Enabled then Fly.Disable()
else
    Fly.Enable()
end
end
function
    Fly.SetSpeed(c2)Fly.Speed=c2 or Fly.Speed
end
FlySpeed=du:AddSlider("FlySpeed",{Text="Fly Speed",Min=10,Max=50,Default=Fly.Speed,Rounding=0,Callback=
function
    (v)Fly.SetSpeed(v)
end
})du:AddToggle("Fly",{Text="Fly",Default=false,Callback=
function
    (bn)
    if
    bn then Fly.Enable()
else
    Fly.Disable()
end
end
}):AddKeyPicker('Fly Keybind',{Default='F',SyncToggleState=true,Mode='Toggle',Text='Fly',NoUI=false,Callback=
function
    (s)
end
,ChangedCallback=
function
    (aK)
end
})du:AddDivider()Toggles.EnableWalkSpeed:OnChanged(
function
    (s)
    if
    not s then b.Character.Humanoid.WalkSpeed=16
end
end
)table.insert(Z,e.RenderStepped:Connect(
function
    ()
    if
    b.Character and b.Character.Humanoid.Health>0 then
        if
        Toggles.EnableWalkSpeed.Value then b.Character.Humanoid.WalkSpeed=Options.WalkspeedSlider.Value
    end
    if
    Toggles.AutoGetDroppedGun.Value and workspace:FindFirstChild("GunDrop",true)then
        if
        j:FindFirstChild("GunDrop",true):FindFirstChildOfClass("TouchTransmitter")then firetouchinterest(b.Character.HumanoidRootPart,workspace:FindFirstChild("GunDrop",true),0)
    end
end
if
Toggles.AutoShotMurderer.Value then
    if
    b.Character:FindFirstChild("Gun")then local dF=GetMurderer()
    if
    dF then local c9=b.Character.HumanoidRootPart.Position
    local c8=dF.Character.HumanoidRootPart.Position-c9
    local H=workspace:Raycast(c9,c8,dx)
    if
    H and H.Instance==dF.Character.HumanoidRootPart then local df={1,vector.create(dF.Character.HumanoidRootPart.Position.X,dF.Character.HumanoidRootPart.Position.Y,dF.Character.HumanoidRootPart.Position.Z),"AH2"}b.Character:WaitForChild("Gun"):WaitForChild("KnifeLocal"):WaitForChild("CreateBeam"):WaitForChild("RemoteFunction"):InvokeServer(unpack(df))
end
end
end
end
end
end
))SettingsBox:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind",{Default="RightShift",NoUI=true,Text="Menu keybind"})F.ToggleKeybind=Options.MenuKeybind
SettingsBox:AddToggle("ShowKeybinds",{Text="Show Keybinds",Default=false,Tooltip="Toggle the visibility of the keybinds menu"}):OnChanged(
function
    ()F.KeybindFrame.Visible=Toggles.ShowKeybinds.Value
end
)SettingsBox:AddToggle("ShowCustomCursor",{Text="Show Custom Cursor",Default=F.IsMobile==true and true or false,Tooltip="Toggle the visibility of the Cursor"}):OnChanged(
function
    ()F.ShowCustomCursor=Toggles.ShowCustomCursor.Value
end
)local dj=Tabs.UISettings:AddRightGroupbox("Credits")dj:AddLabel("KardinCat - Creator",true)
function
    Unload()game.Players.LocalPlayer:SetAttribute("mshaxLoaded",false)
    for
        t,con in pairs(Z)do con:Disconnect()
    end
    Fly.Disable()F.Unloaded=true
    F:Unload()J:Unload()b.Character.Humanoid.WalkSpeed=16
end
SettingsBox:AddButton({Text="Unload GUI",Func=
function
    ()Unload()
end
})SettingsBox:AddButton({Text="Join Discord",Func=
function
    ()
    if
    toclipboard then toclipboard("https://discord.gg/5ANk2PAcK2")F:Notify("Copied Discord Link in Clipboard",3)
elseif
    setclipboard then setclipboard("https://discord.gg/5ANk2PAcK2")F:Notify("Copied Discord Link in Clipboard",3)
end
end
})local dp="Prohax"local dq="MM2"ThemeManager:SetLibrary(F)SaveManager:SetLibrary(F)SaveManager:IgnoreThemeSettings()SaveManager:SetIgnoreIndexes({'MenuKeybind'})ThemeManager:SetFolder(dp)SaveManager:SetFolder(dp..'/'..dq)SaveManager:SetSubFolder(dq)SaveManager:BuildConfigSection(Tabs['UISettings'])ThemeManager:ApplyToTab(Tabs['UISettings'])
end
