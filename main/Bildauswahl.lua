
local Bildauswahl = {} 

local Variablen = require("Librarys.Bilderadressen") 

function Bildauswahl_onLoad()
   
    self.UI.setXml(UI_XML)

    -- Setze initiale Bilder für jedes Panel
    for playerId = 1, 4 do
        local imageId = "displayedImage_" .. playerId
        local selectedImage = Variablen.backgroundImages[playerId]
        
        if self.UI.getAttribute(imageId, "id") then
            self.UI.setAttribute(imageId, "image", selectedImage)
        end
    end
end

-- Event-Handler für jeden Button und jedes Panel erstellen
for playerId = 1, 4 do
    for i = 1, 10 do
        _G["buttonClick_" .. playerId .. "_" .. i] = function(player, value, id)
            updateImage(playerId, i)
        end
    end
end

function updateImage(playerId, index)
    if index < 1 or index > # Variablen.backgroundImages then
        return
    end

    local imageId = "displayedImage_" .. playerId
    local selectedImage = Variablen.backgroundImages[index]
    
    if not self.UI.getAttribute(imageId, "id") then
        return
    end
    
    self.UI.setAttribute(imageId, "image", selectedImage)
end

return Bildauswahl