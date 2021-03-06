Config = {}

--------------------------
-- Utility
--------------------------
Config.Utility = {
    CoreName = "qb-core", -- Core Name
    KeyTeleport = 38,
    Check = "license", -- "license" or "citizenid"
}

Config.Licenses = { -- Your licenses
    { license = "license:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"},
}

Config.CitizenID = { -- Your citizenid
    { citizenid = "ASDASDASD"},
}

Config.Teleports = {
    [1] = {
        [1] = { -- Go In
            coords = vector4(-143.94, -576.18, 32.42, 338.01),
            AllowVehicle = true,
            drawText = '[E] - Go in bitches!'
        },
        [2] = { -- Go Out
            coords = vector4(-196.23, -579.94, 135.58, 279.06),
            AllowVehicle = true,
            drawText = '[E] Go out bitches!'
        },
    },
    --[[ -- Add more teleports
    [2] = {
        [1] = { -- Go In
            coords = vector4(-143.94, -576.18, 32.42, 338.01),
            AllowVehicle = true,
            drawText = '[E] - Go in bitches!'
        },
        [2] = { -- Go Out
            coords = vector4(-196.23, -579.94, 135.58, 279.06),
            AllowVehicle = true,
            drawText = '[E] Go out bitches!'
        },
    },
    ]]
}