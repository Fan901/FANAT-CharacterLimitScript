fx_version 'cerulean'
games {'gta5'}
lua54 'on'

author 'FANAT-TEAM-Scripts'
description 'FANAT-TEAM Characters Limit Script'
version '0.0.1'

server_scripts {
    '@oxmysql/lib/MySQL.lua',

    'server.lua'
}
client_scripts {    
    'client.lua'
}

escrow_ignore {
    'config.lua'  -- Only ignore one file
}
dependency '/assetpacks'