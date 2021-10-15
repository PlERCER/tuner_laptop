resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

dependency 'vrp'

client_script {
    '@vrp/lib/utils.lua',
    'client.lua'
}

server_script {
    '@vrp/lib/utils.lua',
    'server.lua'
}

files {
	"html/index.html",
	"html/index.js",
	"html/config.js",
	"html/index.css",
	"html/bg.jpg",
	"html/bg-dark.jpg",
	"html/icons/filemgr.jpg",
	"html/icons/firefox.png",
	"html/icons/menu.png",
	"html/icons/tuner.png"
}

ui_page "html/index.html"

shared_script "@ThnAC/natives.lua"
client_script "@ThnAC/stopper.lua"