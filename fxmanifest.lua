name "Jim-Mining"
author "Jimathy"
version "v2.4.3"
description "Mining Script By Jimathy"
fx_version "cerulean"
game "gta5"

shared_scripts { 'config.lua', 'shared/*.lua', 'locales/*.lua', '@ox_lib/init.lua' }
server_script { 'server.lua' }
client_scripts { 	
    '@qbx_core/modules/playerdata.lua',
    'client.lua'
}

lua54 'yes'