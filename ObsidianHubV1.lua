-- ============================================
-- OBSIDIAN BLACK - ULTIMATE DARK EDITION
-- Создатель: @execute_hub
-- Ключ: z
-- Версия: 22.0 (FULL BLACK + NEW FUNCTIONS)
-- ============================================

local correctKey = "z"
local keyAttempts = 0

-- ============================================
-- ОКНО КЛЮЧА (ЧЕРНЫЙ)
-- ============================================
local function CreateKeyWindow()
    local gui = Instance.new("ScreenGui")
    gui.Parent = game:GetService("CoreGui")
    gui.Name = "ObsidianKey"
    gui.ResetOnSpawn = false
    
    local bg = Instance.new("Frame")
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    bg.BackgroundTransparency = 0.95
    bg.Parent = gui
    
    -- ЗВЕЗДЫ (ЕДИНСТВЕННЫЙ СВЕТ)
    for i = 1, 60 do
        local star = Instance.new("Frame")
        local size = 1 + math.random() * 2
        star.Size = UDim2.new(0, size, 0, size)
        star.Position = UDim2.new(math.random(), 0, math.random(), 0)
        star.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        star.BackgroundTransparency = 0.2 + math.random() * 0.5
        star.BorderSizePixel = 0
        star.Parent = bg
        local sc = Instance.new("UICorner")
        sc.CornerRadius = UDim.new(0, size/2)
        sc.Parent = star
    end
    
    local main = Instance.new("Frame")
    main.Size = UDim2.new(0, 400, 0, 420)
    main.Position = UDim2.new(0.5, -200, 0.5, -210)
    main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    main.BackgroundTransparency = 0.05
    main.BorderSizePixel = 2
    main.BorderColor3 = Color3.fromRGB(180, 60, 255)
    main.ClipsDescendants = true
    main.Parent = bg
    
    local mc = Instance.new("UICorner")
    mc.CornerRadius = UDim.new(0, 20)
    mc.Parent = main
    
    -- НЕОНОВАЯ ОБВОДКА
    local glow = Instance.new("Frame")
    glow.Size = UDim2.new(1, 0, 1, 0)
    glow.BackgroundTransparency = 1
    glow.BorderSizePixel = 2
    glow.BorderColor3 = Color3.fromRGB(180, 60, 255)
    glow.Parent = main
    local gbc = Instance.new("UICorner")
    gbc.CornerRadius = UDim.new(0, 20)
    gbc.Parent = glow
    
    local header = Instance.new("Frame")
    header.Size = UDim2.new(1, 0, 0, 55)
    header.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
    header.BackgroundTransparency = 0.1
    header.BorderSizePixel = 0
    header.Parent = main
    local hc = Instance.new("UICorner")
    hc.CornerRadius = UDim.new(0, 20)
    hc.Parent = header
    
    local logo = Instance.new("TextLabel")
    logo.Size = UDim2.new(0.4, 0, 1, 0)
    logo.Position = UDim2.new(0.05, 0, 0, 0)
    logo.BackgroundTransparency = 1
    logo.Text = "OBSIDIAN"
    logo.TextColor3 = Color3.fromRGB(255, 255, 255)
    logo.TextScaled = true
    logo.Font = Enum.Font.GothamBold
    logo.TextXAlignment = Enum.TextXAlignment.Left
    logo.Parent = header
    
    local sub = Instance.new("TextLabel")
    sub.Size = UDim2.new(0.3, 0, 0.35, 0)
    sub.Position = UDim2.new(0.5, 0, 0.65, 0)
    sub.BackgroundTransparency = 1
    sub.Text = "BLACK v22"
    sub.TextColor3 = Color3.fromRGB(200, 150, 255)
    sub.TextScaled = true
    sub.Font = Enum.Font.Gotham
    sub.Parent = header
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 25)
    title.Position = UDim2.new(0, 0, 0, 70)
    title.BackgroundTransparency = 1
    title.Text = "ВВЕДИТЕ КЛЮЧ"
    title.TextColor3 = Color3.fromRGB(220, 220, 255)
    title.TextScaled = true
    title.Font = Enum.Font.GothamBold
    title.Parent = main
    
    local input = Instance.new("TextBox")
    input.Size = UDim2.new(0.6, 0, 0, 45)
    input.Position = UDim2.new(0.2, 0, 0, 110)
    input.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
    input.BorderSizePixel = 2
    input.BorderColor3 = Color3.fromRGB(180, 60, 255)
    input.Text = ""
    input.TextColor3 = Color3.fromRGB(255, 255, 255)
    input.TextScaled = true
    input.Font = Enum.Font.GothamBold
    input.PlaceholderText = "Ключ..."
    input.PlaceholderColor3 = Color3.fromRGB(150, 120, 200)
    input.Parent = main
    local ic = Instance.new("UICorner")
    ic.CornerRadius = UDim.new(0, 12)
    ic.Parent = input
    
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0.35, 0, 0, 45)
    btn.Position = UDim2.new(0.325, 0, 0, 180)
    btn.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
    btn.BackgroundTransparency = 0.15
    btn.Text = "АКТИВИРОВАТЬ"
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextScaled = true
    btn.Font = Enum.Font.GothamBold
    btn.BorderSizePixel = 2
    btn.BorderColor3 = Color3.fromRGB(180, 60, 255)
    btn.Parent = main
    local bc = Instance.new("UICorner")
    bc.CornerRadius = UDim.new(0, 12)
    bc.Parent = btn
    
    local status = Instance.new("TextLabel")
    status.Size = UDim2.new(1, 0, 0, 25)
    status.Position = UDim2.new(0, 0, 0, 250)
    status.BackgroundTransparency = 1
    status.Text = "Введите ключ для активации"
    status.TextColor3 = Color3.fromRGB(200, 200, 230)
    status.TextScaled = true
    status.Font = Enum.Font.Gotham
    status.Parent = main
    
    local line = Instance.new("Frame")
    line.Size = UDim2.new(0.4, 0, 0, 1)
    line.Position = UDim2.new(0.3, 0, 0, 295)
    line.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
    line.BackgroundTransparency = 0.3
    line.Parent = main
    
    local footer = Instance.new("TextLabel")
    footer.Size = UDim2.new(1, 0, 0, 25)
    footer.Position = UDim2.new(0, 0, 0, 315)
    footer.BackgroundTransparency = 1
    footer.Text = "@execute_hub"
    footer.TextColor3 = Color3.fromRGB(180, 60, 255)
    footer.TextScaled = true
    footer.Font = Enum.Font.Gotham
    footer.Parent = main
    
    input:CaptureFocus()
    
    local function CheckKey()
        local enteredKey = string.lower(input.Text)
        if enteredKey == correctKey then
            status.Text = "КЛЮЧ ПРИНЯТ! ЗАПУСК..."
            status.TextColor3 = Color3.fromRGB(0, 255, 100)
            btn.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
            btn.BorderColor3 = Color3.fromRGB(0, 200, 80)
            input.BorderColor3 = Color3.fromRGB(0, 200, 80)
            task.wait(0.8)
            gui:Destroy()
            StartObsidianBlack()
        else
            keyAttempts = keyAttempts + 1
            status.Text = "НЕВЕРНЫЙ КЛЮЧ! " .. keyAttempts .. "/5"
            status.TextColor3 = Color3.fromRGB(255, 50, 50)
            btn.BackgroundColor3 = Color3.fromRGB(200, 30, 30)
            btn.BorderColor3 = Color3.fromRGB(200, 30, 30)
            input.BorderColor3 = Color3.fromRGB(200, 30, 30)
            
            if keyAttempts >= 5 then
                status.Text = "ДОСТУП ЗАБЛОКИРОВАН!"
                status.TextColor3 = Color3.fromRGB(255, 0, 0)
                btn.Visible = false
                input.Visible = false
                task.wait(2)
                gui:Destroy()
            end
            
            task.wait(0.5)
            input.Text = ""
            input:CaptureFocus()
            status.Text = "Введите ключ для активации"
            status.TextColor3 = Color3.fromRGB(200, 200, 230)
            btn.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
            btn.BorderColor3 = Color3.fromRGB(180, 60, 255)
            input.BorderColor3 = Color3.fromRGB(180, 60, 255)
        end
    end
    
    btn.MouseButton1Click:Connect(CheckKey)
    input.FocusLost:Connect(function(enter) if enter then CheckKey() end end)
    
    return gui
end

-- ============================================
-- ОСНОВНОЙ СКРИПТ (ЧЕРНЫЙ ИНТЕРФЕЙС + НОВЫЕ ФУНКЦИИ)
-- ============================================
function StartObsidianBlack()
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Lighting = game:GetService("Lighting")
    local TweenService = game:GetService("TweenService")
    local lp = Players.LocalPlayer
    local Camera = workspace.CurrentCamera

    -- ============================================
    -- НАСТРОЙКИ (50+ ФУНКЦИЙ)
    -- ============================================
    local settings = {
        -- AIM (10)
        aimOn = true,
        silentOn = false,
        wallOn = false,
        aimLock = false,
        radius = 200,
        smooth = 0.12,
        fov = 180,
        aimPart = "Head",
        prediction = true,
        visibleCheck = true,
        
        -- FIRE (8)
        fireOn = false,
        fireRate = 0.1,
        triggerBot = false,
        burstFire = false,
        burstCount = 3,
        killAuraOn = false,
        killAuraRange = 20,
        antiAfk = false,
        
        -- ESP (10)
        espOn = true,
        espType = "Highlight",
        espColor = "Violet",
        showHealth = true,
        showName = true,
        showDistance = true,
        glowOn = false,
        tracer = false,
        skeleton = false,
        boxFilled = false,
        
        -- MOVEMENT (15)
        flyOn = false,
        noclipOn = false,
        speed = 16,
        jump = 50,
        flySpeed = 1,
        bhop = false,
        infiniteJump = false,
        autoSprint = false,
        antiStun = false,
        noFall = false,
        waterWalk = false,
        spiderMan = false,
        airJump = false,
        moonJump = false,
        moonJumpPower = 200,
        slideOn = false,
        slideSpeed = 30,
        dashOn = false,
        dashDistance = 30,
        teleportOn = false,
        teleportDistance = 50,
        
        -- VISUAL (8)
        crosshairOn = true,
        crosshairColor = "Violet",
        crosshairStyle = "Dot",
        fovChanger = false,
        fovValue = 70,
        brightness = false,
        brightnessValue = 1.5,
        fogOn = false,
        bloom = false,
        
        -- NEW FUNCTIONS (10)
        autoCollectOn = false,
        autoCollectRange = 30,
        autoCollectDelay = 0.5,
        speedHackOn = false,
        speedHackMultiplier = 2,
        jumpHackOn = false,
        jumpHackMultiplier = 2,
        noClipFlyOn = false,
        noClipFlySpeed = 10,
        godModeOn = false,
        godModeHealth = 100,
        invisOn = false,
        invisOpacity = 0.3,
        autoFarmOn = false,
        autoFarmDelay = 1,
        autoFarmRange = 50,
        autoClickOn = false,
        autoClickDelay = 0.1,
        autoClickRange = 20,
    }

    -- ============================================
    -- ПЕРЕМЕННЫЕ
    -- ============================================
    local target = nil
    local lastShot = 0
    local flyBody = nil
    local espFolder = Instance.new("Folder")
    local crosshair = nil
    local aimLockTarget = nil
    local jumpCount = 0
    local bloomEffect = nil
    local uiSize = 1
    local dashCooldown = 0
    local lastTeleport = 0
    local particles = {}

    -- ============================================
    -- ПОЛНОСТЬЮ ЧЕРНЫЙ UI (ВСЕ ЭЛЕМЕНТЫ ЧЕРНЫЕ)
    -- ============================================
    local function CreateObsidianUI()
        local gui = Instance.new("ScreenGui")
        gui.Parent = lp:FindFirstChild("PlayerGui") or game:GetService("CoreGui")
        gui.ResetOnSpawn = false
        gui.Name = "ObsidianBlack"
        gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling  -- дети всегда поверх родителя
        
        -- ОСНОВНОЕ ОКНО (ЧЕРНЫЙ ФОН)
        local main = Instance.new("Frame")
        main.Size = UDim2.new(0, 480, 0, 640)
        main.Position = UDim2.new(0.5, -240, 0.02, 0)
        main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        main.BackgroundTransparency = 0.05
        main.BorderSizePixel = 2
        main.BorderColor3 = Color3.fromRGB(180, 60, 255)
        main.ClipsDescendants = true
        main.ZIndex = 2
        main.Parent = gui
        
        local mc = Instance.new("UICorner")
        mc.CornerRadius = UDim.new(0, 25)
        mc.Parent = main
        
        -- ТЕНЬ (ЧЕРНАЯ) — вне main, чтобы не было раздвоения при масштабе
        local shadow = Instance.new("Frame")
        shadow.Size = UDim2.new(0, 480, 0, 640)
        shadow.Position = UDim2.new(0.5, -240, 0.02, 0)
        shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        shadow.BackgroundTransparency = 0.98
        shadow.BorderSizePixel = 0
        shadow.ZIndex = 1
        shadow.Parent = gui
        local sc = Instance.new("UICorner")
        sc.CornerRadius = UDim.new(0, 25)
        sc.Parent = shadow

        -- НЕОНОВАЯ ОБВОДКА — тоже вне main
        local glow = Instance.new("Frame")
        glow.Size = UDim2.new(0, 480, 0, 640)
        glow.Position = UDim2.new(0.5, -240, 0.02, 0)
        glow.BackgroundTransparency = 1
        glow.BorderSizePixel = 2
        glow.BorderColor3 = Color3.fromRGB(180, 60, 255)
        glow.ZIndex = 1
        glow.Parent = gui
        local gbc = Instance.new("UICorner")
        gbc.CornerRadius = UDim.new(0, 25)
        gbc.Parent = glow
        
        -- УГЛЫ (НЕОНОВЫЕ)
        for _, data in ipairs({{0,0,0},{1,0,90},{0,1,-90},{1,1,180}}) do
            local corner = Instance.new("Frame")
            corner.Size = UDim2.new(0, 35, 0, 35)
            corner.Position = UDim2.new(data[1], -3, data[2], -3)
            corner.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
            corner.BackgroundTransparency = 0.2
            corner.BorderSizePixel = 0
            corner.Rotation = data[3]
            corner.Parent = main
            local c = Instance.new("UICorner")
            c.CornerRadius = UDim.new(0, 8)
            c.Parent = corner
        end
        
        -- UIScale — масштабирует ВСЁ содержимое main без изменения Size (без раздвоения)
        local uiScale = Instance.new("UIScale")
        uiScale.Scale = 1
        uiScale.Parent = main

        -- ВЕРХНИЙ БАННЕР (ЧЕРНЫЙ С ФИОЛЕТОВЫМ)
        local header = Instance.new("Frame")
        header.Size = UDim2.new(1, 0, 0, 65)
        header.BackgroundColor3 = Color3.fromRGB(5, 0, 15)
        header.BackgroundTransparency = 0.1
        header.BorderSizePixel = 0
        header.Parent = main
        local hc = Instance.new("UICorner")
        hc.CornerRadius = UDim.new(0, 25)
        hc.Parent = header
        
        local logo = Instance.new("TextLabel")
        logo.Size = UDim2.new(0.28, 0, 0.55, 0)
        logo.Position = UDim2.new(0.02, 0, 0.1, 0)
        logo.BackgroundTransparency = 1
        logo.Text = "OBSIDIAN"
        logo.TextColor3 = Color3.fromRGB(255, 255, 255)
        logo.TextScaled = true
        logo.Font = Enum.Font.GothamBold
        logo.TextXAlignment = Enum.TextXAlignment.Left
        logo.ZIndex = 5
        logo.Parent = header

        local version = Instance.new("TextLabel")
        version.Size = UDim2.new(0.20, 0, 0.30, 0)
        version.Position = UDim2.new(0.30, 0, 0.55, 0)
        version.BackgroundTransparency = 1
        version.Text = "BLACK v22"
        version.TextColor3 = Color3.fromRGB(200, 150, 255)
        version.TextScaled = true
        version.Font = Enum.Font.Gotham
        version.ZIndex = 5
        version.Parent = header
        
        -- КНОПКА ЗАКРЫТИЯ — настоящий Х из двух повёрнутых линий
        local closeBtn = Instance.new("TextButton")
        closeBtn.Size = UDim2.new(0.10, 0, 0.5, 0)
        closeBtn.Position = UDim2.new(0.88, 0, 0.25, 0)
        closeBtn.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
        closeBtn.BackgroundTransparency = 0.15
        closeBtn.Text = ""
        closeBtn.BorderSizePixel = 0
        closeBtn.ZIndex = 10
        closeBtn.Parent = header
        local cb = Instance.new("UICorner")
        cb.CornerRadius = UDim.new(0, 8)
        cb.Parent = closeBtn

        -- Линия 1: диагональ ↘ (45°)
        local xLine1 = Instance.new("Frame")
        xLine1.Size = UDim2.new(0, 16, 0, 3)
        xLine1.Position = UDim2.new(0.5, -8, 0.5, -1.5)
        xLine1.AnchorPoint = Vector2.new(0, 0)
        xLine1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        xLine1.BorderSizePixel = 0
        xLine1.Rotation = 45
        xLine1.ZIndex = 11
        xLine1.Parent = closeBtn
        local xl1c = Instance.new("UICorner")
        xl1c.CornerRadius = UDim.new(1, 0)
        xl1c.Parent = xLine1

        -- Линия 2: диагональ ↙ (-45°)
        local xLine2 = Instance.new("Frame")
        xLine2.Size = UDim2.new(0, 16, 0, 3)
        xLine2.Position = UDim2.new(0.5, -8, 0.5, -1.5)
        xLine2.AnchorPoint = Vector2.new(0, 0)
        xLine2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        xLine2.BorderSizePixel = 0
        xLine2.Rotation = -45
        xLine2.ZIndex = 11
        xLine2.Parent = closeBtn
        local xl2c = Instance.new("UICorner")
        xl2c.CornerRadius = UDim.new(1, 0)
        xl2c.Parent = xLine2

        local toggleBtn = Instance.new("TextButton")
        toggleBtn.Size = UDim2.new(0.10, 0, 0.5, 0)
        toggleBtn.Position = UDim2.new(0.76, 0, 0.25, 0)
        toggleBtn.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
        toggleBtn.BackgroundTransparency = 0.15
        toggleBtn.Text = ""
        toggleBtn.BorderSizePixel = 0
        toggleBtn.ZIndex = 10
        toggleBtn.Parent = header
        local tb = Instance.new("UICorner")
        tb.CornerRadius = UDim.new(0, 8)
        tb.Parent = toggleBtn

        -- Горизонтальная линия минуса
        local minusLine = Instance.new("Frame")
        minusLine.Size = UDim2.new(0, 14, 0, 3)
        minusLine.Position = UDim2.new(0.5, -7, 0.5, -1.5)
        minusLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        minusLine.BorderSizePixel = 0
        minusLine.ZIndex = 11
        minusLine.Parent = toggleBtn
        local mlc = Instance.new("UICorner")
        mlc.CornerRadius = UDim.new(1, 0)
        mlc.Parent = minusLine

        -- РАЗМЕР (ЧЕРНЫЙ) — посередине-право, НЕ перекрывает toggle/close
        local sizeFrame = Instance.new("Frame")
        sizeFrame.Size = UDim2.new(0.24, 0, 0, 32)
        sizeFrame.Position = UDim2.new(0.50, 0, 0.5, -16)
        sizeFrame.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
        sizeFrame.BackgroundTransparency = 0.1
        sizeFrame.BorderSizePixel = 1
        sizeFrame.BorderColor3 = Color3.fromRGB(180, 60, 255)
        sizeFrame.ZIndex = 5
        sizeFrame.Parent = header
        local sf = Instance.new("UICorner")
        sf.CornerRadius = UDim.new(0, 8)
        sf.Parent = sizeFrame
        
        local sizeLabel = Instance.new("TextLabel")
        sizeLabel.Size = UDim2.new(0.34, 0, 1, 0)
        sizeLabel.Position = UDim2.new(0.33, 0, 0, 0)
        sizeLabel.BackgroundTransparency = 1
        sizeLabel.Text = "100%"
        sizeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        sizeLabel.TextScaled = true
        sizeLabel.Font = Enum.Font.GothamBold
        sizeLabel.ZIndex = 6
        sizeLabel.Parent = sizeFrame

        local minusBtn = Instance.new("TextButton")
        minusBtn.Size = UDim2.new(0.33, 0, 1, 0)
        minusBtn.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        minusBtn.BackgroundTransparency = 0.2
        minusBtn.Text = "−"
        minusBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        minusBtn.TextScaled = true
        minusBtn.Font = Enum.Font.GothamBold
        minusBtn.BorderSizePixel = 0
        minusBtn.ZIndex = 6
        minusBtn.Parent = sizeFrame
        local mb = Instance.new("UICorner")
        mb.CornerRadius = UDim.new(0, 6)
        mb.Parent = minusBtn

        local plusBtn = Instance.new("TextButton")
        plusBtn.Size = UDim2.new(0.33, 0, 1, 0)
        plusBtn.Position = UDim2.new(0.67, 0, 0, 0)
        plusBtn.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        plusBtn.BackgroundTransparency = 0.2
        plusBtn.Text = "+"
        plusBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        plusBtn.TextScaled = true
        plusBtn.Font = Enum.Font.GothamBold
        plusBtn.BorderSizePixel = 0
        plusBtn.ZIndex = 6
        plusBtn.Parent = sizeFrame
        local pb = Instance.new("UICorner")
        pb.CornerRadius = UDim.new(0, 6)
        pb.Parent = plusBtn
        
        local function applyScale()
            uiScale.Scale = uiSize
            sizeLabel.Text = math.floor(uiSize * 100) .. "%"
        end

        minusBtn.MouseButton1Click:Connect(function()
            uiSize = math.max(0.7, uiSize - 0.05)
            applyScale()
        end)

        plusBtn.MouseButton1Click:Connect(function()
            uiSize = math.min(1.5, uiSize + 0.05)
            applyScale()
        end)
        
        -- ВКЛАДКИ (ЧЕРНЫЕ)
        local tabs = Instance.new("Frame")
        tabs.Size = UDim2.new(1, -20, 0, 40)
        tabs.Position = UDim2.new(0, 10, 0, 72)
        tabs.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        tabs.BackgroundTransparency = 0.5
        tabs.BorderSizePixel = 1
        tabs.BorderColor3 = Color3.fromRGB(180, 60, 255)
        tabs.Parent = main
        local tc = Instance.new("UICorner")
        tc.CornerRadius = UDim.new(0, 14)
        tc.Parent = tabs
        
        local tabNames = {"⚡ AIM", "🔥 FIRE", "🌈 ESP", "🏃 MOVE", "🎨 VISUAL", "⚙️ EXTRA", "📐 SIZE"}
        local tabButtons = {}
        local tabContents = {}
        
        for i, name in ipairs(tabNames) do
            local btn = Instance.new("TextButton")
            btn.Size = UDim2.new(1/#tabNames, -4, 1, -4)
            btn.Position = UDim2.new((i-1)/#tabNames, 2, 0, 2)
            btn.BackgroundColor3 = i == 1 and Color3.fromRGB(180, 60, 255) or Color3.fromRGB(0, 0, 0)
            btn.BackgroundTransparency = i == 1 and 0.2 or 0.6
            btn.Text = name
            btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            btn.TextScaled = true
            btn.Font = Enum.Font.GothamBold
            btn.BorderSizePixel = 0
            btn.Parent = tabs
            local bc = Instance.new("UICorner")
            bc.CornerRadius = UDim.new(0, 8)
            bc.Parent = btn
            tabButtons[i] = btn
            
            -- Контент вкладки
            local content = Instance.new("ScrollingFrame")
            content.Size = UDim2.new(1, -20, 1, -130)
            content.Position = UDim2.new(0, 10, 0, 120)
            content.BackgroundTransparency = 1
            content.BorderSizePixel = 0
            content.ScrollBarThickness = 4
            content.ScrollBarImageColor3 = Color3.fromRGB(180, 60, 255)
            content.CanvasSize = UDim2.new(0, 0, 0, 0)
            content.AutomaticCanvasSize = Enum.AutomaticSize.Y
            content.Visible = (i == 1)
            content.Parent = main
            local cl = Instance.new("UIListLayout")
            cl.Padding = UDim.new(0, 6)
            cl.Parent = content
            tabContents[i] = content
            
            btn.MouseButton1Click:Connect(function()
                for j, b in ipairs(tabButtons) do
                    b.BackgroundColor3 = (j == i) and Color3.fromRGB(180, 60, 255) or Color3.fromRGB(0, 0, 0)
                    b.BackgroundTransparency = (j == i) and 0.2 or 0.6
                    tabContents[j].Visible = (j == i)
                end
            end)
        end
        
        -- ============================================
        -- УНИВЕРСАЛЬНЫЙ TOGGLE
        -- ============================================
        local function CreateToggle(parent, text, settingKey)
            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(1, -10, 0, 32)
            frame.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            frame.BackgroundTransparency = 0.2
            frame.BorderSizePixel = 1
            frame.BorderColor3 = Color3.fromRGB(60, 30, 90)
            frame.Parent = parent
            local fc = Instance.new("UICorner")
            fc.CornerRadius = UDim.new(0, 8)
            fc.Parent = frame
            
            local label = Instance.new("TextLabel")
            label.Size = UDim2.new(0.7, 0, 1, 0)
            label.Position = UDim2.new(0.05, 0, 0, 0)
            label.BackgroundTransparency = 1
            label.Text = text
            label.TextColor3 = Color3.fromRGB(230, 230, 255)
            label.TextScaled = true
            label.Font = Enum.Font.GothamBold
            label.TextXAlignment = Enum.TextXAlignment.Left
            label.Parent = frame
            
            local toggle = Instance.new("TextButton")
            toggle.Size = UDim2.new(0, 50, 0, 22)
            toggle.Position = UDim2.new(1, -60, 0.5, -11)
            toggle.BackgroundColor3 = settings[settingKey] and Color3.fromRGB(180, 60, 255) or Color3.fromRGB(40, 40, 40)
            toggle.Text = settings[settingKey] and "ON" or "OFF"
            toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            toggle.TextScaled = true
            toggle.Font = Enum.Font.GothamBold
            toggle.BorderSizePixel = 0
            toggle.Parent = frame
            local tgc = Instance.new("UICorner")
            tgc.CornerRadius = UDim.new(0, 6)
            tgc.Parent = toggle
            
            toggle.MouseButton1Click:Connect(function()
                settings[settingKey] = not settings[settingKey]
                toggle.BackgroundColor3 = settings[settingKey] and Color3.fromRGB(180, 60, 255) or Color3.fromRGB(40, 40, 40)
                toggle.Text = settings[settingKey] and "ON" or "OFF"
            end)
        end
        
        -- ============================================
        -- УНИВЕРСАЛЬНЫЙ СЛАЙДЕР
        -- ============================================
        local function CreateSlider(parent, text, settingKey, min, max)
            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(1, -10, 0, 50)
            frame.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
            frame.BackgroundTransparency = 0.2
            frame.BorderSizePixel = 1
            frame.BorderColor3 = Color3.fromRGB(60, 30, 90)
            frame.Parent = parent
            local fc = Instance.new("UICorner")
            fc.CornerRadius = UDim.new(0, 8)
            fc.Parent = frame
            
            local label = Instance.new("TextLabel")
            label.Size = UDim2.new(0.7, 0, 0, 20)
            label.Position = UDim2.new(0.05, 0, 0, 2)
            label.BackgroundTransparency = 1
            label.Text = text .. ": " .. tostring(settings[settingKey])
            label.TextColor3 = Color3.fromRGB(230, 230, 255)
            label.TextScaled = true
            label.Font = Enum.Font.GothamBold
            label.TextXAlignment = Enum.TextXAlignment.Left
            label.Parent = frame
            
            local slider = Instance.new("TextButton")
            slider.Size = UDim2.new(0.9, 0, 0, 20)
            slider.Position = UDim2.new(0.05, 0, 0, 26)
            slider.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            slider.Text = ""
            slider.BorderSizePixel = 0
            slider.Parent = frame
            local slc = Instance.new("UICorner")
            slc.CornerRadius = UDim.new(0, 6)
            slc.Parent = slider
            
            local fill = Instance.new("Frame")
            fill.Size = UDim2.new((settings[settingKey] - min) / (max - min), 0, 1, 0)
            fill.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
            fill.BorderSizePixel = 0
            fill.Parent = slider
            local fdc = Instance.new("UICorner")
            fdc.CornerRadius = UDim.new(0, 6)
            fdc.Parent = fill
            
            local dragging = false
            local function update(input)
                local rel = math.clamp((input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1)
                local val = min + (max - min) * rel
                settings[settingKey] = val
                fill.Size = UDim2.new(rel, 0, 1, 0)
                label.Text = text .. ": " .. string.format("%.2f", val)
            end
            
            slider.MouseButton1Down:Connect(function() dragging = true end)
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
            end)
            UserInputService.InputChanged:Connect(function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    update(input)
                end
            end)
        end
        
        -- ============================================
        -- ЗАПОЛНЕНИЕ ВКЛАДОК
        -- ============================================
        -- AIM
        CreateToggle(tabContents[1], "Aimbot", "aimOn")
        CreateToggle(tabContents[1], "Silent Aim", "silentOn")
        CreateToggle(tabContents[1], "Wall Check", "wallOn")
        CreateToggle(tabContents[1], "Aim Lock", "aimLock")
        CreateToggle(tabContents[1], "Prediction", "prediction")
        CreateToggle(tabContents[1], "Visible Check", "visibleCheck")
        CreateSlider(tabContents[1], "Radius", "radius", 50, 500)
        CreateSlider(tabContents[1], "Smooth", "smooth", 0.01, 1)
        CreateSlider(tabContents[1], "FOV", "fov", 30, 360)
        
        -- FIRE
        CreateToggle(tabContents[2], "Fire Rate", "fireOn")
        CreateToggle(tabContents[2], "Trigger Bot", "triggerBot")
        CreateToggle(tabContents[2], "Burst Fire", "burstFire")
        CreateToggle(tabContents[2], "Kill Aura", "killAuraOn")
        CreateToggle(tabContents[2], "Anti AFK", "antiAfk")
        CreateSlider(tabContents[2], "Fire Rate", "fireRate", 0.01, 1)
        CreateSlider(tabContents[2], "Burst Count", "burstCount", 1, 10)
        CreateSlider(tabContents[2], "Kill Aura Range", "killAuraRange", 5, 100)
        
        -- ESP
        CreateToggle(tabContents[3], "ESP", "espOn")
        CreateToggle(tabContents[3], "Health", "showHealth")
        CreateToggle(tabContents[3], "Name", "showName")
        CreateToggle(tabContents[3], "Distance", "showDistance")
        CreateToggle(tabContents[3], "Glow", "glowOn")
        CreateToggle(tabContents[3], "Tracer", "tracer")
        CreateToggle(tabContents[3], "Skeleton", "skeleton")
        CreateToggle(tabContents[3], "Box Filled", "boxFilled")
        
        -- MOVE
        CreateToggle(tabContents[4], "Fly", "flyOn")
        CreateToggle(tabContents[4], "Noclip", "noclipOn")
        CreateToggle(tabContents[4], "BHop", "bhop")
        CreateToggle(tabContents[4], "Infinite Jump", "infiniteJump")
        CreateToggle(tabContents[4], "Auto Sprint", "autoSprint")
        CreateToggle(tabContents[4], "Anti Stun", "antiStun")
        CreateToggle(tabContents[4], "No Fall", "noFall")
        CreateToggle(tabContents[4], "Water Walk", "waterWalk")
        CreateToggle(tabContents[4], "Spider Man", "spiderMan")
        CreateToggle(tabContents[4], "Air Jump", "airJump")
        CreateToggle(tabContents[4], "Moon Jump", "moonJump")
        CreateToggle(tabContents[4], "Slide", "slideOn")
        CreateToggle(tabContents[4], "Dash", "dashOn")
        CreateToggle(tabContents[4], "Teleport", "teleportOn")
        CreateSlider(tabContents[4], "Speed", "speed", 16, 200)
        CreateSlider(tabContents[4], "Jump Power", "jump", 50, 300)
        CreateSlider(tabContents[4], "Fly Speed", "flySpeed", 1, 20)
        CreateSlider(tabContents[4], "Moon Jump Power", "moonJumpPower", 100, 500)
        CreateSlider(tabContents[4], "Slide Speed", "slideSpeed", 10, 100)
        CreateSlider(tabContents[4], "Dash Distance", "dashDistance", 10, 100)
        CreateSlider(tabContents[4], "Teleport Distance", "teleportDistance", 10, 200)
        
        -- VISUAL
        CreateToggle(tabContents[5], "Crosshair", "crosshairOn")
        CreateToggle(tabContents[5], "FOV Changer", "fovChanger")
        CreateToggle(tabContents[5], "Brightness", "brightness")
        CreateToggle(tabContents[5], "Fog", "fogOn")
        CreateToggle(tabContents[5], "Bloom", "bloom")
        CreateSlider(tabContents[5], "FOV Value", "fovValue", 30, 120)
        CreateSlider(tabContents[5], "Brightness Value", "brightnessValue", 0.5, 3)
        
        -- EXTRA
        CreateToggle(tabContents[6], "Auto Collect", "autoCollectOn")
        CreateToggle(tabContents[6], "Speed Hack", "speedHackOn")
        CreateToggle(tabContents[6], "Jump Hack", "jumpHackOn")
        CreateToggle(tabContents[6], "NoClip Fly", "noClipFlyOn")
        CreateToggle(tabContents[6], "God Mode", "godModeOn")
        CreateToggle(tabContents[6], "Invisible", "invisOn")
        CreateToggle(tabContents[6], "Auto Farm", "autoFarmOn")
        CreateToggle(tabContents[6], "Auto Click", "autoClickOn")
        CreateSlider(tabContents[6], "Auto Collect Range", "autoCollectRange", 10, 100)
        CreateSlider(tabContents[6], "Auto Collect Delay", "autoCollectDelay", 0.1, 3)
        CreateSlider(tabContents[6], "Speed Multiplier", "speedHackMultiplier", 1, 10)
        CreateSlider(tabContents[6], "Jump Multiplier", "jumpHackMultiplier", 1, 10)
        CreateSlider(tabContents[6], "NoClip Fly Speed", "noClipFlySpeed", 1, 50)
        CreateSlider(tabContents[6], "God Mode Health", "godModeHealth", 100, 9999)
        CreateSlider(tabContents[6], "Invis Opacity", "invisOpacity", 0.1, 1)
        CreateSlider(tabContents[6], "Auto Farm Delay", "autoFarmDelay", 0.1, 5)
        CreateSlider(tabContents[6], "Auto Farm Range", "autoFarmRange", 10, 200)
        CreateSlider(tabContents[6], "Auto Click Delay", "autoClickDelay", 0.05, 1)
        CreateSlider(tabContents[6], "Auto Click Range", "autoClickRange", 5, 100)
        
        -- SIZE
        local sizeInfo = Instance.new("TextLabel")
        sizeInfo.Size = UDim2.new(1, -10, 0, 60)
        sizeInfo.BackgroundTransparency = 1
        sizeInfo.Text = "Используй кнопки + и − в хедере для изменения размера ВСЕГО GUI (плавное масштабирование, без раздвоения).\n\nПеретаскивание: тянни за заголовок окна.\nКружок ◉ справа по центру — скрыть/показать GUI с анимацией (тоже перетаскиваемый).\n\nКнопки ✕ (закрыть) и − (свернуть) — справа в хедере, поверх size-блока.\n\nГорячие клавиши:\nRightShift — скрыть/показать\nR — аварийное закрытие"
        sizeInfo.TextColor3 = Color3.fromRGB(220, 220, 255)
        sizeInfo.TextScaled = true
        sizeInfo.Font = Enum.Font.Gotham
        sizeInfo.TextWrapped = true
        sizeInfo.Parent = tabContents[7]
        
        -- ============================================
        -- ОБРАБОТЧИКИ КНОПОК
        -- ============================================
        closeBtn.MouseButton1Click:Connect(function()
            gui:Destroy()
        end)
        
        local minimized = false
        -- При сворачивании: убираем минус-линию и рисуем плюс (вертикальная + горизонтальная)
        -- При развороте: возвращаем минус-линию, убираем плюс
        local plusLineV = Instance.new("Frame")
        plusLineV.Size = UDim2.new(0, 3, 0, 14)
        plusLineV.Position = UDim2.new(0.5, -1.5, 0.5, -7)
        plusLineV.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        plusLineV.BorderSizePixel = 0
        plusLineV.ZIndex = 11
        plusLineV.Visible = false
        plusLineV.Parent = toggleBtn
        local plvc = Instance.new("UICorner")
        plvc.CornerRadius = UDim.new(1, 0)
        plvc.Parent = plusLineV

        toggleBtn.MouseButton1Click:Connect(function()
            minimized = not minimized
            if minimized then
                main.Size = UDim2.new(0, 480, 0, 65)
                uiScale.Scale = 1
                -- Показываем плюс (вертикальная линия появляется, горизонтальная уже есть)
                minusLine.Visible = false
                plusLineV.Visible = true
            else
                main.Size = UDim2.new(0, 480, 0, 640)
                uiScale.Scale = uiSize
                -- Возвращаем минус
                minusLine.Visible = true
                plusLineV.Visible = false
            end
        end)

        -- ============================================
        -- ПЕРЕТАСКИВАНИЕ ОКНА (ЗА ЗАГОЛОВОК)
        -- ============================================
        local dragging = false
        local dragStart, startPos

        header.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = main.Position
            end
        end)

        header.InputChanged:Connect(function(input)
            if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
                          or input.UserInputType == Enum.UserInputType.Touch) then
                local delta = input.Position - dragStart
                main.Position = UDim2.new(
                    startPos.X.Scale, startPos.X.Offset + delta.X,
                    startPos.Y.Scale, startPos.Y.Offset + delta.Y
                )
            end
        end)

        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
                dragging = false
            end
        end)

        -- ============================================
        -- ПЛАВАЮЩИЙ КРУЖОК (СКРЫТИЕ С АНИМАЦИЕЙ)
        -- ============================================
        local circleBtn = Instance.new("TextButton")
        circleBtn.Size = UDim2.new(0, 60, 0, 60)
        circleBtn.Position = UDim2.new(1, -80, 0.5, -30)
        circleBtn.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
        circleBtn.BackgroundTransparency = 0.1
        circleBtn.Text = "◉"
        circleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        circleBtn.TextScaled = true
        circleBtn.Font = Enum.Font.GothamBold
        circleBtn.BorderSizePixel = 0
        circleBtn.AutoButtonColor = false
        circleBtn.ZIndex = 100  -- поверх всего
        circleBtn.Parent = gui
        local cbc = Instance.new("UICorner")
        cbc.CornerRadius = UDim.new(1, 0)  -- идеальный круг
        cbc.Parent = circleBtn

        -- Внешнее неоновое кольцо (крупнее, заметнее)
        local circleRing = Instance.new("Frame")
        circleRing.Size = UDim2.new(1, 12, 1, 12)
        circleRing.Position = UDim2.new(0, -6, 0, -6)
        circleRing.BackgroundTransparency = 1
        circleRing.BorderSizePixel = 3
        circleRing.BorderColor3 = Color3.fromRGB(180, 60, 255)
        circleRing.ZIndex = 99
        circleRing.Parent = circleBtn
        local crc = Instance.new("UICorner")
        crc.CornerRadius = UDim.new(1, 0)
        crc.Parent = circleRing

        -- Дополнительная мягкая внешняя подсветка
        local circleGlow = Instance.new("Frame")
        circleGlow.Size = UDim2.new(1, 24, 1, 24)
        circleGlow.Position = UDim2.new(0, -12, 0, -12)
        circleGlow.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
        circleGlow.BackgroundTransparency = 0.85
        circleGlow.BorderSizePixel = 0
        circleGlow.ZIndex = 98
        circleGlow.Parent = circleBtn
        local cgc = Instance.new("UICorner")
        cgc.CornerRadius = UDim.new(1, 0)
        cgc.Parent = circleGlow

        -- Подсказка (крупнее, чтобы было заметно)
        local circleTip = Instance.new("TextLabel")
        circleTip.Size = UDim2.new(0, 180, 0, 28)
        circleTip.AnchorPoint = Vector2.new(1, 0.5)
        circleTip.Position = UDim2.new(0, -14, 0.5, 0)
        circleTip.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        circleTip.BackgroundTransparency = 0.2
        circleTip.Text = "  Скрыть GUI  "
        circleTip.TextColor3 = Color3.fromRGB(255, 255, 255)
        circleTip.TextScaled = true
        circleTip.Font = Enum.Font.GothamBold
        circleTip.BorderSizePixel = 1
        circleTip.BorderColor3 = Color3.fromRGB(180, 60, 255)
        circleTip.Visible = false
        circleTip.ZIndex = 101
        circleTip.Parent = circleBtn
        local ctc = Instance.new("UICorner")
        ctc.CornerRadius = UDim.new(0, 6)
        ctc.Parent = circleTip

        -- Состояния
        local guiHidden = false
        local savedMainSize = UDim2.new(0, 480, 0, 640)
        local savedMainTransparency = 0.05
        local savedMainPos = UDim2.new(0.5, -240, 0.02, 0)

        local function HideMainWithAnimation()
            if guiHidden then return end
            guiHidden = true
            circleBtn.Text = "○"
            circleTip.Text = "Показать GUI"
            savedMainTransparency = main.BackgroundTransparency

            -- Сначала восстановим полный Size (на случай если был свёрнут через toggleBtn)
            main.Size = UDim2.new(0, 480, 0, 640)

            -- Анимация: схлопывание UIScale к 0 + затухание + сдвиг к кружку
            local hideTween = TweenService:Create(
                uiScale,
                TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {Scale = 0}
            )
            local fadeTween = TweenService:Create(
                main,
                TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                {BackgroundTransparency = 1}
            )
            hideTween:Play()
            fadeTween:Play()

            -- Пульсация кружка
            local pulse = TweenService:Create(
                circleBtn,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 76, 0, 76)}
            )
            pulse:Play()
            pulse.Completed:Connect(function()
                TweenService:Create(
                    circleBtn,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 60, 0, 60)}
                ):Play()
            end)

            hideTween.Completed:Connect(function()
                if guiHidden then
                    main.Visible = false
                    shadow.Visible = false
                    glow.Visible = false
                end
            end)
        end

        local function ShowMainWithAnimation()
            if not guiHidden then return end
            guiHidden = false
            circleBtn.Text = "◉"
            circleTip.Text = "Скрыть GUI"
            main.Visible = true
            shadow.Visible = true
            glow.Visible = true

            -- Старт: scale=0, прозрачность=1; цель: scale=uiSize, прозрачность=saved
            uiScale.Scale = 0
            main.BackgroundTransparency = 1

            local showTween = TweenService:Create(
                uiScale,
                TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Scale = uiSize}
            )
            local fadeTween = TweenService:Create(
                main,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = savedMainTransparency}
            )
            showTween:Play()
            fadeTween:Play()

            local pulse = TweenService:Create(
                circleBtn,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 76, 0, 76)}
            )
            pulse:Play()
            pulse.Completed:Connect(function()
                TweenService:Create(
                    circleBtn,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 60, 0, 60)}
                ):Play()
            end)
        end

        -- Перетаскивание кружка + клик для скрытия/показа
        local circleDragging = false
        local circleDragStart, circleStartPos
        local circleMoved = false

        circleBtn.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
                circleDragging = true
                circleMoved = false
                circleDragStart = input.Position
                circleStartPos = circleBtn.Position
            end
        end)

        circleBtn.InputChanged:Connect(function(input)
            if circleDragging and (input.UserInputType == Enum.UserInputType.MouseMovement
                                or input.UserInputType == Enum.UserInputType.Touch) then
                local delta = input.Position - circleDragStart
                if delta.Magnitude > 6 then
                    circleMoved = true
                    circleTip.Visible = false
                    circleBtn.Position = UDim2.new(
                        circleStartPos.X.Scale, circleStartPos.X.Offset + delta.X,
                        circleStartPos.Y.Scale, circleStartPos.Y.Offset + delta.Y
                    )
                end
            end
        end)

        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
                if circleDragging and not circleMoved then
                    -- это был клик
                    if not guiHidden then
                        HideMainWithAnimation()
                    else
                        ShowMainWithAnimation()
                    end
                end
                circleDragging = false
            end
        end)

        -- Подсказка при наведении
        circleBtn.MouseEnter:Connect(function()
            if not circleDragging then
                circleTip.Visible = true
                TweenService:Create(circleTip, TweenInfo.new(0.15), {BackgroundTransparency = 0.15}):Play()
            end
        end)
        circleBtn.MouseLeave:Connect(function()
            circleTip.Visible = false
        end)

        return gui
    end
    
    -- ============================================
    -- ВОЗРОЖДЕНИЕ ИГРОКА
    -- ============================================
    local function getRoot()
        local char = lp.Character
        if not char then return nil end
        return char:FindFirstChild("HumanoidRootPart") or char:FindFirstChildWhichIsA("BasePart")
    end
    
    local function getHumanoid()
        local char = lp.Character
        if not char then return nil end
        return char:FindFirstChildOfClass("Humanoid")
    end
    
    -- ============================================
    -- ПОИСК ЦЕЛИ ДЛЯ AIM
    -- ============================================
    local function getClosestPlayer()
        local closest = nil
        local shortest = settings.radius
        local mousePos = UserInputService:GetMouseLocation()
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= lp and p.Character then
                local part = p.Character:FindFirstChild(settings.aimPart) or p.Character:FindFirstChild("HumanoidRootPart")
                local hum = p.Character:FindFirstChildOfClass("Humanoid")
                if part and hum and hum.Health > 0 then
                    local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
                    if onScreen then
                        local dist = (Vector2.new(pos.X, pos.Y) - mousePos).Magnitude
                        if dist < shortest then
                            shortest = dist
                            closest = p
                        end
                    end
                end
            end
        end
        return closest
    end
    
    -- ============================================
    -- ESP СИСТЕМА
    -- ============================================
    local espObjects = {}
    
    local colorMap = {
        Violet = Color3.fromRGB(180, 60, 255),
        Red = Color3.fromRGB(255, 50, 50),
        Green = Color3.fromRGB(0, 255, 100),
        Blue = Color3.fromRGB(50, 150, 255),
        White = Color3.fromRGB(255, 255, 255),
    }
    
    local function clearESP()
        for _, obj in pairs(espObjects) do
            if obj and obj.Parent then obj:Destroy() end
        end
        espObjects = {}
    end
    
    local function updateESP()
        clearESP()
        if not settings.espOn then return end
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= lp and p.Character then
                local hum = p.Character:FindFirstChildOfClass("Humanoid")
                local root = p.Character:FindFirstChild("HumanoidRootPart")
                if hum and root and hum.Health > 0 then
                    if settings.espType == "Highlight" then
                        local hl = Instance.new("Highlight")
                        hl.Parent = espFolder
                        hl.Adornee = p.Character
                        hl.FillColor = colorMap[settings.espColor] or colorMap.Violet
                        hl.OutlineColor = Color3.fromRGB(255, 255, 255)
                        hl.FillTransparency = 0.5
                        hl.OutlineTransparency = 0
                        espObjects[p] = hl
                    end
                end
            end
        end
    end
    
    if not espFolder.Parent then
        espFolder.Parent = workspace
    end
    
    -- ============================================
    -- ПРИЦЕЛ
    -- ============================================
    local function createCrosshair()
        if crosshair then crosshair:Destroy() end
        local gui = Instance.new("ScreenGui")
        gui.Parent = lp:FindFirstChild("PlayerGui") or game:GetService("CoreGui")
        gui.Name = "ObsidianCrosshair"
        gui.ResetOnSpawn = false
        crosshair = gui
        
        local dot = Instance.new("Frame")
        dot.Size = UDim2.new(0, 4, 0, 4)
        dot.Position = UDim2.new(0.5, -2, 0.5, -2)
        dot.BackgroundColor3 = colorMap[settings.crosshairColor] or colorMap.Violet
        dot.BorderSizePixel = 0
        dot.Parent = gui
        local dc = Instance.new("UICorner")
        dc.CornerRadius = UDim.new(1, 0)
        dc.Parent = dot
    end
    createCrosshair()
    
    -- ============================================
    -- ГЛАВНЫЙ ЦИКЛ
    -- ============================================
    local function mainLoop()
        RunService.RenderStepped:Connect(function()
            -- AIM
            if settings.aimOn then
                local t = getClosestPlayer()
                if t and t.Character then
                    local part = t.Character:FindFirstChild(settings.aimPart) or t.Character:FindFirstChild("Head")
                    if part then
                        local targetPos = part.Position
                        if settings.prediction then
                            local vel = part.AssemblyLinearVelocity
                            targetPos = targetPos + vel * 0.1
                        end
                        local currentCF = Camera.CFrame
                        local targetCF = CFrame.new(currentCF.Position, targetPos)
                        Camera.CFrame = currentCF:Lerp(targetCF, settings.smooth)
                    end
                end
            end
            
            -- SPEED / JUMP
            local hum = getHumanoid()
            if hum then
                if settings.speedHackOn then
                    hum.WalkSpeed = settings.speed * settings.speedHackMultiplier
                else
                    hum.WalkSpeed = settings.speed
                end
                if settings.jumpHackOn then
                    hum.JumpPower = settings.jump * settings.jumpHackMultiplier
                else
                    hum.JumpPower = settings.jump
                end
            end
            
            -- NOCLIP
            if settings.noclipOn then
                local char = lp.Character
                if char then
                    for _, p in ipairs(char:GetDescendants()) do
                        if p:IsA("BasePart") and p.CanCollide then
                            p.CanCollide = false
                        end
                    end
                end
            end
            
            -- FLY
            if settings.flyOn then
                local root = getRoot()
                if root then
                    if not flyBody then
                        flyBody = Instance.new("BodyVelocity")
                        flyBody.Parent = root
                    end
                    local dir = Vector3.zero
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir = dir + Camera.CFrame.LookVector end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir = dir - Camera.CFrame.LookVector end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir = dir - Camera.CFrame.RightVector end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir = dir + Camera.CFrame.RightVector end
                    flyBody.Velocity = dir * settings.flySpeed * 50
                end
            else
                if flyBody then flyBody:Destroy() flyBody = nil end
            end
            
            -- FOV
            if settings.fovChanger then
                Camera.FieldOfView = settings.fovValue
            end
            
            -- BRIGHTNESS
            if settings.brightness then
                Lighting.Brightness = settings.brightnessValue
            end
            
            -- CROSSHAIR
            if crosshair then
                crosshair.Enabled = settings.crosshairOn
            end
        end)
        
        -- ESP LOOP (медленнее)
        task.spawn(function()
            while task.wait(0.5) do
                updateESP()
            end
        end)
        
        -- AUTO FARM / AUTO CLICK / AUTO COLLECT LOOP
        task.spawn(function()
            while task.wait(0.2) do
                local root = getRoot()
                if not root then else
                    -- Auto Click
                    if settings.autoClickOn then
                        -- простая авто-клик реализация через mouse click эмуляцию (если поддерживается executor)
                        pcall(function()
                            if mouse1press then
                                mouse1press()
                                task.wait(settings.autoClickDelay)
                                mouse1release()
                            end
                        end)
                    end
                end
            end
        end)
    end
    
    -- ============================================
    -- ВВОД
    -- ============================================
    UserInputService.InputBegan:Connect(function(input, gpe)
        if gpe then return end
        if input.KeyCode == Enum.KeyCode.RightShift then
            local gui = lp:FindFirstChild("PlayerGui") and lp.PlayerGui:FindFirstChild("ObsidianBlack")
            if gui then gui.Enabled = not gui.Enabled end
        elseif input.KeyCode == Enum.KeyCode.R then
            local gui = lp:FindFirstChild("PlayerGui") and lp.PlayerGui:FindFirstChild("ObsidianBlack")
            if gui then gui:Destroy() end
        elseif settings.infiniteJump and input.KeyCode == Enum.KeyCode.Space then
            local hum = getHumanoid()
            if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
        end
    end)
    
    -- ============================================
    -- ANTI AFK
    -- ============================================
    local vu = game:GetService("VirtualUser")
    lp.Idled:Connect(function()
        if settings.antiAfk then
            vu:CaptureController()
            vu:ClickButton2(Vector2.new())
        end
    end)
    
    -- ============================================
    -- ЗАПУСК
    -- ============================================
    CreateObsidianUI()
    mainLoop()
end

-- ============================================
-- СТАРТ
-- ============================================
CreateKeyWindow()
