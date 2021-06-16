Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@supercellgamer 
A1sky
/
LibrarysRBLX
1
00
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
LibrarysRBLX/Lenexa.lua
@A1sky
A1sky Update Lenexa.lua
Latest commit 7af0e64 25 minutes ago
 History
 1 contributor
522 lines (440 sloc)  18.6 KB
  
local CreateLibrary = function()
    local Library = {}
    return (Library)
end

local Lenexa = CreateLibrary()

function Lenexa.Library(Name, ...)
    function SettingParsing(_)
        local Settings = _ --Array {}

        if Settings["AntiDupe"] == true then
            local Storage = game.Players.LocalPlayer:WaitForChild("PlayerGui")

            if Storage:FindFirstChild(Name) then
                local GuiTarget = Storage:FindFirstChild(Name)
                GuiTarget:Destroy()

                return (true)
            else
                return (false)
            end
        end
    end

    SettingParsing(...)

    local LenexaGui = Instance.new("ScreenGui")
    local Shadow = Instance.new("ImageLabel")
    local Main = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TabShadow = Instance.new("ImageLabel")
    local TabFrame = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local TabContainor = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local FramesShadow = Instance.new("ImageLabel")

    LenexaGui.Name = Name
    LenexaGui.ResetOnSpawn = false
    LenexaGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    LenexaGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Shadow.Name = "Shadow"
    Shadow.Parent = LenexaGui
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.BackgroundTransparency = 1.000
    Shadow.Position = UDim2.new(0.473711938, 0, 0.572520137, 2)
    Shadow.Size = UDim2.new(0, 562, 0, 368)
    Shadow.Image = "rbxassetid://1316045217"
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ImageTransparency = 0.880
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(10, 10, 118, 118)

    Main.Name = "Main"
    Main.Parent = Shadow
    Main.BackgroundColor3 = Color3.fromRGB(37, 34, 47)
    Main.Position = UDim2.new(0.0179288667, 0, 0.0189331267, 0)
    Main.Size = UDim2.new(0, 540, 0, 354)

    UICorner.CornerRadius = UDim.new(0, 2)
    UICorner.Parent = Main

    TabShadow.Name = "TabShadow"
    TabShadow.Parent = Main
    TabShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    TabShadow.BackgroundTransparency = 1.000
    TabShadow.Position = UDim2.new(0.131355003, 0, 0.494350195, 2)
    TabShadow.Size = UDim2.new(0.256431013, 4, 0.98870039, 4)
    TabShadow.Image = "rbxassetid://1316045217"
    TabShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    TabShadow.ImageTransparency = 0.880
    TabShadow.ScaleType = Enum.ScaleType.Slice
    TabShadow.SliceCenter = Rect.new(10, 10, 118, 118)

    TabFrame.Name = "TabFrame"
    TabFrame.Parent = TabShadow
    TabFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 53)
    TabFrame.Position = UDim2.new(0.0459432043, 0, 0.0223149061, 0)
    TabFrame.Size = UDim2.new(0, 135, 0, 338)

    UICorner_2.CornerRadius = UDim.new(0, 2)
    UICorner_2.Parent = TabFrame

    Title.Name = "Title"
    Title.Parent = TabFrame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Size = UDim2.new(0, 137, 0, 30)
    Title.Font = Enum.Font.Gotham
    Title.Text = Name
    Title.TextColor3 = Color3.fromRGB(227, 227, 227)
    Title.TextSize = 15.000

    TabContainor.Name = "TabContainor"
    TabContainor.Parent = TabFrame
    TabContainor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainor.BackgroundTransparency = 1.000
    TabContainor.Position = UDim2.new(0, 0, 0.0887573957, 0)
    TabContainor.Size = UDim2.new(0, 135, 0, 308)

    UIListLayout.Parent = TabContainor
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 2)
    
    FramesShadow.Name = "FramesShadow"
    FramesShadow.Parent = Main
    FramesShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    FramesShadow.BackgroundTransparency = 1.000
    FramesShadow.Position = UDim2.new(0.632125199, 0, 0.491525352, 2)
    FramesShadow.Size = UDim2.new(0.728341818, 4, 0.98870039, 4)
    FramesShadow.Image = "rbxassetid://1316045217"
    FramesShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    FramesShadow.ImageTransparency = 0.880
    FramesShadow.ScaleType = Enum.ScaleType.Slice
    FramesShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    function LoadDrag()
        local UIS = game:GetService("UserInputService")
        function Drag(Frame) --Not made by Kenta so stop crying about it (Drag Script)
            dragToggle = nil
            local dragSpeed = 0
            dragInput = nil
            dragStart = nil
            local dragPos = nil
            function updateInput(input)
                local Delta = input.Position - dragStart
                local Position =
                    UDim2.new(
                    startPos.X.Scale,
                    startPos.X.Offset + Delta.X,
                    startPos.Y.Scale,
                    startPos.Y.Offset + Delta.Y
                )
                game:GetService("TweenService"):Create(Frame, TweenInfo.new(0), {Position = Position}):Play()
            end
            Frame.InputBegan:Connect(
                function(input)
                    if
                        (input.UserInputType == Enum.UserInputType.MouseButton1 or
                            input.UserInputType == Enum.UserInputType.Touch) and
                            UIS:GetFocusedTextBox() == nil
                     then
                        dragToggle = true
                        dragStart = input.Position
                        startPos = Frame.Position
                        input.Changed:Connect(
                            function()
                                if input.UserInputState == Enum.UserInputState.End then
                                    dragToggle = false
                                end
                            end
                        )
                    end
                end
            )
            Frame.InputChanged:Connect(
                function(input)
                    if
                        input.UserInputType == Enum.UserInputType.MouseMovement or
                            input.UserInputType == Enum.UserInputType.Touch
                     then
                        dragInput = input
                    end
                end
            )
            game:GetService("UserInputService").InputChanged:Connect(
                function(input)
                    if input == dragInput and dragToggle then
                        updateInput(input)
                    end
                end
            )
        end

        Drag(Shadow)
    end

    LoadDrag()

    local Library = CreateLibrary()

    function Library:CreateTab(Name)
        local TabButton = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
    
        TabButton.Name = "TabButton"
        TabButton.Parent = TabContainor
        TabButton.BackgroundColor3 = Color3.fromRGB(48, 45, 62)
        TabButton.Position = UDim2.new(0.0111111114, 0, 0, 0)
        TabButton.Size = UDim2.new(0, 123, 0, 28)
        TabButton.AutoButtonColor = false
        TabButton.Font = Enum.Font.Gotham
        TabButton.Text = Name
        TabButton.TextColor3 = Color3.fromRGB(226, 226, 226)
        TabButton.TextSize = 12.000
        
        TabButton.MouseButton1Down:Connect(function()
            for _,Frame in pairs(FramesShadow:GetChildren()) do
                if Frame:IsA("Frame") then
                    Frame.Visible = false
                end
            end
            
            for _,Frame in pairs(FramesShadow:GetChildren()) do
                if Frame:IsA("Frame") then
                    if string.lower(Frame.Name) == string.lower(Name) then
                        Frame.Visible = true
                    end
                end
            end
        end)
    
        UICorner_3.CornerRadius = UDim.new(0, 2)
        UICorner_3.Parent = TabButton
    
        local TweenService = game:GetService("TweenService")
        
        local Hovering = {}
        Hovering.BackgroundColor3 = Color3.fromRGB(37, 35, 49)
        Hovering.TextColor3 = Color3.fromRGB(255, 255, 255)
        
        local Normal = {}
        Normal.BackgroundColor3 = Color3.fromRGB(48, 45, 62)
        Normal.TextColor3 = Color3.fromRGB(226, 226, 226)
        
        local Time = TweenInfo.new(0.5)
        
        local Hovered = TweenService:Create(TabButton, Time, Hovering)
        local NotHovered = TweenService:Create(TabButton, Time, Normal)
        
        TabButton.MouseEnter:Connect(
            function()
                Hovered:Play()
            end
        )
        
        TabButton.MouseLeave:Connect(
            function()
                NotHovered:Play()
            end
        )
        
        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Containor = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        
        Frame.Parent = FramesShadow
        Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 53)
        Frame.ClipsDescendants = true
        Frame.Name = Name
        Frame.Position = UDim2.new(0.0207735281, 0, 0.025139764, 0)
        Frame.Size = UDim2.new(0, 381, 0, 338)
        
        UICorner.CornerRadius = UDim.new(0, 2)
        UICorner.Parent = Frame
        
        Containor.Name = "Containor"
        Containor.Parent = Frame
        Containor.Active = true
        Containor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Containor.BackgroundTransparency = 1.000
        Containor.Position = UDim2.new(0, 0, 0.0207100585, 0)
        Containor.Size = UDim2.new(0, 411, 0, 317)
        Containor.CanvasSize = UDim2.new(0, 0, 6, 0)
        
        UIListLayout.Parent = Containor
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 2)
        
        for _,Frame in pairs(FramesShadow:GetChildren()) do
            if Frame:IsA("Frame") then
                Frame.Visible = false
            end
        end
        
        local Library = CreateLibrary()
        
        function Library:Button(Name, Cb)
            local BtnContainor = Instance.new("Frame")
            local Button = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
        
            BtnContainor.Name = "BtnContainor"
            BtnContainor.Parent = Containor
            BtnContainor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BtnContainor.BackgroundTransparency = 1.000
            BtnContainor.Size = UDim2.new(0, 381, 0, 29)
            
            Button.Name = "Button"
            Button.Parent = BtnContainor
            Button.BackgroundColor3 = Color3.fromRGB(48, 45, 62)
            Button.Position = UDim2.new(0.0157480314, 0, 0.0869563967, 0)
            Button.Size = UDim2.new(0, 369, 0, 29)
            Button.Font = Enum.Font.Gotham
            Button.TextColor3 = Color3.fromRGB(226, 226, 226)
            Button.TextSize = 12.000
            Button.Text = string.upper(Name)
            
            Button.MouseButton1Down:Connect(function()
                pcall(Cb)
            end)
            
            UICorner_2.CornerRadius = UDim.new(0, 2)
            UICorner_2.Parent = Button
    
            local TweenService = game:GetService("TweenService")
            
            local Hovering = {}
            Hovering.BackgroundColor3 = Color3.fromRGB(37, 35, 49)
            Hovering.TextColor3 = Color3.fromRGB(255, 255, 255)
            
            local Normal = {}
            Normal.BackgroundColor3 = Color3.fromRGB(48, 45, 62)
            Normal.TextColor3 = Color3.fromRGB(226, 226, 226)
            
            local Time = TweenInfo.new(0.5)
            
            local Hovered = TweenService:Create(Button, Time, Hovering)
            local NotHovered = TweenService:Create(Button, Time, Normal)
            
            Button.MouseEnter:Connect(
                function()
                    Hovered:Play()
                end
            )
            
            Button.MouseLeave:Connect(
                function()
                    NotHovered:Play()
                end
            )
            
            local function Ripple()  
                local Circle = Instance.new("ImageLabel")
            	local script = Instance.new('LocalScript', Button)
                Circle.Name = "Circle"
                Circle.Parent = script
                Circle.AnchorPoint = Vector2.new(0.5, 0.5)
                Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Circle.BackgroundTransparency = 1.000
                Circle.Position = UDim2.new(0.5, 0, 0.5, 0)
                Circle.ZIndex = 10
                Circle.Image = "rbxassetid://266543268"
                Circle.ImageColor3 = Color3.fromRGB(0, 0, 0)
                Circle.ImageTransparency = 0.500
                
                
            	local RippleColor        = Color3.fromRGB(255, 255, 255) -- RGB Color of the ripple effect, you can change it.
            	local RippleTransparency = 0.8 ---------------------------- Max is 1, Min is 0
            	local PixelSize          = 2000 --------------------------- The Max size of the ripple in pixels
            	local TimeLength         = 0.9 ---------------------------- How long the ripple animation is
            	local FadeLength         = 0.6 ---------------------------- How long it takes for the ripple to fade out
            	
            	local frame = script.Parent
            	local rgb = Color3.fromRGB
            	local ud2 = UDim2.new
            	repeat
            		wait()
            	until game.Players.LocalPlayer
            	local plr = game.Players.LocalPlayer
            	local mouse = plr:GetMouse()
            	
            	frame.ClipsDescendants = true
            	frame.AutoButtonColor = false
            	
            	
            	function tweenInRipple(ripple)
            		spawn(function()
            			local TweenService = game:GetService("TweenService")
            			local Part = ripple
            			local Info = TweenInfo.new(
            				TimeLength,
            				Enum.EasingStyle.Linear,
            				Enum.EasingDirection.InOut,
            				0,
            				false,
            				0
            			)
            			local Goals = 
            			{
            				Size = ud2(0, PixelSize, 0, PixelSize);
            			}
            			local Tween = TweenService:Create(Part, Info, Goals)
            			Tween:Play()
            		end)
            	end
            	
            	function fadeOutRipple(ripple)
            		spawn(function()
            			local TweenService = game:GetService("TweenService")
            			local Part = ripple
            			local Info = TweenInfo.new(
            				FadeLength,
            				Enum.EasingStyle.Linear,
            				Enum.EasingDirection.InOut,
            				0,
            				false,
            				0
            			)
            			local Goals = 
            			{
            				ImageTransparency = 1;
            			}
            			local Tween = TweenService:Create(Part, Info, Goals)
            			Tween:Play()
            			wait(FadeLength + 0.1)
            			ripple:Destroy()
            		end)
            	end
            	
            	frame.MouseButton1Down:Connect(function()
            		local done = false
            		local ripple = script.Circle:Clone()
            		ripple.Parent = frame
            		ripple.ZIndex = frame.ZIndex + 1
            		ripple.ImageColor3 = RippleColor
            		ripple.ImageTransparency = RippleTransparency
            		tweenInRipple(ripple)
            		frame.MouseButton1Up:Connect(function()
            			if done == false then
            				done = true
            				fadeOutRipple(ripple)
            			end
            		end)
            		wait(4);
            		done = true;
            		fadeOutRipple(ripple) -- if it doesnt detect that it was unselected
            	end)
            end --Not made by me too so stfu (Ripple Effect)
            coroutine.wrap(Ripple)()
        end
        
        function Library:Label(Name)
            local BtnContainor = Instance.new("Frame")
            local Button = Instance.new("TextLabel")
            local UICorner_2 = Instance.new("UICorner")
        
            BtnContainor.Name = "BtnContainor"
            BtnContainor.Parent = Containor
            BtnContainor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BtnContainor.BackgroundTransparency = 1.000
            BtnContainor.Size = UDim2.new(0, 381, 0, 29)
            
            Button.Name = "Button"
            Button.Parent = BtnContainor
            Button.BackgroundColor3 = Color3.fromRGB(48, 45, 62)
            Button.Position = UDim2.new(0.0157480314, 0, 0.0869563967, 0)
            Button.Size = UDim2.new(0, 369, 0, 29)
            Button.Font = Enum.Font.Gotham
            Button.TextColor3 = Color3.fromRGB(226, 226, 226)
            Button.TextSize = 12.000
            Button.Text = string.upper(Name)
            
            UICorner_2.CornerRadius = UDim.new(0, 2)
            UICorner_2.Parent = Button
    
            local TweenService = game:GetService("TweenService")
            
            local Hovering = {}
            Hovering.BackgroundColor3 = Color3.fromRGB(37, 35, 49)
            Hovering.TextColor3 = Color3.fromRGB(255, 255, 255)
            
            local Normal = {}
            Normal.BackgroundColor3 = Color3.fromRGB(48, 45, 62)
            Normal.TextColor3 = Color3.fromRGB(226, 226, 226)
            
            local Time = TweenInfo.new(0.5)
            
            local Hovered = TweenService:Create(Button, Time, Hovering)
            local NotHovered = TweenService:Create(Button, Time, Normal)
            
            Button.MouseEnter:Connect(
                function()
                    Hovered:Play()
                end
            )
            
            Button.MouseLeave:Connect(
                function()
                    NotHovered:Play()
                end
            )
        end
        
        return Library
    end
    
    function Library:SetHomePage(Name)
        for _,Frame in pairs(FramesShadow:GetChildren()) do
            if Frame:IsA("Frame") then
                if string.lower(Frame.Name) == string.lower(Name) then
                    Frame.Visible = true
                end
            end
        end
    end
    
    return Library
end

local Main = Lenexa.Library("Lenexa Library", {
    ["AntiDupe"] = true
 })

local Tab1 = Main:CreateTab("Tab 1")
local Tab2 = Main:CreateTab("Tab 2")

Tab1:Button("Button", function()
    loadstring("print('Lenexa')")()
end)

Tab1:Label("Label")

Tab2:Label("Credits: ArskyCache#5254")
Tab2:Label("Discord: discord.gg/Kenta")

Main:SetHomePage("Tab 1")
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
