Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) -- Warte 1 Sekunde

        -- Hole die aktuelle Uhrzeit
        local hours = GetClockHours()
        local minutes = GetClockMinutes()

        -- Formatierte Zeit
        local time = string.format("%02d:%02d", hours, minutes)

        -- Sende die Zeit an das NUI (HTML)
        SendNUIMessage({
            action = "updateTime",
            time = time
        })
    end
end)
        -- made by steinchen07 --