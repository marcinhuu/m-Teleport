fx_version 'cerulean'
author 'marcinhu#0001'
Description 'Teleport'
game 'gta5'

shared_scripts { 
    "configs/*.lua",
}

client_script {
    "client/**.lua",
}

server_script { 
    '@oxmysql/lib/MySQL.lua',
    "server/**.lua",
}
