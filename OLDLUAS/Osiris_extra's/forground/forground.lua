menu.notify("Osiris lua has loaded \nwe support the lua console with custom messages", "Osiris lua", 9, 80)
print("   ____   _____ _____ _____  _____  _____ \n  / __ \\ / ____|_   _|  __ \\|_   _|/ ____|\n | |  | | (___   | | | |__) | | | | (___  \n | |  | |\\___ \\  | | |  _  /  | |  \\___ \\ \n | |__| |____) |_| |_| | \\ \\ _| |_ ____) |\n  \\____/|_____/|_____|_|  \\_\\_____|_____/ ")print("\n                               /$$             /$$    \n                              |__/            | $$    \n  /$$$$$$$  /$$$$$$$  /$$$$$$  /$$  /$$$$$$  /$$$$$$  \n /$$_____/ /$$_____/ /$$__  $$| $$ /$$__  $$|_  $$_/  \n|  $$$$$$ | $$      | $$  \\__/| $$| $$  \\ $$  | $$    \n \\____  $$| $$      | $$      | $$| $$  | $$  | $$ /$$\n /$$$$$$$/|  $$$$$$$| $$      | $$| $$$$$$$/  |  $$$$/\n|_______/  \\_______/|__/      |__/| $$____/    \\___/  \n                                  | $$                \n                                  | $$                \n                                  |__/                ")    
 xcoords,ycoords,zcoords = -5784.258,-8289.386,136.411  
 xprotcoord,yprotcoord,zprotcoord = -8292.664,-4596.8257,14358.0 --thanks to loki and sa7an for giving me these
 my_self_ped = player.get_player_ped(player.player_id())
 muplyid = player.player_id()
 my_name = player.get_player_name(muplyid)
 my_scid = player.get_player_scid(muplyid)
 my_ip = player.get_player_ip(muplyid)
 my_host_token = player.get_player_host_token(muplyid)
 my_model = player.get_player_model(muplyid)
 my_health = player.get_player_health(muplyid)
MyId = player.player_id
getPed = player.get_player_ped
head_bone = 31086
right_hand_bone = 28422                               -- thanks to sanian for helping me with bone index and natives
left_hand_bone = 60309
chest_bone = 24818
left_foot_bone = 14201
right_foot_bone = 52301
 wave_height = water.get_waves_intensity()
 print("\nWelcome to Osiris ".. my_name .." hope you enjoy")
print("remember to join the discord: https://discord.gg/WeEuwYcBtA")
menu.notify("Welcome to Osiris \njoin the discord: https://discord.gg/WeEuwYcBtA", "Osiris lua", 9, 80)
-- thanks to proddy for helping me make this function he made most of it full credit to him.
function Load_backround_scripts()
local rootPath = utils.get_appdata_path("PopstarDevs\\2Take1Menu\\scripts\\Osiris_extra's\\backround", "")
local backround_script = {"functions.lua","model_changer.lua", "attachments.lua", "script_events.lua", "model_function.lua", "ptfx.lua", "chat_sms.lua", "weapon_options.lua", "crash.lua"}
for i=1,#backround_script do
local path = rootPath .. "\\" .. backround_script[i]
if utils.file_exists(path) then local load, files_missing = loadfile(path) if files_missing then menu.notify("error you need the Osiris_extra's file", "Osiris lua", 9, 50) else load() end end end
end
