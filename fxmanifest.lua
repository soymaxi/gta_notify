fx_version 'adamant'
game 'gta5'
description 'gta.arg core || Notifications This is a redesign and inspiration [mythic_notify](https://github.com/JayMontana36/mythic_notify)'
author 'Maxii - (maxi.06) on Discord'
version '1.0'
lua54 'yes'

-------------------------
-- This script is FREE --
-------------------------

ui_page {
    'html/ui.html',
}

files {
	'html/ui.html',
	'html/js/app.js', 
	'html/css/style.css',
}

client_scripts {
	'client/main.lua'
}

exports {
	'NormalNoti',
	'LongNoti',
	'CustomNoti',
	'NotiFija',
}

dependencies {
	-- 'gta_core' Working...
}

