-- this is not my function it was made from soulreaper's lua script full credit to him
R = {}
function icrashyou (M)
local hash
hash = M
streaming.request_model(hash)
while(not streaming.has_model_loaded(hash))
do
system.wait(0)
end
player.set_player_model(hash)
streaming.set_model_as_no_longer_needed(hash)
return HANDLER_POP
end
function suicide()
ped.set_ped_health(R.ped(), 0)
end
function mc()
entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(460.586, 5571.714, 781.179)) icrashyou(0x9C9EFFD8) system.wait(100) suicide() system.wait(100) ped.resurrect_ped(player.get_player_ped(player.player_id())) system.wait(300) icrashyou(0x705E61F2) system.wait(100) suicide() system.wait(200) ped.resurrect_ped(player.get_player_ped(player.player_id()))
end
aX = {
["police_outfit"] = {
["female"] = {
["clothes"] = {{0, 0}, {0, 6}, {0, 14}, {0, 34}, {0, 0}, {0, 25}, {0, 0}, {0, 35}, {0, 0}, {0, 0}, {0, 48}},
["props"] = {{0, 45, 0}, {1, 11, 0}, {2, 4294967295, 0}, {6, 4294967295, -1}, {7, 4294967295, -1}}
},
["male"] = {
["clothes"] = {{0, 0}, {0, 0}, {0, 0}, {0, 35}, {0, 0}, {0, 25}, {0, 0}, {0, 58}, {0, 0}, {0, 0}, {0, 55}},
["props"] = {{0, 46, 0}, {1, 13, 0}, {2, 4294967295, 0}, {6, 4294967295, -1}, {7, 4294967295, -1}}
}
},
["bac_outfit"] = {["textures"] = {}, ["clothes"] = {}, ["prop_text"] = {}, ["prop_ind"] = {}, ["gender"] = nil},
["session_crash"] = {["textures"] = {}, ["clothes"] = {}, ["prop_text"] = {}, ["prop_ind"] = {}}
}
function Restore()
icrashyou(bj)
system.wait(250)
ped.set_ped_health(R.ped(), 0)
system.wait(3500)
local cx = aX["session_crash"]["clothes"]
local cy = aX["session_crash"]["textures"]
for i = 1, 11 do
ped.set_ped_component_variation(R.ped(), i, cx[i], cy[i], 2)
end
local aw = {0, 1, 2, 6, 7}
local ax = aX["session_crash"]["prop_ind"]
local ay = aX["session_crash"]["prop_text"]
for az = 1, #aw do
ped.set_ped_prop_index(R.ped(), aw[az], ax[az], ay[az], 0)
end
end
function Outfits()
bj = entity.get_entity_model_hash(R.ped())
for i = 1, 11 do
aX["session_crash"]["textures"][i] = ped.get_ped_texture_variation(R.ped(), i)
aX["session_crash"]["clothes"][i] = ped.get_ped_drawable_variation(R.ped(), i)
end
local aw = {0, 1, 2, 6, 7}
for az = 1, #aw do
aX["session_crash"]["prop_ind"][az] = ped.get_ped_prop_index(R.ped(), aw[az])
aX["session_crash"]["prop_text"][az] = ped.get_ped_prop_texture_index(R.ped(), aw[az])
end
end
R.ped = function()
return player.get_player_ped(player.player_id())
end
modelsyncv1man = function()
entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-76.101, -819.124, 326.175)) icrashyou(2627665880) system.wait(100) suicide() system.wait(100) ped.resurrect_ped(player.get_player_ped(player.player_id())) system.wait(300) icrashyou(1885233650) system.wait(100) suicide() system.wait(200) ped.resurrect_ped(player.get_player_ped(player.player_id()))
end
modelsyncv2woman = function()
entity.set_entity_coords_no_offset(player.get_player_ped(player.player_id()), v3(-76.101, -819.124, 326.175)) icrashyou(1885233650) system.wait(100) suicide() system.wait(300) icrashyou(2627665880) system.wait(100) suicide() system.wait(200) ped.resurrect_ped(player.get_player_ped(player.player_id()))
end