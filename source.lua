local Forums = {}

local tween = game:GetService("TweenService")
local tweeninfo = TweenInfo.new
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")

local minimized = false

function Forums:UIMinimize()
    if minimized then
        game.TweenService:Create(Main, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            Size = UDim2.new(0, 486, 0, 283)
        }):Play()
        wait()
        game.TweenService:Create(shadow, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            ImageTransparency = 0
        }):Play()
        minimized = false
    else
        game.TweenService:Create(shadow, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            ImageTransparency = 1
        }):Play()
        wait()
        game.TweenService:Create(Main, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            Size = UDim2.new(0,0,0,0)
        }):Play()
        minimized = true
    end
end

function Forums:DraggingEnabled(frame, parent)
        
    parent = parent or frame
    
    -- stolen from wally or kiriot, kek
    local dragging = false
    local dragInput, mousePos, framePos

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            mousePos = input.Position
            framePos = parent.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    input.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - mousePos
            game.TweenService:Create(parent, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
            }):Play()
            --parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        end
    end)
end

function Forums.new(newName)
    newName = newName or "forum.robloxscripts.com"

    local _81asf91z9asf1 = Instance.new("ScreenGui")
    local shadow = Instance.new("ImageLabel")
    local Main = Instance.new("Frame")
    local header = Instance.new("Frame")
    local title = Instance.new("TextLabel")
    local triangle1 = Instance.new("ImageLabel")
    local triangle = Instance.new("ImageLabel")
    local close = Instance.new("ImageButton")
    local containerHolder = Instance.new("Frame")
    local pages = Instance.new("Folder")
    local newPage = Instance.new("ScrollingFrame")
    local sectionList = Instance.new("UIListLayout")
    local UIListLayout = Instance.new("UIListLayout")
    local UIListLayout_2 = Instance.new("UIListLayout")

    Forums:DraggingEnabled(header, shadow)
    
    UIListLayout.Parent = Main
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    _81asf91z9asf1.Name = "81asf91z9asf1"
    _81asf91z9asf1.Parent = game.CoreGui
    _81asf91z9asf1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    shadow.Name = "shadow"
    shadow.Parent = _81asf91z9asf1
    shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    shadow.BackgroundTransparency = 1.000
    shadow.Position = UDim2.new(0.377575755, 0, 0.382281542, 0)
    shadow.Size = UDim2.new(0, 539, 0, 317)
    shadow.ZIndex = 0
    shadow.ImageTransparency = 1
    shadow.Image = "rbxassetid://4996891970"
    shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)

    Main.Name = "Main"
    Main.Parent = shadow
    Main.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    Main.BorderColor3 = Color3.fromRGB(27, 27, 27)
    Main.ClipsDescendants = true
    Main.Position = UDim2.new(0.361818194, 0, 0.354368925, 0)
    Main.Size = UDim2.new(0,0,0,0) --0, 486, 0, 283
    header.Name = "header"
    header.Parent = Main
    header.BackgroundColor3 = Color3.fromRGB(141, 56, 56)
    header.BorderSizePixel = 0
    header.ClipsDescendants = true
    header.Size = UDim2.new(1.00000012, 0, -0.00295740133, 36)

    title.Name = "title"
    title.Parent = header
    title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1.000
    title.Position = UDim2.new(0.0164541025, 0, 0.170633629, 0)
    title.Size = UDim2.new(0, 202, 0, 23)
    title.ZIndex = 5
    title.Font = Enum.Font.Gotham
    title.Text = newName
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 14.000
    title.TextXAlignment = Enum.TextXAlignment.Left

    triangle1.Name = "triangle1"
    triangle1.Parent = header
    triangle1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    triangle1.BackgroundTransparency = 1.000
    triangle1.BorderSizePixel = 0
    triangle1.ClipsDescendants = true
    triangle1.Position = UDim2.new(-0.302344143, 0, -0.483461976, 0)
    triangle1.Size = UDim2.new(0, 283, 0, 81)
    triangle1.Image = "http://www.roblox.com/asset/?id=6676220228"
    triangle1.ImageColor3 = Color3.fromRGB(130, 51, 51)

    triangle.Name = "triangle"
    triangle.Parent = header
    triangle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    triangle.BackgroundTransparency = 1.000
    triangle.BorderSizePixel = 0
    triangle.ClipsDescendants = true
    triangle.Position = UDim2.new(0.824735582, 0, -0.483461976, 0)
    triangle.Size = UDim2.new(0, 148, 0, 81)
    triangle.Image = "http://www.roblox.com/asset/?id=6676220228"
    triangle.ImageColor3 = Color3.fromRGB(130, 51, 51)

    close.Name = "close"
    close.Parent = header
    close.BackgroundTransparency = 1.000
    close.Position = UDim2.new(0.944999993, 0, 0.199000001, 0)
    close.Size = UDim2.new(0, 20, 0, 20)
    close.ZIndex = 2
    close.AutoButtonColor = false
    close.Image = "rbxassetid://3926305904"
    close.ImageRectOffset = Vector2.new(284, 4)
    close.ImageRectSize = Vector2.new(24, 24)
    close.MouseButton1Click:Connect(function()
        game.TweenService:Create(shadow, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            ImageTransparency = 1
        }):Play()
        wait()
        game.TweenService:Create(Main, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
            Size = UDim2.new(0,0,0,0)
        }):Play()
        wait(1)
        _81asf91z9asf1:Destroy()
    end)

    containerHolder.Name = "containerHolder"
    containerHolder.Parent = Main
    containerHolder.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    containerHolder.BorderSizePixel = 0
    containerHolder.Position = UDim2.new(0, 0, 0.124251083, 0)
    containerHolder.Size = UDim2.new(0, 485, 0, 247)

    pages.Name = "pages"
    pages.Parent = containerHolder

    UIListLayout_2.Parent = shadow
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

    game.TweenService:Create(Main, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
        Size = UDim2.new(0, 486, 0, 283)
    }):Play()
    wait()
    game.TweenService:Create(shadow, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
        ImageTransparency = 0
    }):Play()

    newPage.Name = "newPage"
    newPage.Parent = pages
    newPage.Active = true
    newPage.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    newPage.BackgroundTransparency = 1.000
    newPage.BorderColor3 = Color3.fromRGB(27, 27, 27)
    newPage.Size = UDim2.new(1, 0, 1, 0)
    newPage.ScrollBarThickness = 3
    newPage.ScrollBarImageColor3 = Color3.fromRGB(193, 76, 76)
    sectionList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        newPage.CanvasSize = UDim2.new(0,0,0,sectionList.AbsoluteContentSize.Y) 
    end)

    sectionList.Name = "sectionList"
    sectionList.Parent = newPage
    sectionList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    sectionList.SortOrder = Enum.SortOrder.LayoutOrder

    local sections = {}

    function sections:NewSection(title)
        title = title or "Section"

        local sectionMain = Instance.new("Frame")
        local itemsList = Instance.new("UIListLayout")
        local sectionOpen = Instance.new("TextButton")
        local sectionTitle = Instance.new("TextLabel")

        sectionMain.Name = "sectionMain"
        sectionMain.Parent = newPage
        sectionMain.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
        sectionMain.BorderColor3 = Color3.fromRGB(27, 27, 27)
        sectionMain.ClipsDescendants = true
        sectionMain.Position = UDim2.new(0, 0, 0.0040487065, 0)
        sectionMain.Size = UDim2.new(0, 485, 0, 36)

        itemsList.Name = "itemsList"
        itemsList.Parent = sectionMain
        itemsList.HorizontalAlignment = Enum.HorizontalAlignment.Center
        itemsList.SortOrder = Enum.SortOrder.LayoutOrder
        itemsList.Padding = UDim.new(0, 5)

        sectionOpen.Name = "sectionOpen"
        sectionOpen.Parent = sectionMain
        sectionOpen.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
        sectionOpen.BorderColor3 = Color3.fromRGB(27, 27, 27)
        sectionOpen.Size = UDim2.new(0, 486, 0, 36)
        sectionOpen.AutoButtonColor = false
        sectionOpen.Font = Enum.Font.SourceSans
        sectionOpen.TextColor3 = Color3.fromRGB(0, 0, 0)
        sectionOpen.TextSize = 14.000

        sectionTitle.Name = "sectionTitle"
        sectionTitle.Parent = sectionOpen
        sectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        sectionTitle.BackgroundTransparency = 1.000
        sectionTitle.Position = UDim2.new(0.0222204365, 0, 0.245634928, 0)
        sectionTitle.Size = UDim2.new(0, 184, 0, 18)
        sectionTitle.Font = Enum.Font.Gotham
        sectionTitle.Text = title
        sectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
        sectionTitle.TextSize = 14.000
        sectionTitle.TextXAlignment = Enum.TextXAlignment.Left

        local btn = sectionOpen
        local opened = false
        btn.MouseButton1Click:Connect(function()
            if opened then
                game.TweenService:Create(sectionMain, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                    Size = UDim2.new(0, 486,0, 36)
                }):Play()
                opened = false
            else
                game.TweenService:Create(sectionMain, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                    Size = UDim2.new(0,itemsList.AbsoluteContentSize.X,0, itemsList.AbsoluteContentSize.Y + 5)
                }):Play()
                opened = true
            end
        end)
        btn.MouseEnter:Connect(function()
            game.TweenService:Create(sectionTitle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                TextColor3 = Color3.fromRGB(203, 203, 203)
            }):Play()
        end)

        btn.MouseLeave:Connect(function()
            game.TweenService:Create(sectionTitle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                TextColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
        end)

        local fElements = {}

        function fElements:NewButton(title, callback)
            title = title or "New Button"
            callback = callback or function() end

            local btnFrame = Instance.new("TextButton")
            local btnText = Instance.new("TextLabel")
            local triangle = Instance.new("ImageLabel")
            local Sample = Instance.new("ImageLabel")

            btnFrame.Name = "btnFrame"
            btnFrame.Parent = sectionMain
            btnFrame.BackgroundColor3 = Color3.fromRGB(141, 56, 56)
            btnFrame.BorderColor3 = Color3.fromRGB(27, 27, 27)
            btnFrame.ClipsDescendants = true
            btnFrame.Position = UDim2.new(0.00720164599, 0, 0.241830066, 0)
            btnFrame.Size = UDim2.new(0, 474, 0, 32)
            btnFrame.AutoButtonColor = false
            btnFrame.Font = Enum.Font.SourceSans
            btnFrame.TextColor3 = Color3.fromRGB(0, 0, 0)
            btnFrame.TextSize = 14.000

            btnText.Name = "btnText"
            btnText.Parent = btnFrame
            btnText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            btnText.BackgroundTransparency = 1.000
            btnText.Position = UDim2.new(0.01774057, 0, 0.200000182, 0)
            btnText.Size = UDim2.new(0, 175, 0, 18)
            btnText.ZIndex = 5
            btnText.Font = Enum.Font.Gotham
            btnText.Text = title
            btnText.TextColor3 = Color3.fromRGB(255, 255, 255)
            btnText.TextSize = 14.000
            btnText.TextXAlignment = Enum.TextXAlignment.Left

            triangle.Name = "triangle"
            triangle.Parent = btnFrame
            triangle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            triangle.BackgroundTransparency = 1.000
            triangle.BorderSizePixel = 0
            triangle.ClipsDescendants = true
            triangle.Position = UDim2.new(0.839998424, 0, -1.29596233, 0)
            triangle.Size = UDim2.new(0, 132, 0, 81)
            triangle.ZIndex = 5
            triangle.Image = "http://www.roblox.com/asset/?id=6676220228"
            triangle.ImageColor3 = Color3.fromRGB(130, 51, 51)

            Sample.Name = "Sample"
            Sample.Parent = btnFrame
            Sample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Sample.BackgroundTransparency = 1.000
            Sample.ZIndex = 2
            Sample.Image = "http://www.roblox.com/asset/?id=4560909609"
            Sample.ImageColor3 = Color3.fromRGB(71, 27, 27)
            Sample.ImageTransparency = 0.600

            local ms = game.Players.LocalPlayer:GetMouse()

            local btn = btnFrame
            local sample = btn:WaitForChild("Sample")

            btn.MouseButton1Click:Connect(function()
                callback()
                local c = sample:Clone()
                c.Parent = btn
                local x, y = (ms.X - c.AbsolutePosition.X), (ms.Y - c.AbsolutePosition.Y)
                c.Position = UDim2.new(0, x, 0, y)
                local len, size = 0.35, nil
                if btn.AbsoluteSize.X >= btn.AbsoluteSize.Y then
                    size = (btn.AbsoluteSize.X * 1.5)
                else
                    size = (btn.AbsoluteSize.Y * 1.5)
                end
                c:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, (-size / 2), 0.5, (-size / 2)), 'Out', 'Quad', len, true, nil)
                for i = 1, 10 do
                    c.ImageTransparency = c.ImageTransparency + 0.05
                    wait(len / 12)
                end
                c:Destroy()
            end)
            btn.MouseEnter:Connect(function()
                game.TweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                    BackgroundColor3 = Color3.fromRGB(121, 48, 48)
                }):Play()
            end)
            btn.MouseLeave:Connect(function()
                game.TweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                    BackgroundColor3 = Color3.fromRGB(141, 56, 56)
                }):Play()
            end)
        end

        function fElements:NewToggle(title, callback)
            title = title or "New Toggle"
            callback = callback or function() end

            local toggleFrame = Instance.new("TextButton")
            local toggleFrame_2 = Instance.new("TextLabel")
            local triangle = Instance.new("ImageLabel")
            local checkedFramesFrame = Instance.new("Frame")
            local checked = Instance.new("ImageButton")
            local unchecked = Instance.new("ImageButton")
            local UIListLayout = Instance.new("UIListLayout")
            local UIListLayout_2 = Instance.new("UIListLayout")
            local Sample = Instance.new("ImageLabel")

            toggleFrame.Name = "toggleFrame"
            toggleFrame.Parent = sectionMain
            toggleFrame.BackgroundColor3 = Color3.fromRGB(141, 56, 56)
            toggleFrame.BorderColor3 = Color3.fromRGB(27, 27, 27)
            toggleFrame.ClipsDescendants = true
            toggleFrame.Position = UDim2.new(0.00720164599, 0, 0.241830066, 0)
            toggleFrame.Size = UDim2.new(0, 474, 0, 32)
            toggleFrame.AutoButtonColor = false
            toggleFrame.Font = Enum.Font.SourceSans
            toggleFrame.TextColor3 = Color3.fromRGB(0, 0, 0)
            toggleFrame.TextSize = 14.000

            toggleFrame_2.Name = "toggleFrame"
            toggleFrame_2.Parent = toggleFrame
            toggleFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            toggleFrame_2.BackgroundTransparency = 1.000
            toggleFrame_2.Position = UDim2.new(0.0680000037, 0, 0.200000003, 0)
            toggleFrame_2.Size = UDim2.new(0, 154, 0, 18)
            toggleFrame_2.ZIndex = 5
            toggleFrame_2.Font = Enum.Font.Gotham
            toggleFrame_2.Text = title
            toggleFrame_2.TextColor3 = Color3.fromRGB(255, 255, 255)
            toggleFrame_2.TextSize = 14.000
            toggleFrame_2.TextXAlignment = Enum.TextXAlignment.Left

            triangle.Name = "triangle"
            triangle.Parent = toggleFrame
            triangle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            triangle.BackgroundTransparency = 1.000
            triangle.BorderSizePixel = 0
            triangle.ClipsDescendants = true
            triangle.Position = UDim2.new(0.839998424, 0, -1.29596233, 0)
            triangle.Size = UDim2.new(0, 132, 0, 81)
            triangle.ZIndex = 5
            triangle.Image = "http://www.roblox.com/asset/?id=6676220228"
            triangle.ImageColor3 = Color3.fromRGB(130, 51, 51)

            checkedFramesFrame.Name = "checkedFramesFrame"
            checkedFramesFrame.Parent = toggleFrame
            checkedFramesFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            checkedFramesFrame.BackgroundTransparency = 1.000
            checkedFramesFrame.Size = UDim2.new(0, 32, 0, 32)

            checked.Name = "checked"
            checked.Parent = checkedFramesFrame
            checked.BackgroundTransparency = 1.000
            checked.LayoutOrder = 9
            checked.Position = UDim2.new(0.00843881816, 0, 0.09375, 0)
            checked.Size = UDim2.new(0, 24, 0, 24)
            checked.ZIndex = 5
            checked.Image = "rbxassetid://3926311105"
            checked.ImageRectOffset = Vector2.new(4, 836)
            checked.ImageRectSize = Vector2.new(48, 48)
            checked.ImageTransparency = 1.000

            unchecked.Name = "unchecked"
            unchecked.Parent = checked
            unchecked.BackgroundTransparency = 1.000
            unchecked.Position = UDim2.new(0.00800000038, 0, 0.0939999968, 0)
            unchecked.Size = UDim2.new(0, 24, 0, 24)
            unchecked.ZIndex = 2
            unchecked.Image = "rbxassetid://3926305904"
            unchecked.ImageRectOffset = Vector2.new(724, 724)
            unchecked.ImageRectSize = Vector2.new(36, 36)

            UIListLayout.Parent = checked
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

            UIListLayout_2.Parent = checkedFramesFrame
            UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

            Sample.Name = "Sample"
            Sample.Parent = toggleFrame
            Sample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Sample.BackgroundTransparency = 1.000
            Sample.ZIndex = 2
            Sample.Image = "http://www.roblox.com/asset/?id=4560909609"
            Sample.ImageColor3 = Color3.fromRGB(71, 27, 27)
            Sample.ImageTransparency = 0.600

            local ms = game.Players.LocalPlayer:GetMouse()

            local btn = toggleFrame
            local sample = btn:WaitForChild('Sample')

            btn.MouseButton1Click:Connect(function()
                local c = sample:Clone()
                c.Parent = btn
                local x, y = (ms.X - c.AbsolutePosition.X), (ms.Y - c.AbsolutePosition.Y)
                c.Position = UDim2.new(0, x, 0, y)
                local len, size = 0.35, nil
                if btn.AbsoluteSize.X >= btn.AbsoluteSize.Y then
                    size = (btn.AbsoluteSize.X * 1.5)
                else
                    size = (btn.AbsoluteSize.Y * 1.5)
                end
                c:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, (-size / 2), 0.5, (-size / 2)), 'Out', 'Quad', len, true, nil)
                for i = 1, 10 do
                    c.ImageTransparency = c.ImageTransparency + 0.05
                    wait(len / 12)
                end
                c:Destroy()
            end)
            local toggled = false
            btn.MouseButton1Click:Connect(function()
                if toggled then
                    game.TweenService:Create(checked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Size = UDim2.new(0,20,0,20)
                    }):Play()
                    game.TweenService:Create(unchecked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Size = UDim2.new(0,20,0,20)
                    }):Play()
                    wait(0.08)
                    game.TweenService:Create(checked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Size = UDim2.new(0,25,0,25)
                    }):Play()
                    game.TweenService:Create(unchecked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Size = UDim2.new(0,25,0,25)
                    }):Play()
                    game.TweenService:Create(checked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        ImageTransparency = 1,
                    }):Play()
                    game.TweenService:Create(unchecked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        ImageTransparency = 0
                    }):Play()
                else
                    game.TweenService:Create(checked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Size = UDim2.new(0,20,0,20)
                    }):Play()
                    game.TweenService:Create(unchecked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Size = UDim2.new(0,20,0,20)
                    }):Play()
                    wait(0.08)
                    game.TweenService:Create(checked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Size = UDim2.new(0,25,0,25)
                    }):Play()
                    game.TweenService:Create(unchecked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Size = UDim2.new(0,25,0,25)
                    }):Play()
                    game.TweenService:Create(checked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        ImageTransparency = 0
                    }):Play()
                    game.TweenService:Create(unchecked, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        ImageTransparency = 1
                    }):Play()
                end
                toggled = not toggled
                pcall(callback, toggled)
            end)
            btn.MouseEnter:Connect(function()
                game.TweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                    BackgroundColor3 = Color3.fromRGB(121, 48, 48)
                }):Play()
            end)
            btn.MouseLeave:Connect(function()
                game.TweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                    BackgroundColor3 = Color3.fromRGB(141, 56, 56)
                }):Play()
            end)
        end
        return fElements
    end
    return sections
end
return Forums
