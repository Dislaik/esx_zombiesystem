fx_version 'bodacious'
games { 'gta5' }

author 'Dislaik'
description 'Zombie System for ESX Framework'
version '1.0.0'

-- What to run
client_scripts {
	'config.lua',
    'client/main.lua'
}
server_script {
	'server/main.lua'
}

dependencies {
	'pNotify'
}
