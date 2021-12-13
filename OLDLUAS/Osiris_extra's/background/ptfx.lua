menu.add_player_feature("radiation lag", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() pos2.z = pos2.z + 125 local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_recartheft") while not graphics.has_named_ptfx_asset_loaded("scr_recartheft") do graphics.request_named_ptfx_asset("scr_recartheft") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 100) graphics.start_networked_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 100) graphics.start_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 50) graphics.start_networked_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 50) graphics.start_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 10) graphics.start_networked_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 10) end
    end)
    menu.add_player_feature("clown appears", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_rcbarry2") while not graphics.has_named_ptfx_asset_loaded("scr_rcbarry2") do graphics.request_named_ptfx_asset("scr_rcbarry2") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_clown_appears", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_clown_appears", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("alien teleport", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_rcbarry1") while not graphics.has_named_ptfx_asset_loaded("scr_rcbarry1") do graphics.request_named_ptfx_asset("scr_rcbarry1") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_alien_teleport", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_alien_teleport", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("car crash", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_fbi4") while not graphics.has_named_ptfx_asset_loaded("scr_fbi4") do graphics.request_named_ptfx_asset("scr_fbi4") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_fbi4_trucks_crash", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_fbi4_trucks_crash", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("sparks", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_family4") while not graphics.has_named_ptfx_asset_loaded("scr_family4") do graphics.request_named_ptfx_asset("scr_family4") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_fam4_trailer_sparks", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_fam4_trailer_sparks", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("alien disintegrate", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_rcbarry1") while not graphics.has_named_ptfx_asset_loaded("scr_rcbarry1") do graphics.request_named_ptfx_asset("scr_rcbarry1") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_alien_disintegrate", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_alien_disintegrate", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("Electric box smoking", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_agencyheistb") while not graphics.has_named_ptfx_asset_loaded("scr_agencyheistb") do graphics.request_named_ptfx_asset("scr_agencyheistb") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_agency3b_elec_box", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_agency3b_elec_box", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("water spill", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_agencyheist") while not graphics.has_named_ptfx_asset_loaded("scr_agencyheist") do graphics.request_named_ptfx_asset("scr_agencyheist") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_fbi_mop_drips", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_fbi_mop_drips", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("welding", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_martin1") while not graphics.has_named_ptfx_asset_loaded("scr_martin1") do graphics.request_named_ptfx_asset("scr_martin1") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_sol1_sniper_impact", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_sol1_sniper_impact", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("falling rocks", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_reconstructionaccident") while not graphics.has_named_ptfx_asset_loaded("scr_reconstructionaccident") do graphics.request_named_ptfx_asset("scr_reconstructionaccident") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_reconstruct_pipefall_debris", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_reconstruct_pipefall_debris", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("mining smoke", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_reconstructionaccident") while not graphics.has_named_ptfx_asset_loaded("scr_reconstructionaccident") do graphics.request_named_ptfx_asset("scr_reconstructionaccident") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_reconstruct_pipe_impact", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_reconstruct_pipe_impact", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("rain money", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_paletoscore") while not graphics.has_named_ptfx_asset_loaded("scr_paletoscore") do graphics.request_named_ptfx_asset("scr_paletoscore") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_paleto_banknotes", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_paleto_banknotes", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("tons of blood", "action", troll_ptfx, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_solomon3") while not graphics.has_named_ptfx_asset_loaded("scr_solomon3") do graphics.request_named_ptfx_asset("scr_solomon3") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_trev4_747_blood_impact", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_trev4_747_blood_impact", there_ped, pos2, rot, 1) end
    end)
    menu.add_player_feature("radiation lag", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() pos2.z = pos2.z + 125 local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_recartheft") while not graphics.has_named_ptfx_asset_loaded("scr_recartheft") do graphics.request_named_ptfx_asset("scr_recartheft") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 100) graphics.start_networked_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 100) graphics.start_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 50) graphics.start_networked_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 50) graphics.start_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 10) graphics.start_networked_ptfx_non_looped_on_entity("scr_wheel_burnout", there_ped, pos2, rot, 10) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("clown appears", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_rcbarry2") while not graphics.has_named_ptfx_asset_loaded("scr_rcbarry2") do graphics.request_named_ptfx_asset("scr_rcbarry2") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_clown_appears", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_clown_appears", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("alien teleport", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_rcbarry1") while not graphics.has_named_ptfx_asset_loaded("scr_rcbarry1") do graphics.request_named_ptfx_asset("scr_rcbarry1") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_alien_teleport", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_alien_teleport", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("car crash", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_fbi4") while not graphics.has_named_ptfx_asset_loaded("scr_fbi4") do graphics.request_named_ptfx_asset("scr_fbi4") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_fbi4_trucks_crash", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_fbi4_trucks_crash", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("sparks", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_family4") while not graphics.has_named_ptfx_asset_loaded("scr_family4") do graphics.request_named_ptfx_asset("scr_family4") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_fam4_trailer_sparks", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_fam4_trailer_sparks", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("alien disintegrate", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_rcbarry1") while not graphics.has_named_ptfx_asset_loaded("scr_rcbarry1") do graphics.request_named_ptfx_asset("scr_rcbarry1") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_alien_disintegrate", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_alien_disintegrate", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("Electric box smoking", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_agencyheistb") while not graphics.has_named_ptfx_asset_loaded("scr_agencyheistb") do graphics.request_named_ptfx_asset("scr_agencyheistb") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_agency3b_elec_box", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_agency3b_elec_box", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("water spill", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_agencyheist") while not graphics.has_named_ptfx_asset_loaded("scr_agencyheist") do graphics.request_named_ptfx_asset("scr_agencyheist") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_fbi_mop_drips", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_fbi_mop_drips", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("welding", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_martin1") while not graphics.has_named_ptfx_asset_loaded("scr_martin1") do graphics.request_named_ptfx_asset("scr_martin1") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_sol1_sniper_impact", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_sol1_sniper_impact", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("falling rocks", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_reconstructionaccident") while not graphics.has_named_ptfx_asset_loaded("scr_reconstructionaccident") do graphics.request_named_ptfx_asset("scr_reconstructionaccident") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_reconstruct_pipefall_debris", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_reconstruct_pipefall_debris", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("mining smoke", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_reconstructionaccident") while not graphics.has_named_ptfx_asset_loaded("scr_reconstructionaccident") do graphics.request_named_ptfx_asset("scr_reconstructionaccident") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_reconstruct_pipe_impact", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_reconstruct_pipe_impact", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("rain money", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then
    local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_paletoscore") while not graphics.has_named_ptfx_asset_loaded("scr_paletoscore") do graphics.request_named_ptfx_asset("scr_paletoscore") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_paleto_banknotes", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_paleto_banknotes", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("tons of blood", "toggle", troll_ptfx_looped, function(feat, pid)
    if feat.on then local pos = player.get_player_coords(pid) local pos2 = v3() local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) graphics.set_next_ptfx_asset("scr_solomon3") while not graphics.has_named_ptfx_asset_loaded("scr_solomon3") do graphics.request_named_ptfx_asset("scr_solomon3") system.wait(0) end graphics.start_ptfx_non_looped_on_entity("scr_trev4_747_blood_impact", there_ped, pos2, rot, 1) graphics.start_networked_ptfx_non_looped_on_entity("scr_trev4_747_blood_impact", there_ped, pos2, rot, 1) end return HANDLER_CONTINUE
    end)