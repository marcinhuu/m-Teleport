local QBCore = exports[Config.Utility.CoreName]:GetCoreObject()

QBCore.Functions.CreateCallback("m-Teleport:Server:Pode", function(source, cb)
    local src = source
    local license = QBCore.Functions.GetIdentifier(src, 'license')
    for i, v in pairs(Config.Licenses) do
        if v.license == license then
            cb(true)
        else 
            TriggerClientEvent('m-Teleport:Client:Notify', src, "You can't do this.")
            cb(false)
        end
    end
end)