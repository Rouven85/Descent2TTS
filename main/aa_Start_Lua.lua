
-- hier kommt alles rein, was beim Start des Projekts geladen werden soll, und normalerwesie in der Global.lua stehen würde!!


require("/main/heldenpanel")    
require("/main/Bildauswahl")
require ("/main/Spielerauswahl")
require ("/main/Wuerfelscript")    

function project_onLoad(save_state)
    initHeldenpanel()

        -- Bildauswahl laden 
        local Bildauswahl = require("main.Bildauswahl") 
        Bildauswahl_onLoad()

        
end