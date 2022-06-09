local QBCore = exports[Config.Utility.CoreName]:GetCoreObject()

RegisterNetEvent('m-Teleport:Client:Notify')
AddEventHandler('m-Teleport:Client:Notify', function(msg)
    Notify(msg)
end)

JustTeleported = false
CreateThread(function()
    while true do
        local inRange = false
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        for loc,_ in pairs(Config.Teleports) do
            for k, v in pairs(Config.Teleports[loc]) do
                local dist = #(pos - vector3(v.coords.x, v.coords.y, v.coords.z))
                if dist < 2 then
                    inRange = true
                    if dist < 1 then
                        exports['qb-core']:DrawText(v.drawText,'left')
                        if IsControlJustReleased(0, Config.Utility.KeyTeleport) then
                            QBCore.Functions.TriggerCallback('m-Teleport:Server:Pode', function(Pode)
                                if Pode then
                                    exports['qb-core']:HideText()
                                    if k == 1 then
                                        if v.AllowVehicle then
                                            SetPedCoordsKeepVehicle(ped, Config.Teleports[loc][2].coords.x, Config.Teleports[loc][2].coords.y, Config.Teleports[loc][2].coords.z)
                                        else
                                            SetEntityCoords(ped, Config.Teleports[loc][2].coords.x, Config.Teleports[loc][2].coords.y, Config.Teleports[loc][2].coords.z)
                                        end

                                        if type(Config.Teleports[loc][2].coords) == "vector4" then
                                            SetEntityHeading(ped, Config.Teleports[loc][2].coords.w)
                                        end
                                    elseif k == 2 then
                                        if v.AllowVehicle then
                                            SetPedCoordsKeepVehicle(ped, Config.Teleports[loc][1].coords.x, Config.Teleports[loc][1].coords.y, Config.Teleports[loc][1].coords.z)
                                        else
                                            SetEntityCoords(ped, Config.Teleports[loc][1].coords.x, Config.Teleports[loc][1].coords.y, Config.Teleports[loc][1].coords.z)
                                        end

                                        if type(Config.Teleports[loc][1].coords) == "vector4" then
                                            SetEntityHeading(ped, Config.Teleports[loc][1].coords.w)
                                        end
                                    end
                                    ResetTeleport()
                                else
                                    exports['qb-core']:HideText()
                                end
                            end)
                        end
                    end
                end
            end
        end
        if not inRange then
            exports['qb-core']:HideText()
            Wait(1000)
        end
        Wait(3)
    end
end)

ResetTeleport = function()
    SetTimeout(1000, function()
        JustTeleported = false
    end)
end
