menu.add_feature("disable session chat", "toggle", session_chat, function(feat)
    if feat.on then
    network.send_chat_message(" ", false) end return HANDLER_CONTINUE
    end)
    menu.add_feature("disable session chat local only", "toggle", session_chat, function(feat)
    if feat.on then
    network.send_chat_message(" ", true) end return HANDLER_CONTINUE
    end)
    menu.add_feature("send advertisement", "action", session_chat, function(feat)
    if feat.on then
    network.send_chat_message("Osiris script best lua for 2take1", false) network.send_chat_message("join the discord: https://discord.gg/WeEuwYcBtA", false) end
    end)
    menu.add_feature("paste clipboard", "action", session_chat, function(feat)
    if feat.on then
    clipboard = utils.from_clipboard() network.send_chat_message(clipboard, false) end
    end)
    menu.add_feature("i am the best", "action", session_chat, function(feat)
    if feat.on then
    local name = player.get_player_name(player.player_id()) network.send_chat_message(""..name.." is greater then everyone in here", false) system.wait(500) network.send_chat_message("get good get like "..name.." get Osiris lua", false) end
    end)
    menu.add_feature("staring a race", "action", session_chat, function(feat)
    if feat.on then
    network.send_chat_message("go on GO", false) system.wait(1500) network.send_chat_message("5", false) system.wait(800) network.send_chat_message("4", false) system.wait(800) network.send_chat_message("3", false) system.wait(800) network.send_chat_message("2", false) system.wait(800) network.send_chat_message("1", false) system.wait(800) network.send_chat_message("GO", false) end
    end)
menu.add_feature("spam everyone with random messages", "toggle", session_sms, function(feat)
    if feat.on then
    for pid = 0, 32 do if pid ~= me then local message = math.random(1, 5) if message == 1 then player.send_player_sms(pid, "get good get Osiris lua for 2take1") system.wait(250) end if message == 2 then player.send_player_sms(pid, "get good get like"..my_name.."") system.wait(250) end if message == 3 then player.send_player_sms(pid, "LOL Ezzzzz") system.wait(250) end if message == 4 then player.send_player_sms(pid, "Osiris lua on top discord.gg/WeEuwYcBtA") system.wait(250) end if message == 5 then player.send_player_sms(pid, "crash modders with Osiris lua") system.wait(250) end end end end return HANDLER_CONTINUE
    end)
    menu.add_feature("send everyone advertisement", "action", session_sms, function(feat)
    if feat.on then
    for pid = 0, 32 do if pid ~= me then player.send_player_sms(pid, "Osiris 2take1 lua on top discord.gg/WeEuwYcBtA") end end end
    end)
    menu.add_feature("send everyone there own ip", "action", session_sms, function(feat)
    if feat.on then
    for pid = 0, 32 do if pid ~= me then local there_ip = player.get_player_ip(pid) player.send_player_sms(pid, "lol got your ip kid"..there_ip.."") end end end
    end)
    menu.add_feature("send everyone there own rid", "action", session_sms, function(feat)
    if feat.on then for pid = 0, 32 do if pid ~= me then local there_scid = player.get_player_scid(pid) player.send_player_sms(pid, "lol got your rid kid"..there_scid.."") end end end
    end)
    menu.add_feature("send everyone custom sms", "action", session_sms, function(feat)
    if feat.on then
    local custom, SC = input.get("Enter Custom SMS", "", 128, 0) while custom == 1 do system.yield(0) custom, SC = input.get("Enter Custom SMS", "", 128, 0) system.wait(27) for pid = 0, 32 do if pid ~= me then player.send_player_sms(pid, ""..SC.."") end end end end
    end)
    menu.add_player_feature("spam them with random messages", "toggle", pid_sms, function(feat, pid)
    if feat.on then
    local message = math.random(1, 5) if message == 1 then player.send_player_sms(pid, "get good get Osiris lua for 2take1") system.wait(250) end if message == 2 then player.send_player_sms(pid, "get good get like"..my_name.."") system.wait(250) end if message == 3 then player.send_player_sms(pid, "LOL Ezzzzz") system.wait(250) end if message == 4 then player.send_player_sms(pid, "Osiris lua on top discord.gg/WeEuwYcBtA") system.wait(250) end if message == 5 then player.send_player_sms(pid, "crash modders with Osiris lua") system.wait(250) end end return HANDLER_CONTINUE
    end)
    menu.add_player_feature("send them advertisement", "action", pid_sms, function(feat, pid)
    if feat.on then
    player.send_player_sms(pid, "Osiris 2take1 lua on top discord.gg/WeEuwYcBtA") end
    end)
    menu.add_player_feature("send them there own ip", "action", pid_sms, function(feat, pid)
    if feat.on then
    local there_ip = player.get_player_ip(pid) player.send_player_sms(pid, "lol got your ip kid"..there_ip.."") end
    end)
    menu.add_player_feature("send them there own rid", "action", pid_sms, function(feat, pid)
    if feat.on then
    local there_scid = player.get_player_scid(pid) player.send_player_sms(pid, "lol got your rid kid"..there_scid.."") end
    end)
    menu.add_player_feature("send them custom sms", "action", pid_sms, function(feat, pid)
    if feat.on then
    local custom, SC = input.get("Enter Custom SMS", "", 128, 0) while custom == 1 do system.yield(0) custom, SC = input.get("Enter Custom SMS", "", 128, 0) system.wait(27) player.send_player_sms(pid, ""..SC.."") end end
    end)