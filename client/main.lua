RegisterNUICallback("UpdateCrosshairData", function(data)
    StoreCrosshairData(data)
end)

RegisterNUICallback("CloseCrosshairConfig", function(data)
    CloseCrosshairConfig()
end)

function SendCrosshairData(data)
    SendNUIMessage({
        data = data
    })
end

function OpenCrosshairConfig()
    SendNUIMessage({
        toggleUI = true
    })
    SetNuiFocus(true, true)
end

function CloseCrosshairConfig()
    SetNuiFocus(false, false)
end

RegisterCommand("ch", function() -- Change Command//Edit the "ch" to what command you'd like 
    OpenCrosshairConfig()
end, false)
