function StoreCrosshairData(data)
    SetResourceKvp("CrosshairData", json.encode(data))
end

function LoadCrosshairData()
    local file = GetResourceKvpString("CrosshairData")
    if (file ~= nil) then
        local data = json.decode(file)
        SendCrosshairData(data)
    end
end

Citizen.CreateThread(function()
    LoadCrosshairData()
end)
