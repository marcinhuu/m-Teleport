Config = {}

--------------------------
-- Utility
--------------------------
Config.Utility = {
    CoreName = "qb-core", -- Core Name
    KeyTeleport = 38,
}

Config.Licenses = { -- Your licenses
    { license = "license:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"},
    -- You can add more 
}

Config.Teleports = {
    [1] = {
        [1] = { -- Go In
            coords = vector4(-143.94, -576.18, 32.42, 338.01),
            AllowVehicle = true,
            drawText = '[E] - Go in!'
        },
        [2] = { -- Go Out
            coords = vector4(-196.23, -579.94, 135.58, 279.06),
            AllowVehicle = true,
            drawText = '[E] Go out!'
        },
    },
    --[[ -- Add more teleports
    [2] = {
        [1] = { -- Go In
            coords = vector4(-143.94, -576.18, 32.42, 338.01),
            AllowVehicle = true,
            drawText = '[E] - Go in!'
        },
        [2] = { -- Go Out
            coords = vector4(-196.23, -579.94, 135.58, 279.06),
            AllowVehicle = true,
            drawText = '[E] Go out!'
        },
    },
    ]]
}
