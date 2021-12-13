function modeluwu()
streaming.request_model(uwu)
while(not streaming.has_model_loaded(uwu))
do
system.wait(10)
end
player.set_player_model(uwu)
streaming.set_model_as_no_longer_needed(uwu)
end
function own_ped()
return getPed(MyId())
end
function frames()
return gameplay.get_frame_count()
end
function protection_cam()
local pos = v3()
pos.x = xprotcoord
pos.y = yprotcoord
pos.z = zprotcoord
return entity.set_entity_coords_no_offset(PlyPed(player.player_id()), pos)  
end
function hka1337(pid)
network.network_session_kick_player(pid)
end
function PED_OFF(pid)
local flags = player.get_player_modder_flags(pid) local flag_ends = player.get_modder_flag_ends(player.get_player_modder_flags(pid)) local flag_name = player.get_modder_flag_text(flags) if flag_name == "INVALID_PED_CRASH" then player.unset_player_as_modder(pid, 512) local pos player.get_player_coords(pid) end
end
function PED_OFF1(pid)
local flags = player.get_player_modder_flags(pid) local flag_ends = player.get_modder_flag_ends(player.get_player_modder_flags(pid)) local flag_name = player.get_modder_flag_text(flags) if flag_name == "INVALID PED CRASH" then player.unset_player_as_modder(pid, 512) local pos player.get_player_coords(pid) end
end
function PED_OFF2(pid)
local flags = player.get_player_modder_flags(pid) local flag_ends = player.get_modder_flag_ends(player.get_player_modder_flags(pid)) local flag_name = player.get_modder_flag_text(flags) if flag_name == "MDF_INVALID_PED_CRASH" then player.unset_player_as_modder(pid, 512) local pos player.get_player_coords(pid) end
end
frames_part_1 = menu.add_feature("frames redirect part 1", "toggle", lobby_protections, function(feat)
if feat.on then
local pos = v3() pos.x = xprotcoord pos.y = yprotcoord pos.z = zprotcoord entity.set_entity_coords_no_offset(PlyPed(player.player_id()), pos) end
end) 
frames_part_1.on = false
frames_part_1.hidden = true
frames_part_1.threaded = true
function PlyPed(pid)
local PlayerPed = player.get_player_ped(pid)
return PlayerPed
end
function is_advanced_user_mode_on()
if advanced_user_mode.on == false then
end
end
function attachment_function(pid)
local pos = player.get_player_coords(muplyid)
local there_ped = player.get_player_ped(pid)
local pos1 = v3()
streaming.request_model(attach_test1337)
system.wait(210)
local attach_onject = object.create_object(attach_test1337, pos, true, false)
entity.attach_entity_to_entity(attach_onject, there_ped, bone, pos1, pos1, true, true, false, 0, true)
streaming.set_model_as_no_longer_needed(attach_test1337)
end
function adv_user_show()
menu_threads.hidden = false
advanced_user_debug.hidden = false
end
function adv_user_hide()
menu_threads.hidden = true
advanced_user_debug.hidden = true
end
function disable_threads()
flying_models.threaded = false
water_models.threaded = false
ground_models.threaded = false
advanced_user_mode.threaded = false
menu_threads.threaded = false 
advanced_user_debug.threaded = false
redirect_invailds.threaded = false
invis_obj_spawn.threaded = false
jesus_walk.threaded = false
loop_kill.threaded = false
frames_part_1.threaded = false
end
function enable_threads()
flying_models.threaded = true
water_models.threaded = true
ground_models.threaded = true
advanced_user_mode.threaded = true
menu_threads.threaded = true 
advanced_user_debug.threaded = true
redirect_invailds.threaded = true
invis_obj_spawn.threaded = true
jesus_walk.threaded = true
loop_kill.threaded = true
frames_part_1.threaded = true
end
function enable_adv_debug()
end
function hide_adv_debug()
end
