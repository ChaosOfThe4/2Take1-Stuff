-- these are all the explosive ammo types in the game
menu.add_player_feature("grenade ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 0, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("grenadelauncher ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 1, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("stickybomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 2, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("molotov ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 3, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("rocket ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 4, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("tank ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 5, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("octane ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 6, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("car bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 7, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("plane bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 8, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("gas pump ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 9, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("bike ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 10, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("steam ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 11, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("flame ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 12, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("water ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 13, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("gas tank ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 14, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("boat bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 15, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("ship bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 16, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("truck bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 17, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("explosive sniper ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 18, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("smoke launcher ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 19, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("smoke ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 20, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("BZ gas ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 21, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("flare ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 22, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("gas canister ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 23, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("fire extinguisher ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 24, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("explosive shotgun ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 25, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("train bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 26, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("explosive barrel ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 27, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("propane tank ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 28, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("blimp bmob ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 29, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("explosive flame ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 30, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("tanker truck ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 31, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("plane rocket ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 32, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("vehicle bullet ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 33, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("medium gas tank ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 34, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("bird crap ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 35, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("railgun ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 36, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("medium blimp bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 37, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("firework ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 38, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("snoqball ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 39, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("proximity mine ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 40, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("valkyrie cannon ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 41, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("air defense ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 42, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("pipe bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 43, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("vehicle bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 44, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("explosive AR ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 45, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("apc shell ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 46, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("cluster bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 47, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("gas bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 48, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("incendiary bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 49, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("standard bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 50, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("torpedo ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 51, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("torpedo underwater ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 52, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("bombushka ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 53, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("small cluster bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 54, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("hunter barrage ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 55, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("hunter cannon ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 56, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("rogue cannon ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 57, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("mine underwater ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 58, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("orbital cannon ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 59, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("wide bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 60, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("shotgun explosive ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 61, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("oppressor missle ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 62, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("car mortar bomb ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 63, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("vehicle mine ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 64, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("car emp ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 65, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("spike strip ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 66, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("slick oil ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 67, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("tar ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 68, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("drone ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 69, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("raygun ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 70, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("buried mine ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 71, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("script missile ammo", "toggle", weapon_ammo_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 72, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
-- these are the presets of what people will use most 
menu.add_player_feature("grenade ammo", "toggle", weapon_ammo_preset_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 0, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("molotov ammo", "toggle", weapon_ammo_preset_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 3, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("flame ammo", "toggle", weapon_ammo_preset_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 12, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("water ammo", "toggle", weapon_ammo_preset_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 13, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("raygun ammo", "toggle", weapon_ammo_preset_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 70, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("medium blimp bomb ammo", "toggle", weapon_ammo_preset_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 37, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
menu.add_player_feature("firework ammo", "toggle", weapon_ammo_preset_preset, function(feat, pid)
if feat.on then
if ped.is_ped_shooting(player.get_player_ped(pid)) then local weapon_impact, impact_pos = ped.get_ped_last_weapon_impact(player.get_player_ped(pid)) fire.add_explosion(impact_pos, 38, true, false, 1, player.get_player_ped(pid)) end end
return HANDLER_CONTINUE
end)
-- these are the custom weapon options
