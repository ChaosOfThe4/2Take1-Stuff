trolls = menu.add_player_feature("α Troll Menu Ω", "parent", 0).id

local pedLocals = player.get_player_ped(player.player_id())

Objs = {
	"1",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8",
	"9",
	"10"
}

function seater(count, id, hash)
	for u=1, count do
		local pos = player.get_player_coords(id)
		streaming.request_model(gameplay.get_hash_key(hash))
		system.wait(200)system.wait(200)
		cars[u] = vehicle.create_vehicle(gameplay.get_hash_key(hash), v3(pos.x + math.random(0, 15), pos.y + math.random(0, 15), pos.z), pos.z, true, false)
		streaming.request_model(0x92991B72)
		system.wait(200)
		drivers[u] = ped.create_ped(26, 0x92991B72, v3(pos.x + 7, pos.y, pos.z), pos.z, true, false)
		ped.set_ped_into_vehicle(drivers[u], cars[u], -1)
		menu.notify("RC Toy Spawned", "Stand", 5, 2)
		ai.task_vehicle_chase(drivers[u], player.get_player_ped(id))
		ai.task_vehicle_follow(drivers[u], cars[u], player.get_player_ped(id), 50.0, 0, 1)
		menu.notify("RC Toy Chasing", "Stand", 5, 2)
		system.wait(500)
	end
	return cars, drivers
end

local function crazyRain(context)
    while context.feat.on do
		local id = entity.get_entity_bone_index_by_name(player.get_player_ped(context.pid), "IK Head")
        local pos_start = v3()
        pos_start = player.get_player_coords(context.pid)
        pos_start.z = pos_start.z + 30.0
        local pos_end = player.get_player_coords(context.pid)
        local offset = v3()
        offset.x = math.random(-5,5)
        offset.y = math.random(-5,5)
		
        local ob = object.create_object(gameplay.get_hash_key("prop_elecbox_11"), pos_end + offset, true, true)
		local ob1 = object.create_object(gameplay.get_hash_key("prop_ld_int_safe_01"), pos_end + offset, true, true)
		local ob2 = object.create_object(gameplay.get_hash_key("prop_devin_box_dummy_01"), pos_end + offset, true, true)
		local ob3 = object.create_object(gameplay.get_hash_key("ch_prop_ch_diamond_xmastree"), pos_end + offset, true, true)
		local ob4 = object.create_object(gameplay.get_hash_key("bkr_prop_clubhouse_jukebox_01a"), pos_end + offset, true, true)
		local ob5 = object.create_object(gameplay.get_hash_key("prop_elecbox_11"), pos_end + offset, true, true)
		local ob6 = object.create_object(gameplay.get_hash_key("prop_devin_box_dummy_01"), pos_end + offset, true, true)
		local ob7 = object.create_object(gameplay.get_hash_key("prop_elecbox_11"), pos_end + offset, true, true)
		local veh_spawn = vehicle.create_vehicle(0x15F27762, pos_end + offset, pos_start.z, true, false)
		local veh_spawn1 = vehicle.create_vehicle(0x4FAF0D70, pos_end + offset, pos_start.z, true, false)
		local veh_spawn2 = vehicle.create_vehicle(0x810369E2, pos_end + offset, pos_start.z, true, false)
		entity.set_entity_god_mode(ob, true)
		entity.set_entity_god_mode(ob1, true)
		entity.set_entity_god_mode(ob2, true)
		entity.set_entity_god_mode(ob3, true)
		entity.set_entity_god_mode(ob4, true)
		entity.set_entity_god_mode(ob5, true)
		entity.set_entity_god_mode(ob6, true)
		entity.set_entity_god_mode(ob7, true)
		entity.set_entity_god_mode(veh_spawn, true)
		entity.set_entity_god_mode(veh_spawn1, true)
		entity.set_entity_god_mode(veh_spawn2, true)
			system.wait(5000)
		attach_entity_to_entity(ob, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(ob1, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(ob2, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(ob3, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(ob4, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(ob5, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(ob6, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(ob7, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(veh_spawn, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(veh_spawn1, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		attach_entity_to_entity(veh_spawn2, player.get_player_ped(pid), id, pos_start, pos_start.z, true, true, true, 1, true)
		
			system.wait(10000)
		entity.delete_entity(ob)
		entity.delete_entity(ob1)
		entity.delete_entity(ob2)
		entity.delete_entity(ob3)
		entity.delete_entity(ob4)
		entity.delete_entity(ob5)
		entity.delete_entity(ob6)
		entity.delete_entity(ob7)
		entity.delete_entity(veh_spawn)
		entity.delete_entity(veh_spawn1)
		entity.delete_entity(veh_spawn2)
    end
end

menu.add_player_feature("Send RC Tanks: ", "action_value_str", trolls, function(val, pid)
	local num = Objs[val.value+1]
	cars = {}
	drivers = {}
	seater(num, pid, "minitank")	
	for i = 1, #cars do
		while ped.get_ped_health(player.get_player_ped(pid)) > 0 do
			system.wait(500)
			local bpos = entity.get_entity_coords(cars[i])
			local pos1 = player.get_player_coords(pid)
			local poss = v3(pos1.x + 20, pos1.y + 20, pos1.z + 50)
			if (bpos.x <= poss.x) and (bpos.y <= poss.y) and (bpos.z <= poss.z)  or (bpos.x >= poss.x) and (bpos.y >= poss.y) and (bpos.z >= poss.z)then
				ai.task_vehicle_shoot_at_ped(drivers[i], player.get_player_ped(pid), 100.0)

			end
		end
		system.wait(1000)
		entity.delete_entity(drivers[i])
		entity.delete_entity(cars[i])
	end
end):set_str_data(Objs)

menu.add_player_feature("Send RC Banditos: ", "action_value_str", trolls, function(val, pid)
	local num = Objs[val.value+1]
	local boomed = 0
	cars = {}
	drivers = {}
	seater(num, pid, "rcbandito")	
	while boomed < #cars do
		for i = 1, #cars do
			system.wait(500)
			local pos1 = player.get_player_coords(pid)
			local poss = v3(pos1.x + 3, pos1.y + 3, pos1.z + 5)
			local bpos = entity.get_entity_coords(cars[i])
			if (bpos.x <= poss.x) and (bpos.y <= poss.y) and (bpos.z <= poss.z)  or (bpos.x >= poss.x) and (bpos.y >= poss.y) and (bpos.z >= poss.z)then
				fire.add_explosion(bpos, 0, true, false, 2.0, player.get_player_ped(pid))
				menu.notify("Bandito Exploding", "Stand", 5, 2)
				entity.delete_entity(drivers[i])
				entity.delete_entity(cars[i])
				boomed = boomed + 1
			end
		end
	end
end):set_str_data(Objs)

blamed = player.player_id()
menu.add_player_feature("Send RC Banditos Blamed: ", "action_value_str", trolls, function(val, pid)
	local num = Objs[val.value+1]
	local boomed = 0
	cars = {}
	drivers = {}
	seater(num, pid, "rcbandito")	
	while boomed < #cars do
		for i = 1, #cars do
			system.wait(500)
			local pos1 = player.get_player_coords(pid)
			local poss = v3(pos1.x + 3, pos1.y + 3, pos1.z + 5)
			local bpos = entity.get_entity_coords(cars[i])
			if (bpos.x <= poss.x) and (bpos.y <= poss.y) and (bpos.z <= poss.z)  or (bpos.x >= poss.x) and (bpos.y >= poss.y) and (bpos.z >= poss.z)then
				fire.add_explosion(bpos, 0, true, false, 2.0, player.get_player_ped(blamed))
				menu.notify("Bandito Exploding", "Stand", 5, 2)
				entity.delete_entity(drivers[i])
				entity.delete_entity(cars[i])
				boomed = boomed + 1
			end
		end
	end
end):set_str_data(Objs)

menu.add_player_feature("Cage 'Em", "action", trolls, function(val, pid)
	ped.clear_ped_tasks_immediately(player.get_player_ped(pid))
	system.wait(0)
	local pos = player.get_player_coords(pid)
    object.create_object(gameplay.get_hash_key("as_prop_as_target_scaffold_01a"), v3(pos.x, pos.y - .5, pos.z - 1), true, false)
end)


menu.add_player_feature("Update Players", "action", trolls, function()
	PlayerArray()
	orbital:set_str_data(Playerz)
	explode:set_str_data(Playerz)
	menu.notify("Playerlist Updated", "Update", 5, 2)
end)

orbital = menu.add_player_feature("Orbital Player Blaming: ", "action_value_str", trolls, function(val, pid)
	local pos = v3()
	pped = player.get_player_ped(pid)
	for i = 0, 33 do
		if player.is_player_valid(i) and Playerz[val.value + 1] == player.get_player_name(i) then
			myped = player.get_player_ped(i)
			pos = entity.get_entity_coords(pped)
			offset = v3(0.0,0.0,-2000.00)
			script.get_global_f(1694982)
			graphics.set_next_ptfx_asset("scr_xm_orbital")
			while not graphics.has_named_ptfx_asset_loaded("scr_xm_orbital") do
				graphics.request_named_ptfx_asset("scr_xm_orbital")
				system.wait(0)
			end
			gameplay.set_override_weather(3)
			gameplay.clear_cloud_hat()
			fire.add_explosion(pos, 59, true, false, 1.5, myped)
			fire.add_explosion(pos + offset, 60, true, false, 1.8, myped)
			fire.add_explosion(pos + offset, 62, true, false, 2.0, myped)
			fire.add_explosion(pos + v3(100.0,100.0,7000.00), 50, true, false, 1.0, myped)
			fire.add_explosion(pos, 50, true, false, 1.0, myped)
			graphics.start_networked_ptfx_non_looped_at_coord("scr_xm_orbital_blast", pos, v3(0, 0, 0), 100.000, false, false, true)
			audio.play_sound_from_coord(-1, "BOATS_PLANES_HELIS_BOOM", v3(-910000.00,-10000.0,-19000.00), "MP_LOBBY_SOUNDS", true, 999999, false)
			audio.play_sound_from_coord(-1, "DLC_XM_Explosions_Orbital_Cannon", pos, "MP_LOBBY_SOUNDS", true, 99999990, false)
			audio.play_sound_from_coord(-1, "DLC_XM_Explosions_Orbital_Cannon", pos, 0, true, 0, false)
			audio.play_sound_from_coord(-1, "BOATS_PLANES_HELIS_BOOM", v3(-910000.00,-10000.0,-19000.00), "MP_LOBBY_SOUNDS", true, 999999, false)
			audio.play_sound_from_coord(script.get_global_i(1694982), "DLC_XM_Explosions_Orbital_Cannon", pos, "MP_LOBBY_SOUNDS", true, 99999990, false)
			audio.play_sound_from_coord(script.get_global_i(1694982), "DLC_XM_Explosions_Orbital_Cannon", pos, 0, true, 0, false)
			audio.play_sound_from_coord(-1, "DLC_XM_Explosions_Orbital_Cannon", pos, myped, true, 0, false)
			audio.play_sound_from_coord(-1, "DLC_XM_Explosions_Orbital_Cannon", pos, 0, true, 0, false)
			graphics.set_next_ptfx_asset("scr_xm_orbital")
			while not graphics.has_named_ptfx_asset_loaded("scr_xm_orbital") do
				graphics.request_named_ptfx_asset("scr_xm_orbital")
				system.wait(0)
			end
			gameplay.set_override_weather(3)
			gameplay.clear_cloud_hat()
			fire.add_explosion(pos, 59, false, true, 1.5, myped)
			fire.add_explosion(pos + offset, 60, true, false, 1.8, myped)
			fire.add_explosion(pos + offset, 62, true, false, 2.0, myped)
			fire.add_explosion(pos + v3(100.0,100.0,7000.00), 50, true, false, 1.0, myped)
			fire.add_explosion(pos, 50, true, false, 1.0, myped)
			fire.add_explosion(pos, 50, true, false, 1.0, myped)
			graphics.start_networked_ptfx_non_looped_at_coord("scr_xm_orbital_blast", pos, v3(0, 0, 0), 100.000, false, false, true)
			--  audio.play_sound_from_coord(-1, "BOATS_PLANES_HELIS_BOOM", pos + v3(0.0,0.0,20000), "MP_LOBBY_SOUNDS", true, 0, false)
			audio.play_sound_from_coord(-1, "DLC_XM_Explosions_Orbital_Cannon", pos, "o", true, 0, false)
			audio.play_sound(-1, "DLC_XM_Explosions_Orbital_Cannon", 0, true, 0,false)
			audio.play_sound(-1, "DLC_XM_Explosions_Orbital_Cannon", 0, true, 999999999, false)
			audio.play_sound(script.get_global_i(1694982), "DLC_XM_Explosions_Orbital_Cannon", 0, true, 0, false)
			audio.play_sound_from_coord(script.get_global_i(1694982), "DLC_XM_Explosions_Orbital_Cannon", pos,  0,  true, 999999999, false)
			audio.play_sound_from_coord(-1, "MP_Impact", pos, 0, true, 0, false)
			audio.play_sound(-1, "MP_Impact", 0, true, 0, false)
			graphics.set_next_ptfx_asset("scr_xm_orbital")
			while not graphics.has_named_ptfx_asset_loaded("scr_xm_orbital") do
				graphics.request_named_ptfx_asset("scr_xm_orbital")
				system.wait(0)
			end
			graphics.start_networked_ptfx_non_looped_at_coord("scr_xm_orbital_blast", pos, v3(0, 0, 0), 10.000, false, false, true)
		end
	end
	PlayerArray()
end)

local fire = menu.add_feature("Fire Ammo", "toggle", trolls, function(feat)
	if feat.on then
		weapon.give_weapon_component_to_ped(pedLocals, 0xA914799, 0xEC0F617)
        pped = player.get_player_ped(player.player_id())
		return HANDLER_CONTINUE
    else
		weapon.give_weapon_component_to_ped(pedLocals, 0xA914799, 0x89EBDAA7)
        return HANDLER_CONTINUE
	end
    return HANDLER_POP
end)

local health = menu.add_feature("Health Mod god mode", "toggle", trolls, function(feat)
    if feat.on then
        ped.set_ped_max_health(pedLocals, 1000000)
		ped.set_ped_health(pedLocals,  1000000)
	else
		ped.set_ped_max_health(pedLocals, 328)
		ped.set_ped_health(pedLocals, 328)
	end
    return HANDLER_POP
end)

menu.add_player_feature("Crazy Rain", "toggle", trolls, function(feat, pid)
    menu.notify("Raining stuff on " .. player.get_player_name(pid), "Rain", 6, 6)
	streaming.request_model(gameplay.get_hash_key("prop_elecbox_11"))
	streaming.request_model(gameplay.get_hash_key("prop_ld_int_safe_01"))
	streaming.request_model(gameplay.get_hash_key("prop_devin_box_dummy_01"))
	streaming.request_model(gameplay.get_hash_key("ch_prop_ch_diamond_xmastree"))
	streaming.request_model(gameplay.get_hash_key("bkr_prop_clubhouse_jukebox_01a"))
	streaming.request_model(0x15F27762)
	streaming.request_model(0x4FAF0D70)
	streaming.request_model(0x810369E2)
		
	system.wait(6000)
	menu.create_thread(crazyRain, {feat = feat, pid = pid})
end)

--\\Freeze player before boom
explodefreeze = menu.add_player_feature("Explosive Player Blaming Freeze", "toggle", trolls, function(val)
	if val.on then
		freezeplayer = true
	else
		freezeplayer = false
	end
	
	return freezeplayer
end)

--\\Blame kill as selected person (auto updating because I am cool)
explode = menu.add_player_feature("Explosive Player Blaming: ", "action_value_str", trolls, function(val, pid)
	if player.is_player_valid(pid) and pid ~= player.player_id() then 
		if freezeplayer then
			ped.clear_ped_tasks_immediately(player.get_player_ped(pid))
			menu.create_thread(boom, {val = val, pid = pid})
		else
			menu.create_thread(boom, {val = val, pid = pid})
		end
	end
end)

menu.add_player_feature("SMS Spam", "toggle", trolls, function(feat, pid)
	local msg =  input.get("Message to send", "You Suck", 75, 2)
	while feat.on do
		player.send_player_sms(pid, tostring(msg))
		system.wait(500)
	end
end)

--\\Function and array for player list made by GhostOne
Playerz = {}
function PlayerArray()
	Playerz = {}
	for pid = 0, 31 do
		if player.is_player_valid(pid) then 
			table.insert(Playerz, player.get_player_name(pid))
		end
	end
	orbital:set_str_data(Playerz)
	explode:set_str_data(Playerz)
	--return Playerz
end
PlayerArray()

--\\Event listeners for auto updating player list like a boss
event.add_event_listener("player_join", function ()
	Playerz = {}
	for pid = 0, 31 do
		if player.is_player_valid(pid) then 
			table.insert(Playerz, player.get_player_name(pid))
		end
	end
	orbital:set_str_data(Playerz)
	explode:set_str_data(Playerz)
	--return Playerz
end)

--\\Event listeners for auto updating player list like a boss
event.add_event_listener("player_leave", function ()
	Playerz = {}
	for pid = 0, 31 do
		if player.is_player_valid(pid) then 
			table.insert(Playerz, player.get_player_name(pid))
		end
	end
	orbital:set_str_data(Playerz)
	explode:set_str_data(Playerz)
	--return Playerz
end)
