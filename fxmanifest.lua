fx_version 'adamant'
game 'gta5'
description 'balazs-simplefarming'
version '1.05'
lua54 'yes'

client_script {
  '@es_extended/locale.lua',
  'locales/hu.lua',

  "client/client.lua",
  "client/blips.lua",
  "client/propsspawn.lua",
  "config/config.lua"
}

server_script {
  '@es_extended/locale.lua',
  "config/config.lua",
  'locales/hu.lua',

  "@mysql-async/lib/MySQL.lua",
  "server/server.lua"
}

escrow_ignore {
  "client/client.lua",
  "server/server.lua",
  "config/config.lua",
  'locales/hu.lua',
}
