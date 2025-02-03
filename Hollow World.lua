function Init()
    local Fluent =
        loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
end

function Test()
    print(Fluent.Options)

    local Window =
        Fluent:CreateWindow(
        {
            Title = "discord.gg/9f7yYPCd54  " .. Fluent.Version,
            SubTitle = "by IUsedHuzuni",
            TabWidth = 160,
            Size = UDim2.fromOffset(525, 350),
            Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
            Theme = "Darker",
            MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
        }
    )

    Fluent:Notify(
        {
            Title = "discord.gg/9f7yYPCd54 Loaded SuccesFully",
            Content = "Made By IUsedHuzuni",
            SubContent = "Game: Peroxide - Hollow World", -- Optional
            Duration = 5 -- Set to nil to make the notification not disappear
        }
    )
    -- Fluent provides Lucide Icons, they are optional
    local Tabs = {
        Main = Window:AddTab({Title = "Auto Farm", Icon = "box"}),
        FarmSettings = Window:AddTab({Title = "Farm Settings", Icon = "box"}),
        Telep = Window:AddTab({Title = "Teleport", Icon = "plane"}),
        Backpack = Window:AddTab({Title = "Backpack", Icon = "backpack"}),
        Movement = Window:AddTab({Title = "LocalPLayer", Icon = "user"}),
        Visual = Window:AddTab({Title = "Esp", Icon = "eye"}),
        Client = Window:AddTab({Title = "Server", Icon = "server"}),
        Settings = Window:AddTab({Title = "Settings", Icon = "settings"})
    }
    Window:SelectTab(1)

    local Options = Fluent.Options
    do
        local config = {
            TELEPORT_DISTANCE_BEHIND = 1, -- Distancia detrás del enemigo
            TELEPORT_INTERVAL = 0.2, -- Tiempo entre cada teletransporte hacia el enemigo
            DETECTION_RANGE = 2000 -- Rango de detección
        }

        local Slider =
            Tabs.FarmSettings:AddSlider(
            "Slider",
            {
                Title = "Teleport Distance Behind",
                Description = "Change teleport distance",
                Default = 1,
                Min = 0,
                Max = 30,
                Rounding = 1,
                Callback = function(TPB1)
                    config.TELEPORT_DISTANCE_BEHIND = TPB1
                end
            }
        )
        local Slider =
            Tabs.FarmSettings:AddSlider(
            "Slider",
            {
                Title = "Teleport Speed",
                Description = "Change teleport speed",
                Default = 0.2,
                Min = 0.1,
                Max = 1,
                Rounding = 1,
                Callback = function(TPS1)
                    config.TELEPORT_INTERVAL = TPS1
                end
            }
        )
        local Slider =
            Tabs.FarmSettings:AddSlider(
            "Slider",
            {
                Title = "Detection Range",
                Description = "Change Detection Range",
                Default = 2000,
                Min = 1000,
                Max = 10000,
                Rounding = 1,
                Callback = function(skibidirange)
                    config.TELEPORT_INTERVAL = skibidirange
                end
            }
        )

        local TeleportService = game:GetService("TeleportService")

        Tabs.Client:AddButton(
            {
                Title = "World Teleport To Soul Society",
                Description = "Bypass teleport",
                Callback = function()
                    -- Teletransporte al lugar con la ID proporcionada
                    TeleportService:Teleport(11041522464)
                end
            }
        )

        Tabs.Client:AddButton(
            {
                Title = "World Teleport To Menos Forest",
                Description = "Bypass teleport",
                Callback = function()
                    -- Teletransporte al lugar con la ID proporcionada
                    TeleportService:Teleport(12651368507)
                end
            }
        )

        Tabs.Client:AddButton(
            {
                Title = "World Teleport To karakura[Human World]",
                Description = "Bypass teleport",
                Callback = function()
                    -- Teletransporte al lugar con la ID proporcionada
                    TeleportService:Teleport(9096881148)
                end
            }
        )
        Tabs.Client:AddButton(
            {
                Title = "World Teleport To Hollow World",
                Description = "Bypass teleport",
                Callback = function()
                    -- Teletransporte al lugar con la ID proporcionada
                    TeleportService:Teleport(10550161545)
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To Menos Forest",
                Description = "Bypass teleport to menos forest",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(-2467.70142, -362.938019, 1392.37561)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        Tabs.Client:AddButton(
            {
                Title = "World Teleport To Quincy World",
                Description = "Bypass teleport",
                Callback = function()
                    -- Teletransporte al lugar con la ID proporcionada
                    TeleportService:Teleport(12923815923)
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To The Alley",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(-753, 18, -921)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )
        Tabs.Telep:AddButton(
            {
                Title = "Teleport To The Pocket Realm",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(-2744, 9, 1939)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To Xavier Npc",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(-754, 19, -1179)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To Erelander Lathtrix Npc",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(650, 141, 1093)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To Shady Arrancar Npc",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(-706, 19, -959)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To herupa Npc",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(595, 141, 1131)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To Elegante Npc",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(-710, 19, -888)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To Jim Npc",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(-831, 19, -880)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To Ken Npc",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(-799, 19, -924)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        Tabs.Telep:AddButton(
            {
                Title = "Teleport To Tim Npc",
                Description = "Bypass teleport",
                Callback = function()
                    local player = game:GetService("Players").LocalPlayer
                    local character = player.Character or player.CharacterAdded:Wait()
                    local targetPosition = Vector3.new(-670, 20, -996)

                    -- Verifica si el personaje tiene un HumanoidRootPart para teletransportarlo
                    if character:FindFirstChild("HumanoidRootPart") then
                        character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    else
                        warn("No se encontró el HumanoidRootPart en el personaje")
                    end
                end
            }
        )

        local player = game:GetService("Players").LocalPlayer

        -- Crear el Dropdown para elegir el mob
        local Dropdown =
            Tabs.Main:AddDropdown(
            "Dropdown",
            {
                Title = "Mob List/Player",
                Values = {
                    "Huzuni",
                    "jhon117seb My little brother",
                    "Im Skbidi",
                    "Reset Dropdown xD",
                    "five",
                    "six",
                    "seven",
                    "eight",
                    "nine",
                    "ten",
                    "eleven",
                    "twelve",
                    "thirteen",
                    "fourteen"
                },
                Multi = false,
                Default = 1
            }
        )

        Dropdown:SetValue("Huzuni")

        -- Función para actualizar la lista de mobs cercanos a un radio de 500 bloques
        local function updateMobList()
            local mobList = {} -- Aquí agregas la lógica para actualizar la lista de mobs
            local playerPosition = player.Character and player.Character:FindFirstChild("HumanoidRootPart").Position

            if playerPosition then
                for _, mob in pairs(workspace.Live:GetChildren()) do
                    if mob:IsA("Model") and mob:FindFirstChild("HumanoidRootPart") then
                        -- Obtener la posición del mob
                        local mobPosition = mob.HumanoidRootPart.Position

                        -- Calcular la distancia entre el jugador y el mob
                        local distance = (mobPosition - playerPosition).magnitude

                        -- Si el mob está dentro del radio de 500 bloques, lo añadimos a la lista
                        if distance <= config.DETECTION_RANGE then
                            table.insert(mobList, mob.Name)
                        end
                    end
                end
            end

            Dropdown:SetValues(mobList) -- Actualizamos el Dropdown con la nueva lista
            print("Mob list updated:", mobList)
        end

        -- Crear el botón Reset DropDown
        Tabs.Main:AddButton(
            {
                Title = "Reset DropDown",
                Description = "Reset Mob Farm",
                Callback = function()
                    updateMobList() -- Actualizamos la lista de mobs cuando se presiona el botón
                    print("Mob list has been reset and updated.")

                    -- Si el toggle está activado, desactivarlo para detener el teletransporte
                    if teleporting then
                        Toggle:SetValue(false) -- Desactivar el toggle
                    end

                    -- Si el mob seleccionado ya no está en la lista, resetearlo
                    if targetMob and not workspace.Live:FindFirstChild(targetMob.Name) then
                        targetMob = nil
                        print("Target mob has been reset.")
                    end
                end
            }
        )

        spawn(
            function()
                while true do
                    wait(60)
                    updateMobList()
                end
            end
        )

        -- Variables para gestionar el teletransporte
        local teleporting = false
        local targetMob = nil

        -- Cuando el valor del Dropdown cambie
        Dropdown:OnChanged(
            function(Value)
                targetMob = workspace.Live:FindFirstChild(Value) -- Buscar el mob seleccionado por nombre
                print("Dropdown changed:", Value)
                if targetMob then
                    print("Target Mob found:", targetMob.Name)
                else
                    print("Target Mob not found.")
                end
            end
        )

        -- Función para teletransportarse detrás del mob (a una distancia de 4 bloques)
        local function teleportBehind(mob, distance)
            local humanoidRootPart = mob:FindFirstChild("HumanoidRootPart")
            local playerHRP = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart and playerHRP then
                -- Calcular la nueva posición 4 bloques detrás del mob
                local direction = humanoidRootPart.CFrame.LookVector * -config.TELEPORT_DISTANCE_BEHIND -- Hacia atrás (inverso)
                local newPosition = humanoidRootPart.Position + direction * distance
                playerHRP.CFrame = CFrame.new(newPosition) -- Teletransportar al jugador
            end
        end

        -- Crear el Toggle para activar el teletransporte
        local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Teleport To Mob", Default = false})

        Toggle:OnChanged(
            function()
                teleporting = Toggle.Value -- Utilizamos directamente Toggle.Value para acceder al estado
                print("Teleporting changed:", teleporting)

                -- Bucle de teletransporte
                if teleporting then
                    -- Bucle de teletransporte detrás del mob
                    spawn(
                        function()
                            -- Utilizamos spawn para evitar bloqueo del hilo principal
                            while teleporting and targetMob do
                                if player.Character and targetMob:FindFirstChild("HumanoidRootPart") then
                                    -- Realizar el teletransporte detrás del mob
                                    teleportBehind(targetMob, config.TELEPORT_DISTANCE_BEHIND) -- 4 es la distancia que te teletransportas hacia atrás

                                    -- Esperar un poco antes de la siguiente iteración
                                    wait(1)
                                end
                            end
                        end
                    )
                end
            end
        )

        local Toggle = Tabs.FarmSettings:AddToggle("MyToggle", {Title = "Kill Aura [Clicker]", Default = false})

        local intervalo = 0.6 -- Tiempo entre clics en segundos
        local player = game:GetService("Players").LocalPlayer -- Obtiene al jugador local
        local mouse = player:GetMouse() -- Obtiene el mouse del jugador

        local activo = false -- Controla si el Kill Aura está activado

        -- Función para hacer clic automáticamente
        local function hacerClick()
            while activo do
                -- Simula un clic izquierdo del mouse
                mouse1click()
                wait(intervalo) -- Espera antes de hacer otro clic
            end
        end

        -- Conectar el toggle para cambiar el estado
        Toggle:OnChanged(
            function()
                if Toggle.Value then
                    -- Si el toggle está activado
                    activo = true
                    hacerClick() -- Inicia la función de clic
                else
                    -- Si el toggle está desactivado
                    activo = false
                end
            end
        )

        Tabs.Main:AddParagraph(
            {
                Title = "Exclude Mobs",
                Content = "storm, False Clone, quincy,vasto, Soul Reaper, Human Soul"
            }
        )

        local Toggle =
            Tabs.Main:AddToggle("MyToggle", {Title = "Smart Mob Teleporter [Whit Exclude Mobs]", Default = false})

        local player = game:GetService("Players").LocalPlayer
        local liveFolder = workspace:WaitForChild("Live")
        local effectsFolder = workspace:WaitForChild("Effects")
        local currentTarget = nil
        local teleportLoop = nil
        local teleportStartTime = 0
        local PLATFORM_WAIT_TIME = 1.7 -- Tiempo en la plataforma (espera 3 segundos)
        local ENEMY_WAIT_TIME = 5 -- Tiempo en el enemigo (espera 5 segundos)
        local TELEPORT_DISTANCE_BEHIND = 7.4 -- Distancia detrás del enemigo
        local TELEPORT_INTERVAL = 0.2 -- Tiempo entre cada teletransporte hacia el enemigo

        -- Nueva variable de rango de detección
        local DETECTION_RANGE = 100000

        local function getPlayerHRP()
            local character = player.Character or player.CharacterAdded:Wait()
            return character and character:FindFirstChild("HumanoidRootPart")
        end

        local function isPlayerModel(model)
            if model:FindFirstChild("Humanoid") then
                for _, plr in ipairs(game:GetService("Players"):GetPlayers()) do
                    if plr.Character == model then
                        return true
                    end
                end
            end
            return false
        end
        local EXCLUDED_NAMES = {"storm", "soulreaper", "soul reaper", "quincy", "vasto", "human"}

        local function shouldIgnoreModel(modelName)
            local lowerName = modelName:lower() -- Convertir el nombre a minúsculas para comparación
            for _, excludedName in ipairs(EXCLUDED_NAMES) do
                if lowerName:find(excludedName:lower()) then
                    return true
                end
            end
            return false
        end

        local function getClosestNonPlayerModel()
            local playerHRP = getPlayerHRP()
            if not playerHRP then
                return nil
            end

            local closestModel = nil
            local shortestDistance = math.huge

            for _, model in ipairs(liveFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= config.DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            for _, model in ipairs(effectsFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= config.DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            return closestModel
        end

        local function isEnemyDead(enemy)
            if enemy and enemy:FindFirstChild("Humanoid") then
                return enemy.Humanoid.Health <= 0
            end
            return false
        end

        local function handleEnemyDeath()
            if currentTarget then
                if not currentTarget.Parent or isEnemyDead(currentTarget) then
                    currentTarget = getClosestNonPlayerModel() -- Buscar otro enemigo cercano
                end
            end
        end

        local function createPlatform(position)
            if platform then
                platform:Destroy()
            end
            platform = Instance.new("Part")
            platform.Size = Vector3.new(30, 5, 30)
            platform.Anchored = true
            platform.Position = position - Vector3.new(0, 5, 0)
            platform.Parent = workspace
        end

        local function teleportToTarget()
            local playerHRP = getPlayerHRP()
            if currentTarget and playerHRP and currentTarget.Parent == liveFolder then
                local targetHRP = currentTarget.HumanoidRootPart
                -- Colocar al jugador detrás del enemigo en el eje X (negativo)
                local directionBehind =
                    targetHRP.Position + targetHRP.CFrame.LookVector * -config.TELEPORT_DISTANCE_BEHIND
                -- Apuntar al enemigo usando CFrame.lookAt
                playerHRP.CFrame = CFrame.lookAt(directionBehind, targetHRP.Position)
            end
        end

        local function liftPlayerAboveTarget()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local liftPosition = playerHRP.Position + Vector3.new(0, 25, 0) -- Elevar 25 bloques arriba
                playerHRP.CFrame = CFrame.new(liftPosition)
                createPlatform(playerHRP.Position)
                task.wait(PLATFORM_WAIT_TIME) -- Espera 3 segundos sobre la plataforma
                teleportStartTime = tick() -- Resetear el tiempo de teleportación
            end
        end

        local function teleportAbovePlatform()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local platformPosition = platform.Position
                -- Primer teleport 15 bloques arriba de la plataforma
                local firstTeleportPosition = platformPosition + Vector3.new(0, 15, 0)
                playerHRP.CFrame = CFrame.new(firstTeleportPosition)
                task.wait(0.2) -- Breve pausa para estabilizar el primer teleport

                -- Segundo teleport justo 10 bloques arriba de la plataforma
                local secondTeleportPosition = platformPosition + Vector3.new(0, 10, 0)
                playerHRP.CFrame = CFrame.new(secondTeleportPosition)
                task.wait(PLATFORM_WAIT_TIME) -- Espera en la plataforma
            end
        end

        local function checkPlayerHealth()
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            return humanoid and humanoid.Health > 0
        end

        local function checkEnemyHealth(target)
            local humanoid = target:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health <= 0 then
                return true
            end
            return false
        end

        local function destroyInvalidOrDeadEnemies()
            local workspaceChildren = game.Workspace:GetChildren()
            for _, child in ipairs(workspaceChildren) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health <= 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function destroyDeadEnemiesInFolder(folder)
            for _, child in ipairs(folder:GetChildren()) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health == 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function periodicEnemyCheck()
            -- Se ejecutará cada 5 segundos
            while true do
                task.wait(5) -- Espera 5 segundos
                destroyInvalidOrDeadEnemies() -- Llamada para destruir enemigos muertos o inválidos
            end
        end

        -- Inicia la revisión periódica de enemigos
        task.spawn(periodicEnemyCheck)

        -- Definir las ubicaciones cercanas
        local positions = {
            Vector3.new(-532.3831176757812, 42.32876968383789, 407.6156005859375),
            Vector3.new(58.15175247192383, 39.1838264465332, 579.2676391601562),
            Vector3.new(-869.245849609375, 35.34645080566406, -246.09518432617188),
            Vector3.new(-1491.023193359375, 29.50098991394043, 335.7403869628906),
            Vector3.new(-2692.048095703125, 29.95313835144043, -289.6583557128906),
            Vector3.new(-17.32839012145996, 34.406776428222656, -789.6526489257812),
            Vector3.new(50.98515319824219, 18.398717880249023, -457.7726135253906),
            Vector3.new(-1947, -13, 2301),
            Vector3.new(-736, -25, 2129),
            Vector3.new(-2543, -33, 2103),
            Vector3.new(-2784, 78, 1939),
            Vector3.new(-1494, -37, 2035)
        }

        -- Generar posiciones aleatorias cercanas
        local function getRandomNearbyPosition(basePosition)
            local offsetX = math.random(-100, 100) -- Rango alto de aleatoriedad en X
            local offsetY = math.random(-20, 20) -- Aleatoriedad en Y moderada para mantener estabilidad
            local offsetZ = math.random(-100, 100) -- Rango alto de aleatoriedad en Z

            return basePosition + Vector3.new(offsetX, offsetY, offsetZ)
        end

        local function teleportToRandomNearbyLocation()
            local randomPosition = getRandomNearbyPosition(positions[math.random(1, #positions)])
            local playerHRP = getPlayerHRP()
            if playerHRP then
                playerHRP.CFrame = CFrame.new(randomPosition)
            end
        end

        local function startTeleporting()
            if not teleportLoop then
                teleportLoop =
                    task.spawn(
                    function()
                        teleportStartTime = tick()
                        currentTarget = getClosestNonPlayerModel()
                        while Toggle.Value do
                            handleEnemyDeath()

                            if not checkPlayerHealth() then
                                print("Player at 0 health, scanning for new targets...")
                                currentTarget = getClosestNonPlayerModel()
                                task.wait(1)
                            end

                            if currentTarget then
                                if checkEnemyHealth(currentTarget) then
                                    print("Enemy died or was destroyed, searching for another target...")
                                    currentTarget = getClosestNonPlayerModel()
                                    teleportStartTime = tick()
                                else
                                    local timeInEnemy = tick() - teleportStartTime
                                    if timeInEnemy < ENEMY_WAIT_TIME then
                                        teleportToTarget()
                                        task.wait(config.TELEPORT_INTERVAL)
                                    elseif timeInEnemy >= ENEMY_WAIT_TIME then
                                        liftPlayerAboveTarget()
                                        task.wait(PLATFORM_WAIT_TIME)
                                        teleportStartTime = tick()
                                    end
                                end
                            else
                                print("No valid enemy found, teleporting to random location...")
                                teleportToRandomNearbyLocation()
                                task.wait(5)
                            end

                            currentTarget = getClosestNonPlayerModel()

                            task.wait(0.1)
                        end
                    end
                )
            end
        end

        Toggle:OnChanged(
            function()
                if Toggle.Value then
                    startTeleporting()
                else
                    if teleportLoop then
                        teleportLoop = nil
                    end
                end
            end
        )

        Tabs.Main:AddParagraph(
            {
                Title = "ALL MOBS",
                Content = "no excluded Mobs \n The only excluded mob is Huzuni (FakeDestroyMob 1% HP)"
            }
        )

        local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Smart Mob Teleporter [ALL]", Default = false})

        local player = game:GetService("Players").LocalPlayer
        local liveFolder = workspace:WaitForChild("Live")
        local effectsFolder = workspace:WaitForChild("Effects")
        local currentTarget = nil
        local teleportLoop = nil
        local teleportStartTime = 0
        local PLATFORM_WAIT_TIME = 1.7 -- Tiempo en la plataforma (espera 3 segundos)
        local ENEMY_WAIT_TIME = 5 -- Tiempo en el enemigo (espera 5 segundos)
        local TELEPORT_DISTANCE_BEHIND = 7.4 -- Distancia detrás del enemigo
        local TELEPORT_INTERVAL = 0.2 -- Tiempo entre cada teletransporte hacia el enemigo

        -- Nueva variable de rango de detección
        local DETECTION_RANGE = 100000

        local function getPlayerHRP()
            local character = player.Character or player.CharacterAdded:Wait()
            return character and character:FindFirstChild("HumanoidRootPart")
        end

        local function isPlayerModel(model)
            if model:FindFirstChild("Humanoid") then
                for _, plr in ipairs(game:GetService("Players"):GetPlayers()) do
                    if plr.Character == model then
                        return true
                    end
                end
            end
            return false
        end
        local EXCLUDED_NAMES = {}

        local function shouldIgnoreModel(modelName)
            local lowerName = modelName:lower() -- Convertir el nombre a minúsculas para comparación
            for _, excludedName in ipairs(EXCLUDED_NAMES) do
                if lowerName:find(excludedName:lower()) then
                    return true
                end
            end
            return false
        end

        local function getClosestNonPlayerModel()
            local playerHRP = getPlayerHRP()
            if not playerHRP then
                return nil
            end

            local closestModel = nil
            local shortestDistance = math.huge

            for _, model in ipairs(liveFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= config.DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            for _, model in ipairs(effectsFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= config.DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            return closestModel
        end

        local function isEnemyDead(enemy)
            if enemy and enemy:FindFirstChild("Humanoid") then
                return enemy.Humanoid.Health <= 0
            end
            return false
        end

        local function handleEnemyDeath()
            if currentTarget then
                if not currentTarget.Parent or isEnemyDead(currentTarget) then
                    currentTarget = getClosestNonPlayerModel() -- Buscar otro enemigo cercano
                end
            end
        end

        local function createPlatform(position)
            if platform then
                platform:Destroy()
            end
            platform = Instance.new("Part")
            platform.Size = Vector3.new(30, 5, 30)
            platform.Anchored = true
            platform.Position = position - Vector3.new(0, 5, 0)
            platform.Parent = workspace
        end

        local function teleportToTarget()
            local playerHRP = getPlayerHRP()
            if currentTarget and playerHRP and currentTarget.Parent == liveFolder then
                local targetHRP = currentTarget.HumanoidRootPart
                -- Colocar al jugador detrás del enemigo en el eje X (negativo)
                local directionBehind =
                    targetHRP.Position + targetHRP.CFrame.LookVector * -config.TELEPORT_DISTANCE_BEHIND
                -- Apuntar al enemigo usando CFrame.lookAt
                playerHRP.CFrame = CFrame.lookAt(directionBehind, targetHRP.Position)
            end
        end

        local function liftPlayerAboveTarget()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local liftPosition = playerHRP.Position + Vector3.new(0, 25, 0) -- Elevar 25 bloques arriba
                playerHRP.CFrame = CFrame.new(liftPosition)
                createPlatform(playerHRP.Position)
                task.wait(PLATFORM_WAIT_TIME) -- Espera 3 segundos sobre la plataforma
                teleportStartTime = tick() -- Resetear el tiempo de teleportación
            end
        end

        local function teleportAbovePlatform()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local platformPosition = platform.Position
                -- Primer teleport 15 bloques arriba de la plataforma
                local firstTeleportPosition = platformPosition + Vector3.new(0, 15, 0)
                playerHRP.CFrame = CFrame.new(firstTeleportPosition)
                task.wait(0.2) -- Breve pausa para estabilizar el primer teleport

                -- Segundo teleport justo 10 bloques arriba de la plataforma
                local secondTeleportPosition = platformPosition + Vector3.new(0, 10, 0)
                playerHRP.CFrame = CFrame.new(secondTeleportPosition)
                task.wait(PLATFORM_WAIT_TIME) -- Espera en la plataforma
            end
        end

        local function checkPlayerHealth()
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            return humanoid and humanoid.Health > 0
        end

        local function checkEnemyHealth(target)
            local humanoid = target:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health <= 0 then
                return true
            end
            return false
        end

        local function destroyInvalidOrDeadEnemies()
            local workspaceChildren = game.Workspace:GetChildren()
            for _, child in ipairs(workspaceChildren) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health <= 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function destroyDeadEnemiesInFolder(folder)
            for _, child in ipairs(folder:GetChildren()) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health == 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function periodicEnemyCheck()
            -- Se ejecutará cada 5 segundos
            while true do
                task.wait(5) -- Espera 5 segundos
                destroyInvalidOrDeadEnemies() -- Llamada para destruir enemigos muertos o inválidos
            end
        end

        -- Inicia la revisión periódica de enemigos
        task.spawn(periodicEnemyCheck)

        -- Definir las ubicaciones cercanas
        local positions = {
            Vector3.new(-532.3831176757812, 42.32876968383789, 407.6156005859375),
            Vector3.new(58.15175247192383, 39.1838264465332, 579.2676391601562),
            Vector3.new(-869.245849609375, 35.34645080566406, -246.09518432617188),
            Vector3.new(-1491.023193359375, 29.50098991394043, 335.7403869628906),
            Vector3.new(-2692.048095703125, 29.95313835144043, -289.6583557128906),
            Vector3.new(-17.32839012145996, 34.406776428222656, -789.6526489257812),
            Vector3.new(50.98515319824219, 18.398717880249023, -457.7726135253906),
            Vector3.new(-1947, -13, 2301),
            Vector3.new(-736, -25, 2129),
            Vector3.new(-2543, -33, 2103),
            Vector3.new(-2784, 78, 1939),
            Vector3.new(-1494, -37, 2035)
        }

        -- Generar posiciones aleatorias cercanas
        local function getRandomNearbyPosition(basePosition)
            local offsetX = math.random(-100, 100) -- Rango alto de aleatoriedad en X
            local offsetY = math.random(-20, 20) -- Aleatoriedad en Y moderada para mantener estabilidad
            local offsetZ = math.random(-100, 100) -- Rango alto de aleatoriedad en Z

            return basePosition + Vector3.new(offsetX, offsetY, offsetZ)
        end

        local function teleportToRandomNearbyLocation()
            local randomPosition = getRandomNearbyPosition(positions[math.random(1, #positions)])
            local playerHRP = getPlayerHRP()
            if playerHRP then
                playerHRP.CFrame = CFrame.new(randomPosition)
            end
        end

        local function startTeleporting()
            if not teleportLoop then
                teleportLoop =
                    task.spawn(
                    function()
                        teleportStartTime = tick()
                        currentTarget = getClosestNonPlayerModel()
                        while Toggle.Value do
                            handleEnemyDeath()

                            if not checkPlayerHealth() then
                                print("Player at 0 health, scanning for new targets...")
                                currentTarget = getClosestNonPlayerModel()
                                task.wait(1)
                            end

                            if currentTarget then
                                if checkEnemyHealth(currentTarget) then
                                    print("Enemy died or was destroyed, searching for another target...")
                                    currentTarget = getClosestNonPlayerModel()
                                    teleportStartTime = tick()
                                else
                                    local timeInEnemy = tick() - teleportStartTime
                                    if timeInEnemy < ENEMY_WAIT_TIME then
                                        teleportToTarget()
                                        task.wait(config.TELEPORT_INTERVAL)
                                    elseif timeInEnemy >= ENEMY_WAIT_TIME then
                                        liftPlayerAboveTarget()
                                        task.wait(PLATFORM_WAIT_TIME)
                                        teleportStartTime = tick()
                                    end
                                end
                            else
                                print("No valid enemy found, teleporting to random location...")
                                teleportToRandomNearbyLocation()
                                task.wait(5)
                            end

                            currentTarget = getClosestNonPlayerModel()

                            task.wait(0.1)
                        end
                    end
                )
            end
        end

        Toggle:OnChanged(
            function()
                if Toggle.Value then
                    startTeleporting()
                else
                    if teleportLoop then
                        teleportLoop = nil
                    end
                end
            end
        )

        local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Farm RedEye", Default = false})

        local player = game:GetService("Players").LocalPlayer
        local liveFolder = workspace:WaitForChild("Live")
        local effectsFolder = workspace:WaitForChild("Effects")
        local currentTarget = nil
        local teleportLoop = nil
        local teleportStartTime = 0
        local PLATFORM_WAIT_TIME = 1.7 -- Tiempo en la plataforma (espera 3 segundos)
        local ENEMY_WAIT_TIME = 5 -- Tiempo en el enemigo (espera 5 segundos)
        local TELEPORT_DISTANCE_BEHIND = 7.4 -- Distancia detrás del enemigo
        local TELEPORT_INTERVAL = 0.2 -- Tiempo entre cada teletransporte hacia el enemigo

        -- Nueva variable de rango de detección
        local DETECTION_RANGE = 100000

        local function getPlayerHRP()
            local character = player.Character or player.CharacterAdded:Wait()
            return character and character:FindFirstChild("HumanoidRootPart")
        end

        local function isPlayerModel(model)
            if model:FindFirstChild("Humanoid") then
                for _, plr in ipairs(game:GetService("Players"):GetPlayers()) do
                    if plr.Character == model then
                        return true
                    end
                end
            end
            return false
        end
        local EXCLUDED_NAMES = {
            "storm",
            "soulreaper",
            "soul reaper",
            "quincy",
            "normalhollow",
            "menos",
            "human",
            "huzuni",
            "vasto",
            "adjucha"
        }

        local function shouldIgnoreModel(modelName)
            local lowerName = modelName:lower() -- Convertir el nombre a minúsculas para comparación
            for _, excludedName in ipairs(EXCLUDED_NAMES) do
                if lowerName:find(excludedName:lower()) then
                    return true
                end
            end
            return false
        end
        local function getClosestNonPlayerModel()
            local playerHRP = getPlayerHRP()
            if not playerHRP then
                return nil
            end

            local closestModel = nil
            local shortestDistance = math.huge

            for _, model in ipairs(liveFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= config.DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            for _, model in ipairs(effectsFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= config.DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            return closestModel
        end

        local function isEnemyDead(enemy)
            if enemy and enemy:FindFirstChild("Humanoid") then
                return enemy.Humanoid.Health <= 0
            end
            return false
        end

        local function handleEnemyDeath()
            if currentTarget then
                if not currentTarget.Parent or isEnemyDead(currentTarget) then
                    currentTarget = getClosestNonPlayerModel() -- Buscar otro enemigo cercano
                end
            end
        end

        local function createPlatform(position)
            if platform then
                platform:Destroy()
            end
            platform = Instance.new("Part")
            platform.Size = Vector3.new(30, 5, 30)
            platform.Anchored = true
            platform.Position = position - Vector3.new(0, 5, 0)
            platform.Parent = workspace
        end
        local function teleportToTarget()
            local playerHRP = getPlayerHRP()
            if currentTarget and playerHRP and currentTarget.Parent == liveFolder then
                local targetHRP = currentTarget.HumanoidRootPart
                -- Colocar al jugador detrás del enemigo en el eje X (negativo)
                local directionBehind =
                    targetHRP.Position + targetHRP.CFrame.LookVector * -config.TELEPORT_DISTANCE_BEHIND
                -- Apuntar al enemigo usando CFrame.lookAt
                playerHRP.CFrame = CFrame.lookAt(directionBehind, targetHRP.Position)
            end
        end

        local function liftPlayerAboveTarget()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local liftPosition = playerHRP.Position + Vector3.new(0, 25, 0) -- Elevar 25 bloques arriba
                playerHRP.CFrame = CFrame.new(liftPosition)
                createPlatform(playerHRP.Position)
                task.wait(PLATFORM_WAIT_TIME) -- Espera 3 segundos sobre la plataforma
                teleportStartTime = tick() -- Resetear el tiempo de teleportación
            end
        end

        local function teleportAbovePlatform()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local platformPosition = platform.Position
                -- Primer teleport 15 bloques arriba de la plataforma
                local firstTeleportPosition = platformPosition + Vector3.new(0, 15, 0)
                playerHRP.CFrame = CFrame.new(firstTeleportPosition)
                task.wait(0.2) -- Breve pausa para estabilizar el primer teleport

                -- Segundo teleport justo 10 bloques arriba de la plataforma
                local secondTeleportPosition = platformPosition + Vector3.new(0, 10, 0)
                playerHRP.CFrame = CFrame.new(secondTeleportPosition)
                task.wait(PLATFORM_WAIT_TIME) -- Espera en la plataforma
            end
        end

        local function checkPlayerHealth()
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            return humanoid and humanoid.Health > 0
        end

        local function checkEnemyHealth(target)
            local humanoid = target:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health <= 0 then
                return true
            end
            return false
        end

        local function destroyInvalidOrDeadEnemies()
            local workspaceChildren = game.Workspace:GetChildren()
            for _, child in ipairs(workspaceChildren) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health <= 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function destroyDeadEnemiesInFolder(folder)
            for _, child in ipairs(folder:GetChildren()) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health == 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function periodicEnemyCheck()
            -- Se ejecutará cada 5 segundos
            while true do
                task.wait(5) -- Espera 5 segundos
                destroyInvalidOrDeadEnemies() -- Llamada para destruir enemigos muertos o inválidos
            end
        end

        -- Inicia la revisión periódica de enemigos
        task.spawn(periodicEnemyCheck)

        -- Definir las ubicaciones cercanas
        local positions = {
            Vector3.new(-532.3831176757812, 42.32876968383789, 407.6156005859375),
            Vector3.new(58.15175247192383, 39.1838264465332, 579.2676391601562),
            Vector3.new(-869.245849609375, 35.34645080566406, -246.09518432617188),
            Vector3.new(-1491.023193359375, 29.50098991394043, 335.7403869628906),
            Vector3.new(-2692.048095703125, 29.95313835144043, -289.6583557128906),
            Vector3.new(-17.32839012145996, 34.406776428222656, -789.6526489257812),
            Vector3.new(50.98515319824219, 18.398717880249023, -457.7726135253906),
            Vector3.new(-1947, -13, 2301),
            Vector3.new(-736, -25, 2129),
            Vector3.new(-2543, -33, 2103),
            Vector3.new(-2784, 78, 1939),
            Vector3.new(-1494, -37, 2035)
        }

        -- Generar posiciones aleatorias cercanas
        local function getRandomNearbyPosition(basePosition)
            local offsetX = math.random(-100, 100) -- Rango alto de aleatoriedad en X
            local offsetY = math.random(-20, 20) -- Aleatoriedad en Y moderada para mantener estabilidad
            local offsetZ = math.random(-100, 100) -- Rango alto de aleatoriedad en Z

            return basePosition + Vector3.new(offsetX, offsetY, offsetZ)
        end

        local function teleportToRandomNearbyLocation()
            local randomPosition = getRandomNearbyPosition(positions[math.random(1, #positions)])
            local playerHRP = getPlayerHRP()
            if playerHRP then
                playerHRP.CFrame = CFrame.new(randomPosition)
            end
        end

        local function startTeleporting()
            if not teleportLoop then
                teleportLoop =
                    task.spawn(
                    function()
                        teleportStartTime = tick()
                        currentTarget = getClosestNonPlayerModel()
                        while Toggle.Value do
                            handleEnemyDeath()

                            if not checkPlayerHealth() then
                                print("Player at 0 health, scanning for new targets...")
                                currentTarget = getClosestNonPlayerModel()
                                task.wait(1)
                            end

                            if currentTarget then
                                if checkEnemyHealth(currentTarget) then
                                    print("Enemy died or was destroyed, searching for another target...")
                                    currentTarget = getClosestNonPlayerModel()
                                    teleportStartTime = tick()
                                else
                                    local timeInEnemy = tick() - teleportStartTime
                                    if timeInEnemy < ENEMY_WAIT_TIME then
                                        teleportToTarget()
                                        task.wait(config.TELEPORT_INTERVAL)
                                    elseif timeInEnemy >= ENEMY_WAIT_TIME then
                                        liftPlayerAboveTarget()
                                        task.wait(PLATFORM_WAIT_TIME)
                                        teleportStartTime = tick()
                                    end
                                end
                            else
                                print("No valid enemy found, teleporting to random location...")
                                teleportToRandomNearbyLocation()
                                task.wait(5)
                            end

                            currentTarget = getClosestNonPlayerModel()

                            task.wait(0.1)
                        end
                    end
                )
            end
        end

        Toggle:OnChanged(
            function()
                if Toggle.Value then
                    startTeleporting()
                else
                    if teleportLoop then
                        teleportLoop = nil
                    end
                end
            end
        )

        local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Farm Adjucha", Default = false})

        local player = game:GetService("Players").LocalPlayer
        local liveFolder = workspace:WaitForChild("Live")
        local effectsFolder = workspace:WaitForChild("Effects")
        local currentTarget = nil
        local teleportLoop = nil
        local teleportStartTime = 0
        local PLATFORM_WAIT_TIME = 1.7 -- Tiempo en la plataforma (espera 3 segundos)
        local ENEMY_WAIT_TIME = 5 -- Tiempo en el enemigo (espera 5 segundos)
        local TELEPORT_DISTANCE_BEHIND = 7.4 -- Distancia detrás del enemigo
        local TELEPORT_INTERVAL = 0.2 -- Tiempo entre cada teletransporte hacia el enemigo

        -- Nueva variable de rango de detección
        local DETECTION_RANGE = 100000

        local function getPlayerHRP()
            local character = player.Character or player.CharacterAdded:Wait()
            return character and character:FindFirstChild("HumanoidRootPart")
        end

        local function isPlayerModel(model)
            if model:FindFirstChild("Humanoid") then
                for _, plr in ipairs(game:GetService("Players"):GetPlayers()) do
                    if plr.Character == model then
                        return true
                    end
                end
            end
            return false
        end
        local EXCLUDED_NAMES = {
            "storm",
            "soulreaper",
            "soul reaper",
            "quincy",
            "normalhollow",
            "redeye",
            "menos",
            "human",
            "huzuni",
            "vasto"
        }

        local function shouldIgnoreModel(modelName)
            local lowerName = modelName:lower() -- Convertir el nombre a minúsculas para comparación
            for _, excludedName in ipairs(EXCLUDED_NAMES) do
                if lowerName:find(excludedName:lower()) then
                    return true
                end
            end
            return false
        end

        local function getClosestNonPlayerModel()
            local playerHRP = getPlayerHRP()
            if not playerHRP then
                return nil
            end

            local closestModel = nil
            local shortestDistance = math.huge

            for _, model in ipairs(liveFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= config.DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            for _, model in ipairs(effectsFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= config.DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            return closestModel
        end

        local function isEnemyDead(enemy)
            if enemy and enemy:FindFirstChild("Humanoid") then
                return enemy.Humanoid.Health <= 0
            end
            return false
        end

        local function handleEnemyDeath()
            if currentTarget then
                if not currentTarget.Parent or isEnemyDead(currentTarget) then
                    currentTarget = getClosestNonPlayerModel() -- Buscar otro enemigo cercano
                end
            end
        end

        local function createPlatform(position)
            if platform then
                platform:Destroy()
            end
            platform = Instance.new("Part")
            platform.Size = Vector3.new(30, 5, 30)
            platform.Anchored = true
            platform.Position = position - Vector3.new(0, 5, 0)
            platform.Parent = workspace
        end

        local function teleportToTarget()
            local playerHRP = getPlayerHRP()
            if currentTarget and playerHRP and currentTarget.Parent == liveFolder then
                local targetHRP = currentTarget.HumanoidRootPart
                -- Colocar al jugador detrás del enemigo en el eje X (negativo)
                local directionBehind =
                    targetHRP.Position + targetHRP.CFrame.LookVector * -config.TELEPORT_DISTANCE_BEHIND
                -- Apuntar al enemigo usando CFrame.lookAt
                playerHRP.CFrame = CFrame.lookAt(directionBehind, targetHRP.Position)
            end
        end

        local function liftPlayerAboveTarget()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local liftPosition = playerHRP.Position + Vector3.new(0, 25, 0) -- Elevar 25 bloques arriba
                playerHRP.CFrame = CFrame.new(liftPosition)
                createPlatform(playerHRP.Position)
                task.wait(PLATFORM_WAIT_TIME) -- Espera 3 segundos sobre la plataforma
                teleportStartTime = tick() -- Resetear el tiempo de teleportación
            end
        end

        local function teleportAbovePlatform()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local platformPosition = platform.Position
                -- Primer teleport 15 bloques arriba de la plataforma
                local firstTeleportPosition = platformPosition + Vector3.new(0, 15, 0)
                playerHRP.CFrame = CFrame.new(firstTeleportPosition)
                task.wait(0.2) -- Breve pausa para estabilizar el primer teleport

                -- Segundo teleport justo 10 bloques arriba de la plataforma
                local secondTeleportPosition = platformPosition + Vector3.new(0, 10, 0)
                playerHRP.CFrame = CFrame.new(secondTeleportPosition)
                task.wait(PLATFORM_WAIT_TIME) -- Espera en la plataforma
            end
        end

        local function checkPlayerHealth()
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            return humanoid and humanoid.Health > 0
        end

        local function checkEnemyHealth(target)
            local humanoid = target:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health <= 0 then
                return true
            end
            return false
        end

        local function destroyInvalidOrDeadEnemies()
            local workspaceChildren = game.Workspace:GetChildren()
            for _, child in ipairs(workspaceChildren) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health <= 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function destroyDeadEnemiesInFolder(folder)
            for _, child in ipairs(folder:GetChildren()) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health == 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function periodicEnemyCheck()
            -- Se ejecutará cada 5 segundos
            while true do
                task.wait(5) -- Espera 5 segundos
                destroyInvalidOrDeadEnemies() -- Llamada para destruir enemigos muertos o inválidos
            end
        end

        -- Inicia la revisión periódica de enemigos
        task.spawn(periodicEnemyCheck)

        -- Definir las ubicaciones cercanas
        local positions = {
            Vector3.new(-532.3831176757812, 42.32876968383789, 407.6156005859375),
            Vector3.new(58.15175247192383, 39.1838264465332, 579.2676391601562),
            Vector3.new(-869.245849609375, 35.34645080566406, -246.09518432617188),
            Vector3.new(-1491.023193359375, 29.50098991394043, 335.7403869628906),
            Vector3.new(-2692.048095703125, 29.95313835144043, -289.6583557128906),
            Vector3.new(-17.32839012145996, 34.406776428222656, -789.6526489257812),
            Vector3.new(50.98515319824219, 18.398717880249023, -457.7726135253906),
            Vector3.new(-1947, -13, 2301),
            Vector3.new(-736, -25, 2129),
            Vector3.new(-2543, -33, 2103),
            Vector3.new(-2784, 78, 1939),
            Vector3.new(-1494, -37, 2035)
        }

        -- Generar posiciones aleatorias cercanas
        local function getRandomNearbyPosition(basePosition)
            local offsetX = math.random(-100, 100) -- Rango alto de aleatoriedad en X
            local offsetY = math.random(-20, 20) -- Aleatoriedad en Y moderada para mantener estabilidad
            local offsetZ = math.random(-100, 100) -- Rango alto de aleatoriedad en Z

            return basePosition + Vector3.new(offsetX, offsetY, offsetZ)
        end

        local function teleportToRandomNearbyLocation()
            local randomPosition = getRandomNearbyPosition(positions[math.random(1, #positions)])
            local playerHRP = getPlayerHRP()
            if playerHRP then
                playerHRP.CFrame = CFrame.new(randomPosition)
            end
        end

        local function startTeleporting()
            if not teleportLoop then
                teleportLoop =
                    task.spawn(
                    function()
                        teleportStartTime = tick()
                        currentTarget = getClosestNonPlayerModel()
                        while Toggle.Value do
                            handleEnemyDeath()

                            if not checkPlayerHealth() then
                                print("Player at 0 health, scanning for new targets...")
                                currentTarget = getClosestNonPlayerModel()
                                task.wait(1)
                            end

                            if currentTarget then
                                if checkEnemyHealth(currentTarget) then
                                    print("Enemy died or was destroyed, searching for another target...")
                                    currentTarget = getClosestNonPlayerModel()
                                    teleportStartTime = tick()
                                else
                                    local timeInEnemy = tick() - teleportStartTime
                                    if timeInEnemy < ENEMY_WAIT_TIME then
                                        teleportToTarget()
                                        task.wait(config.TELEPORT_INTERVAL)
                                    elseif timeInEnemy >= ENEMY_WAIT_TIME then
                                        liftPlayerAboveTarget()
                                        task.wait(PLATFORM_WAIT_TIME)
                                        teleportStartTime = tick()
                                    end
                                end
                            else
                                print("No valid enemy found, teleporting to random location...")
                                teleportToRandomNearbyLocation()
                                task.wait(5)
                            end

                            currentTarget = getClosestNonPlayerModel()

                            task.wait(0.1)
                        end
                    end
                )
            end
        end

        Toggle:OnChanged(
            function()
                if Toggle.Value then
                    startTeleporting()
                else
                    if teleportLoop then
                        teleportLoop = nil
                    end
                end
            end
        )

        local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Farm VastoHollow", Default = false})

        local player = game:GetService("Players").LocalPlayer
        local liveFolder = workspace:WaitForChild("Live")
        local effectsFolder = workspace:WaitForChild("Effects")
        local currentTarget = nil
        local teleportLoop = nil
        local teleportStartTime = 0
        local PLATFORM_WAIT_TIME = 1.7 -- Tiempo en la plataforma (espera 3 segundos)
        local ENEMY_WAIT_TIME = 5 -- Tiempo en el enemigo (espera 5 segundos)
        local TELEPORT_DISTANCE_BEHIND = 8 -- Distancia detrás del enemigo
        local TELEPORT_INTERVAL = 0.2 -- Tiempo entre cada teletransporte hacia el enemigo

        -- Nueva variable de rango de detección
        local DETECTION_RANGE = 100000

        local function getPlayerHRP()
            local character = player.Character or player.CharacterAdded:Wait()
            return character and character:FindFirstChild("HumanoidRootPart")
        end

        local function isPlayerModel(model)
            if model:FindFirstChild("Humanoid") then
                for _, plr in ipairs(game:GetService("Players"):GetPlayers()) do
                    if plr.Character == model then
                        return true
                    end
                end
            end
            return false
        end
        local EXCLUDED_NAMES = {
            "storm",
            "soulreaper",
            "soul reaper",
            "quincy",
            "normalhollow",
            "adjuchas",
            "redeye",
            "menos",
            "human",
            "huzuni"
        }

        local function shouldIgnoreModel(modelName)
            local lowerName = modelName:lower() -- Convertir el nombre a minúsculas para comparación
            for _, excludedName in ipairs(EXCLUDED_NAMES) do
                if lowerName:find(excludedName:lower()) then
                    return true
                end
            end
            return false
        end

        local function getClosestNonPlayerModel()
            local playerHRP = getPlayerHRP()
            if not playerHRP then
                return nil
            end

            local closestModel = nil
            local shortestDistance = math.huge

            for _, model in ipairs(liveFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            for _, model in ipairs(effectsFolder:GetChildren()) do
                if
                    model:IsA("Model") and model:FindFirstChild("HumanoidRootPart") and not isPlayerModel(model) and
                        not shouldIgnoreModel(model.Name)
                 then
                    local distance = (playerHRP.Position - model.HumanoidRootPart.Position).Magnitude
                    if distance < shortestDistance and distance <= DETECTION_RANGE then
                        shortestDistance = distance
                        closestModel = model
                    end
                end
            end

            return closestModel
        end

        local function isEnemyDead(enemy)
            if enemy and enemy:FindFirstChild("Humanoid") then
                return enemy.Humanoid.Health <= 0
            end
            return false
        end

        local function handleEnemyDeath()
            if currentTarget then
                if not currentTarget.Parent or isEnemyDead(currentTarget) then
                    currentTarget = getClosestNonPlayerModel() -- Buscar otro enemigo cercano
                end
            end
        end

        local function createPlatform(position)
            if platform then
                platform:Destroy()
            end
            platform = Instance.new("Part")
            platform.Size = Vector3.new(30, 5, 30)
            platform.Anchored = true
            platform.Position = position - Vector3.new(0, 5, 0)
            platform.Parent = workspace
        end

        local function teleportToTarget()
            local playerHRP = getPlayerHRP()
            if currentTarget and playerHRP and currentTarget.Parent == liveFolder then
                local targetHRP = currentTarget.HumanoidRootPart
                -- Colocar al jugador detrás del enemigo en el eje X (negativo)
                local directionBehind =
                    targetHRP.Position + targetHRP.CFrame.LookVector * -config.TELEPORT_DISTANCE_BEHIND
                -- Apuntar al enemigo usando CFrame.lookAt
                playerHRP.CFrame = CFrame.lookAt(directionBehind, targetHRP.Position)
            end
        end

        local function liftPlayerAboveTarget()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local liftPosition = playerHRP.Position + Vector3.new(0, 25, 0) -- Elevar 25 bloques arriba
                playerHRP.CFrame = CFrame.new(liftPosition)
                createPlatform(playerHRP.Position)
                task.wait(PLATFORM_WAIT_TIME) -- Espera 3 segundos sobre la plataforma
                teleportStartTime = tick() -- Resetear el tiempo de teleportación
            end
        end

        local function teleportAbovePlatform()
            local playerHRP = getPlayerHRP()
            if playerHRP then
                local platformPosition = platform.Position
                -- Primer teleport 15 bloques arriba de la plataforma
                local firstTeleportPosition = platformPosition + Vector3.new(0, 15, 0)
                playerHRP.CFrame = CFrame.new(firstTeleportPosition)
                task.wait(0.2) -- Breve pausa para estabilizar el primer teleport

                -- Segundo teleport justo 10 bloques arriba de la plataforma
                local secondTeleportPosition = platformPosition + Vector3.new(0, 10, 0)
                playerHRP.CFrame = CFrame.new(secondTeleportPosition)
                task.wait(PLATFORM_WAIT_TIME) -- Espera en la plataforma
            end
        end

        local function checkPlayerHealth()
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            return humanoid and humanoid.Health > 0
        end

        local function checkEnemyHealth(target)
            local humanoid = target:FindFirstChild("Humanoid")
            if humanoid and humanoid.Health <= 0 then
                return true
            end
            return false
        end

        local function destroyInvalidOrDeadEnemies()
            local workspaceChildren = game.Workspace:GetChildren()
            for _, child in ipairs(workspaceChildren) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health <= 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function destroyDeadEnemiesInFolder(folder)
            for _, child in ipairs(folder:GetChildren()) do
                if child:IsA("Model") and child:FindFirstChild("Humanoid") then
                    local humanoid = child:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health == 0 then
                        child:Destroy()
                    end
                end
            end
        end

        local function periodicEnemyCheck()
            -- Se ejecutará cada 5 segundos
            while true do
                task.wait(5) -- Espera 5 segundos
                destroyInvalidOrDeadEnemies() -- Llamada para destruir enemigos muertos o inválidos
            end
        end

        -- Inicia la revisión periódica de enemigos
        task.spawn(periodicEnemyCheck)

        -- Definir las ubicaciones cercanas
        local positions = {
            Vector3.new(-985.38623046875, -293.3858947753906, 1473.942138671875),
            Vector3.new(559.0960693359375, 68.89710998535156, -380.6253356933594),
            Vector3.new(-1826.8504638671875, -28.38673210144043, 2252.7998046875),
            Vector3.new(-1721.2899169921875, -30.385757446289062, 1596.361083984375),
            Vector3.new(-736.77685546875, -387.09967041015625, 977.749267578125),
            Vector3.new(-1889.904296875, 0.9591544270515442, 3026.177734375),
            Vector3.new(-1373.6529541015625, -12.386724472045898, 2128.6787109375)
        }

        -- Generar posiciones aleatorias cercanas
        local function getRandomNearbyPosition(basePosition)
            local offsetX = math.random(-10, 10) -- Rango alto de aleatoriedad en X
            local offsetY = math.random(-5, 5) -- Aleatoriedad en Y moderada para mantener estabilidad
            local offsetZ = math.random(-10, 10) -- Rango alto de aleatoriedad en Z

            return basePosition + Vector3.new(offsetX, offsetY, offsetZ)
        end

        local function teleportToRandomNearbyLocation()
            local randomPosition = getRandomNearbyPosition(positions[math.random(1, #positions)])
            local playerHRP = getPlayerHRP()
            if playerHRP then
                playerHRP.CFrame = CFrame.new(randomPosition)
            end
        end

        local function startTeleporting()
            if not teleportLoop then
                teleportLoop =
                    task.spawn(
                    function()
                        teleportStartTime = tick()
                        currentTarget = getClosestNonPlayerModel()
                        while Toggle.Value do
                            handleEnemyDeath()

                            if not checkPlayerHealth() then
                                print("Player at 0 health, scanning for new targets...")
                                currentTarget = getClosestNonPlayerModel()
                                task.wait(1)
                            end

                            if currentTarget then
                                if checkEnemyHealth(currentTarget) then
                                    print("Enemy died or was destroyed, searching for another target...")
                                    currentTarget = getClosestNonPlayerModel()
                                    teleportStartTime = tick()
                                else
                                    local timeInEnemy = tick() - teleportStartTime
                                    if timeInEnemy < ENEMY_WAIT_TIME then
                                        teleportToTarget()
                                        task.wait(config.TELEPORT_INTERVAL)
                                    elseif timeInEnemy >= ENEMY_WAIT_TIME then
                                        liftPlayerAboveTarget()
                                        task.wait(PLATFORM_WAIT_TIME)
                                        teleportStartTime = tick()
                                    end
                                end
                            else
                                print("No valid enemy found, teleporting to random location...")
                                teleportToRandomNearbyLocation()
                                task.wait(5)
                            end

                            currentTarget = getClosestNonPlayerModel()

                            task.wait(0.1)
                        end
                    end
                )
            end
        end

        Toggle:OnChanged(
            function()
                if Toggle.Value then
                    startTeleporting()
                else
                    if teleportLoop then
                        teleportLoop = nil
                    end
                end
            end
        )

        local player = game:GetService("Players").LocalPlayer
        local liveFolder = workspace:WaitForChild("Live")
        local effectsFolder = workspace:WaitForChild("Effects")

        local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Destroy Mobs with 0% Hp", Default = false})
        Toggle:OnChanged(
            function()
                if Toggle.Value then
                    -- Iniciar un ciclo infinito mientras el toggle esté activado
                    while Toggle.Value do
                        -- Recorrer la carpeta "Live"
                        for _, model in pairs(liveFolder:GetChildren()) do
                            local humanoid = model:FindFirstChildOfClass("Humanoid")

                            -- Destruir si el modelo tiene un Humanoid con salud 0 o si no tiene Humanoid
                            if (humanoid and humanoid.Health == 0) or not humanoid then
                                model:Destroy()
                            end
                        end

                        -- Recorrer la carpeta "Effects"
                        for _, model in pairs(effectsFolder:GetChildren()) do
                            local humanoidRootPart = model:FindFirstChild("HumanoidRootPart")

                            -- Si no tiene HumanoidRootPart, destruir el modelo
                            if not humanoidRootPart then
                                model:Destroy()
                            end
                        end

                        wait(0.5) -- Espera 0.5 segundos antes de realizar la siguiente verificación
                    end
                end
            end
        )

        Tabs.Main:AddParagraph(
            {
                Title = "information | Fake Destroy Mob",
                Content = "Change Mobs Name when is 1% hp and reset mob name when 100% hp \n This is recommended for mobs that can be exe "
            }
        )

        local player = game:GetService("Players").LocalPlayer
        local liveFolder = workspace:WaitForChild("Live")
        local effectsFolder = workspace:WaitForChild("Effects")

        local originalNames = {} -- Tabla para almacenar los nombres originales
        local EXCLUDED_NAMES = {"normalhollow", "adjuchas", "redeye", "menos"}

        -- Función para verificar si un nombre está excluido
        local function isExcluded(name)
            name = string.lower(name) -- Convertir el nombre a minúsculas
            for _, excludedName in ipairs(EXCLUDED_NAMES) do
                if string.find(name, string.lower(excludedName)) then
                    return true
                end
            end
            return false
        end

        local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Fake Destroy Mobs with 1% Hp", Default = false})
        Toggle:OnChanged(
            function()
                if Toggle.Value then
                    -- Iniciar un ciclo infinito mientras el toggle esté activado
                    while Toggle.Value do
                        -- Recorrer la carpeta "Live"
                        for _, model in pairs(liveFolder:GetChildren()) do
                            if not isExcluded(model.Name) then
                                local humanoid = model:FindFirstChildOfClass("Humanoid")

                                -- Verificar si el modelo tiene un humanoide
                                if humanoid then
                                    local health = humanoid.Health
                                    local maxHealth = humanoid.MaxHealth
                                    local healthPercentage = health / maxHealth

                                    -- Si la salud es menor o igual al 2%, cambiamos el nombre a "Huzuni"
                                    if health <= maxHealth * 0.02 then
                                        -- Si la salud es mayor o igual al 95%, restauramos el nombre original
                                        -- Guardar el nombre original si no ha sido guardado
                                        if not originalNames[model] then
                                            originalNames[model] = model.Name
                                        end
                                        model.Name = "Huzuni" -- Cambiar el nombre del modelo
                                    elseif health >= maxHealth * 0.95 then
                                        if originalNames[model] then
                                            model.Name = originalNames[model] -- Restaurar el nombre original
                                            originalNames[model] = nil -- Limpiar el nombre original de la tabla
                                        end
                                    end
                                end
                            else
                            end
                        end

                        -- Recorrer la carpeta "Effects"
                        for _, model in pairs(effectsFolder:GetChildren()) do
                            if not isExcluded(model.Name) then
                                local humanoidRootPart = model:FindFirstChild("HumanoidRootPart")
                                if not humanoidRootPart then
                                    model.Name = "Huzuni"
                                end
                            else
                            end
                        end

                        wait(0.5) -- Espera 0.5 segundos antes de realizar la siguiente verificación
                    end
                end
            end
        )

        Tabs.Main:AddParagraph(
            {
                Title = "information | Fake Destroy VastoLorde",
                Content = "Change Vasto Lorde Name when is 0% hp"
            }
        )
        local player = game:GetService("Players").LocalPlayer
        local liveFolder = workspace:WaitForChild("Live")

        local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Fake Destroy VastoLorde", Default = false})
        Toggle:OnChanged(
            function()
                if Toggle.Value then
                    -- Iniciar un ciclo infinito mientras el toggle esté activado
                    while Toggle.Value do
                        -- Recorrer la carpeta "Live"
                        for _, model in pairs(liveFolder:GetChildren()) do
                            local humanoid = model:FindFirstChildOfClass("Humanoid")

                            -- Verificar si el nombre del modelo contiene la palabra "vasto", ignorando mayúsculas y minúsculas
                            if string.find(string.lower(model.Name), "vasto") then
                                -- Verificar si el modelo tiene un humanoide
                                if humanoid then
                                    -- Si la salud es 0%, cambiar el nombre a "huzunihollow" + número aleatorio
                                    if humanoid.Health > 0 and humanoid.Health <= humanoid.MaxHealth * 0.01 then
                                        if model.Name ~= "huzunihollow" then
                                            local randomNum = math.random(1000, 9999) -- Generar un número aleatorio
                                            model.Name = "huzunihollow" .. randomNum
                                        end
                                    end
                                    -- Si la salud vuelve al 100%, restaurar el nombre original
                                    if humanoid.Health == humanoid.MaxHealth and string.find(model.Name, "huzunihollow") then
                                        model.Name = "vasto"
                                    end
                                end
                            end
                        end

                        wait(0.5) -- Espera 0.5 segundos antes de realizar la siguiente verificación
                    end
                end
            end
        )

        local BackpackParagraph =
            Tabs.Backpack:AddParagraph(
            {
                Title = "peroxide-roblox.fandom.com/wiki/Skills",
                Content = [[
1. Acidic Touch (Hollow Ability)
2. Cyclone
3. Lunge
4. Impale
5. Flash Stamp
6. Flash Draw
7. Aerial Tandem
8. Flawless Pierce
9. Counter Strike
10. Scatter Image
11. Flash Mirage
12. Battle Instinct
13. Reiatsu Burst
14. Slash Barrage
[!]. peroxide-roblox.fandom.com/wiki/Skills
[!]. wiki for get ability names

]]
            }
        )

        local function equipItem(itemName)
            local player = game:GetService("Players").LocalPlayer
            local backpack = player.Backpack

            -- Buscar la herramienta por el nombre
            local tool = backpack:FindFirstChild(itemName)

            if tool then
                print("[Equipando] Herramienta:", itemName)
                tool.Parent = player.Character
            else
                print("[!] No se encontró la herramienta:", itemName)
            end
        end

        -- Crear una tabla para almacenar inputs y toggles dinámicamente
        local equipData = {}

        -- Configuración de inputs y toggles de forma dinámica
        for i = 1, 5 do
            local input =
                Tabs.Backpack:AddInput(
                "Input",
                {
                    Title = "Input #" .. i,
                    Default = "",
                    Placeholder = "Ability Name",
                    Numeric = false,
                    Finished = false,
                    Callback = function(Value)
                        print("Item seleccionado:", Value)
                    end
                }
            )

            local toggle =
                Tabs.Backpack:AddToggle(
                "Auto Use",
                {
                    Title = "Auto Use #" .. i,
                    Default = false
                }
            )

            -- Guardar la referencia en la tabla
            table.insert(equipData, {input = input, toggle = toggle})

            -- Bucle de auto equipar/desequipar
            toggle:OnChanged(
                function()
                    local itemName = input.Value
                    if not itemName or itemName == "" then
                        print("[!] No hay herramienta seleccionada en el Input #" .. i)
                        return
                    end

                    if toggle.Value then
                        while toggle.Value do
                            equipItem(itemName)
                            task.wait(0.1) -- Delay de 0.1 segundos entre cada equipamiento
                        end
                    end
                end
            )
        end

        -- Establecemos el valor predeterminado de la velocidad del jugador
        local DEFAULT_WALKSPEED = 16

        -- Speed Slider
        local Slider =
            Tabs.Movement:AddSlider(
            "Slider",
            {
                Title = "WalkSpeed Slider",
                Description = "Adjust the walk speed",
                Default = DEFAULT_WALKSPEED,
                Min = DEFAULT_WALKSPEED, -- El valor mínimo es la velocidad predeterminada
                Max = 100, -- Valor máximo para el slider
                Rounding = 1,
                Callback = function(Value)
                    print("Slider changed:", Value)
                    getgenv().WalkSpeed = Value -- Guardamos el valor del slider en WalkSpeed
                end
            }
        )

        Slider:OnChanged(
            function(Value)
                print("Slider changed:", Value)
            end
        )

        Slider:SetValue(DEFAULT_WALKSPEED) -- Valor predeterminado para el slider

        -- Función para verificar y corregir la velocidad si es diferente al valor del slider
        local function checkWalkSpeed()
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")

            -- Detectamos si la velocidad del jugador es diferente al valor del slider
            if humanoid.WalkSpeed ~= getgenv().WalkSpeed then
                humanoid.WalkSpeed = getgenv().WalkSpeed -- Corregimos la velocidad al valor del slider
            end
        end

        -- Verificamos constantemente si la velocidad se ha desajustado
        game:GetService("RunService").Heartbeat:Connect(checkWalkSpeed)

        Tabs.Visual:AddButton(
            {
                Title = "Esp Mobs/Player",
                Description = "Simple Esp",
                Callback = function()
                    local function createESP(model)
                        -- Verifica si el modelo tiene una parte llamada "Head" y no tiene ya un ESP
                        if model:FindFirstChild("Head") and not model.Head:FindFirstChild("NameTag") then
                            local billboard = Instance.new("BillboardGui")
                            billboard.Name = "NameTag"
                            billboard.Parent = model.Head
                            billboard.Adornee = model.Head
                            billboard.Size = UDim2.new(0, 200, 0, 50)
                            billboard.StudsOffset = Vector3.new(0, 2, 0) -- Posiciona el ESP arriba del modelo
                            billboard.AlwaysOnTop = true

                            local textLabel = Instance.new("TextLabel")
                            textLabel.Parent = billboard
                            textLabel.Size = UDim2.new(1, 0, 1, 0)
                            textLabel.BackgroundTransparency = 1

                            -- Filtrar el nombre para eliminar números, guiones y llaves
                            local cleanName = model.Name:gsub("[%d%-{}]", "") -- Elimina dígitos, guiones y llaves
                            textLabel.Text = cleanName

                            textLabel.TextColor3 = Color3.new(1, 1, 1) -- Color blanco
                            textLabel.TextScaled = true
                            textLabel.Font = Enum.Font.SourceSansBold

                            -- Crear un label para la vida (HP) del modelo
                            local hpLabel = Instance.new("TextLabel")
                            hpLabel.Parent = billboard
                            hpLabel.Size = UDim2.new(1, 0, 0.5, 0) -- Ajustar la posición del label de HP debajo del nombre
                            hpLabel.Position = UDim2.new(0, 0, 0.5, 0)
                            hpLabel.BackgroundTransparency = 1
                            hpLabel.TextScaled = true -- Hacer el texto de la vida más grande
                            hpLabel.TextSize = 30 -- Aumenta el tamaño de la fuente

                            -- Función para actualizar la vida
                            local function updateHP()
                                local humanoid = model:FindFirstChild("Humanoid")
                                if humanoid then
                                    local hpPercentage = humanoid.Health / humanoid.MaxHealth * 100
                                    hpLabel.Text = "HP: " .. math.floor(hpPercentage) .. "%" -- Muestra el porcentaje de vida
                                    hpLabel.TextColor3 = Color3.new(0, 1, 0) -- Color verde
                                else
                                    hpLabel.Text = "HP: N/A" -- Si no tiene humanoide
                                end
                            end

                            -- Actualizar la vida continuamente
                            updateHP()

                            -- Escuchar cambios en la vida
                            if model:FindFirstChild("Humanoid") then
                                model.Humanoid.HealthChanged:Connect(updateHP)
                            end
                        end
                    end

                    -- Función para verificar continuamente los modelos y asegurar el ESP
                    local function updateESP()
                        for _, model in ipairs(workspace.Live:GetChildren()) do
                            if model:IsA("Model") then
                                createESP(model)
                            end
                        end
                    end

                    -- Escucha la adición de nuevos modelos
                    workspace.Live.ChildAdded:Connect(
                        function(child)
                            if child:IsA("Model") then
                                createESP(child)
                            end
                        end
                    )

                    -- Bucle de actualización continua
                    while true do
                        updateESP() -- Actualiza el ESP para todos los modelos existentes
                        task.wait(1) -- Espera un segundo antes de la siguiente actualización (puedes ajustar el tiempo según necesites)
                    end
                end
            }
        )

        Tabs.Client:AddButton(
            {
                Title = "LowerServer Hop",
                Description = "Find Lower Player Sv",
                Callback = function()
                    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
                    local Lowest = "playing" -- set to "playing" to find the lowest player server

                    local HTTPService = game:GetService("HttpService")

                    local success, servers =
                        pcall(
                        function()
                            return HTTPService:JSONDecode(
                                game:HttpGet(
                                    "https://games.roblox.com/v1/games/" ..
                                        tostring(game.PlaceId) .. "/servers/Public?limit=100"
                                )
                            ).data
                        end
                    )

                    if not success then
                        return
                    end

                    local server = servers[1]

                    for i, svr in pairs(servers) do
                        if svr[Lowest] < server[Lowest] then
                            server = svr
                        end
                    end

                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id)
                end
            }
        )
    end

    local SaveManager =
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))(

    )

    SaveManager:SetLibrary(Fluent)

    SaveManager:BuildConfigSection(Tabs.Settings)
end

Init()
Test()
