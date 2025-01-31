

-- I  Spielerpanels mit Bars & Health
    -- locals..zentraler speicher
    local listData = {
        { guid = "", name = "leer", description = "leer", health = "00/00", exhaustion = "00/00", marker = "-", color = "Rot" },
        { guid = "", name = "leer", description = "leer", health = "00/00", exhaustion = "00/00", marker = "-", color = "Blau" },
        { guid = "", name = "leer", description = "leer", health = "00/00", exhaustion = "00/00", marker = "-", color = "Grün" },
        { guid = "", name = "leer", description = "leer", health = "00/00", exhaustion = "00/00", marker = "-", color = "Gelb" }
    }

    local visibilityOptions = {
        ["Alle"] = "Black|White|Red|Yellow|Green|Blue", -- Sichtbarkeit für bestimmte Spielerfarben",
        ["Keine"] = "Pink", 
        ["Rot"] = "Red",
        ["Gelb"] = "Yellow",
        ["Blau"] = "Blue",
        ["Grün"] = "Green",
        ["GM"] = "Black|White",
    }

    -- Globale Variablen
    local linkedObjects = {} -- Verknüpfte Miniaturen
    local panelSpacing = 10 -- Abstand zwischen Panels


        -- Dicepanel spieler_1
            counter_1_1 = 0
            counter_2_1 = 0
            counter_3_1 = 0
            counter_4_1 = 0
            counter_5_1 = 0
            counter_6_1 = 0
            counter_7_1 = 0
        
        Dice_value_1_1 = 0
        Dice_value_2_1 = 0
        Dice_value_3_1 = 0
        Dice_value_4_1 = 0
        Dice_value_5_1 = 0
        Dice_value_6_1 = 0
        Dice_value_7_1 = 0

        -- Dicepanel spieler_2
        counter_1_2 = 0
        counter_2_2 = 0
        counter_3_2 = 0
        counter_4_2 = 0
        counter_5_2 = 0
        counter_6_2 = 0
        counter_7_2 = 0

        Dice_value_1_2 = 0
        Dice_value_2_2 = 0
        Dice_value_3_2 = 0
        Dice_value_4_2 = 0
        Dice_value_5_2 = 0
        Dice_value_6_2 = 0
        Dice_value_7_2 = 0

        -- Dicepanel spieler_3
        counter_1_3 = 0
        counter_2_3 = 0
        counter_3_3 = 0
        counter_4_3 = 0
        counter_5_3 = 0
        counter_6_3 = 0
        counter_7_3 = 0

        Dice_value_1_3 = 0
        Dice_value_2_3 = 0
        Dice_value_3_3 = 0
        Dice_value_4_3 = 0
        Dice_value_5_3 = 0
        Dice_value_6_3 = 0
        Dice_value_7_3 = 0

        -- Dicepanel spieler_4
        counter_1_4 = 0
        counter_2_4 = 0
        counter_3_4 = 0
        counter_4_4 = 0
        counter_5_4 = 0
        counter_6_4 = 0
        counter_7_4 = 0

        Dice_value_1_4 = 0
        Dice_value_2_4 = 0
        Dice_value_3_4 = 0
        Dice_value_4_4 = 0
        Dice_value_5_4 = 0
        Dice_value_6_4 = 0
        Dice_value_7_4 = 0

        -- Dicepanel spieler_5
        counter_1_5 = 0
        counter_2_5 = 0
        counter_3_5 = 0
        counter_4_5 = 0
        counter_5_5 = 0
        counter_6_5 = 0
        counter_7_5 = 0

        Dice_value_1_5 = 0
        Dice_value_2_5 = 0
        Dice_value_3_5 = 0
        Dice_value_4_5 = 0
        Dice_value_5_5 = 0
        Dice_value_6_5 = 0
        Dice_value_7_5 = 0

        -- Dicepanel spieler_6
        counter_1_6 = 0
        counter_2_6 = 0
        counter_3_6 = 0
        counter_4_6 = 0
        counter_5_6 = 0
        counter_6_6 = 0
        counter_7_6 = 0

        Dice_value_1_6 = 0
        Dice_value_2_6 = 0
        Dice_value_3_6 = 0
        Dice_value_4_6 = 0
        Dice_value_5_6 = 0
        Dice_value_6_6 = 0
        Dice_value_7_6 = 0

        -- Dicepanel spieler_7
        counter_1_7 = 0
        counter_2_7 = 0
        counter_3_7 = 0
        counter_4_7 = 0
        counter_5_7 = 0
        counter_6_7 = 0
        counter_7_7 = 0

        Dice_value_1_7 = 0
        Dice_value_2_7 = 0
        Dice_value_3_7 = 0
        Dice_value_4_7 = 0
        Dice_value_5_7 = 0
        Dice_value_6_7 = 0
        Dice_value_7_7 = 0

    -- GUID des Datencontainers wo alle betroffen minis aus der TTRS Controller objekt übernommen werden
    local dataContainerGUID = "e894f6"
    targetGUIDs = {} -- Globale Variable für die Ziel-GUIDs
    local isFarbpanelVisible = true -- Status der Sichtbarkeit des Farbpanels

--diverse buttonbilder für actionbuttons panels
    local refreshImageUrl = "https://steamusercontent-a.akamaihd.net/ugc/38943008356279628/CD88682242B1D1BAF65E7A2BF01E63E4876CE421/"
    local angriffImageUrl = "https://steamusercontent-a.akamaihd.net/ugc/38943008360279659/59BB959B7926B9B98445E8981DD131AA149FCEA8/"
    local abwehrImageUrl = "https://steamusercontent-a.akamaihd.net/ugc/38943008360279659/59BB959B7926B9B98445E8981DD131AA149FCEA8/"
    local probeImageUrl = "https://steamusercontent-a.akamaihd.net/ugc/38943008360279659/59BB959B7926B9B98445E8981DD131AA149FCEA8/"
    local heilungImageUrl = "https://steamusercontent-a.akamaihd.net/ugc/38943008360279659/59BB959B7926B9B98445E8981DD131AA149FCEA8/"




-- Funktion zur Ermittlung der Miniaturen-GUIDs  die gerade dort angemeldet sind
    function extractMinisGUIDs()
        --print("Ermitteln der betroffenen Figuren gestartet...")

        local dataObject = getObjectFromGUID(dataContainerGUID)
        if not dataObject then
            --print("Fehler: Daten-Objekt mit GUID " .. dataContainerGUID .. " nicht gefunden.")
            return
        end

        -- JSON-Daten abrufen
        local rawJson = dataObject.getJSON()
        if not rawJson or not rawJson:find('"LuaScriptState":') then
            --print("Fehler: JSON-Daten oder LuaScriptState nicht verfügbar.")
            return
        end

        -- JSON-Daten dekodieren
        local success, data = pcall(function() return JSON.decode(rawJson) end)
        if not success or not data or not data.LuaScriptState then
            --print("Fehler: LuaScriptState konnte nicht dekodiert werden.")
            return
        end

        -- LuaScriptState erneut dekodieren
        local luaScriptStateSuccess, luaData = pcall(function() return JSON.decode(data.LuaScriptState) end)
        if not luaScriptStateSuccess or not luaData then
            --print("Fehler: LuaScriptState konnte nicht gelesen werden.")
            return
        end

        -- GUIDs der Miniaturen ermitteln
        if luaData.minis then
            targetGUIDs = luaData.minis  -- Array von GUIDs als Strings
            --print("Betroffene Figuren-GUIDs:")
            for _, guid in ipairs(targetGUIDs) do
                --print("- " .. guid)
            end

            -- GUIDs in die `listData`-Tabelle übertragen
            for i = 1, #listData do
                listData[i].guid = targetGUIDs[i] or "" -- Falls weniger GUIDs vorhanden sind, bleibt es leer
            end

        else
            --print("Keine Miniaturen-GUIDs gefunden.")
            targetGUIDs = {} -- Leere Liste sicherstellen
        end

        -- Aktualisiere die Liste in der UI
        updateListData()
    end


-- Funktion zur Aktualisierung von "Name" und "Beschreibung"   der minis  basierend auf GUIDs
    function updateNameAndDescription()
        for i, playerData in ipairs(listData) do
            -- Zuerst alle Werte auf Standardwerte zurücksetzen
            playerData.name = "leer"
            playerData.description = "leer"
            playerData.health = "00/00"
            playerData.exhaustion = "00/00"

            local guid = playerData.guid
            if guid and guid ~= "" then
                local obj = getObjectFromGUID(guid)
                if obj then
                    -- Name und Beschreibung aktualisieren
                    playerData.name = obj.getName() or "Unbenannt"
                    playerData.description = obj.getDescription() or "Keine Beschreibung"

                    -- JSON-Werte auslesen
                    local bars = getBarsFromJSON(guid)
                    if bars and #bars >= 2 then
                        local healthBar = bars[1]
                        playerData.health = healthBar[3] .. "/" .. healthBar[4]

                        local exhaustionBar = bars[2]
                        playerData.exhaustion = exhaustionBar[3] .. "/" .. exhaustionBar[4]
                    end
                end
            end

            -- UI immer aktualisieren, unabhängig ob Objekt gefunden wurde oder nicht
            UI.setAttribute("name_" .. i, "text", "Name: " .. playerData.name)
            UI.setAttribute("description_" .. i, "text", "Bezeichnung: " .. playerData.description)
        end
    end



-- HAUPTEIL.. Hier wird die Spielerliste erstellt und die Spilereinzelpanels vorbereitet
    function createDynamicTable()
        -- Bestehende XML abrufen und als Tabelle interpretieren
        local xmlTable = UI.getXmlTable()

        -- Überprüfen, ob das Panel existiert, und es entfernen
        for i, element in ipairs(xmlTable) do
            if element.attributes and element.attributes.id == "Farbpanel_main" then
                table.remove(xmlTable, i)
                --print("Bestehendes Farbpanel entfernt.")
                break
            end
        end

        -- Aktuelle Spielerfarben abrufen
        activeColors = getSeatedPlayers()

        -- Optionen für Dropdown-Menü
        local dropdownOptions = '<option value="none">Keine</option><option value="all">Alle</option>'
        for _, color in ipairs(activeColors) do
            dropdownOptions = dropdownOptions .. '<option value="' .. color .. '">' .. color .. '</option>'
        end

        -- Tabelle dynamisch erstellen
        local tableContent = ""

        for i, playerData in ipairs(listData) do
            tableContent = tableContent .. [[
                <Row>
                    <!-- Spalte 1: Spielername -->
                    
                    <Cell><Text text="]] .. playerData.guid .. [[" /></Cell>
                    <Cell><Text text="]] .. playerData.name .. [[" /></Cell>
                    <Cell><Text text="]] .. playerData.description .. [[" /></Cell>

                    <!-- Spalte 3: Dropdown-Menü -->
    <Cell>
        <Dropdown id="dropdown_]] .. i .. [[" onValueChanged="updatePanelVisibility">
            <option value="Keine">Keine</option>
            <option value="Alle">Alle</option>
            <option value="Red">Rot</option>
            <option value="Yellow">Gelb</option>
            <option value="Blue">Blau</option>
            <option value="Green">Grün</option>
            <option value="GM">GM</option>
        </Dropdown>
    </Cell>
                </Row>
            ]]
        end

        local newPanel = {
            tag = "Panel",
            attributes = {
                id = "Farbpanel_main",
                width = "410",
                height = "260",
                position = "-300 300",
                color = "#00000000",
                rectAlignment = "MiddleCenter",
                allowDragging = "true",
                returntooriginalpositionwhenreleased = "false",
                visibility = "Black|White", -- Sichtbarkeit für GM only
            },
            children = {
                {
                    tag = "Button",
                    attributes = {
                        id = "myButton",
                        rectAlignment = "MiddleLeft",
                        width = "150", 
                        height = "40",
                        color="#9999FF",
                        position = "-650 100  ",
                        onClick = "toggleFarbpanel",
                        tooltip = "Helden-Panels für alle aktiven Spieler einblenden (GM -Funktion!)\nZunächst die jeweiligen aktiven Helden Figuren im „Helden-Panel Tracker“ registrieren (liegt unten rechts neben den Spielerkarten): \nHelden Figuren einzeln nacheinander in die Mitte dieses Treckers stellen  und „Track mini“ wählen\nFigur erscheint in der Liste des Trackers, aber auch  in der Liste  hier im Heldenpanel \nDort nun die  registrierten Figuren dem jeweiligen Spieler zuordnen.",
                    },
                    children = {
                        {
                            tag = "Text",
                            attributes = {
                                alignment = "MiddleCenter",
                                color="#FFFFFF",
                                text = "Helden-Panels",
                            },
                        },
                    },
                },
                {
                    tag = "Panel",
                    attributes = {
                        id = "Farbpanel",
                        width = "400",
                        height = "150",
                        position = "0 0 ",
                        color = "White",
                        --padding = "10",
                    },
                    children = {
                        {
                            tag = "TableLayout",
                            attributes = {
                                id = "Spielerliste",
                                columnWidths = "100,70,100",
                            },
                            value = tableContent,
                        },
                        {
                            tag = "Panel",
                            attributes = {
                                id = "AdditionalButtonPanel",
                                width = "10",
                                height = "10",
                                position = "120 0 0",
                                
                                rectAlignment = "MiddleCenter",
                            },
                            children = {
                                {
                                    tag = "Button",
                                    attributes = {
                                        id = "extraButton",
                                        rectAlignment = "MiddleCenter",
                                        width = "100",
                                        height = "40",
                                        position = "30 -100 0",
                                        color="#9999FF",
                                        --onClick="updateListAndPanels",
                                        onClick="onLoad()",
                                    },
                                    children = {
                                        {
                                            tag = "Text",
                                            attributes = {
                                                alignment = "MiddleCenter",
                                                color="#FFFFFF",
                                                text = "aktualisieren",
                                            },
                                        },
                                    },
                                },
                            },
                        },
                    },
                },
            },
        }
        


        -- Neues Panel zur XML-Tabelle hinzufügen
        table.insert(xmlTable, newPanel)

        -- Aktualisierte XML-Tabelle setzen
        UI.setXmlTable(xmlTable)
        --print("Dynamische Tabelle mit Buttons wurde erstellt und sollte sichtbar sein.")
    end


    function updatePanelVisibility(_, selectedOption, id)
        -- Debugging: Prüfen, ob die Funktion ausgelöst wurde
        --print("Dropdown wurde geändert: ID = " .. tostring(id) .. ", Auswahl = " .. tostring(selectedOption))

        -- Extrahiere die Zeilen-ID aus der Dropdown-ID (z. B. "dropdown_1" → 1)
        local rowIndex = tonumber(id:match("dropdown_(%d+)"))
        if not rowIndex then
            --print("Fehler: Keine gültige Zeile für Dropdown gefunden.")
            return
        end

        -- Debugging: Überprüfen, ob die Zeilen-ID korrekt ermittelt wurde
        --print("Zeilen-Index: " .. tostring(rowIndex))

        -- Panel-ID basierend auf der Zeilennummer bestimmen
        local panelId = "Parent_PlayerPanel_" .. rowIndex
        --print("Panel-ID für Sichtbarkeit: " .. tostring(panelId))

        -- Spielerfarben aus der Auswahl holen
        local visibilityColors = visibilityOptions and visibilityOptions[selectedOption]
        if not visibilityColors then
            --print("Fehler: Keine Sichtbarkeitsoption für Auswahl: " .. tostring(selectedOption))
            return
        end

        -- Debugging: Überprüfen, ob die Sichtbarkeitsfarben korrekt zugeordnet wurden
        --print("Sichtbarkeitsfarben: " .. tostring(visibilityColors))

        -- Dynamisches Hinzufügen der Sichtbarkeitseigenschaft
        UI.setAttribute(panelId, "visibility", visibilityColors)
        --print("Sichtbarkeit von " .. panelId .. " auf " .. visibilityColors .. " gesetzt.")
    end

    -- Funktion zur Verarbeitung der Dropdown-Auswahl
    function onDropdownChange(player, value, id)
        --print("Dropdown " .. id .. " geändert auf: " .. value)
    end





    -- Heldenpanelliste  einlenden

            -- Status der Sichtbarkeit der Übersichtsliste

            function toggleFarbpanel(player, value, id)
                isFarbpanelVisible = not isFarbpanelVisible -- Status umkehren
                if isFarbpanelVisible then
                    UI.show("Farbpanel")
                    --print("Farbpanel wird angezeigt.")
                else
                    UI.hide("Farbpanel")
                    --print("Farbpanel wird versteckt.")
                end
            end


-- Funktionen zum aktualisiern

                function updateListData()
                    for i, playerData in ipairs(listData) do
                        UI.setAttribute("guid_" .. i, "text", playerData.guid)
                        UI.setAttribute("name_" .. i, "text", playerData.name)
                        UI.setAttribute("description_" .. i, "text", playerData.description)
                        UI.setAttribute("health_" .. i, "text", playerData.health)
                        UI.setAttribute("exhaustion_" .. i, "text", playerData.exhaustion)
                        UI.setAttribute("marker_" .. i, "text", playerData.marker)
                    end
                end
                                    
        -- Alles aktualisieren
                function updateListAndPanels()
                    extractMinisGUIDs()
                    updateNameAndDescription()
                
                    updatePlayerPanels()
                    createDynamicTable()
                    --updateMarkerImages()
                    print("Liste und Panels wurden aktualisiert.")
                end

         -- MArkerpanel manuell aktualisieren
                            function updateOnlyMarkerPanels()
                                local allMarkers = getAllMarkersFromJSON()
                                updateMarkerImages(allMarkers)
                                print("Marker-Panels wurden aktualisiert.")
                            end
        




-- Bars & barbuttons


        function updatePlayerPanels()
            for i, playerData in ipairs(listData) do
                -- Zuerst die UI-Elemente aktualisieren
                UI.setAttribute("name_" .. i .. "_panel", "text", " " .. (playerData.name or ""))
                UI.setAttribute("description_" .. i .. "_panel", "text", " " .. (playerData.description or ""))
                UI.setAttribute("health_" .. i .. "_panel", "text", " " .. (playerData.health or "0 / 0"))
                UI.setAttribute("exhaustion_" .. i .. "_panel", "text", " " .. (playerData.exhaustion or "0 / 0"))
                
                -- Dann die Button-Funktionen definieren
                local currentGuid = playerData.guid
                local currentIndex = i
                
                _G["adjustHealthUp_" .. i] = function(player)
                    adjustMiniBarDirectly(currentGuid, 1, 1)
                    syncValuesToUIFromMini(currentGuid, currentIndex)
                end

                _G["adjustHealthDown_" .. i] = function(player)
                    adjustMiniBarDirectly(currentGuid, 1, -1)
                    syncValuesToUIFromMini(currentGuid, currentIndex)
                end

                _G["adjustExhaustionUp_" .. i] = function(player)
                    adjustMiniBarDirectly(currentGuid, 2, 1)
                    syncValuesToUIFromMini(currentGuid, currentIndex)
                end

                _G["adjustExhaustionDown_" .. i] = function(player)
                    adjustMiniBarDirectly(currentGuid, 2, -1)
                    syncValuesToUIFromMini(currentGuid, currentIndex)
                end
            end
        end
        



        function adjustMiniBarDirectly(guid, barIndex, amount)
            local obj = getObjectFromGUID(guid)
            if not obj then
                print("Fehler: Objekt mit GUID " .. guid .. " nicht gefunden.")
                return
            end

            -- Direkter Aufruf von adjustBar auf der Miniatur
            local success, errorMessage = pcall(function()
                obj.call("adjustBar", { index = barIndex, amount = amount })
            end)

            if success then
                --print("Bar " .. barIndex .. " von GUID " .. guid .. " erfolgreich angepasst.")
                -- Finde den korrekten playerIndex basierend auf der GUID
                local playerIndex
                for i, data in ipairs(listData) do
                    if data.guid == guid then
                        playerIndex = i
                        break
                    end
                end
                syncValuesToUIFromMini(guid, playerIndex) -- Korrigiert: Verwende playerIndex statt barIndex
            else
                print("Fehler beim Anpassen der Bar von GUID " .. guid .. ": " .. (errorMessage or "Unbekannter Fehler"))
            end
        end


        function syncValuesToUIFromMini(guid, playerIndex)
            local obj = getObjectFromGUID(guid)
            if not obj then
                print("Fehler: Objekt mit GUID " .. guid .. " nicht gefunden.")
                return
            end

            -- Rufe die Funktion getBarse auf der Miniatur auf
            local success, bars = pcall(function()
                return obj.call("getBars", {})
            end)

            if not success or not bars or #bars < 2 then
                print("Warnung: Balkendaten konnten nicht abgerufen werden für GUID " .. guid)
                UI.setAttribute("health_" .. playerIndex .. "_panel", "text", " 0 / 0")
                UI.setAttribute("exhaustion_" .. playerIndex .. "_panel", "text", " 0 / 0")
                return
            end

            -- Leben aktualisieren
            local healthBar = bars[1]
            local healthText = healthBar.current .. "/" .. healthBar.maximum
            UI.setAttribute("health_" .. playerIndex .. "_panel", "text", " " .. healthText)

            -- Erschöpfung aktualisieren
            local exhaustionBar = bars[2]
            local exhaustionText = exhaustionBar.current .. "/" .. exhaustionBar.maximum
            UI.setAttribute("exhaustion_" .. playerIndex .. "_panel", "text", " " .. exhaustionText)
        end

        function getBarsFromJSON(guid)
            local obj = getObjectFromGUID(guid)
            if not obj then
                print("Fehler: Objekt mit GUID " .. guid .. " nicht gefunden.")
                return nil
            end

            local rawJson = obj.getJSON()
            if not rawJson or not rawJson:find('"LuaScriptState":') then
                print("Fehler: JSON-Daten oder LuaScriptState nicht verfügbar für " .. guid)
                return nil
            end

            local success, jsonData = pcall(function() return JSON.decode(rawJson) end)
            if not success or not jsonData then
                print("Fehler: JSON-Daten konnten nicht dekodiert werden für " .. guid)
                return nil
            end

            local luaScriptState = jsonData.LuaScriptState
            if not luaScriptState then
                print("LuaScriptState nicht gefunden für " .. guid)
                return nil
            end

            local successLua, barsData = pcall(function() return JSON.decode(luaScriptState) end)
            if not successLua or not barsData or not barsData.bars then
                print("Fehler: Balkendaten konnten nicht ausgelesen werden für " .. guid)
                return nil
            end

            return barsData.bars
        end




-- II Markeranzeige 
    -- Array der GUIDs, das muss getauscht werden
    --local FIGURE_GUIDS = {"361825", "153f22", "59c651", "5c5804"}

    -- Funktion: JSON-Daten aller Figuren auslesen
        function getAllMarkersFromJSON()
            local allMarkers = {}
            
            -- Nutze die gleiche Reihenfolge wie in listData
            for i, playerData in ipairs(listData) do
                local guid = playerData.guid
                if guid and guid ~= "" then
                    local obj = getObjectFromGUID(guid)
                    if obj then
                        local jsonData = obj.getJSON()
                        if jsonData and jsonData ~= "" then
                            local success, data = pcall(function() return JSON.decode(jsonData) end)
                            if success and data and data.LuaScriptState then
                                local successState, state = pcall(function() return JSON.decode(data.LuaScriptState) end)
                                if successState and state and state.markers then
                                    table.insert(allMarkers, {guid = guid, markers = state.markers})
                                end
                            end
                        end
                    end
                end
            end
            return allMarkers
        end


    -- Marker löschen
        function removeMarker(player, button, id)
            local row, col = id:match("button2_(%d+)_(%d+)")
            
            if not row or not col then
                print("[Debug Global] Fehler: Ungültiges Button-ID Format:", id)
                return
            end
            
            -- GUID aus listData holen statt aus FIGURE_GUIDS
            local guid = listData[tonumber(row)].guid
            if not guid or guid == "" then
                print("[Debug Global] Fehler: Keine GUID für Reihe", row)
                return
            end
            
            -- Bild sofort entfernen
            local imageId = string.format("image_%s_%s", row, col)
            UI.setAttribute(imageId, "image", "")
            
            --print("[Debug Global] removeMarker Start - GUID:", guid, "Index:", col)
            local obj = getObjectFromGUID(guid)
            if obj then
                --print("[Debug Global] Objekt gefunden, rufe Figur-Funktion auf")
                obj.call("removeMarker", {index = tonumber(col)})
                --print("[Debug Global] Figur-Funktion aufgerufen")
                
                -- Nach 2 Sekunden Update durchführen
                Wait.time(function()
                    local allMarkers = getAllMarkersFromJSON()
                    --updateMarkerImages(allMarkers)
                    --print("[Debug Global] Update nach Entfernen durchgeführt")
                    updateMarkerImages(allMarkers)
                end, 8)
            else
                --print("[Debug Global] FEHLER: Objekt nicht gefunden für GUID:", guid)
            end
        end

    -- Funktion zum Aktualisieren der UI mit Debug-Output
        function updateMarkerImages(allMarkers)
            -- Platzhalter URL definieren
            local placeholderUrl = "https://steamusercontent-a.akamaihd.net/ugc/38943008356388258/91803389597F92AC3B0B4119084274587295F410/"
            
            --print("[Debug] Start Marker Update")
            
            for i, markerSet in ipairs(allMarkers) do
                --print(string.format("[Debug] GUID %s:", markerSet.guid))
                for j = 1, 5 do
                    local imageId = string.format("image_%d_%d", i, j)
                    if j <= #markerSet.markers then
                        local marker = markerSet.markers[j]
                        local url = marker[2] or placeholderUrl
                        --print(string.format("  - Marker %d: URL = %s", j, url))
                        UI.setAttribute(imageId, "image", url)
                    else
                        --print(string.format("  - Marker %d: leer, setze Platzhalter", j))
                        UI.setAttribute(imageId, "image", placeholderUrl)
                        UI.setAttribute(imageId, "color", "#FFFFFF88") -- Halbtransparent
                    end
                end
            end
            
            --print("[Debug] Ende Marker Update")
        end


            -- Debugging-Funktion zum Überprüfen der GUID-Formate
            function checkGUIDFormat()
                --print("Prüfe GUID Formate:")
                
                -- targetGUIDs Format
                --print("targetGUIDs Format:")
                for i, guid in ipairs(targetGUIDs) do
                    --print(string.format("Index %d: %s (Typ: %s)", i, guid, type(guid)))
                end
                
                -- FIGURE_GUIDS Format
                --print("FIGURE_GUIDS Format:")
                for i, guid in ipairs(FIGURE_GUIDS) do
                    --print(string.format("Index %d: %s (Typ: %s)", i, guid, type(guid)))
                end
            end



--DICE Pannel

        --DICE Pannel Spieler _1
        
            function decreaseCounter_1_1()
                if counter > 0 then
                    counter = counter - 1
                    UI.setValue("counterText_1_1", tostring(counter))
                    Dice_value_1_1 = counter  -- Wert speichern
                end
            end

            function decreaseCounter_1_1()
                if counter_1_1 > 0 then
                    counter_1_1 = counter_1_1 - 1
                    UI.setValue("counterText_1_1", tostring(counter_1_1))
                    Dice_value_1_1 = counter_1_1  -- Wert speichern
                end
            end
            
            function increaseCounter_1_1()
                if counter_1_1 < 6 then
                    counter_1_1 = counter_1_1 + 1
                    UI.setValue("counterText_1_1", tostring(counter_1_1))
                    Dice_value_1_1 = counter_1_1  -- Wert speichern
                end
            end
            
            function decreaseCounter_2_1()
                if counter_2_1 > 0 then
                    counter_2_1 = counter_2_1 - 1
                    UI.setValue("counterText_2_1", tostring(counter_2_1))
                    Dice_value_2_1 = counter_2_1  -- Wert speichern
                end
            end
            
            function increaseCounter_2_1()
                if counter_2_1 < 6 then
                    counter_2_1 = counter_2_1 + 1
                    UI.setValue("counterText_2_1", tostring(counter_2_1))
                    Dice_value_2_1 = counter_2_1  -- Wert speichern
                end
            end
            
            function decreaseCounter_3_1()
                if counter_3_1 > 0 then
                    counter_3_1 = counter_3_1 - 1
                    UI.setValue("counterText_3_1", tostring(counter_3_1))
                    Dice_value_3_1 = counter_3_1  -- Wert speichern
                end
            end
            
            function increaseCounter_3_1()
                if counter_3_1 < 6 then
                    counter_3_1 = counter_3_1 + 1
                    UI.setValue("counterText_3_1", tostring(counter_3_1))
                    Dice_value_3_1 = counter_3_1  -- Wert speichern
                end
            end
            
            function decreaseCounter_4_1()
                if counter_4_1 > 0 then
                    counter_4_1 = counter_4_1 - 1
                    UI.setValue("counterText_4_1", tostring(counter_4_1))
                    Dice_value_4_1 = counter_4_1  -- Wert speichern
                end
            end
            
            function increaseCounter_4_1()
                if counter_4_1 < 6 then
                    counter_4_1 = counter_4_1 + 1
                    UI.setValue("counterText_4_1", tostring(counter_4_1))
                    Dice_value_4_1 = counter_4_1  -- Wert speichern
                end
            end
            
            function decreaseCounter_5_1()
                if counter_5_1 > 0 then
                    counter_5_1 = counter_5_1 - 1
                    UI.setValue("counterText_5_1", tostring(counter_5_1))
                    Dice_value_5_1 = counter_5_1  -- Wert speichern
                end
            end
            
            function increaseCounter_5_1()
                if counter_5_1 < 6 then
                    counter_5_1 = counter_5_1 + 1
                    UI.setValue("counterText_5_1", tostring(counter_5_1))
                    Dice_value_5_1 = counter_5_1  -- Wert speichern
                end
            end
            
            function decreaseCounter_6_1()
                if counter_6_1 > 0 then
                    counter_6_1 = counter_6_1 - 1
                    UI.setValue("counterText_6_1", tostring(counter_6_1))
                    Dice_value_6_1 = counter_6_1  -- Wert speichern
                end
            end
            
            function increaseCounter_6_1()
                if counter_6_1 < 6 then
                    counter_6_1 = counter_6_1 + 1
                    UI.setValue("counterText_6_1", tostring(counter_6_1))
                    Dice_value_6_1 = counter_6_1  -- Wert speichern
                end
            end
            
            function decreaseCounter_7_1()
                if counter_7_1 > 0 then
                    counter_7_1 = counter_7_1 - 1
                    UI.setValue("counterText_7_1", tostring(counter_7_1))
                    Dice_value_7_1 = counter_7_1  -- Wert speichern
                end
            end
            
            function increaseCounter_7_1()
                if counter_7_1 < 6 then
                    counter_7_1 = counter_7_1 + 1
                    UI.setValue("counterText_7_1", tostring(counter_7_1))
                    Dice_value_7_1 = counter_7_1  -- Wert speichern
                end
            end

    --toggeln von diceboard spieler_1
    function showDiceboard_1()
        local currentVisibility = UI.getAttribute("diceboard_1", "visibility")
        if currentVisibility == "hidden" then
            UI.setAttribute("diceboard_1", "visibility", "")
        else
            UI.setAttribute("diceboard_1", "visibility", "hidden")
        end
    end

   

        --DICE Pannel Spieler _2

        function decreaseCounter_1_2()
            if counter_1_2 > 0 then
                counter_1_2 = counter_1_2 - 1
                UI.setValue("counterText_1_2", tostring(counter_1_2))
                Dice_value_1_2 = counter_1_2  -- Wert speichern
            end
        end

        function increaseCounter_1_2()
            if counter_1_2 < 6 then
                counter_1_2 = counter_1_2 + 1
                UI.setValue("counterText_1_2", tostring(counter_1_2))
                Dice_value_1_2 = counter_1_2  -- Wert speichern
            end
        end

        function decreaseCounter_2_2()
            if counter_2_2 > 0 then
                counter_2_2 = counter_2_2 - 1
                UI.setValue("counterText_2_2", tostring(counter_2_2))
                Dice_value_2_2 = counter_2_2  -- Wert speichern
            end
        end

        function increaseCounter_2_2()
            if counter_2_2 < 6 then
                counter_2_2 = counter_2_2 + 1
                UI.setValue("counterText_2_2", tostring(counter_2_2))
                Dice_value_2_2 = counter_2_2  -- Wert speichern
            end
        end

        function decreaseCounter_3_2()
            if counter_3_2 > 0 then
                counter_3_2 = counter_3_2 - 1
                UI.setValue("counterText_3_2", tostring(counter_3_2))
                Dice_value_3_2 = counter_3_2  -- Wert speichern
            end
        end

        function increaseCounter_3_2()
            if counter_3_2 < 6 then
                counter_3_2 = counter_3_2 + 1
                UI.setValue("counterText_3_2", tostring(counter_3_2))
                Dice_value_3_2 = counter_3_2  -- Wert speichern
            end
        end

        function decreaseCounter_4_2()
            if counter_4_2 > 0 then
                counter_4_2 = counter_4_2 - 1
                UI.setValue("counterText_4_2", tostring(counter_4_2))
                Dice_value_4_2 = counter_4_2  -- Wert speichern
            end
        end

        function increaseCounter_4_2()
            if counter_4_2 < 6 then
                counter_4_2 = counter_4_2 + 1
                UI.setValue("counterText_4_2", tostring(counter_4_2))
                Dice_value_4_2 = counter_4_2  -- Wert speichern
            end
        end

        function decreaseCounter_5_2()
            if counter_5_2 > 0 then
                counter_5_2 = counter_5_2 - 1
                UI.setValue("counterText_5_2", tostring(counter_5_2))
                Dice_value_5_2 = counter_5_2  -- Wert speichern
            end
        end

        function increaseCounter_5_2()
            if counter_5_2 < 6 then
                counter_5_2 = counter_5_2 + 1
                UI.setValue("counterText_5_2", tostring(counter_5_2))
                Dice_value_5_2 = counter_5_2  -- Wert speichern
            end
        end

        function decreaseCounter_6_2()
            if counter_6_2 > 0 then
                counter_6_2 = counter_6_2 - 1
                UI.setValue("counterText_6_2", tostring(counter_6_2))
                Dice_value_6_2 = counter_6_2  -- Wert speichern
            end
        end

        function increaseCounter_6_2()
            if counter_6_2 < 6 then
                counter_6_2 = counter_6_2 + 1
                UI.setValue("counterText_6_2", tostring(counter_6_2))
                Dice_value_6_2 = counter_6_2  -- Wert speichern
            end
        end

        function decreaseCounter_7_2()
            if counter_7_2 > 0 then
                counter_7_2 = counter_7_2 - 1
                UI.setValue("counterText_7_2", tostring(counter_7_2))
                Dice_value_7_2 = counter_7_2  -- Wert speichern
            end
        end

        function increaseCounter_7_2()
            if counter_7_2 < 6 then
                counter_7_2 = counter_7_2 + 1
                UI.setValue("counterText_7_2", tostring(counter_7_2))
                Dice_value_7_2 = counter_7_2  -- Wert speichern
            end
        end


                    --diceboard spieler_2
            -- board sichtbarmachen:
    --toggeln von diceboard spieler_
    function showDiceboard_2()
        local currentVisibility = UI.getAttribute("diceboard_2", "visibility")
        if currentVisibility == "hidden" then
            UI.setAttribute("diceboard_2", "visibility", "")
        else
            UI.setAttribute("diceboard_2", "visibility", "hidden")
        end
    end

    --  functions  der Dice innerhalb des Diceboards gelten für alle, daheer sind diese ausserhalb der individuellen panels

        --DICE Pannel Spieler _3

        function decreaseCounter_1_3()
            if counter_1_3 > 0 then
                counter_1_3 = counter_1_3 - 1
                UI.setValue("counterText_1_3", tostring(counter_1_3))
                Dice_value_1_3 = counter_1_3  -- Wert speichern
            end
        end

        function increaseCounter_1_3()
            if counter_1_3 < 6 then
                counter_1_3 = counter_1_3 + 1
                UI.setValue("counterText_1_3", tostring(counter_1_3))
                Dice_value_1_3 = counter_1_3  -- Wert speichern
            end
        end

        function decreaseCounter_2_3()
            if counter_2_3 > 0 then
                counter_2_3 = counter_2_3 - 1
                UI.setValue("counterText_2_3", tostring(counter_2_3))
                Dice_value_2_3 = counter_2_3  -- Wert speichern
            end
        end

        function increaseCounter_2_3()
            if counter_2_3 < 6 then
                counter_2_3 = counter_2_3 + 1
                UI.setValue("counterText_2_3", tostring(counter_2_3))
                Dice_value_2_3 = counter_2_3  -- Wert speichern
            end
        end

        function decreaseCounter_3_3()
            if counter_3_3 > 0 then
                counter_3_3 = counter_3_3 - 1
                UI.setValue("counterText_3_3", tostring(counter_3_3))
                Dice_value_3_3 = counter_3_3  -- Wert speichern
            end
        end

        function increaseCounter_3_3()
            if counter_3_3 < 6 then
                counter_3_3 = counter_3_3 + 1
                UI.setValue("counterText_3_3", tostring(counter_3_3))
                Dice_value_3_3 = counter_3_3  -- Wert speichern
            end
        end

        function decreaseCounter_4_3()
            if counter_4_3 > 0 then
                counter_4_3 = counter_4_3 - 1
                UI.setValue("counterText_4_3", tostring(counter_4_3))
                Dice_value_4_3 = counter_4_3  -- Wert speichern
            end
        end

        function increaseCounter_4_3()
            if counter_4_3 < 6 then
                counter_4_3 = counter_4_3 + 1
                UI.setValue("counterText_4_3", tostring(counter_4_3))
                Dice_value_4_3 = counter_4_3  -- Wert speichern
            end
        end

        function decreaseCounter_5_3()
            if counter_5_3 > 0 then
                counter_5_3 = counter_5_3 - 1
                UI.setValue("counterText_5_3", tostring(counter_5_3))
                Dice_value_5_3 = counter_5_3  -- Wert speichern
            end
        end

        function increaseCounter_5_3()
            if counter_5_3 < 6 then
                counter_5_3 = counter_5_3 + 1
                UI.setValue("counterText_5_3", tostring(counter_5_3))
                Dice_value_5_3 = counter_5_3  -- Wert speichern
            end
        end

        function decreaseCounter_6_3()
            if counter_6_3 > 0 then
                counter_6_3 = counter_6_3 - 1
                UI.setValue("counterText_6_3", tostring(counter_6_3))
                Dice_value_6_3 = counter_6_3  -- Wert speichern
            end
        end

        function increaseCounter_6_3()
            if counter_6_3 < 6 then
                counter_6_3 = counter_6_3 + 1
                UI.setValue("counterText_6_3", tostring(counter_6_3))
                Dice_value_6_3 = counter_6_3  -- Wert speichern
            end
        end

        function decreaseCounter_7_3()
            if counter_7_3 > 0 then
                counter_7_3 = counter_7_3 - 1
                UI.setValue("counterText_7_3", tostring(counter_7_3))
                Dice_value_7_3 = counter_7_3  -- Wert speichern
            end
        end

        function increaseCounter_7_3()
            if counter_7_3 < 6 then
                counter_7_3 = counter_7_3 + 1
                UI.setValue("counterText_7_3", tostring(counter_7_3))
                Dice_value_7_3 = counter_7_3  -- Wert speichern
            end
        end


   --toggeln von diceboard spieler_
   function showDiceboard_3()
    local currentVisibility = UI.getAttribute("diceboard_3", "visibility")
    if currentVisibility == "hidden" then
        UI.setAttribute("diceboard_3", "visibility", "")
    else
        UI.setAttribute("diceboard_3", "visibility", "hidden")
    end
end


    --  functions  der Dice innerhalb des Diceboards gelten für alle, daheer sind diese ausserhalb der individuellen panels


        --DICE Pannel Spieler _4

    function decreaseCounter_1_4()
        if counter_1_4 > 0 then
            counter_1_4 = counter_1_4 - 1
            UI.setValue("counterText_1_4", tostring(counter_1_4))
            Dice_value_1_4 = counter_1_4  -- Wert speichern
        end
    end

    function increaseCounter_1_4()
        if counter_1_4 < 6 then
            counter_1_4 = counter_1_4 + 1
            UI.setValue("counterText_1_4", tostring(counter_1_4))
            Dice_value_1_4 = counter_1_4  -- Wert speichern
        end
    end

    function decreaseCounter_2_4()
        if counter_2_4 > 0 then
            counter_2_4 = counter_2_4 - 1
            UI.setValue("counterText_2_4", tostring(counter_2_4))
            Dice_value_2_4 = counter_2_4  -- Wert speichern
        end
    end

    function increaseCounter_2_4()
        if counter_2_4 < 6 then
            counter_2_4 = counter_2_4 + 1
            UI.setValue("counterText_2_4", tostring(counter_2_4))
            Dice_value_2_4 = counter_2_4  -- Wert speichern
        end
    end

    function decreaseCounter_3_4()
        if counter_3_4 > 0 then
            counter_3_4 = counter_3_4 - 1
            UI.setValue("counterText_3_4", tostring(counter_3_4))
            Dice_value_3_4 = counter_3_4  -- Wert speichern
        end
    end

    function increaseCounter_3_4()
        if counter_3_4 < 6 then
            counter_3_4 = counter_3_4 + 1
            UI.setValue("counterText_3_4", tostring(counter_3_4))
            Dice_value_3_4 = counter_3_4  -- Wert speichern
        end
    end

    function decreaseCounter_4_4()
        if counter_4_4 > 0 then
            counter_4_4 = counter_4_4 - 1
            UI.setValue("counterText_4_4", tostring(counter_4_4))
            Dice_value_4_4 = counter_4_4  -- Wert speichern
        end
    end

    function increaseCounter_4_4()
        if counter_4_4 < 6 then
            counter_4_4 = counter_4_4 + 1
            UI.setValue("counterText_4_4", tostring(counter_4_4))
            Dice_value_4_4 = counter_4_4  -- Wert speichern
        end
    end

    function decreaseCounter_5_4()
        if counter_5_4 > 0 then
            counter_5_4 = counter_5_4 - 1
            UI.setValue("counterText_5_4", tostring(counter_5_4))
            Dice_value_5_4 = counter_5_4  -- Wert speichern
        end
    end

    function increaseCounter_5_4()
        if counter_5_4 < 6 then
            counter_5_4 = counter_5_4 + 1
            UI.setValue("counterText_5_4", tostring(counter_5_4))
            Dice_value_5_4 = counter_5_4  -- Wert speichern
        end
    end

    function decreaseCounter_6_4()
        if counter_6_4 > 0 then
            counter_6_4 = counter_6_4 - 1
            UI.setValue("counterText_6_4", tostring(counter_6_4))
            Dice_value_6_4 = counter_6_4  -- Wert speichern
        end
    end

    function increaseCounter_6_4()
        if counter_6_4 < 6 then
            counter_6_4 = counter_6_4 + 1
            UI.setValue("counterText_6_4", tostring(counter_6_4))
            Dice_value_6_4 = counter_6_4  -- Wert speichern
        end
    end

    function decreaseCounter_7_4()
        if counter_7_4 > 0 then
            counter_7_4 = counter_7_4 - 1
            UI.setValue("counterText_7_4", tostring(counter_7_4))
            Dice_value_7_4 = counter_7_4  -- Wert speichern
        end
    end

    function increaseCounter_7_4()
        if counter_7_4 < 6 then
            counter_7_4 = counter_7_4 + 1
            UI.setValue("counterText_7_4", tostring(counter_7_4))
            Dice_value_7_4 = counter_7_4  -- Wert speichern
        end
    end


   --toggeln von diceboard spieler_
   function showDiceboard_4()
    local currentVisibility = UI.getAttribute("diceboard_4", "visibility")
    if currentVisibility == "hidden" then
        UI.setAttribute("diceboard_4", "visibility", "")
    else
        UI.setAttribute("diceboard_4", "visibility", "hidden")
    end
end



    --  functions  der Dice innerhalb des Diceboards gelten für alle, daheer sind diese ausserhalb der individuellen panels

     -- Diceboard funktionen , gelten für alle:
        function showColorRot()
            print("Dice: rot")
        end

        function showColorBlau()
            print("Dice: blau")
        end

        function showColorGelb()
            print("Dice: gelb")
        end

        function showColorGruen()
            print("Dice: grün")
        end

        function showColorHellgrau()
            print("Dice: hellgrau")
        end

        function showColorSchwarz()
            print("Dice: schwarz")
        end

        function showColorBraun()
            print("Dice: braun")
        end




--Action Panels
        --Action Panels Funktionen für Spieler 1
    function angriff_1()
        local dice_1_1 = Dice_value_1_1
        local dice_2_1 = Dice_value_2_1
        local dice_3_1 = Dice_value_3_1
        local dice_4_1 = Dice_value_4_1
        print("Angriff Spieler 1: Würfelwerte - Dice 1: " .. dice_1_1 .. ", Dice 2: " .. dice_2_1 .. ", Dice 3: " .. dice_3_1 .. ", Dice 4: " .. dice_4_1)
    end

    function abwehr_1()
        local dice_5_1 = Dice_value_5_1
        local dice_6_1 = Dice_value_6_1
        local dice_7_1 = Dice_value_7_1
        print("Abwehr Spieler 1: Würfelwerte - Dice 5: " .. dice_5_1 .. ", Dice 6: " .. dice_6_1 .. ", Dice 7: " .. dice_7_1)
    end

    function probe_1()
        local dice_5_1 = 1
        local dice_6_1 = 1
        print("Probe Spieler 1: Würfelwerte - Dice 5: " .. dice_5_1 .. ", Dice 6: " .. dice_6_1)
    end

    function heilung_1()
        local dice_2_1 = 2
        print("Heilung Spieler 1: Würfelwert - Dice 2: " .. dice_2_1)
    end

    --Action Panels Funktionen für Spieler 2
    function angriff_2()
        local dice_1_2 = Dice_value_1_2
        local dice_2_2 = Dice_value_2_2
        local dice_3_2 = Dice_value_3_2
        local dice_4_2 = Dice_value_4_2
        print("Angriff Spieler 2: Würfelwerte - Dice 1: " .. dice_1_2 .. ", Dice 2: " .. dice_2_2 .. ", Dice 3: " .. dice_3_2 .. ", Dice 4: " .. dice_4_2)
    end

    function abwehr_2()
        local dice_5_2 = Dice_value_5_2
        local dice_6_2 = Dice_value_6_2
        local dice_7_2 = Dice_value_7_2
        print("Abwehr Spieler 2: Würfelwerte - Dice 5: " .. dice_5_2 .. ", Dice 6: " .. dice_6_2 .. ", Dice 7: " .. dice_7_2)
    end

    function probe_2()
        local dice_5_2 = 1
        local dice_6_2 = 1
        print("Probe Spieler 2: Würfelwerte - Dice 5: " .. dice_5_2 .. ", Dice 6: " .. dice_6_2)
    end

    function heilung_2()
        local dice_2_2 = 2
        print("Heilung Spieler 2: Würfelwert - Dice 2: " .. dice_2_2)
    end

    --Action Panels Funktionen für Spieler 3
    function angriff_3()
        local dice_1_3 = Dice_value_1_3
        local dice_2_3 = Dice_value_2_3
        local dice_3_3 = Dice_value_3_3
        local dice_4_3 = Dice_value_4_3
        print("Angriff Spieler 3: Würfelwerte - Dice 1: " .. dice_1_3 .. ", Dice 2: " .. dice_2_3 .. ", Dice 3: " .. dice_3_3 .. ", Dice 4: " .. dice_4_3)
    end

    function abwehr_3()
        local dice_5_3 = Dice_value_5_3
        local dice_6_3 = Dice_value_6_3
        local dice_7_3 = Dice_value_7_3
        print("Abwehr Spieler 3: Würfelwerte - Dice 5: " .. dice_5_3 .. ", Dice 6: " .. dice_6_3 .. ", Dice 7: " .. dice_7_3)
    end

    function probe_3()
        local dice_5_3 = 1
        local dice_6_3 = 1
        print("Probe Spieler 3: Würfelwerte - Dice 5: " .. dice_5_3 .. ", Dice 6: " .. dice_6_3)
    end

    function heilung_3()
        local dice_2_3 = 2
        print("Heilung Spieler 3: Würfelwert - Dice 2: " .. dice_2_3)
    end

    --Action Panels Funktionen für Spieler 4
    function angriff_4()
        local dice_1_4 = Dice_value_1_4
        local dice_2_4 = Dice_value_2_4
        local dice_3_4 = Dice_value_3_4
        local dice_4_4 = Dice_value_4_4
        print("Angriff Spieler 4: Würfelwerte - Dice 1: " .. dice_1_4 .. ", Dice 2: " .. dice_2_4 .. ", Dice 3: " .. dice_3_4 .. ", Dice 4: " .. dice_4_4)
    end

    function abwehr_4()
        local dice_5_4 = Dice_value_5_4
        local dice_6_4 = Dice_value_6_4
        local dice_7_4 = Dice_value_7_4
        print("Abwehr Spieler 4: Würfelwerte - Dice 5: " .. dice_5_4 .. ", Dice 6: " .. dice_6_4 .. ", Dice 7: " .. dice_7_4)
    end

    function probe_4()
        local dice_5_4 = 1
        local dice_6_4 = 1
        print("Probe Spieler 4: Würfelwerte - Dice 5: " .. dice_5_4 .. ", Dice 6: " .. dice_6_4)
    end

    function heilung_4()
        local dice_2_4 = 2
        print("Heilung Spieler 4: Würfelwert - Dice 2: " .. dice_2_4)
    end






--ONLOAD Bereich
    function initHeldenpanel()

        local panelIds = {
            "Parent_PlayerPanel_1",
            "Parent_PlayerPanel_2",
            "Parent_PlayerPanel_3",
            "Parent_PlayerPanel_4",
        }
        
        -- Initiale Sichtbarkeit setzen
        for _, panelId in ipairs(panelIds) do
            UI.setAttribute(panelId, "visibility", "Black,White,Yellow,Red,Blue,Green")
            --print("Sichtbarkeit von " .. panelId .. " auf 'Keine' gesetzt.")
        end
        
        --print("Initiale Sichtbarkeit für alle Panels gesetzt.")
        --print("Skript geladen, GUID-Ermittlung wird gestartet...")
        
        extractMinisGUIDs()
        updateNameAndDescription()
        updateListAndPanels()
        createDynamicTable()
        
        local allMarkers = getAllMarkersFromJSON()
        updateMarkerImages(allMarkers)

        -- Korrekte Syntax für Asset-Registrierung
        UI.setAttributes("image_refresh", {
            image = refreshImageUrl
        })



        UI.setAttributes("image-angriff_1", { image = angriffImageUrl })
        UI.setAttributes("image-angriff_2", { image = angriffImageUrl })
        UI.setAttributes("image-angriff_3", { image = angriffImageUrl })
        UI.setAttributes("image-angriff_4", { image = angriffImageUrl })

        UI.setAttributes("image-abwehr_1", { image = abwehrImageUrl })
        UI.setAttributes("image-abwehr_2", { image = abwehrImageUrl })
        UI.setAttributes("image-abwehr_3", { image = abwehrImageUrl })
        UI.setAttributes("image-abwehr_4", { image = abwehrImageUrl })

        UI.setAttributes("image-probe_1", { image = probeImageUrl })
        UI.setAttributes("image-probe_2", { image = probeImageUrl })
        UI.setAttributes("image-probe_3", { image = probeImageUrl })
        UI.setAttributes("image-probe_4", { image = probeImageUrl })

        UI.setAttributes("image-heilung_1", { image = heilungImageUrl })
        UI.setAttributes("image-heilung_2", { image = heilungImageUrl })
        UI.setAttributes("image-heilung_3", { image = heilungImageUrl })
        UI.setAttributes("image-heilung_4", { image = heilungImageUrl })

        UI.setAttributes("image-refresh_1", { image = refreshImageUrl })
        UI.setAttributes("image-refresh_2", { image = refreshImageUrl })
        UI.setAttributes("image-refresh_3", { image = refreshImageUrl })
        UI.setAttributes("image-refresh_4", { image = refreshImageUrl })





    end