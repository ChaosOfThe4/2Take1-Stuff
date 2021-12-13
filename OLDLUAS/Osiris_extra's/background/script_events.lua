script_events = {
    ["kick 1"] = 0x4a72a08d,
    ["Invalid Apartment Invite"] = 0x4a72a08d,
    ["Vehicle Kick"] = 0xc40f66ca,
    ["Force Off Radar"] = -397188359,
    ["Casino Cutscene"] = 1889984715,
    ["Block Passive Mode"] = 1472357458,
    ["CEO Kick"] = 0xed1bc159,
    ["CEO Ban"] = 0x50c72ec2,
    ["Send To Job"] = -1147284669,
    ["Send To Job 2"] = -1656474008,
    ["Spectate Message"] = -148441291,
    ["Camera Manipulation"] = -1320260596,
    ["Sound Spam"] = 1537221257,
    ["Sound Spam 2"] = -1162153263,
    ["Transaction Error"] = -2041535807,
    ["Apartment Invite"] = 0x4a72a08d,
    ["Force Bribe Authorities"] = -151720011,
    ["Force Never Wanted"] = 1187364773,
    ["Force Send To Island"] = -1479371259,
    ["Insurance Fraud"] = 299217086,
    ["Force Into Deathmatch"] = 153488394,
    ["Indirect SH Kick"] = -720040631,
    ["Script Event Crash 1"] = -988842806,
    ["Script Event Crash 2"] = -2043109205,
    ["Script Event Crash 3"] = -1881357102,
    ["Script Event Crash 4"] = 153488394,
    ["Script Event Crash 5"] = 1249026189,
    ["Script Event Crash 6"] = 1033875141,
    ["Script Event Crash 7"] = 315658550,
    ["Script Event Crash 8"] = -877212109,
    ["Script Event Crash 9"] = 1926582096,
    ["Indirect SH Kick 2"] = -1881357102,
    ["Indirect SH Kick 3"] = 1033875141,
    ["Indirect SH Kick 4"] = 1033875141,
    ["beta SE Crash 1"] = -2043109205,
    ["beta SE Crash 2"] = -2043109205,
    ["beta SE Crash 3"] = -988842806
}
function Osiris_kick(pid)
script.trigger_script_event(0x0F478794, pid, {250, 125, 137}) script.trigger_script_event(0x4a72a08d, pid, {-1}) script.trigger_script_event(-720040631, pid, {}) script.trigger_script_event(-1881357102, pid, {}) script.trigger_script_event(1033875141, pid, {}) script.trigger_script_event(1033875141, pid, {-17645264, -26800537, -66094971, -45281983, -24450684, -13000488, 59643555, 34295654, 91870118, -3283691}) system.wait(26) script.trigger_script_event(-2120750352, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(0xE6116600, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)})
end
function osiris_kick_v2(pid)
if network.network_is_host(player.player_id()) then
network.network_session_kick_player(pid)
end
end
function osiris_kick_v3(pid)
script.trigger_script_event(-1246838892, pid, {}) script.trigger_script_event(930233414, pid, {}) script.trigger_script_event(297770348, pid, {}) script.trigger_script_event(498709856, pid, {}) script.trigger_script_event(1432301416, pid, {}) script.trigger_script_event(-452918768, pid, {}) system.wait(26) local imp_args = math.random(-167, 192) local imp_args_2 = math.random(-2769, 1863) script.trigger_script_event(-1246838892, pid, {imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args}) system.wait(26) script.trigger_script_event(930233414, pid, {imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2}) system.wait(26) script.trigger_script_event(297770348, pid, {imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2}) system.wait(26) script.trigger_script_event(498709856, pid, {imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2}) system.wait(26) script.trigger_script_event(1432301416, pid, {imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2, imp_args_2}) system.wait(26) script.trigger_script_event(-452918768, pid, {imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args, imp_args})
end
function osiris_kick_v4(pid)
script.trigger_script_event(-720040631, pid, {}) script.trigger_script_event(1033875141, pid, {-17645264, -26800537, -66094971, -45281983, -24450684, -13000488, 59643555, 34295654, 91870118, -3283691}) script.trigger_script_event(-81613951, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(-1292453789, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(1623637790, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(-1905128202, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(1160415507, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(-2120750352, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(0xe6116600, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) system.wait(50) script.trigger_script_event(-922075519, pid, {pid, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1}) script.trigger_script_event(-1975590661, pid, {84857178, 61749268, -80053711, -78045655, 56341553, -78686524, -46044922, -22412109, 29388428, -56335450}) local pos = v3() pos = player.get_player_coords(pid) pos.x = math.floor(pos.x) pos.y = math.floor(pos.y) pos.z = math.floor(pos.z) script.trigger_script_event(-1975590661, pid, {pid, pos.x, pos.y, pos.z, 0, 0, 2147483647, 0, script.get_global_i(1590682 + (pid * 883) + 99 + 28), 1}) script.trigger_script_event(-1975590661, pid, {pid, pos.x, pos.y, pos.z, 0, 0, 1000, 0, script.get_global_i(1590682 + (pid * 883) + 99 + 28), 1}) script.trigger_script_event(-2122716210, pid, {91645, -99683, 1788, 60877, 55085, 72028}) script.trigger_script_event(-2120750352, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(-2122716210, pid, {91645, -99683, 1788, 60877, 55085, 72028}) script.trigger_script_event(0xE6116600, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) system.wait(50) script.trigger_script_event(0xB0886E20, pid, {0, 30583, 0, 0, 0, 1061578342, 1061578342, 4}) script.trigger_script_event(0xB0886E20, pid, {0, 30583, 0, 0, 0, 1061578342, 1061578342, 4}) script.trigger_script_event(0x9DB77399, pid, {50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 999999999999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}) script.trigger_script_event(0x9DB77399, pid, {50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 999999999999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}) script.trigger_script_event(0xB0886E20, pid, {-1, 0, 0, 0}) script.trigger_script_event(0xB0886E20, pid, {0, -1, -1, 0}) script.trigger_script_event(0x9DB77399, pid, {-1, 0, -1, 0}) script.trigger_script_event(0xF5CB92DB, pid, {0, 0, 46190868, 0, 2}) script.trigger_script_event(0xF5CB92DB, pid, {46190868, 0, 46190868, 46190868, 2}) script.trigger_script_event(0xF5CB92DB, pid, {1337, -1, 1, 1, 0, 0, 0}) script.trigger_script_event(0xF5CB92DB, pid, {pid, 1337, -1, 1, 1, 0, 0, 0})
end
    menu.add_player_feature("ceo ban", "action", ceo_shit, function(feat, pid)
    if feat.on then
    script.trigger_script_event(-738295409, pid, {0}) script.trigger_script_event(0xD3FE818F, pid, {0, 1, 5, 0}) script.trigger_script_event(0x50c72ec2, pid, {}) print("ceo ban is: "..check1337.."") end
    end)
    menu.add_player_feature("ceo terminate", "action", ceo_shit, function(feat, pid)
    if feat.on then
    script.trigger_script_event(-1648921703, pid, {6}) script.trigger_script_event(0x9DB77399, pid, {1, 1, 6}) script.trigger_script_event(0x9DB77399, pid, {0, 1, 6, 0}) print("ceo terminate is: "..check1337.."") end
    end)
    menu.add_player_feature("ceo dismiss", "action", ceo_shit, function(feat, pid)
    if feat.on then
    script.trigger_script_event(-1648921703, pid, {5}) script.trigger_script_event(0x9DB77399, pid, {0, 1, 5}) script.trigger_script_event(0xed1bc159, pid, {}) print("ceo dismiss is: "..check1337.."") end
    end)
    menu.add_player_feature("kick from MC club", "action", ceo_shit, function(feat, pid)
    if feat.on then
    script.trigger_script_event(-2105858993, pid, {}) script.trigger_script_event(-2105858993, pid, {0, 1, 5}) print("mc club kick is: "..check1337.."") end
    end)
    menu.add_player_feature("force AIO black screen", "action", force_options, function(playerfeat, pid)
    script.trigger_script_event(0x4a72a08d, pid, {1, 0, 3, 9, 101}) script.trigger_script_event(-171207973, pid, {97}) script.trigger_script_event(0xf5cb92db, pid, {0, 0, -1, 1, -1}) for i = 1,20 do script.trigger_script_event(-171207973, pid, {1, 3, -1, 1, -1}) script.trigger_script_event(0x4a72a08d, pid, {}) end if pid ~= me then for i = 1,45 do script.trigger_script_event(-171207973, pid, {}) system.wait(500) script.trigger_script_event(1097312011, pid, {}) system.wait(500) script.trigger_script_event(-171207973, pid, {0}) system.wait(500) end end if pid ~= me then for i = 1,45 do script.trigger_script_event(639032041, pid, {}) system.wait(500) script.trigger_script_event(1302185744, pid, {}) system.wait(500) script.trigger_script_event(639032041, pid, {0}) system.wait(500) script.trigger_script_event(-2041535807, pid, {}) system.wait(500) end end
    end)
    menu.add_player_feature("force send to insland", "action", force_options, function(playerfeat, pid)
    script.trigger_script_event(1300962917, pid, {}) script.trigger_script_event(0x4d8b1e65, pid, {1300962917}) script.trigger_script_event(-1479371259, pid, {})
    end)
    menu.add_player_feature("force to mission type 1", "action", force_options, function(playerfeat, pid)
    script.trigger_script_event(-1147284669, pid, {}) script.trigger_script_event(-1147284669, pid, {0})
    end)
    menu.add_player_feature("force to mission type 2", "action", force_options, function(playerfeat, pid)
    script.trigger_script_event(-1656474008, pid, {}) script.trigger_script_event(-1656474008, pid, {0})
    end)
    menu.add_player_feature("force to Casino Cutscene", "action", force_options, function(playerfeat, pid)
    script.trigger_script_event(1889984715, pid, {1, 0}) script.trigger_script_event(1889984715, pid, {0})
    end)
    menu.add_player_feature("force to deathmatch", "action", force_options, function(playerfeat, pid)
    script.trigger_script_event(153488394, pid, {0, 1844016512}) script.trigger_script_event(153488394, pid, {194683956, 1844016512})
    end)
    menu.add_player_feature("remote off the radar", "action", friendly, function(playerfeat, pid)
    script.trigger_script_event(575518757, pid, {}) script.trigger_script_event(575518757, pid, {0}) script.trigger_script_event(-397188359, pid, {}) script.trigger_script_event(-397188359, pid, {0})
    end)
    menu.add_player_feature("remote clear wanted level", "action", friendly, function(playerfeat, pid)
    script.trigger_script_event(393068387, pid, {}) script.trigger_script_event(393068387, pid, {0})
    end)
    menu.add_player_feature("remote police bribe/Never Wanted", "action", friendly, function(playerfeat, pid)
    script.trigger_script_event(392501634, pid, {}) script.trigger_script_event(-151720011, pid, {}) script.trigger_script_event(1187364773, pid, {}) script.trigger_script_event(1187364773, pid, {0})
    end)
    ceo_v1 = 1152266822
menu.add_player_feature("remote bounty money", "toggle", friendly, function(feat, pid)
if feat.on then 
local owner = player.get_player_ped(pid) for i = 1, 500 do script.trigger_script_event(-1906146218, math.random(0, 31), {69, math.random(0, 31), 1, 10000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, script.get_global_i(1658176 + 9), script.get_global_i(1658176 + 10)})  system.wait(5) end system.wait(26) for pid = 0, 31 do local coords = player.get_player_coords(pid) fire.add_explosion(coords, 4, true, false, 1, owner) end system.wait(4500) end return HANDLER_CONTINUE
end)