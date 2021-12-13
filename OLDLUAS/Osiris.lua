
-- thanks to proddy for helping me make this function he made most of it full credit to him.
local function Load_forground_scripts()
local rootPath = utils.get_appdata_path("PopstarDevs\\2Take1Menu\\scripts\\Osiris_extra's\\forground", "")
local forground_script = {"menu_features.lua", "forground.lua"}
for i=1,#forground_script do
local path = rootPath .. "\\" .. forground_script[i]
if utils.file_exists(path) then local load, files_missing = loadfile(path) if files_missing then menu.notify("error you need the Osiris_extra's file", "Osiris lua", 9, 50) else load() end end end
end
Load_forground_scripts()
red = 0x0000ff
green = 0x00ff00
blue = 0xff0000
local Osiris_globai = script.get_global_i
local mainpath = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
advanced_user_mode = menu.add_feature("enable advanced user mode", "toggle", lobby_adv, function(feat)
if feat.on then
adv_user_show()
else
adv_user_hide()
end
return HANDLER_CONTINUE
end)
advanced_user_mode.threaded = true
advanced_user_debug = menu.add_feature("enable advanced debug consle", "toggle", lobby_adv, function(feat)
if feat.on then
enable_adv_debug()
else
hide_adv_debug()
end
return HANDLER_CONTINUE
end)
advanced_user_debug.threaded = true
advanced_user_debug.hidden = true
menu.add_feature("activate protection cam", "toggle", lobby_protections, function(k1337_2)
if k1337_2.on then
local pos = v3() pos.x = xprotcoord pos.y = yprotcoord pos.z = zprotcoord entity.set_entity_coords_no_offset(PlyPed(player.player_id()), pos) entity.freeze_entity(PlyPed(player.player_id()), true) end if k1337_2.on == false then entity.freeze_entity(PlyPed(player.player_id()), false) local me = player.player_id() ped.set_ped_health(PlyPed(me),  0) end
end)
menu.add_player_feature("copy name to clipboard", "action", info_shit, function(feat, pid)
local player_ip = player.get_player_name(pid) utils.to_clipboard(""..player_ip.."")
end)
menu.add_player_feature("copy scid to clipboard", "action", info_shit, function(feat, pid)
local player_ip = player.get_player_scid(pid) utils.to_clipboard(""..player_ip.."")
end)
menu.add_player_feature("copy ip to clipboard", "action", info_shit, function(feat, pid)
local player_ip = player.get_player_ip(pid) utils.to_clipboard(""..player_ip.."")
end)
menu.add_player_feature("copy host token to clipboard", "action", info_shit, function(feat, pid)
local player_ip = player.get_player_host_token(pid) utils.to_clipboard(""..player_ip.."")
end)
redirect_invailds = menu.add_feature("redirect invaild peds", "toggle", lobby_protections, function(feat)
if feat.on then
for E = 0, 32 do if player.is_player_modder(E, -1) then tags[#tags + 1] = "M" PED_OFF(pid) PED_OFF1(pid) PED_OFF2(pid) allpeds = ped.get_all_peds() for i=1, #allpeds do if not ped.is_ped_a_player(allpeds[i]) then local aphash = entity.get_entity_model_hash(allpeds[i]) local ped_invaild = entity.is_model_valid(aphash) local ped_invaild2 = streaming.is_model_valid(aphash) if ped_invaild == false then network.request_control_of_entity(ped_invaild) entity.set_entity_coords_no_offset(ped_invaild, pos) end if ped_invaild2 == false then network.request_control_of_entity(ped_invaild2) entity.set_entity_coords_no_offset(ped_invaild2, pos) end end end end end end
end)
redirect_invailds.threaded = true
menu.add_player_feature("trap them method:", "action_value_i", trolls, function(f, pid) 
local x = f.value  if x == 1 then local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + -1.00 local hash1337 = gameplay.get_hash_key("prop_fnclink_02gate2") local hashobj1337 = object.create_object(hash1337, pos1, true, false) entity.set_entity_god_mode(hashobj1337, true) entity.freeze_entity(hashobj1337, true) local pos1 = player.get_player_coords(pid) pos1.y = pos1.y + -2.00 pos1.x = pos1.x + -1.00 local hash1337 = gameplay.get_hash_key("prop_fnclink_02gate2") local hashobj13371 = object.create_object(hash1337, pos1, true, false) entity.set_entity_god_mode(hashobj13371, true) entity.freeze_entity(hashobj13371, true) end if x == 2 then local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + -1.00 local hash1337 = gameplay.get_hash_key("prop_shuttering03") local obj1337 = object.create_object(hash1337, pos1, true, false) entity.set_entity_god_mode(obj1337, true) entity.freeze_entity(obj1337, true) local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + 3.00 pos1.y = pos1.y + 3.00 local hash1337 = gameplay.get_hash_key("prop_shuttering03") local obj13371 = object.create_object(hash1337, pos1, true, false) local rot = entity.get_entity_rotation(obj13371) rot.z = 90 entity.set_entity_rotation(obj13371, rot) entity.set_entity_god_mode(obj13371, true) entity.freeze_entity(obj13371, true) local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + 6.00 local hash1337 = gameplay.get_hash_key("prop_shuttering03") local obj13372 = object.create_object(hash1337, pos1, true, false) entity.set_entity_god_mode(obj13372, true) entity.freeze_entity(obj13372, true) local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + 3.00 pos1.y = pos1.y + -3.00 local hash1337 = gameplay.get_hash_key("prop_shuttering03") local obj133713 = object.create_object(hash1337, pos1, true, false) local rot = entity.get_entity_rotation(obj133713) rot.z = 90 entity.set_entity_rotation(obj133713, rot) entity.set_entity_god_mode(obj133713, true) entity.freeze_entity(obj133713, true) end if x == 3 then local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + 1.00 pos1.y = pos1.y + 1.00 pos1.z = pos1.z - 1.00 local objhash189 = gameplay.get_hash_key("prop_conslift_lift") local objtest123 = object.create_object(objhash189, pos1, true, false) entity.set_entity_visible(objtest123, true) entity.set_entity_god_mode(objtest123, true) entity.freeze_entity(objtest123, true) local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x - 2.00 pos1.y = pos1.y + 1.00 pos1.z = pos1.z - 1.00 local objhash1891 = gameplay.get_hash_key("prop_conslift_lift") local objtest1231 = object.create_object(objhash1891, pos1, true, false) local rot = entity.get_entity_rotation(objtest1231) rot.z = 90 entity.set_entity_rotation(objtest1231, rot) entity.set_entity_visible(objtest1231, true) entity.set_entity_god_mode(objtest1231, true) entity.freeze_entity(objtest1231, true) end if x == 4 then local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + 0.10 pos1.y = pos1.y + 0.10 pos1.z = pos1.z - 1.00 local traphash1337 = gameplay.get_hash_key("prop_cs_bin_03") local trap1337 = object.create_object(traphash1337, pos1, true, false) entity.set_entity_visible(trap1337, true) entity.set_entity_god_mode(trap1337, true) entity.freeze_entity(trap1337, true) local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + 0.10 pos1.y = pos1.y + 0.10 pos1.z = pos1.z + 2.00 local traphash13371 = gameplay.get_hash_key("prop_cs_bin_03") local trap13371 = object.create_object(traphash13371, pos1, true, false) local rot = entity.get_entity_rotation(trap13371) rot.x = 180 entity.set_entity_rotation(trap13371, rot) entity.set_entity_visible(trap13371, true) entity.set_entity_god_mode(trap13371, true) entity.freeze_entity(trap13371, true) end if x == 5 then local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + -1.00 pos1.z = pos1.z - 1.00 local traphash1991 = gameplay.get_hash_key("prop_container_hole") local traphash19913 = object.create_object(traphash1991, pos1, true, false) entity.set_entity_visible(traphash19913, true) entity.set_entity_god_mode(traphash19913, true) entity.freeze_entity(traphash19913, true) local pos = v3() local pos1 = player.get_player_coords(pid) pos1.x = pos1.x + -1.00 pos1.z = pos1.z + 1.80 local traphash19912 = gameplay.get_hash_key("prop_container_hole") local traphash199134 = object.create_object(traphash19912, pos1, true, false) entity.set_entity_visible(traphash199134, true) entity.set_entity_god_mode(traphash199134, true) entity.freeze_entity(traphash199134, true) local rot = entity.get_entity_rotation(traphash199134) rot.x = 180 entity.set_entity_rotation(traphash199134, rot) end
f.max = 5 
f.min = 1 
f.mod = 1
f.value = 1
end)
menu.add_player_feature("trap there car method:", "action_value_i", trolls, function(f, pid) 
local x = f.value local veh = player.get_player_vehicle(pid) local original_coords = player.get_player_coords(my_self_ped) local there_ped_coords = player.get_player_coords(pid) if x == 1 then network.request_control_of_entity(veh) local trap_1_coords = v3() trap_1_coords.x = -75.571 trap_1_coords.y = -814.769 trap_1_coords.z = 311.885 entity.set_entity_coords_no_offset(my_self_ped, there_ped_coords) system.wait(25) entity.set_entity_coords_no_offset(veh, trap_1_coords) end if x == 2 then network.request_control_of_entity(veh) local trap_1_coords = v3() trap_1_coords.x = -153.042 trap_1_coords.y = -962.829 trap_1_coords.z = 219.127 entity.set_entity_coords_no_offset(my_self_ped, there_ped_coords) system.wait(25) entity.set_entity_coords_no_offset(veh, trap_1_coords) end if x == 3 then network.request_control_of_entity(veh) local trap_1_coords = v3() trap_1_coords.x = -144.112 trap_1_coords.y = -591.960 trap_1_coords.z = 206.918 entity.set_entity_coords_no_offset(my_self_ped, there_ped_coords) system.wait(25) entity.set_entity_coords_no_offset(veh, trap_1_coords) end if x == 4 then network.request_control_of_entity(veh) local trap_1_coords = v3() trap_1_coords.x = -22.852 trap_1_coords.y = -594.027 trap_1_coords.z = 50.326 entity.set_entity_coords_no_offset(my_self_ped, there_ped_coords) system.wait(25) entity.set_entity_coords_no_offset(veh, trap_1_coords) end if x == 5 then network.request_control_of_entity(veh) local trap_1_coords = v3()  trap_1_coords.x = 1949.853 trap_1_coords.y = 3835.965 trap_1_coords.z = 32.144 entity.set_entity_coords_no_offset(my_self_ped, there_ped_coords) system.wait(25) entity.set_entity_coords_no_offset(veh, trap_1_coords) end
f.max = 5 
f.min = 1 
f.mod = 1
f.value = 1
end)
menu.add_player_feature("force a quick sprunk stop", "action", trolls, function(feat, pid) 
local pos = v3() local pos1 = player.get_player_coords(pid) pos1.z = pos1.z - 0.50 pos1.y = pos1.y + 1.00 local sprunkhash = gameplay.get_hash_key("prop_vend_soda_02") local sprunk1 = object.create_object(sprunkhash, pos1, true, false) entity.set_entity_god_mode(sprunk1, true) entity.freeze_entity(sprunk1, true) local pos1 = player.get_player_coords(pid) pos1.z = pos1.z - 0.50 pos1.y = pos1.y - 1.00 local sprunk1 = object.create_object(sprunkhash, pos1, true, false) entity.set_entity_god_mode(sprunk1, true) entity.freeze_entity(sprunk1, true) local rot = entity.get_entity_rotation(sprunk1) rot.z = 180 entity.set_entity_rotation(sprunk1, rot) local pos1 = player.get_player_coords(pid) pos1.z = pos1.z - 0.50 pos1.x = pos1.x + 1.00 local sprunk1 = object.create_object(sprunkhash, pos1, true, false) entity.set_entity_god_mode(sprunk1, true) entity.freeze_entity(sprunk1, true) local rot = entity.get_entity_rotation(sprunk1) rot.z = 270 entity.set_entity_rotation(sprunk1, rot) local pos1 = player.get_player_coords(pid) pos1.z = pos1.z - 0.50 pos1.x = pos1.x - 1.00 local sprunk1 = object.create_object(sprunkhash, pos1, true, false) entity.set_entity_god_mode(sprunk1, true) entity.freeze_entity(sprunk1, true) local rot = entity.get_entity_rotation(sprunk1) rot.z = 90 entity.set_entity_rotation(sprunk1, rot) local pos1 = player.get_player_coords(pid) pos1.z = pos1.z + 0.80 local sprunk1 = object.create_object(sprunkhash, pos1, true, false) entity.set_entity_god_mode(sprunk1, true) entity.freeze_entity(sprunk1, true) local rot = entity.get_entity_rotation(sprunk1) rot.x = 90 entity.set_entity_rotation(sprunk1, rot)
end)
 menu.add_player_feature("Osiris Kick", "action", kicks, function(feat, pid)
print("starting kick")
system.wait(120)
Osiris_kick(pid)
system.wait(50)
osiris_kick_v2(pid)
system.wait(50)
osiris_kick_v3(pid)
system.wait(50)
osiris_kick_v4(pid)
print("finshed kick")
if advanced_user_debug.on == true then
local modder_ped = player.is_player_modder(pid, -1)
local self_host = player.is_player_host(muplyid)
print("smart kick checking info") print("checking if modder")
if modder_ped == true then 
print("modder mark detected")
menu.notify("Osiris kick will work if player marked as modder but it won't be as powerful", "Osiris smart kick", 9, 50)
 else
print("modder mark not detected")
 end
 print("checking host")
 if self_host == true then
print("host found "..my_name.."") print("sending smart kick")
 else
print("host not found sending smart kick version 2")
end
if player.is_player_modder(pid, -1) then
local flags = player.get_player_modder_flags(pid)
local flag_name = player.get_modder_flag_text(flags)
if flag_name == "RAC" then
print("found rac kick flags sending smart kick version 3")
else
print("rac kick flags not found reverting to other smart kick version")
end
end
end
end)
check1337 = "successful"
local mainpath = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
menu.add_player_feature("eye of london", "toggle", trolls, function(feat, pid)
if feat.on then
local pos = v3() local pos1 = player.get_player_coords(pid) pos1.z = pos1.z - 0.50 local eyehash = gameplay.get_hash_key("p_cablecar_s") local eyebox1 = object.create_object(eyehash, pos1, true, false) entity.set_entity_visible(eyebox1, true) entity.freeze_entity(eyebox1, true) local pos1 = player.get_player_coords(pid) pos1.z = pos1.z - 0.50 pos1.y = pos1.y + 2.00 local eyebox2 = object.create_object(eyehash, pos1, true, false) entity.set_entity_visible(eyebox2, true) entity.freeze_entity(eyebox2, true) system.wait(950) entity.delete_entity(eyebox1) entity.delete_entity(eyebox2) end return HANDLER_CONTINUE
end)  
menu.add_player_feature("give them crash cam protections", "action", friendly, function(playerfeat, pid)
menu.notify("player needs to be in a car with you", "Osiris lua", 9, 125) menu.notify("player can take the easy way out to leave protections", "Osiris lua", 9, 125) local car = player.get_player_vehicle(pid) network.request_control_of_entity(car) local pos = v3() pos.x = xprotcoord pos.y = yprotcoord pos.z = zprotcoord entity.set_entity_coords_no_offset(car, pos)   
end)
menu.add_feature("get current health", "action", self_health, function(feat)
if feat.on then
local me = player.player_id() local current_health =  ped.get_ped_health(PlyPed(me)) menu.notify("current health is "..current_health.." ", "Osiris lua", 9, 50) print("current health is: "..current_health.."") end
end)
local health1 =  menu.add_feature("no health off the radar", "toggle", self_health, function(feat)
if feat.on then
local me = player.player_id() ped.set_ped_max_health(PlyPed(me),  0) end return HANDLER_CONTINUE
end)
health1.on = false
local   health2 = menu.add_feature("super health regen", "toggle", self_health, function(feat)
if feat.on then
health1.on = false local me = player.player_id() ped.set_ped_max_health(PlyPed(me), 328) ped.set_ped_health(PlyPed(me),  328) end return HANDLER_CONTINUE
end)
health2.on = false
local  health6 = menu.add_feature("set health 1M", "action", self_health, function(feat)
if feat.on then
local me = player.player_id() ped.set_ped_max_health(PlyPed(me), 1000000) ped.set_ped_health(PlyPed(me),  1000000) end
end)
health6.on = false
local  health7 = menu.add_feature("set health beast mode (2500)", "action", self_health, function(feat)
if feat.on then
local me = player.player_id() ped.set_ped_max_health(PlyPed(me), 2500) ped.set_ped_health(PlyPed(me),  2500) end
end)
health7.on = false
local   health3 = menu.add_feature("set health 10k", "action", self_health, function(feat)
if feat.on then
local me = player.player_id() ped.set_ped_max_health(PlyPed(me), 10000) ped.set_ped_health(PlyPed(me),  10000) end
end)
health3.on = false
local health4 = menu.add_feature("set health 100k", "action", self_health, function(feat)
if feat.on then
local me = player.player_id() ped.set_ped_max_health(PlyPed(me), 100000) ped.set_ped_health(PlyPed(me),  100000) end
end)
health4.on = false
local health5 =  menu.add_feature("set health 500k", "action", self_health, function(feat)
if feat.on then
local me = player.player_id() ped.set_ped_max_health(PlyPed(me), 500000) ped.set_ped_health(PlyPed(me),  500000) end
end)
health5.on = false
menu.add_feature("water model lobby crash", "action", lobby_crash, function(feat)
if feat.on then
pos = player.get_player_coords(player.player_id()) Outfits() pedp = player.get_player_ped(player.player_id()) if player.is_player_female(player.player_id()) then for i = 0, 15 do modelsyncv2woman() end else for i = 0, 15 do modelsyncv1man() end end clone = ped.clone_ped(pedp) system.wait(1) entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), pos) system.wait(500) Restore() mypos = player.get_player_coords(player.player_id()) Outfits() for i = 1 , 32 do mc() end system.wait(5000) Restore() entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()),mypos)
local a_c_fish = 0x2FD800B7 local a_c_stingray = -1589092019 local a_c_sharktiger = 113504370 local a_c_sharkhammer = 1015224100 local a_c_dolphin = -1950698411 local a_c_killerwhale = -1920284487 local a_c_humpback = 1193010354
streaming.request_model(a_c_fish) while(not streaming.has_model_loaded(a_c_fish)) do system.wait(10) end player.set_player_model(a_c_fish) streaming.set_model_as_no_longer_needed(a_c_fish) system.wait(15000) streaming.request_model(a_c_stingray) while(not streaming.has_model_loaded(a_c_stingray)) do system.wait(10) end player.set_player_model(a_c_stingray) streaming.set_model_as_no_longer_needed(a_c_stingray) system.wait(15000) streaming.request_model(a_c_sharktiger) while(not streaming.has_model_loaded(a_c_sharktiger)) do system.wait(10) end player.set_player_model(a_c_sharktiger) streaming.set_model_as_no_longer_needed(a_c_sharktiger) system.wait(15000) streaming.request_model(a_c_sharkhammer) while(not streaming.has_model_loaded(a_c_sharkhammer)) do system.wait(10) end player.set_player_model(a_c_sharkhammer) streaming.set_model_as_no_longer_needed(a_c_sharkhammer) system.wait(15000) streaming.request_model(a_c_dolphin) while(not streaming.has_model_loaded(a_c_dolphin)) do system.wait(10) end player.set_player_model(a_c_dolphin) streaming.set_model_as_no_longer_needed(a_c_dolphin) system.wait(15000) streaming.request_model(a_c_killerwhale) while(not streaming.has_model_loaded(a_c_killerwhale)) do system.wait(10) end player.set_player_model(a_c_killerwhale) streaming.set_model_as_no_longer_needed(a_c_killerwhale) system.wait(15000) streaming.request_model(a_c_humpback) while(not streaming.has_model_loaded(a_c_humpback)) do system.wait(10) end player.set_player_model(a_c_humpback) streaming.set_model_as_no_longer_needed(a_c_humpback) local me = player.player_id()
local a_c_fish = 0x2FD800B7 local a_c_stingray = -1589092019 local a_c_sharktiger = 113504370 local a_c_sharkhammer = 1015224100 local a_c_dolphin = -1950698411 local a_c_killerwhale = -1920284487 local a_c_humpback = 1193010354 local conq1 = 0x9C9EFFD8 local conq2 = 0x705E61F2 ped.set_ped_health(PlyPed(me),  1) system.wait(100) streaming.request_model(conq1) while(not streaming.has_model_loaded(conq1)) do system.wait(10) end player.set_player_model(conq1) streaming.set_model_as_no_longer_needed(conq1) ped.resurrect_ped(player.get_player_ped(me)) system.wait(100) ped.set_ped_health(PlyPed(me),  1) streaming.request_model(conq2) while(not streaming.has_model_loaded(conq2)) do system.wait(10) end player.set_player_model(conq2) streaming.set_model_as_no_longer_needed(conq2) system.wait(10) streaming.request_model(conq1) while(not streaming.has_model_loaded(conq1)) do system.wait(10) end player.set_player_model(conq1) streaming.set_model_as_no_longer_needed(conq1) ped.resurrect_ped(player.get_player_ped(me)) system.wait(100) ped.set_ped_health(PlyPed(me),  1) streaming.request_model(a_c_fish) while(not streaming.has_model_loaded(a_c_fish)) do system.wait(10) end player.set_player_model(a_c_fish) streaming.set_model_as_no_longer_needed(a_c_fish) system.wait(25) streaming.request_model(a_c_stingray) while(not streaming.has_model_loaded(a_c_stingray)) do system.wait(10) end player.set_player_model(a_c_stingray) streaming.set_model_as_no_longer_needed(a_c_stingray) system.wait(25) streaming.request_model(a_c_sharktiger) while(not streaming.has_model_loaded(a_c_sharktiger)) do system.wait(10) end player.set_player_model(a_c_sharktiger) streaming.set_model_as_no_longer_needed(a_c_sharktiger) system.wait(25) streaming.request_model(a_c_sharkhammer) while(not streaming.has_model_loaded(a_c_sharkhammer)) do system.wait(10) end player.set_player_model(a_c_sharkhammer) streaming.set_model_as_no_longer_needed(a_c_sharkhammer) system.wait(25) streaming.request_model(a_c_dolphin) while(not streaming.has_model_loaded(a_c_dolphin)) do system.wait(10) end player.set_player_model(a_c_dolphin) streaming.set_model_as_no_longer_needed(a_c_dolphin) system.wait(25) streaming.request_model(a_c_killerwhale) while(not streaming.has_model_loaded(a_c_killerwhale)) do system.wait(10) end player.set_player_model(a_c_killerwhale) streaming.set_model_as_no_longer_needed(a_c_killerwhale) system.wait(25) streaming.request_model(a_c_humpback) while(not streaming.has_model_loaded(a_c_humpback)) do system.wait(10) end player.set_player_model(a_c_humpback) streaming.set_model_as_no_longer_needed(a_c_humpback) if network.network_is_host() then hostnotify = false for i = 0, 32 do if player.is_player_valid(i) then if i ~= player.player_id() then if i ~= player.is_player_friend(i) then hka1337(i) end end end end end end
end)
menu.add_feature("conqueror's old lobby crash", "action", lobby_crash, function(feat)
if feat.on then
local me = player.player_id() local a_c_fish = 0x2FD800B7 local a_c_stingray = -1589092019 local a_c_sharktiger = 113504370 local a_c_sharkhammer = 1015224100 local a_c_dolphin = -1950698411 local a_c_killerwhale = -1920284487 local a_c_humpback = 1193010354 local conq1 = 0x9C9EFFD8 local conq2 = 0x705E61F2 ped.set_ped_health(PlyPed(me),  1) system.wait(100) streaming.request_model(conq1) while(not streaming.has_model_loaded(conq1)) do system.wait(10) end player.set_player_model(conq1) streaming.set_model_as_no_longer_needed(conq1) ped.resurrect_ped(player.get_player_ped(me)) system.wait(100) ped.set_ped_health(PlyPed(me),  1) streaming.request_model(conq2) while(not streaming.has_model_loaded(conq2)) do system.wait(10) end player.set_player_model(conq2) streaming.set_model_as_no_longer_needed(conq2) system.wait(10) streaming.request_model(conq1) while(not streaming.has_model_loaded(conq1)) do system.wait(10) end player.set_player_model(conq1) streaming.set_model_as_no_longer_needed(conq1) ped.resurrect_ped(player.get_player_ped(me)) system.wait(100) ped.set_ped_health(PlyPed(me),  1) streaming.request_model(a_c_fish) while(not streaming.has_model_loaded(a_c_fish)) do system.wait(10) end player.set_player_model(a_c_fish) streaming.set_model_as_no_longer_needed(a_c_fish) system.wait(25) streaming.request_model(a_c_stingray) while(not streaming.has_model_loaded(a_c_stingray)) do system.wait(10) end player.set_player_model(a_c_stingray) streaming.set_model_as_no_longer_needed(a_c_stingray) system.wait(25) streaming.request_model(a_c_sharktiger) while(not streaming.has_model_loaded(a_c_sharktiger)) do system.wait(10) end player.set_player_model(a_c_sharktiger) streaming.set_model_as_no_longer_needed(a_c_sharktiger) system.wait(25) streaming.request_model(a_c_sharkhammer) while(not streaming.has_model_loaded(a_c_sharkhammer)) do system.wait(10) end player.set_player_model(a_c_sharkhammer) streaming.set_model_as_no_longer_needed(a_c_sharkhammer) system.wait(25) streaming.request_model(a_c_dolphin) while(not streaming.has_model_loaded(a_c_dolphin)) do system.wait(10) end player.set_player_model(a_c_dolphin) streaming.set_model_as_no_longer_needed(a_c_dolphin) system.wait(25) streaming.request_model(a_c_killerwhale) while(not streaming.has_model_loaded(a_c_killerwhale)) do system.wait(10) end player.set_player_model(a_c_killerwhale) streaming.set_model_as_no_longer_needed(a_c_killerwhale) system.wait(25) streaming.request_model(a_c_humpback) while(not streaming.has_model_loaded(a_c_humpback)) do system.wait(10) end player.set_player_model(a_c_humpback) streaming.set_model_as_no_longer_needed(a_c_humpback) if network.network_is_host() then hostnotify = false for i = 0, 32 do if player.is_player_valid(i) then if i ~= player.player_id() then if i ~= player.is_player_friend(i) then hka1337(i) end end end end end end
end)
menu.add_feature("freemode man lobby crash", "action", lobby_crash, function(feat)
if feat.on then
mypos = player.get_player_coords(player.player_id()) Outfits() for i = 1 , 32 do mc() end system.wait(5000) Restore() entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()),mypos) for i = 0, 32 do if player.is_player_valid(i) then if i ~= player.player_id() then if i ~= player.is_player_friend(i) then hka1337(i) end end end end end
end)
menu.add_feature("freemode woman lobby crash", "action", lobby_crash, function(feat)
if feat.on then
pos = player.get_player_coords(player.player_id()) Outfits() pedp = player.get_player_ped(player.player_id()) if player.is_player_female(player.player_id()) then for i = 0, 15 do modelsyncv2woman() end else for i = 0, 15 do modelsyncv1man() end end clone = ped.clone_ped(pedp) system.wait(1) entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), pos) system.wait(500) Restore() for i = 0, 32 do if player.is_player_valid(i) then if i ~= player.player_id() then if i ~= player.is_player_friend(i) then hka1337(i) end end end end end
end)
menu.add_player_feature("kick from vehicle", "action", veh_trolling, function(feat, pid)
if feat.on then
local there_ped = player.get_player_ped(pid) script.trigger_script_event(-1333236192, pid, {-1, 0}) script.trigger_script_event(-1089379066, pid, {-1, 0}) script.trigger_script_event(0xc40f66ca, pid, {}) ped.clear_ped_tasks_immediately(there_ped) end
end)
menu.add_player_feature("set there Vehicle godmode", "action", veh_other, function(feat, pid) 
if feat.on then
menu.notify("works best if your close to them or spectating", "Osiris lua", 9, 50) player.get_player_ped(pid) local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) entity.set_entity_god_mode(veh, true) if entity.get_entity_god_mode(veh) == true then print("there car has been set to god mode successful") end if entity.get_entity_god_mode(veh) == false then print("there car has been set to god mode failed \n try teleporting to them if it still dose not work then theres problay another modder around") end end
end)
menu.add_player_feature("remove any Vehicle god mode", "action", veh_other, function(feat, pid) 
if feat.on then
menu.notify("works best if your close to them or spectating", "Osiris lua", 9, 50) player.get_player_ped(pid) local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) entity.set_entity_god_mode(veh, false) if entity.get_entity_god_mode(veh) == false then print("there car has been removed from god mode successful") end if entity.get_entity_god_mode(veh) == true then print("there car has been removed from god mode failed \n try teleporting to them if it still dose not work then theres problay another modder around") end end
end)
menu.add_player_feature("set Oppressor machine guns only", "toggle", veh_trolling, function(feat, pid)
if feat.on then player.get_player_ped(pid) local player122ped = player.get_player_ped(pid) local player133veh = player.get_player_vehicle(pid) if player133veh ~= nil then network.request_control_of_entity(player133veh) end network.request_control_of_entity(player133veh) vehicle.set_vehicle_mod_kit_type(player133veh, 0) vehicle.get_vehicle_mod(player133veh, 10) vehicle.set_vehicle_mod(player133veh, 10, -1, false) end
return HANDLER_CONTINUE
end)
menu.add_player_feature("yeet there car ", "action", veh_speed, function(feat, pid)
local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) entity.set_entity_max_speed(veh, 45000) vehicle.set_vehicle_forward_speed(veh, 1000) entity.apply_force_to_entity(veh, 3, 4, 4, 5, 0, 0, 0, true, true) system.yield(0)
end)
menu.add_player_feature("repair Vehicle", "action", veh_other, function(feat, pid)
if feat.on then
menu.notify("works best if your close to them or spectating", "Osiris lua", 9, 50)
local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) vehicle.set_vehicle_fixed(veh) vehicle.set_vehicle_deformation_fixed(veh) vehicle.set_vehicle_can_be_visibly_damaged(veh, false) end
end)
menu.add_player_feature("freeze there Vehicle", "action", veh_speed, function(feat, pid)
if feat.on then
local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) entity.freeze_entity(veh, true) end
end)
menu.add_player_feature("un-freeze there Vehicle", "action", veh_speed, function(feat, pid)
if feat.on then
local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) entity.freeze_entity(veh, false) end
end)
menu.add_player_feature("set unlimited top speed", "action", veh_speed, function(feat, pid)
if feat.on then
menu.notify("works best if your close to them or spectating", "Osiris lua", 9, 50) local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) vehicle.modify_vehicle_top_speed(veh, 99999999999999) end
end)
menu.add_player_feature("set top speed 1", "action", veh_speed, function(feat, pid)
if feat.on then
menu.notify("works best if your close to them or spectating", "Osiris lua", 9, 50) local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) vehicle.modify_vehicle_top_speed(veh, 1) end
end)
menu.add_player_feature("reset top speed", "action", veh_speed, function(feat, pid)
if feat.on then
menu.notify("works best if your close to them or spectating", "Osiris lua", 9, 50) local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) vehicle.modify_vehicle_top_speed(veh, 100) end
end)
menu.add_player_feature("kill engine", "action", veh_trolling, function(feat, pid)
if feat.on then
menu.notify("works best if your close to them or spectating", "Osiris lua", 9, 50) local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) vehicle.set_vehicle_engine_health(veh, 0) vehicle.set_vehicle_engine_on(veh, false, true, true) end
end)
menu.add_player_feature("bring back engine", "action", veh_trolling, function(feat, pid)
if feat.on then
menu.notify("works best if your close to them or spectating", "Osiris lua", 9, 50)
local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) vehicle.set_vehicle_engine_health(veh, 999999999) vehicle.set_vehicle_engine_on(veh, true, true, true) end
end)
menu.add_player_feature("glitch wheels", "action", veh_trolling, function(feat, pid)
if feat.on then
for i = 1,6 do local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) vehicle.set_vehicle_engine_health(veh, -1) vehicle.set_vehicle_wheel_health(veh, 0, -1) vehicle.modify_vehicle_top_speed(veh, -1) vehicle.set_vehicle_forward_speed(veh, -1) system.wait(25) vehicle.modify_vehicle_top_speed(veh, 9999999999999999999999999) vehicle.set_vehicle_forward_speed(veh, 999999999999999999999999) system.wait(25) vehicle.set_vehicle_engine_health(veh, 100) vehicle.set_vehicle_wheel_health(veh, 0, 1) vehicle.modify_vehicle_top_speed(veh, 100) vehicle.set_vehicle_forward_speed(veh, 0) end end
end)
menu.add_player_feature("set vehicle can be lock on", "action", veh_other, function(feat, pid)
local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) vehicle.set_vehicle_can_be_locked_on(veh,true, true)
end)
menu.add_player_feature("set vehicle can't be lock on", "action", veh_other, function(feat, pid)
local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) vehicle.set_vehicle_can_be_locked_on(veh, false, false)
end)
menu.add_feature("Beyblade", "toggle", self_veh_options, function(feat, pid)
if feat.on then
local veh = player.get_player_vehicle(muplyid) network.request_control_of_entity(veh) entity.set_entity_heading(veh, 10) system.wait(50) entity.set_entity_heading(veh, 20) system.wait(50) entity.set_entity_heading(veh, 30) system.wait(50) entity.set_entity_heading(veh, 40) system.wait(50) entity.set_entity_heading(veh, 50) system.wait(50) entity.set_entity_heading(veh, 60) system.wait(50) entity.set_entity_heading(veh, 70) system.wait(50) entity.set_entity_heading(veh, 70) system.wait(50) entity.set_entity_heading(veh, 70) system.wait(50) entity.set_entity_heading(veh, 80) system.wait(50) entity.set_entity_heading(veh, 90) system.wait(50) entity.set_entity_heading(veh, 100) system.wait(50) entity.set_entity_heading(veh, 110) system.wait(50) entity.set_entity_heading(veh, 120) system.wait(50) entity.set_entity_heading(veh, 130) system.wait(50) entity.set_entity_heading(veh, 140) system.wait(50) entity.set_entity_heading(veh, 150) system.wait(50) entity.set_entity_heading(veh, 160) system.wait(50) entity.set_entity_heading(veh, 170) system.wait(50) entity.set_entity_heading(veh, 180) system.wait(50) entity.set_entity_heading(veh, 190) system.wait(50) entity.set_entity_heading(veh, 200) system.wait(50) entity.set_entity_heading(veh, 210) system.wait(50) entity.set_entity_heading(veh, 220) system.wait(50) entity.set_entity_heading(veh, 230) system.wait(50) entity.set_entity_heading(veh, 240) system.wait(50) entity.set_entity_heading(veh, 250) system.wait(50) entity.set_entity_heading(veh, 260) system.wait(50) entity.set_entity_heading(veh, 270) system.wait(50) entity.set_entity_heading(veh, 280) system.wait(50) entity.set_entity_heading(veh, 290) system.wait(50) entity.set_entity_heading(veh, 300) system.wait(50) entity.set_entity_heading(veh, 310) system.wait(50) entity.set_entity_heading(veh, 320) system.wait(50) entity.set_entity_heading(veh, 330) system.wait(50) entity.set_entity_heading(veh, 340) system.wait(50) entity.set_entity_heading(veh, 350) system.wait(50) entity.set_entity_heading(veh, 360) system.wait(50) end
return HANDLER_CONTINUE
end)
menu.add_feature("block all pu kick's,money,rp drops in lobby", "toggle", lobby_protections, function(feat, pid)
if feat.on then
allpickups = object.get_all_pickups() local pos = v3() pos.x = xcoords pos.y = ycoords pos.z = zcoords for i = 1, #allpickups do network.request_control_of_entity(allpickups[i]) entity.set_entity_coords_no_offset(allpickups[i], pos) entity.delete_entity(allpickups[i]) entity.set_entity_as_no_longer_needed(allpickups[i]) end end
end)
menu.add_player_feature("CEO money loop", "toggle", ceo_shit, function(feat, pid)
if feat.on then
script.trigger_script_event(ceo_v1, pid, {player.player_id(), 10000, -1292453789, 0, script.get_global_i(1630317 + (1 + (pid * 595)) + 506), script.get_global_i(1652336 + 9), script.get_global_i(1652336 + 10)})
print("sent ceo money")
system.wait(1200)
script.trigger_script_event(ceo_v1, pid, {0})
print("sent ceo money")
system.wait(31000)
end
return HANDLER_CONTINUE
end)
panic_mode = menu.add_feature("PANIC mode", "toggle", lobby_protections, function(feat)
if feat.on then local pos = v3() pos.x = xprotcoord pos.y = yprotcoord pos.z = zprotcoord entity.set_entity_coords_no_offset(PlyPed(player.player_id()), pos) entity.freeze_entity(PlyPed(player.player_id()), true) for pid = 0, 32 do if pid ~= me then player.set_player_as_modder(pid, 1) end system.wait(250)
limit = 0  
for i in ipairs(vehicle.get_all_vehicles()) do local veh = vehicle.get_all_vehicles()[i]  if entity.get_entity_model_hash(veh) ~= nil then network.request_control_of_entity(veh) entity.delete_entity(veh) end if (entity.get_entity_model_hash(veh) > limit) and ped.get_vehicle_ped_is_using(player.get_player_ped(player.player_id())) ~= veh then local pos = entity.get_entity_coords(veh) pos.y = 20000 network.request_control_of_entity(veh) entity.delete_entity(veh) end for i in ipairs(vehicle.get_all_vehicles())do local veh = vehicle.get_all_vehicles()[i] if entity.is_entity_dead(veh) then local pos = entity.get_entity_coords(veh) pos.y = 20000 network.request_control_of_entity(veh) entity.delete_entity(veh) end
allpeds = ped.get_all_peds() for i=1, #allpeds do if not ped.is_ped_a_player(allpeds[i]) then local aphash = entity.get_entity_model_hash(allpeds[i]) network.request_control_of_entity(allpeds[i]) local pos = v3() pos.x = xcoords pos.y = ycoords pos.z = zcoords entity.set_entity_coords_no_offset(allpeds[i], pos) entity.delete_entity(allpeds[i]) entity.set_entity_as_no_longer_needed(allpeds[i]) end
allpickups = object.get_all_pickups() for i = 1, #allpickups do network.request_control_of_entity(allpickups[i]) entity.set_entity_coords_no_offset(allpickups[i], pos) entity.delete_entity(allpickups[i]) entity.set_entity_as_no_longer_needed(allpickups[i])
allobjs = object.get_all_objects() for i = 1, #allobjs do network.request_control_of_entity(allobjs[i]) entity.set_entity_coords_no_offset(allobjs[i], pos) entity.delete_entity(allobjs[i]) entity.set_entity_as_no_longer_needed(allobjs[i]) end end end end end end end
return HANDLER_CONTINUE
end)
menu.add_feature("disable PANIC mode", "action", lobby_protections, function(feat)
entity.freeze_entity(PlyPed(player.player_id()), false) panic_mode.on = false local me = player.player_id() ped.set_ped_health(PlyPed(me),  0)
end)
menu.add_feature("mark all players as modders", "action", lobby_protections, function(feat)
for pid = 0, 32 do if pid ~= me then player.set_player_as_modder(pid, 1) end end
end)
menu.add_feature("unmark all players as modders", "action", lobby_protections, function(feat)
for pid = 0, 32 do if pid ~= me then player.unset_player_as_modder(pid, 1) end end
end)
menu.add_feature("clear invaild models around you", "action", lobby_protections, function(feat)
if feat.on then allpeds = ped.get_all_peds() for i=1, #allpeds do if not ped.is_ped_a_player(allpeds[i]) then local aphash = entity.get_entity_model_hash(allpeds[i]) local ped_invaild = streaming.is_model_valid(aphash) end
if ped_invaild == false then network.request_control_of_entity(ped_invaild) entity.delete_entity(ped_invaild) system.wait(250) end allvehs = vehicle.get_all_vehicles() for i=1, #allvehs do local aphash = entity.get_entity_model_hash(allvehs[i]) local veh_invaild2 = streaming.is_model_valid(aphash) if veh_invaild == false then network.request_control_of_entity(veh_invaild) entity.delete_entity(veh_invaild) end if veh_invaild2 == false then network.request_control_of_entity(veh_invaild2) entity.delete_entity(veh_invaild2) system.wait(250) end allobjs = object.get_all_objects() for i=1, #allobjs do local aphash = entity.get_entity_model_hash(allobjs[i]) local obj_invaild2 = streaming.is_model_valid(aphash) if obj_invaild == false then network.request_control_of_entity(obj_invaild) entity.delete_entity(obj_invaild) end if obj_invaild2 == false then network.request_control_of_entity(obj_invaild2) entity.delete_entity(obj_invaild2) system.yeild(50) print("crash entity's have been removed") end end end end end 
end)
menu.add_feature("leave protection cam if stuck", "action", lobby_protections, function(feat)
if feat.on then
local me = player.player_id() ped.set_ped_health(PlyPed(me),  0) entity.freeze_entity(PlyPed(player.player_id()), false) end
end)
menu.add_feature("Get My INFO", "action", self_options, function(feat)
if feat.on then
print("\n \n  __  ____     __          \n |  \\/  \\ \\   / /          \n | \\  / |\\ \\_/ /           \n | |\\/| | \\   /            \n | |  | |  | |             \n |_|__|_|  |_|______ ____  \n |_   _| \\ | |  ____/ __ \\\n   | | |  \\| | |__ | |  | |\n   | | | . ` |  __|| |  | |\n  _| |_| |\\  | |   | |__| |\n |_____|_| \\_|_|    \\____/ ")
print("your player id is "..muplyid.."")
print("your username is "..my_name.."")
print("your scid (aka your rid) is "..my_scid.."")
print("your ip is "..my_ip.."")
print("your host token is "..my_host_token.."")
print("your player hash model is "..my_model.."")
print("your health is "..my_health.."")
menu.notify("sent INFO to debug console", "Osiris lua", 9, 50)
end
end)
menu.add_feature("better auto repair car", "toggle", self_veh_options, function(feat)
if feat.on then
local veh = player.get_player_vehicle(muplyid) if not network.has_control_of_entity(veh) then network.request_control_of_entity(veh) vehicle.set_vehicle_fixed(veh) vehicle.set_vehicle_deformation_fixed(veh) vehicle.set_vehicle_can_be_visibly_damaged(veh, false) else vehicle.set_vehicle_fixed(veh) vehicle.set_vehicle_deformation_fixed(veh) vehicle.set_vehicle_can_be_visibly_damaged(veh, false) end end
return HANDLER_CONTINUE
end)
menu.add_feature("set car unlimited top speed", "action", self_veh_options, function(feat)
if feat.on then
local veh = player.get_player_vehicle(muplyid) if not network.has_control_of_entity(veh) then network.request_control_of_entity(veh) vehicle.modify_vehicle_top_speed(veh, 99999999999999) else vehicle.modify_vehicle_top_speed(veh, 99999999999999) end end
end)
menu.add_feature("set top speed", "action_value_i", self_veh_options, function(f)
if f.on then
f.max = 10000 f.min = 0 f.mod = 5 local x = f.value local veh = player.get_player_vehicle(muplyid) if not network.has_control_of_entity(veh) then network.request_control_of_entity(veh) vehicle.modify_vehicle_top_speed(veh, x) else vehicle.modify_vehicle_top_speed(veh, x) end end
end)
menu.add_feature("boost car", "action", self_veh_options, function(feat)
if feat.on then
local veh = player.get_player_vehicle(muplyid) network.request_control_of_entity(veh) vehicle.set_vehicle_rocket_boost_active(veh, true) vehicle.set_vehicle_forward_speed(veh, 200000.00) end
end)
menu.add_feature("set unlimited rocket boost", "toggle", self_veh_options, function(feat)
if feat.on then
local veh = player.get_player_vehicle(muplyid) vehicle.set_vehicle_rocket_boost_percentage(veh, 100) end
return HANDLER_CONTINUE
end)
menu.add_feature("set rocket boost refill time 0", "toggle", self_veh_options, function(feat)
if feat.on then
local veh = player.get_player_vehicle(muplyid) vehicle.set_vehicle_rocket_boost_refill_time(veh, 0) end
return HANDLER_CONTINUE
end)
menu_threads = menu.add_feature("disable menu threading", "toggle", lobby_adv, function(feat)
if feat.on then
disable_threads()
else
enable_threads()
end
return HANDLER_CONTINUE
end)
menu_threads.threaded = true 
menu_threads.hidden = true
menu.add_player_feature("send cops", "action", normal_attackers, function(feat, pid)
if feat.on then
local players_ply_ped = player.get_player_ped(pid) local pos = player.get_player_coords(pid) local attacker_ped = 1581098148 streaming.request_model(attacker_ped) if not streaming.has_model_loaded(attacker_ped) then menu.notify("model not loaded please try again", "Osiris lua", 9, 80) else local attacking_ped = ped.create_ped(6, attacker_ped, pos, pos.z, true, false) local attacking_ped1 = ped.create_ped(6, attacker_ped, pos, pos.z, true, false) streaming.set_model_as_no_longer_needed(attacker_ped) ped.set_ped_combat_attributes(attacking_ped, 46, true) ai.task_combat_ped(attacking_ped, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) end end	
end)
menu.add_player_feature("send big foot", "action", normal_attackers, function(feat, pid)
if feat.on then
local players_ply_ped = player.get_player_ped(pid) local pos = player.get_player_coords(pid) local attacker_ped = 1641334641 streaming.request_model(attacker_ped) if not streaming.has_model_loaded(attacker_ped) then menu.notify("model not loaded please try again", "Osiris lua", 9, 80) else local attacking_ped = ped.create_ped(28, attacker_ped, pos, pos.z, true, false) local attacking_ped1 = ped.create_ped(28, attacker_ped, pos, pos.z, true, false) streaming.set_model_as_no_longer_needed(attacker_ped) ped.set_ped_combat_attributes(attacking_ped, 46, true) ai.task_combat_ped(attacking_ped, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) end end	
end)
menu.add_player_feature("send pogo", "action", normal_attackers, function(feat, pid)
if feat.on then
local players_ply_ped = player.get_player_ped(pid) local pos = player.get_player_coords(pid) local attacker_ped = 0xDC59940D streaming.request_model(attacker_ped) if not streaming.has_model_loaded(attacker_ped) then menu.notify("model not loaded please try again", "Osiris lua", 9, 80) else local attacking_ped = ped.create_ped(5, attacker_ped, pos, pos.z, true, false) local attacking_ped1 = ped.create_ped(4, attacker_ped, pos, pos.z, true, false) streaming.set_model_as_no_longer_needed(attacker_ped) ped.set_ped_combat_attributes(attacking_ped, 46, true) ai.task_combat_ped(attacking_ped, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) end end	
end)
menu.add_player_feature("send Prisoner's", "action", normal_attackers, function(feat, pid)
if feat.on then
local players_ply_ped = player.get_player_ped(pid) local pos = player.get_player_coords(pid) local attacker_ped = 2981862233 streaming.request_model(attacker_ped) if not streaming.has_model_loaded(attacker_ped) then menu.notify("model not loaded please try again", "Osiris lua", 9, 80) else local attacking_ped = ped.create_ped(4, attacker_ped, pos, pos.z, true, false) local attacking_ped1 = ped.create_ped(5, attacker_ped, pos, pos.z, true, false) streaming.set_model_as_no_longer_needed(attacker_ped) ped.set_ped_combat_attributes(attacking_ped, 46, true) ai.task_combat_ped(attacking_ped, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) end end	
end)
menu.add_player_feature("send stripper", "action", normal_attackers, function(feat, pid)
if feat.on then
local players_ply_ped = player.get_player_ped(pid) local pos = player.get_player_coords(pid) local attacker_ped = 1846523796 streaming.request_model(attacker_ped) if not streaming.has_model_loaded(attacker_ped) then menu.notify("model not loaded please try again", "Osiris lua", 9, 80) else local attacking_ped = ped.create_ped(4, attacker_ped, pos, pos.z, true, false) local attacking_ped1 = ped.create_ped(5, attacker_ped, pos, pos.z, true, false) streaming.set_model_as_no_longer_needed(attacker_ped) ped.set_ped_combat_attributes(attacking_ped, 46, true) ai.task_combat_ped(attacking_ped, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) end end	
end)
menu.add_player_feature("send naked men", "action", normal_attackers, function(feat, pid)
if feat.on then
local players_ply_ped = player.get_player_ped(pid) local pos = player.get_player_coords(pid) local attacker_ped = 1413662315 streaming.request_model(attacker_ped) if not streaming.has_model_loaded(attacker_ped) then menu.notify("model not loaded please try again", "Osiris lua", 9, 80) else local attacking_ped = ped.create_ped(4, attacker_ped, pos, pos.z, true, false) local attacking_ped1 = ped.create_ped(5, attacker_ped, pos, pos.z, true, false) streaming.set_model_as_no_longer_needed(attacker_ped) ped.set_ped_combat_attributes(attacking_ped, 46, true) ai.task_combat_ped(attacking_ped, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) end end	
end)
menu.add_player_feature("send clown's", "action", normal_attackers, function(feat, pid)
if feat.on then
local players_ply_ped = player.get_player_ped(pid) local pos = player.get_player_coords(pid) local attacker_ped = 71929310 streaming.request_model(attacker_ped) if not streaming.has_model_loaded(attacker_ped) then menu.notify("model not loaded please try again", "Osiris lua", 9, 80) else local attacking_ped = ped.create_ped(4, attacker_ped, pos, pos.z, true, false) local attacking_ped1 = ped.create_ped(5, attacker_ped, pos, pos.z, true, false) streaming.set_model_as_no_longer_needed(attacker_ped) ped.set_ped_combat_attributes(attacking_ped, 46, true) ai.task_combat_ped(attacking_ped, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) end end	
end)
jesus_walk = menu.add_player_feature("walk on air / ocean ", "toggle", MISC_options, function(feat, pid)
if feat.on then
local ply_coords = player.get_player_coords(pid) ply_coords.z = ply_coords.z - 6 local player_ped = player.get_player_ped(pid) local tramp = 1822550295  streaming.request_model(tramp) local tramp_entity = object.create_object(tramp, ply_coords, true, false) streaming.set_model_as_no_longer_needed(tramp) entity.set_entity_visible(tramp_entity, true) system.wait(10) entity.set_entity_visible(tramp_entity, false) system.wait(3750) entity.delete_entity(tramp_entity) return HANDLER_CONTINUE end
end)
jesus_walk.threaded = true
menu.add_player_feature("chaos mod", "toggle", MISC_options, function(feat, pid)
if feat.on then
local x = math.random(1, 9)
if x == 1 then local veh = player.get_player_vehicle(pid) entity.set_entity_gravity(veh, false) menu.notify("turn off players vehicle gravity", "Chaos Mod", 9, 80) system.wait(30000) end if x == 2 then menu.notify("whale rain", "Chaos Mod", 9, 80) local whale = 1193010354 local coords = player.get_player_coords(pid) coords.x = coords.x + math.random(1, 7) coords.y = coords.y + math.random(1, 7) coords.z = coords.z + 7.57 streaming.request_model(whale) local ped1 = ped.create_ped(28, whale, coords, 0, true, true) local ped2 = ped.create_ped(28, whale, coords, 0, true, true) local ped3 = ped.create_ped(28, whale, coords, 0, true, true) local ped4 = ped.create_ped(28, whale, coords, 0, true, true) system.wait(1500) local ped5 = ped.create_ped(28, whale, coords, 0, true, true) local ped6 = ped.create_ped(28, whale, coords, 0, true, true) local ped7 = ped.create_ped(28, whale, coords, 0, true, true) local ped8 = ped.create_ped(28, whale, coords, 0, true, true) system.wait(1000) local ped9 =  ped.create_ped(28, whale, coords, 0, true, true) local ped10 =  ped.create_ped(28, whale, coords, 0, true, true) local ped11 =  ped.create_ped(28, whale, coords, 0, true, true) local ped12 =  ped.create_ped(28, whale, coords, 0, true, true) streaming.set_model_as_no_longer_needed(whale) system.wait(30000) entity.delete_entity(ped1) entity.delete_entity(ped2) entity.delete_entity(ped3) entity.delete_entity(ped4) entity.delete_entity(ped5) entity.delete_entity(ped6) entity.delete_entity(ped7) entity.delete_entity(ped8) entity.delete_entity(ped9) entity.delete_entity(ped10) entity.delete_entity(ped11) entity.delete_entity(ped12) end if x == 3 then local plypedpid = player.get_player_ped(pid) weapon.remove_all_ped_weapons(plypedpid) menu.notify("removed all player weapons", "Chaos Mod", 9, 80) system.wait(30000) end if x == 4 then local cargo = 368211810 streaming.request_model(cargo) if not streaming.has_model_loaded(cargo) then streaming.request_model(cargo) system.wait(200) local pos = player.get_player_coords(pid) local cargo_plane = vehicle.create_vehicle(cargo, pos, 0, true, true) entity.set_entity_god_mode(cargo_plane, true) streaming.set_model_as_no_longer_needed(cargo) menu.notify("spawned cargo plane", "Chaos Mod", 9, 80) system.wait(30000) else local pos = player.get_player_coords(pid) local cargo_plane1 = vehicle.create_vehicle(cargo, pos, 0, true, true) entity.set_entity_god_mode(cargo_plane1, true) streaming.set_model_as_no_longer_needed(cargo) menu.notify("spawned cargo plane", "Chaos Mod", 9, 80) system.wait(30000) entity.delete_entity(cargo_plane) entity.delete_entity(cargo_plane1) end end if x == 5 then local pos = v3() pos.x = 480.108 pos.y = 5563.905 pos.z = 788.599 local veh = player.get_player_vehicle(pid) network.request_control_of_entity(veh) entity.set_entity_coords_no_offset(veh, pos) menu.notify("teleport to chiliad", "Chaos Mod", 9, 80) system.wait(30000) end if x == 6 then local players_ply_ped = player.get_player_ped(pid) local pos = player.get_player_coords(pid) local attacker_ped = 71929310 streaming.request_model(attacker_ped) if not streaming.has_model_loaded(attacker_ped) then streaming.request_model(attacker_ped) system.wait(200) local attacking_ped = ped.create_ped(4, attacker_ped, pos, pos.z, true, false) local attacking_ped1 = ped.create_ped(5, attacker_ped, pos, pos.z, true, false) streaming.set_model_as_no_longer_needed(attacker_ped) ped.set_ped_combat_attributes(attacking_ped, 46, true) ai.task_combat_ped(attacking_ped, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) menu.notify("sending mean peds", "Chaos Mod", 9, 80) system.wait(30000) entity.delete_entity(attacking_ped) entity.delete_entity(attacking_ped1) else local attacking_ped = ped.create_ped(4, attacker_ped, pos, pos.z, true, false) local attacking_ped1 = ped.create_ped(5, attacker_ped, pos, pos.z, true, false) streaming.set_model_as_no_longer_needed(attacker_ped) ped.set_ped_combat_attributes(attacking_ped, 46, true) ai.task_combat_ped(attacking_ped, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) menu.notify("sending mean peds", "Chaos Mod", 9, 80) system.wait(30000) entity.delete_entity(attacking_ped) entity.delete_entity(attacking_ped1) end end if x == 7 then local pos = v3() local mypos2 = player.get_player_coords(player.player_id()) local there_ped = player.get_player_ped(pid) local bone_int_index = ped.get_ped_bone_index(there_ped, 18905) local bone_int_index1 = ped.get_ped_bone_index(there_ped, 57005) local bone_int_index2 = ped.get_ped_bone_index(there_ped, 31086) local bone_int_index3 = ped.get_ped_bone_index(there_ped, 14201) local bone_int_index4 = ped.get_ped_bone_index(there_ped, 52301) local egg = gameplay.get_hash_key("prop_alien_egg_01") streaming.request_model(egg) if not streaming.has_model_loaded(egg) then streaming.request_model(egg) system.wait(200) local egg_obj = object.create_object(egg, mypos2, true, true) local egg_obj1 = object.create_object(egg, mypos2, true, true) local egg_obj2 = object.create_object(egg, mypos2, true, true) local egg_obj3 = object.create_object(egg, mypos2, true, true) local egg_obj4 = object.create_object(egg, mypos2, true, true) entity.attach_entity_to_entity(egg_obj, there_ped, bone_int_index, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj1, there_ped, bone_int_index1, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj2, there_ped, bone_int_index2, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj3, there_ped, bone_int_index3, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj4, there_ped, bone_int_index4, pos, pos, true, true, false, 0, true) streaming.set_model_as_no_longer_needed(egg) menu.notify("attached eggs", "Chaos Mod", 9, 80) system.wait(30000) entity.delete_entity(egg_obj) entity.delete_entity(egg_obj1) entity.delete_entity(egg_obj2) entity.delete_entity(egg_obj3) entity.delete_entity(egg_obj4) else local egg_obj = object.create_object(egg, mypos2, true, true) local egg_obj1 = object.create_object(egg, mypos2, true, true) local egg_obj2 = object.create_object(egg, mypos2, true, true) local egg_obj3 = object.create_object(egg, mypos2, true, true) local egg_obj4 = object.create_object(egg, mypos2, true, true) entity.attach_entity_to_entity(egg_obj, there_ped, bone_int_index, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj1, there_ped, bone_int_index1, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj2, there_ped, bone_int_index2, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj3, there_ped, bone_int_index3, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj4, there_ped, bone_int_index4, pos, pos, true, true, false, 0, true) streaming.set_model_as_no_longer_needed(egg) menu.notify("attached eggs", "Chaos Mod", 9, 80) system.wait(30000) entity.delete_entity(egg_obj) entity.delete_entity(egg_obj1) entity.delete_entity(egg_obj2) entity.delete_entity(egg_obj3) entity.delete_entity(egg_obj4) end end if x == 8 then local pos = player.get_player_coords(pid) pos.z = pos.z + 10 menu.notify("shake cam", "Chaos Mod", 9, 80) fire.add_explosion(pos, 0, true, false, 100, pid) system.wait(500) fire.add_explosion(pos, 0, true, false, 100, pid) system.wait(500) fire.add_explosion(pos, 0, true, false, 100, pid) system.wait(30000) end if x == 9 then local players_ply_ped = player.get_player_ped(pid) local attacker_ped = 0xAC4B4506 streaming.request_model(attacker_ped) streaming.request_model(attacker_ped) system.wait(200) local pos = player.get_player_coords(pid) pos.x = pos.x + math.random(-25, 25) pos.y = pos.y + math.random(-25, 25) local attacking_ped1 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped2 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped3 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped4 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped5 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped6 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped7 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped8 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped9 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped10 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped11 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped12 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped13 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped14 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped15 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped16 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped17 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped18 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped19 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) local attacking_ped20 = ped.create_ped(26, attacker_ped, pos, pos.z, true, false) ped.set_ped_combat_attributes(attacking_ped1, 46, true) ai.task_combat_ped(attacking_ped1, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped2, 46, true) ai.task_combat_ped(attacking_ped2, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped3, 46, true) ai.task_combat_ped(attacking_ped3, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped4, 46, true) ai.task_combat_ped(attacking_ped4, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped5, 46, true) ai.task_combat_ped(attacking_ped5, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped6, 46, true) ai.task_combat_ped(attacking_ped6, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped7, 46, true) ai.task_combat_ped(attacking_ped7, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped8, 46, true) ai.task_combat_ped(attacking_ped8, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped9, 46, true) ai.task_combat_ped(attacking_ped9, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped10, 46, true) ai.task_combat_ped(attacking_ped10, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped11, 46, true) ai.task_combat_ped(attacking_ped11, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped12, 46, true) ai.task_combat_ped(attacking_ped12, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped13, 46, true) ai.task_combat_ped(attacking_ped13, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped14, 46, true) ai.task_combat_ped(attacking_ped14, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped15, 46, true) ai.task_combat_ped(attacking_ped15, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped16, 46, true) ai.task_combat_ped(attacking_ped16, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped17, 46, true) ai.task_combat_ped(attacking_ped17, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped18, 46, true) ai.task_combat_ped(attacking_ped18, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped19, 46, true) ai.task_combat_ped(attacking_ped19, players_ply_ped, 0, 16) ped.set_ped_combat_attributes(attacking_ped20, 46, true) ai.task_combat_ped(attacking_ped20, players_ply_ped, 0, 16) menu.notify("zombie apocalypse", "Chaos Mod", 9, 80) streaming.set_model_as_no_longer_needed(attacker_ped) streaming.set_model_as_no_longer_needed(attacker_ped) system.wait(30000) entity.delete_entity(attacking_ped1) entity.delete_entity(attacking_ped2) entity.delete_entity(attacking_ped3) entity.delete_entity(attacking_ped4) entity.delete_entity(attacking_ped5) entity.delete_entity(attacking_ped6) entity.delete_entity(attacking_ped7) entity.delete_entity(attacking_ped8) entity.delete_entity(attacking_ped10) entity.delete_entity(attacking_ped11) entity.delete_entity(attacking_ped12) entity.delete_entity(attacking_ped13) entity.delete_entity(attacking_ped14) entity.delete_entity(attacking_ped15) entity.delete_entity(attacking_ped16) entity.delete_entity(attacking_ped17) entity.delete_entity(attacking_ped18) entity.delete_entity(attacking_ped19) entity.delete_entity(attacking_ped20)
end
end
return HANDLER_CONTINUE
end)
menu.add_feature("turn off gravity for everything", "toggle", session_grav, function(feat)
if feat.on then
allvehs = vehicle.get_all_vehicles() allpeds = ped.get_all_peds() allobjs = object.get_all_objects() allpickups = object.get_all_pickups() for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], false) for i=1, #allpeds do network.request_control_of_entity(allpeds[i]) entity.set_entity_gravity(allpeds[i], false) for i=1, #allobjs do network.request_control_of_entity(allobjs[i]) entity.set_entity_gravity(allobjs[i], false) for i=1, #allpickups do network.request_control_of_entity(allpickups[i]) entity.set_entity_gravity(allpickups[i], false) end end end end else for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], true) for i=1, #allpeds do network.request_control_of_entity(allpeds[i]) entity.set_entity_gravity(allpeds[i], true) for i=1, #allobjs do network.request_control_of_entity(allobjs[i]) entity.set_entity_gravity(allobjs[i], true) for i=1, #allpickups do network.request_control_of_entity(allpickups[i]) entity.set_entity_gravity(allpickups[i], true) end end end end end return HANDLER_CONTINUE
end)
menu.add_feature("turn off gravity for all vehicles", "toggle", session_grav, function(feat)
if feat.on then
allvehs = vehicle.get_all_vehicles() for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], false) end else for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], true) end end return HANDLER_CONTINUE
end)
menu.add_feature("turn off gravity for all peds", "toggle", session_grav, function(feat)
if feat.on then
allvehs = ped.get_all_peds() for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], false) end else for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], true) end end return HANDLER_CONTINUE
end)
menu.add_feature("turn off gravity for all objects", "toggle", session_grav, function(feat)
if feat.on then
allvehs = object.get_all_objects() for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], false) end else for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], true) end end return HANDLER_CONTINUE
end)
menu.add_feature("turn off gravity for all money/rp drops", "toggle", session_grav, function(feat)
if feat.on then
allvehs = object.get_all_pickups() for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], false) end else for i=1, #allvehs do network.request_control_of_entity(allvehs[i]) entity.set_entity_gravity(allvehs[i], true) end end return HANDLER_CONTINUE
end)
menu.add_feature("walk on air", "toggle", self_options, function(feat)
if feat.on then
entity.set_entity_gravity(my_self_ped, true) else entity.set_entity_gravity(my_self_ped, false) end return HANDLER_CONTINUE
end)
times_button_pressed = 0
menu.add_feature("press me", "action", Osiris_script_local, function(feat)
if feat.on then
times_button_pressed = times_button_pressed + 1 ui.notify_above_map("congrats you have pressed this button "..times_button_pressed.." times", "Osiris lua", 9, 80) if times_button_pressed == 10 then ui.notify_above_map("wow 10 times that was a waste of time", "Osiris lua", 9, 80) menu.notify("wow 10 times that was a waste of time", "Osiris lua", 9, 80) elseif times_button_pressed == 25 then ui.notify_above_map("25 times prase be your wasting your own time", "Osiris lua", 9, 80) menu.notify("25 times prase be your wasting your own time", "Osiris lua", 9, 80) elseif times_button_pressed == 50 then ui.notify_above_map("ok bro 50 times there is nothing here stop now", "Osiris lua", 9, 80) menu.notify("ok bro 50 times there is nothing here stop now", "Osiris lua", 9, 80) elseif times_button_pressed == 100 then ui.notify_above_map("wow you did it 100 times you unlocked 2take1 dev menu", "Osiris lua", 9, 80) menu.notify("wow you did it 100 times you unlocked 2take1 dev menu", "Osiris lua", 9, 80) elseif times_button_pressed == 200 then ui.notify_above_map("fucking hell 200 times man get a life", "Osiris lua", 9, 80) menu.notify("fucking hell 200 times man get a life", "Osiris lua", 9, 80) elseif times_button_pressed == 300 then ui.notify_above_map("fine get to 500 for a prize", "Osiris lua", 9, 80) menu.notify("fine get to 500 for a prize", "Osiris lua", 9, 80) elseif times_button_pressed == 500 then ui.notify_above_map("lol jk u need to get to 1k for a prize", "Osiris lua", 9, 80) menu.notify("lol jk u need to get to 1k for a prize", "Osiris lua", 9, 80) elseif times_button_pressed == 1000 then ui.notify_above_map("here is your prize a pat on the back :)", "Osiris lua", 9, 80) menu.notify("here is your prize a pat on the back :)", "Osiris lua", 9, 80) end end
end)
invis_obj_spawn = menu.add_feature("spawn blocking object invisable", "toggle", session_block, function(feat)
if feat.on then
end
end)
invis_obj_spawn.threaded = true
menu.add_feature("block strip club", "action", session_block, function(feat)
if feat.on then
local block_area_hash = gameplay.get_hash_key("prop_fnclink_04a") streaming.request_model(block_area_hash) system.wait(200) local pos = v3() pos.x = 126.72 pos.y = -1299.24 pos.z = 28.477 local block_object = object.create_object(block_area_hash, pos, true, false) local rot = v3() rot.x = 0 rot.y = 0 rot.z = 25 entity.set_entity_rotation(block_object, rot) entity.set_entity_god_mode(block_object, true) entity.freeze_entity(block_object, true) streaming.set_model_as_no_longer_needed(block_area_hash) if invis_obj_spawn.on then entity.set_entity_visible(block_object, false) end end
end)
menu.add_feature("block maze bank garage", "action", session_block, function(feat)
if feat.on then
local block_area_hash = gameplay.get_hash_key("prop_fnclink_04a") streaming.request_model(block_area_hash) system.wait(200) local pos = v3() pos.x = -86.91 pos.y = -780.44 pos.z = 37.95 local block_object = object.create_object(block_area_hash, pos, true, false) local rot = v3() rot.x = 0 rot.y = 0 rot.z = 25 entity.set_entity_rotation(block_object, rot) entity.set_entity_god_mode(block_object, true) entity.freeze_entity(block_object, true) if invis_obj_spawn.on then entity.set_entity_visible(block_object, false) end local pos = v3() pos.x = -83.27 pos.y = -778.48 pos.z = 38.17 local block_object = object.create_object(block_area_hash, pos, true, false) local rot = v3() rot.x = 0 rot.y = 0 rot.z = 25 entity.set_entity_rotation(block_object, rot) entity.set_entity_god_mode(block_object, true) entity.freeze_entity(block_object, true) if invis_obj_spawn.on then entity.set_entity_visible(block_object, false) end local pos = v3() pos.x = -80.03 pos.y = -776.35 pos.z = 38.57 local block_object = object.create_object(block_area_hash, pos, true, false) local rot = v3() rot.x = 0 rot.y = 0 rot.z = 25 entity.set_entity_rotation(block_object, rot) entity.set_entity_god_mode(block_object, true) entity.freeze_entity(block_object, true) if invis_obj_spawn.on then entity.set_entity_visible(block_object, false) end local pos = v3() pos.x = -76.30 pos.y = -774.58 pos.z = 38.53 local block_object = object.create_object(block_area_hash, pos, true, false) local rot = v3() rot.x = 0 rot.y = 0 rot.z = 25 entity.set_entity_rotation(block_object, rot) entity.set_entity_god_mode(block_object, true) entity.freeze_entity(block_object, true) if invis_obj_spawn.on then entity.set_entity_visible(block_object, false) end streaming.set_model_as_no_longer_needed(block_area_hash) end
end)
menu.add_feature("block casino", "action", session_block, function(feat)
if feat.on then
local block_area_hash = gameplay.get_hash_key("stt_prop_stunt_bblock_qp2") streaming.request_model(block_area_hash) system.wait(200) local pos = v3() pos.x = 932.63 pos.y = 88.69 pos.z = 50 local block_object = object.create_object(block_area_hash, pos, true, false) local rot = v3() rot.x = 0 rot.y = 0 rot.z = -75.0 entity.set_entity_rotation(block_object, rot) entity.set_entity_god_mode(block_object, true) entity.freeze_entity(block_object, true) if invis_obj_spawn.on then entity.set_entity_visible(block_object, false) end streaming.set_model_as_no_longer_needed(block_area_hash) system.wait(50) local block_area_hash = gameplay.get_hash_key("stt_prop_stunt_bblock_hump_02") streaming.request_model(block_area_hash) system.wait(200) local pos = v3() pos.x = 941.54 pos.y = 50 pos.z = 40 local block_object = object.create_object(block_area_hash, pos, true, false) local rot = v3() rot.x = 0 rot.y = 0 rot.z = -109.99 entity.set_entity_rotation(block_object, rot) entity.set_entity_god_mode(block_object, true) entity.freeze_entity(block_object, true) if invis_obj_spawn.on then entity.set_entity_visible(block_object, false) end streaming.set_model_as_no_longer_needed(block_area_hash) end
end)
menu.add_player_feature("blame kill lobby", "action", griefing_options, function(feat, pid)
if feat.on then
local owner = player.get_player_ped(pid) for pid = 0,32 do local player_coords = player.get_player_coords(pid) fire.add_explosion(player_coords, 4, true, false, 1, owner) fire.add_explosion(player_coords, 4, false, true, 1, owner) fire.add_explosion(player_coords, 4, true, true, 1, owner) fire.add_explosion(player_coords, 4, false, false, 1, owner) end end
end)
loop_kill = menu.add_player_feature("loop kill player", "toggle", griefing_options, function(feat, pid)
if feat.on then
local owner = player.get_player_ped(pid) local coords = player.get_player_coords(pid) local is_player_dead = player.get_player_health(pid) if is_player_dead > 0 then fire.add_explosion(coords, 4, true, false, 1, owner) end end
 return HANDLER_CONTINUE
end)
loop_kill.threaded = true
menu.add_feature("get wave height", "action", wave_options, function(feat)
if feat.on then
menu.notify("wave height is: "..wave_height.."", "Osiris lua", 9, 80) end
end)
menu.add_feature("reset wave height", "action", wave_options, function(feat)
if feat.on then
water.set_waves_intensity(1) end
end)
menu.add_feature("set custom wave height", "action_value_i", wave_options, function(f)
local x = f.value
water.set_waves_intensity(x)
f.max = 150
f.min = 0
f.mod = 1
f.value = 1
end)
menu.add_feature("no waves", "action", wave_presets, function(feat)
if feat.on then
water.set_waves_intensity(0) end
end)
menu.add_feature("low waves", "action", wave_presets, function(feat)
if feat.on then
water.set_waves_intensity(11) end
end)
menu.add_feature("medium waves", "action", wave_presets, function(feat)
if feat.on then
water.set_waves_intensity(32) end
end)
menu.add_feature("high waves", "action", wave_presets, function(feat)
if feat.on then
water.set_waves_intensity(75) end
end)
Load_backround_scripts()