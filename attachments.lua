menu.add_player_feature("egg man", "action", attach_preset, function(playerfeat, pid)
    local pos = v3() local mypos2 = player.get_player_coords(player.player_id()) local there_ped = player.get_player_ped(pid) local bone_int_index = ped.get_ped_bone_index(there_ped, 18905) local bone_int_index1 = ped.get_ped_bone_index(there_ped, 57005) local bone_int_index2 = ped.get_ped_bone_index(there_ped, 31086) local bone_int_index3 = ped.get_ped_bone_index(there_ped, 14201) local bone_int_index4 = ped.get_ped_bone_index(there_ped, 52301) local egg = gameplay.get_hash_key("prop_alien_egg_01") streaming.request_model(egg) local egg_obj = object.create_object(egg, mypos2, true, true) local egg_obj1 = object.create_object(egg, mypos2, true, true) local egg_obj2 = object.create_object(egg, mypos2, true, true) local egg_obj3 = object.create_object(egg, mypos2, true, true) local egg_obj4 = object.create_object(egg, mypos2, true, true) entity.attach_entity_to_entity(egg_obj, there_ped, bone_int_index, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj1, there_ped, bone_int_index1, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj2, there_ped, bone_int_index2, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj3, there_ped, bone_int_index3, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj4, there_ped, bone_int_index4, pos, pos, true, true, false, 0, true) streaming.set_model_as_no_longer_needed(egg)
    end)
    menu.add_player_feature("dildo man", "action", attach_preset, function(playerfeat, pid)
    local strip_club = v3() strip_club.x = 71.267 strip_club.y = -1316.533 strip_club.z = 29.343 entity.set_entity_coords_no_offset(my_self_ped, strip_club)   local pos = v3() local mypos2 = player.get_player_coords(player.player_id()) local there_ped = player.get_player_ped(pid) local bone_int_index = ped.get_ped_bone_index(there_ped, 18905) local bone_int_index1 = ped.get_ped_bone_index(there_ped, 57005) local bone_int_index2 = ped.get_ped_bone_index(there_ped, 31086) local bone_int_index3 = ped.get_ped_bone_index(there_ped, 14201) local bone_int_index4 = ped.get_ped_bone_index(there_ped, 52301) local egg = gameplay.get_hash_key("v_res_d_dildo_f") streaming.request_model(egg) if not streaming.has_model_loaded(egg) then menu.notify("model not loaded please try again", "Osiris lua", 9, 80) else local egg_obj = object.create_object(egg, mypos2, true, true) local egg_obj1 = object.create_object(egg, mypos2, true, true) local egg_obj2 = object.create_object(egg, mypos2, true, true) local egg_obj3 = object.create_object(egg, mypos2, true, true) local egg_obj4 = object.create_object(egg, mypos2, true, true) entity.attach_entity_to_entity(egg_obj, there_ped, bone_int_index, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj1, there_ped, bone_int_index1, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj2, there_ped, bone_int_index2, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj3, there_ped, bone_int_index3, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj4, there_ped, bone_int_index4, pos, pos, true, true, false, 0, true) streaming.set_model_as_no_longer_needed(egg) end
    end)
    menu.add_player_feature("yoga ball man", "action", attach_preset, function(playerfeat, pid)
    local pos = v3() local mypos2 = player.get_player_coords(player.player_id()) local there_ped = player.get_player_ped(pid) local bone_int_index = ped.get_ped_bone_index(there_ped, 18905) local bone_int_index1 = ped.get_ped_bone_index(there_ped, 57005) local bone_int_index2 = ped.get_ped_bone_index(there_ped, 31086) local bone_int_index3 = ped.get_ped_bone_index(there_ped, 14201) local bone_int_index4 = ped.get_ped_bone_index(there_ped, 52301) local egg = gameplay.get_hash_key("prop_swiss_ball_01") streaming.request_model(egg) local egg_obj = object.create_object(egg, mypos2, true, true) local egg_obj1 = object.create_object(egg, mypos2, true, true) local egg_obj2 = object.create_object(egg, mypos2, true, true) local egg_obj3 = object.create_object(egg, mypos2, true, true) local egg_obj4 = object.create_object(egg, mypos2, true, true) entity.attach_entity_to_entity(egg_obj, there_ped, bone_int_index, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj1, there_ped, bone_int_index1, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj2, there_ped, bone_int_index2, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj3, there_ped, bone_int_index3, pos, pos, true, true, false, 0, true) entity.attach_entity_to_entity(egg_obj4, there_ped, bone_int_index4, pos, pos, true, true, false, 0, true) streaming.set_model_as_no_longer_needed(egg)
    end)
    menu.add_player_feature("computer head", "action", attach_preset, function(playerfeat, pid)
    local mypos2 = player.get_player_coords(player.player_id()) local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) local test_rot = entity.get_entity_heading(there_ped) local bone_int_index = ped.get_ped_bone_index(there_ped, 31086) local egg = gameplay.get_hash_key("prop_tv_01") streaming.request_model(egg) if streaming.has_model_loaded(egg) == false then menu.notify("model has not loaded please try again", "Osiris lua", 9, 80) else local egg_obj = object.create_object(egg, mypos2, true, true) entity.attach_entity_to_entity(egg_obj, there_ped, bone_int_index, pos, rot, true, true, false, 0, true) streaming.set_model_as_no_longer_needed(egg) entity.set_entity_visible(egg_obj, true) end
    end)
    menu.add_player_feature("snow man", "action", attach_preset, function(playerfeat, pid)
    local mypos2 = player.get_player_coords(player.player_id()) local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) local egg = gameplay.get_hash_key("prop_prlg_snowpile") streaming.request_model(egg) local egg_obj = object.create_object(egg, mypos2, true, true) entity.attach_entity_to_entity(egg_obj, there_ped, 0, pos, rot, true, true, false, 0, true) streaming.set_model_as_no_longer_needed(egg)
    end)
    menu.add_player_feature("big dick", "action", attach_preset, function(playerfeat, pid)
    local mypos2 = player.get_player_coords(player.player_id())  local there_ped = player.get_player_ped(pid) local rot = entity.get_entity_rotation(there_ped) local bone_int_index4 = ped.get_ped_bone_index(there_ped, 11816) local egg = gameplay.get_hash_key("gr_prop_gr_missle_short") streaming.request_model(egg) local egg_obj = object.create_object(egg, mypos2, true, true) entity.attach_entity_to_entity(egg_obj, there_ped, bone_int_index4, pos, rot, true, true, false, 0, true) streaming.set_model_as_no_longer_needed(egg)
    end)
    menu.add_player_feature("cone head", "action", attach_preset, function(playerfeat, pid)
    local plyped_there_ped = player.get_player_ped(pid) local pos = v3() pos.z = pos.z + 0.50 conehead_attch = object.create_object(-1059647297, pos, true, false) entity.attach_entity_to_entity(conehead_attch, plyped_there_ped, 0, pos, pos, true, true, false, 0, true)
    end)
menu.add_player_feature("attach egg", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = 1803116220 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Xmas tree", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = 238789712 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach microwave", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = 1306960905 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Basketball", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = 1840863642 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach riot shield", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = 812526004 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach gumball machine ", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = 785076010 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash bag", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = -1998455445 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash can", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = -468629664 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach toilet", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = 1872312775 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach coffin", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = -2101688943 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach weed", "action", attach_head, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), head_bone) attach_test1337 = 452618762 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach egg", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = 1803116220 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Xmas tree", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = 238789712 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach microwave", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = 1306960905 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Basketball", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = 1840863642 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach riot shield", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = 812526004 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach gumball machine ", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = 785076010 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash bag", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = -1998455445 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash can", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = -468629664 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach toilet", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = 1872312775 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach coffin", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = -2101688943 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach weed", "action", attach_left_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_hand_bone) attach_test1337 = 452618762 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach egg", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = 1803116220 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Xmas tree", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = 238789712 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach microwave", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = 1306960905 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Basketball", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = 1840863642 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach riot shield", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = 812526004 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach gumball machine ", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = 785076010 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash bag", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = -1998455445 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash can", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = -468629664 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach toilet", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = 1872312775 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach coffin", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = -2101688943 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach weed", "action", attach_Right_hand, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_hand_bone) attach_test1337 = 452618762 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach egg", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = 1803116220 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Xmas tree", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = 238789712 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach microwave", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = 1306960905 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Basketball", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = 1840863642 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach riot shield", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = 812526004 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach gumball machine ", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = 785076010 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash bag", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = -1998455445 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash can", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = -468629664 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach toilet", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = 1872312775 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach coffin", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = -2101688943 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach weed", "action", attach_chest, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), chest_bone) attach_test1337 = 452618762 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach egg", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = 1803116220 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Xmas tree", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = 238789712 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach microwave", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = 1306960905 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Basketball", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = 1840863642 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach riot shield", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = 812526004 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach gumball machine ", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = 785076010 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash bag", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = -1998455445 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash can", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = -468629664 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach toilet", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = 1872312775 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach coffin", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = -2101688943 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach weed", "action", attach_left_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), left_foot_bone) attach_test1337 = 452618762 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach egg", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = 1803116220 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Xmas tree", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = 238789712 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach microwave", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = 1306960905 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach Basketball", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = 1840863642 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach riot shield", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = 812526004 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach gumball machine ", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = 785076010 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash bag", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = -1998455445 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach trash can", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = -468629664 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach toilet", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = 1872312775 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach coffin", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = -2101688943 attachment_function(pid)
    end
    end)
    menu.add_player_feature("attach weed", "action", attach_right_foot, function(feat, pid)
    if feat.on then
    bone = ped.get_ped_bone_index(player.get_player_ped(pid), right_foot_bone) attach_test1337 = 452618762 attachment_function(pid)
    end
    end)