-- hello bitches
-- im back for a lil idk what im doing

menu.notify("Loading the At0m1c B0mb", "At0m1c Script", 4, 215)


local MyId = player.player_id
local getPed = player.get_player_ped
local function own_ped()
    return getPed(MyId())
end



local cages =  menu.add_player_feature("At0m1c", "parent", 0, function(feat, pid)
end).id

local Cagesz = menu.add_player_feature("SE Loops", "parent", cages).id

local Cage = menu.add_player_feature("Malicious SE", "parent", Cagesz).id

menu.add_player_feature("Ceo Ban Loop ", "toggle", Cage, function(feat, pid)
    if feat.on then
    system.wait(2)
        script.trigger_script_event(-327286343, pid, {-1, 0})
        script.trigger_script_event(-738295409, pid, {-1, 0})
        script.trigger_script_event(-738295409, pid, {0, 1, 5, 0})
    end
    return HANDLER_CONTINUE
    end)

menu.add_player_feature("Ceo Kick Loop", "toggle", Cage, function(feat, pid)
        if feat.on then
        system.wait(2)
            script.trigger_script_event(-701823896, pid, {-1, 0})
            script.trigger_script_event(-1648921703, pid, {-1, 0})
            script.trigger_script_event(-1648921703, pid, {1, 1, 6})
            script.trigger_script_event(-1648921703, pid, {0, 1, 5})
        end
        return HANDLER_CONTINUE
        end)

menu.add_player_feature("Vehicle Kick Loop", "toggle", Cage, function(feat, pid)
        if feat.on then
        system.wait(2)
            script.trigger_script_event(-1333236192, pid, {-1, 0})
            script.trigger_script_event(-1089379066, pid, {-1, 0})
        end
        return HANDLER_CONTINUE
        end)

menu.add_player_feature("Vehicle EMP Loop", "toggle", Cage, function(feat, pid)
        if feat.on then
        system.wait(2)
            script.trigger_script_event(-152440739, pid, {-1, 0})
            script.trigger_script_event(-152440739, pid, {pid, -10000000, -10000000, -1000000, -10000000000, -100000, -1000000000, -10000, -10, -100, -1, -10000000000000, -10000000, -10000000, -1000000, -1000000, -100000, -1000000, -10, -10, pid, -10, pid})
        end
        return HANDLER_CONTINUE
        end)


menu.add_player_feature("Apartment Invite Loop", "toggle", Cage, function(feat, pid)
        if feat.on then
            system.wait(2)
            script.trigger_script_event(-171207973, pid, {-1, 0})
            script.trigger_script_event(1114696351, pid, {-1, 0})
            script.trigger_script_event(2027212960, pid, {-1, 0})
            script.trigger_script_event(0xf5cb92db, pid, {-1, 0})
            script.trigger_script_event(0x4270ea9f, pid, {-1, 0})
            script.trigger_script_event(0x78d4d0a0, pid, {-1, 0})
            script.trigger_script_event(0xf5cb92db, pid, {-171207973})
            script.trigger_script_event(0x4270ea9f, pid, {1114696351})
            script.trigger_script_event(0x78d4d0a0, pid, {2027212960})
        end

    return HANDLER_CONTINUE
end)

menu.add_player_feature("Send To Island Loop", "toggle", Cage, function(feat, pid)
        if feat.on then
            system.wait(2)
            script.trigger_script_event(0x4d8b1e65, pid, {-1, 0})
            script.trigger_script_event(1300962917, pid, {-1, 0})
         end
    return HANDLER_CONTINUE
end)

menu.add_player_feature("Destroy Personal Vehicle Loop", "toggle", Cage, function(feat, pid)
        if feat.on then
            system.wait(2)
            script.trigger_script_event(-1662268941, pid, {-1, 0})
        end

    return HANDLER_CONTINUE
end)



local Cage = menu.add_player_feature("Friendly SE", "parent", Cagesz).id
menu.add_player_feature("Give OTR Loop", "action", Cage, function(playerfeat, pid)
if feat.on then
            system.wait(2)
                        script.trigger_script_event(575518757, pid, {pid, utils.time() - 60, utils.time(), 1, 1, arg11(pid)})
                        script.trigger_script_event(575518757, pid, {100101, -1010001, 100000, 100, 10000, -10000, -100, 5555, -5555})
                        script.trigger_script_event(575518757, pid, args())
                        script.trigger_script_event(575518757, pid, {100101, -1010001, 100000, 100, 10000, -10000, -100, 5555, -5555})
                        script.trigger_script_event(575518757, pid, args())
                        script.trigger_script_event(575518757, pid, {100101, -1010001, 100000, 100, 10000, -10000, -100, 5555, -5555})
     end

    return HANDLER_CONTINUE
    end)


        menu.add_player_feature("Give never wanted", "toggle", Cage, function(feat, pid)
                            if feat.on then
                                script.trigger_script_event(393068387, pid, {pid, arg11(pid)})
                                script.trigger_script_event(393068387, pid, {pid, arg11(pid)})
                                script.trigger_script_event(393068387, pid, {pid, arg11(pid)})
                                script.trigger_script_event(393068387, pid, {pid, arg11(pid)})
                                script.trigger_script_event(393068387, pid, {pid, arg11(pid)})
                                script.trigger_script_event(393068387, pid, {pid, arg11(pid)})
                            end
                            system.wait(700)
                            return HANDLER_CONTINUE
                        end)


                        menu.add_player_feature("Give vehicle godmode", "action", Cage, function(playerfeat, pid)
  local activveee = player.is_player_in_any_vehicle(pid)
  if activveee == true then
    local car = player.get_player_vehicle(pid)
for i = 1, 100 do
    network.request_control_of_entity(car)
end
entity.set_entity_god_mode(car, true)
network.request_control_of_entity(car)
entity.set_entity_god_mode(car, true)
entity.set_entity_god_mode(car, true)
end
end)
local Cage = menu.add_player_feature("Malicious", "parent", cages).id

menu.add_player_feature("Lag with Cargos", "toggle", Cage, function(feat, pid)                                                                                                                                                                                                                                                            
	if feat.on then
		local pos = player.get_player_coords(pid)
		local veh_hash = 0x15F27762

streaming.request_model(veh_hash)
while (not streaming.has_model_loaded(veh_hash)) do
system.wait(10)
end

local tableOfVehicles = {}
for i = 1, 75 do
  tableOfVehicles[#tableOfVehicles + 1] = vehicle.create_vehicle(veh_hash, pos, pos.z, true, false)
end
system.wait(1000)
for i = 1, #tableOfVehicles do
  entity.delete_entity(tableOfVehicles[i])
end
tableOfVehicles = {}

streaming.set_model_as_no_longer_needed(veh_hash)



		end
	return HANDLER_CONTINUE
end)

menu.add_player_feature("Lag with Subs", "toggle", Cage, function(feat, pid)                                                                                                                                                                                                                                                            
    if feat.on then
        local pos = player.get_player_coords(pid)
        local veh_hash = 0x4FAF0D70

streaming.request_model(veh_hash)
while (not streaming.has_model_loaded(veh_hash)) do
system.wait(10)
end


local tableOfVehicles = {}
for i = 1, 75 do
  tableOfVehicles[#tableOfVehicles + 1] = vehicle.create_vehicle(veh_hash, pos, pos.z, true, false)
end
system.wait(1000)
for i = 1, #tableOfVehicles do
  entity.delete_entity(tableOfVehicles[i])
end
tableOfVehicles = {}

streaming.set_model_as_no_longer_needed(veh_hash)


        end
    return HANDLER_CONTINUE
end)

menu.add_player_feature("Lag with Dump Trucks", "toggle", Cage, function(feat, pid)                                                                                                                                                                                                                                                            
    if feat.on then
        local pos = player.get_player_coords(pid)
        local veh_hash = 0x810369E2 

streaming.request_model(veh_hash)
while (not streaming.has_model_loaded(veh_hash)) do
system.wait(10)
end


local tableOfVehicles = {}
for i = 1, 75 do
  tableOfVehicles[#tableOfVehicles + 1] = vehicle.create_vehicle(veh_hash, pos, pos.z, true, false)
end
system.wait(1000)
for i = 1, #tableOfVehicles do
  entity.delete_entity(tableOfVehicles[i])
end
tableOfVehicles = {}

streaming.set_model_as_no_longer_needed(veh_hash)


        end
    return HANDLER_CONTINUE
end)


 menu.add_player_feature("Old Invalid Entity Crash ", "action", Cage, function(feat, pid)

        local function createped(type, hash, pos, dir)
            streaming.request_model(hash)
            while not streaming.has_model_loaded(hash) do
            system.wait(10)
            end
            local ped = ped.create_ped(type, hash, pos, dir, true, false)
                streaming.set_model_as_no_longer_needed(hash)
                return ped
            end
    pos = player.get_player_coords(pid)
    local pedp = player.get_player_ped(pid)
    pos.z = pos.z + 0.6
    
    npc1 = createped(26,0x2D7030F3,pos,0)
    entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
    entity.freeze_entity(npc1, true)
    local checkcount = 0
    network.request_control_of_entity(npc1)
      while not network.has_control_of_entity(npc1) do
        system.wait(100)
        checkcount = checkcount + 1
        if checkcount > 10 then end
      end
       system.wait(2000)
    entity.delete_entity(npc1)
    
    npc2 = createped(26,0x856CFB02,pos,0)
    entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
    entity.freeze_entity(npc2, true)
    local checkcount = 0
    network.request_control_of_entity(npc2)
      while not network.has_control_of_entity(npc2) do
        system.wait(2000)
        checkcount = checkcount + 1
        if checkcount > 10 then end
      end
       system.wait(2000)
    entity.delete_entity(npc2)
    
    npc3 = createped(26,0x856CFB02,pos,0)
    entity.attach_entity_to_entity(npc3,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
    entity.freeze_entity(npc3, true)
    local checkcount = 0
    network.request_control_of_entity(npc3)
      while not network.has_control_of_entity(npc3) do
        system.wait(100)
        checkcount = checkcount + 1
        if checkcount > 10 then end
      end
        system.wait(2000)
    entity.delete_entity(npc3)
    end)


 menu.add_player_feature("New Invalid Entity Crash ", "action", Cage, function(feat, pid)

    local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0x2D7030F3,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)
local checkcount = 0
network.request_control_of_entity(npc1)
  while not network.has_control_of_entity(npc1) do
    system.wait(100)
    checkcount = checkcount + 1
    if checkcount > 10 then end
  end
   system.wait(2000)
entity.delete_entity(npc1)

npc2 = createped(26,0x856CFB02,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)
local checkcount = 0
network.request_control_of_entity(npc2)
  while not network.has_control_of_entity(npc2) do
    system.wait(2000)
    checkcount = checkcount + 1
    if checkcount > 10 then end
  end
   system.wait(2000)
entity.delete_entity(npc2)

npc3 = createped(26,0x856CFB02,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)
local checkcount = 0
network.request_control_of_entity(npc3)
  while not network.has_control_of_entity(npc3) do
    system.wait(100)
    checkcount = checkcount + 1
    if checkcount > 10 then end
  end
    system.wait(2000)
entity.delete_entity(npc3)
end)




menu.add_player_feature("Hard Kick", "action", Cage, function(feat, pid)
    script.trigger_script_event(-1491386500, pid, {-1, 0})
    script.trigger_script_event(-1729804184, pid, {-1, 0})
    script.trigger_script_event(1428412924, pid, {-1, 0})
    script.trigger_script_event(823645419, pid, {-1, 0})
    script.trigger_script_event(1070934291, pid, {-1, 0})
    script.trigger_script_event(-1949011582, pid, {-1, 0})
    script.trigger_script_event(-171207973, pid, {-1, 0})
    script.trigger_script_event(-1212832151, pid, {-1, 0})
    script.trigger_script_event(-1559754940, pid, {-1, 0})
    script.trigger_script_event(-1054826273, pid, {-1, 0})
    script.trigger_script_event(1620254541, pid, {-1, 0})
    script.trigger_script_event(1401831542, pid, {-1, 0})
    script.trigger_script_event(12450245, pid, {-1, 0})
    script.trigger_script_event(767605081, pid, {-1, 0})
    script.trigger_script_event(-1949011582, pid, {-1, 0})
    script.trigger_script_event(-1975590661, pid, {-1, 0})
    script.trigger_script_event(-922075519, pid, {-1, 0})
    script.trigger_script_event(-1491386500, pid, {-1, 0})
    script.trigger_script_event(-212271621, pid, {-1, 0})
    script.trigger_script_event(-1491386500, pid, {-1, 0})
    script.trigger_script_event(-1729804184, pid, {-1, 0})
    script.trigger_script_event(1428412924, pid, {-1, 0})
    script.trigger_script_event(823645419, pid, {-1, 0})
    script.trigger_script_event(1070934291, pid, {-1, 0})
    script.trigger_script_event(-1949011582, pid, {-1, 0})
    script.trigger_script_event(-171207973, pid, {-1, 0})
    script.trigger_script_event(-1212832151, pid, {-1, 0})
    script.trigger_script_event(-1559754940, pid, {-1, 0})
    script.trigger_script_event(-1054826273, pid, {-1, 0})
    script.trigger_script_event(1620254541, pid, {-1, 0})
    script.trigger_script_event(1401831542, pid, {-1, 0})
    script.trigger_script_event(12450245, pid, {pid, -10000000, -10000000, -1000000, -10000000000, -100000, -1000000000, -10000, -10, -100, -1, -10000000000000, -10000000, -10000000, -1000000, -1000000, -100000, -1000000, -10, -10, pid, -10, pid})
    script.trigger_script_event(767605081, pid, {pid, -10000000, -10000000, -1000000, -10000000000, -100000, -1000000000, -10000, -10, -100, -1, -10000000000000, -10000000, -10000000, -1000000, -1000000, -100000, -1000000, -10, -10, pid, -10, pid})
    script.trigger_script_event(-1949011582, pid, {pid, -10000000, -10000000, -1000000, -10000000000, -100000, -1000000000, -10000, -10, -100, -1, -10000000000000, -10000000, -10000000, -1000000, -1000000, -100000, -1000000, -10, -10, pid, -10, pid})
    script.trigger_script_event(-1975590661, pid, {pid, -10000000, -10000000, -1000000, -10000000000, -100000, -1000000000, -10000, -10, -100, -1, -10000000000000, -10000000, -10000000, -1000000, -1000000, -100000, -1000000, -10, -10, pid, -10, pid})
    script.trigger_script_event(-922075519, pid, {pid, -10000000, -10000000, -1000000, -10000000000, -100000, -1000000000, -10000, -10, -100, -1, -10000000000000, -10000000, -10000000, -1000000, -1000000, -100000, -1000000, -10, -10, pid, -10, pid})
    script.trigger_script_event(-1491386500, pid, {pid, -10000000, -10000000, -1000000, -10000000000, -100000, -1000000000, -10000, -10, -100, -1, -10000000000000, -10000000, -10000000, -1000000, -1000000, -100000, -1000000, -10, -10, pid, -10, pid})
    script.trigger_script_event(-212271621, pid,{pid, -10000000, -10000000, -1000000, -10000000000, -100000, -1000000000, -10000, -10, -100, -1, -10000000000000, -10000000, -10000000, -1000000, -1000000, -100000, -1000000, -10, -10, pid, -10, pid})
     end)





local Cage = menu.add_player_feature("Vehicle Trolls", "parent", cages).id

menu.add_player_feature("Rape Their Car", "action", Cage, function(playerfeat, pid)
                    local pos1 = player.get_player_coords(pid)
                    pos1.z = pos1.z + 0.10       

                    local cageobjecthash = gameplay.get_hash_key("prop_beach_fire") 
                    local cageobject = object.create_object(cageobjecthash, pos1, true, false)

                    entity.set_entity_visible(cageobject, false)

                    local playerped3 = player.get_player_ped(pid)
                    local pos = v3()

                    attach_object1132 = object.create_object(-1065766299, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
                    entity.set_entity_visible(attach_object1132, false)
                    
                    end)



menu.add_player_feature("Rape Their Car v2", "action", Cage, function(playerfeat, pid)
                    local pos1 = player.get_player_coords(pid)
                    pos1.z = pos1.z - 0.20      
                    fire.add_explosion(pos1, 6, true, false, 1, pid)
                    local cageobjecthash = gameplay.get_hash_key("prop_beach_fire") 
                    local cageobject = object.create_object(cageobjecthash, pos1, true, false)


                    fire.add_explosion(pos1, 7, true, false, 1, pid)

                    entity.set_entity_visible(cageobject, false)

                    local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    fire.add_explosion(pos1, 8, true, false, 1, pid)
                    attach_object1132 = object.create_object(-1065766299, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
                    entity.set_entity_visible(attach_object1132, false)

                    attach_object1133 = object.create_object(-105439435, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1133, playerped3, 0, pos, pos, true, true, false, 0, false)
                    entity.set_entity_visible(attach_object1133, false)
                    end)

menu.add_player_feature("Boost Car Forward", "action", Cage, function(feat, pid)
      local activveee = player.is_player_in_any_vehicle(pid)
      if activveee == true then
      menu.set_menu_can_navigate(false)
        local car = player.get_player_vehicle(pid)
        network.request_control_of_entity(car)
        for i = 1, 100 do
            network.request_control_of_entity(car)
        end
        network.request_control_of_entity(car)
        vehicle.modify_vehicle_top_speed(car, 500)
        entity.set_entity_max_speed(car, 500)
        vehicle.modify_vehicle_top_speed(car, 500)
        entity.set_entity_max_speed(car, 500)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        for i = 1, 100 do
            network.request_control_of_entity(car)
        end
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        system.wait(5)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        vehicle.set_vehicle_forward_speed(car, 110)
        menu.set_menu_can_navigate(true)
      end
    end)

menu.add_player_feature("Burn the car", "toggle", Cage, function(playerfeat, pid)
    if playerfeat.on then
      local activveee = player.is_player_in_any_vehicle(pid)
      if activveee == true then
    local player1car = player.get_player_vehicle(pid)
    network.request_control_of_entity(player1car)
    if network.has_control_of_entity(player1car) == true then
    network.request_control_of_entity(player1car)
    vehicle.set_vehicle_doors_locked_for_all_players(player1car, true)
    system.yield(100)
    network.request_control_of_entity(player1car)
    network.request_control_of_entity(player1car)
    vehicle.set_vehicle_doors_locked_for_all_players(player1car, true)
    network.request_control_of_entity(player1car)
    vehicle.set_vehicle_engine_health(player1car, 0)

    vehicle.set_vehicle_engine_health(player1car, -1000)
    vehicle.set_vehicle_doors_locked_for_all_players(player1car, true)
    vehicle.set_vehicle_doors_locked_for_all_players(player1car, true)
    vehicle.set_vehicle_doors_locked_for_all_players(player1car, true)
    vehicle.set_vehicle_engine_health(player1car, 0)

    vehicle.set_vehicle_engine_health(player1car, -1000)
    else
        network.request_control_of_entity(player1car)
        network.request_control_of_entity(player1car)
        network.request_control_of_entity(player1car)
        
    end
  end
    return HANDLER_CONTINUE
    end
end)

menu.add_player_feature("Set Vehicle Speed To 1 MPH", "action", Cage, function(playerfeat, pid)
    local car = player.get_player_vehicle(pid)
    local activveee = player.is_player_in_any_vehicle(pid)
    if activveee == true then
for i = 1, 100 do
    network.request_control_of_entity(car)
end
network.request_control_of_entity(car)
vehicle.modify_vehicle_top_speed(car, 2)
entity.set_entity_max_speed(car, 3)
vehicle.modify_vehicle_top_speed(car, 2)
entity.set_entity_max_speed(car, 1)
end
end)

menu.add_player_feature("Set Vehicle Speed To 500 MPH", "action", Cage, function(playerfeat, pid)
  local activveee = player.is_player_in_any_vehicle(pid)
  if activveee == true then
    local car = player.get_player_vehicle(pid)
for i = 1, 100 do
    network.request_control_of_entity(car)
end
network.request_control_of_entity(car)
vehicle.modify_vehicle_top_speed(car, 500)
entity.set_entity_max_speed(car, 500)
vehicle.modify_vehicle_top_speed(car, 500)
entity.set_entity_max_speed(car, 500)
end
end)






local Cage = menu.add_player_feature("Personal Trolls", "parent", cages).id
 

menu.add_player_feature("Burn The Target", "action", Cage, function(playerfeat, pid)

                    local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    attach_object1132 = object.create_object(-1065766299, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
                    end)

menu.add_player_feature("Conehead", "action", Cage, function(playerfeat, pid)

                    local playerped3 = player.get_player_ped(pid)                                    
                    local pos = v3()
                    pos.z = pos.z + 0.50
                    attach_object1132 = object.create_object(-1059647297, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
                    end)


menu.add_player_feature("Burning Conehead", "action", Cage, function(playerfeat, pid)

                    local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    attach_object1132 = object.create_object(-1065766299, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)

                     local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    attach_object1132 = object.create_object(546252211, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
                    end)

menu.add_player_feature("Trashman", "action", Cage, function(playerfeat, pid)
                    

                    local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    pos.z = pos.z + 0.10
                    attach_object1132 = object.create_object(-93819890, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)

                    local pos1 = player.get_player_coords(pid)
                    pos1.z = pos1.z + 0.10                                     
                    local cageobjecthash = gameplay.get_hash_key("prop_ld_rub_binbag_01") 
                    local cageobject = object.create_object(cageobjecthash, pos1, true, false)
                    end)

menu.add_player_feature("Trashman v2", "action", Cage, function(playerfeat, pid)
                    

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


menu.add_player_feature("Cactus Jack", "action", Cage, function(playerfeat, pid)
local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    pos.z = pos.z -0.10
                    attach_object1132 = object.create_object(-194496699, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
                end)

menu.add_player_feature("Hyrdrant Man", "action", Cage, function(playerfeat, pid)
local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    pos.z = pos.z + 0.10
                    attach_object1132 = object.create_object(200846641, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
                end)

menu.add_player_feature("Chess Player", "action", Cage, function(playerfeat, pid)
local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    pos.z = pos.z + 0.10
                    attach_object1132 = object.create_object(-259356231, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
                end)

menu.add_player_feature("Gas Pump Man", "action", Cage, function(playerfeat, pid)
local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    pos.z = pos.z - 0.50
                    attach_object1132 = object.create_object(-2007231801, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1132, playerped3, 0, pos, pos, true, true, false, 0, false)
                end)


menu.add_player_feature("Umbrella Man", "action", Cage, function(playerfeat, pid)
local playerped3 = player.get_player_ped(pid)
                    local pos = v3()
                    pos.z = pos.z + 0.10
                    attach_object1142 = object.create_object(-2108662770, pos, true, false)
                    entity.attach_entity_to_entity(attach_object1142, playerped3, 0, pos, pos, true, true, false, 0, false)
                end)

menu.add_player_feature("Soccer Boy", "action", Cage, function(playerfeat, pid)
  
                    local pos1 = player.get_player_coords(pid)
                    pos1.z = pos1.z + 0.10                                     
                    local cageobjecthash = gameplay.get_hash_key("p_ld_soc_ball_01") 
                    local cageobject = object.create_object(cageobjecthash, pos1, true, false)
                end)


menu.add_player_feature("Football Boy", "action", Cage, function(playerfeat, pid)
  
                    local pos1 = player.get_player_coords(pid)
                    pos1.z = pos1.z + 0.10                                     
                    local cageobjecthash = gameplay.get_hash_key("p_ld_am_ball_01") 
                    local cageobject = object.create_object(cageobjecthash, pos1, true, false)
                end)


menu.add_player_feature("Basketball Boy", "action", Cage, function(playerfeat, pid)
  
                    local pos1 = player.get_player_coords(pid)
                    pos1.z = pos1.z + 0.10                                     
                    local cageobjecthash = gameplay.get_hash_key("prop_bskball_01") 
                    local cageobject = object.create_object(cageobjecthash, pos1, true, false)
                end)

menu.add_player_feature("Bowling Ball Boy", "action", Cage, function(playerfeat, pid)
  
                    local pos1 = player.get_player_coords(pid)
                    pos1.z = pos1.z + 0.10                                     
                    local cageobjecthash = gameplay.get_hash_key("prop_bowling_ball") 
                    local cageobject = object.create_object(cageobjecthash, pos1, true, false)
                end)

local Cage = menu.add_player_feature("Cults", "parent", cages).id

local cages = menu.add_player_feature("Ped Cults", "parent", Cage).id

menu.add_player_feature("Rapist Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0x6437E77D,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)



npc2 = createped(26,0x6437E77D,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0x6437E77D,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0x6437E77D,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0x6437E77D,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0x6437E77D,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0x6437E77D,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0x6437E77D,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

menu.add_player_feature("Man Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0x80E59F2E,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)



npc2 = createped(26,0x80E59F2E,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0x80E59F2E,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0x80E59F2E,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0x80E59F2E,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0x80E59F2E,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0x80E59F2E,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0x80E59F2E,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

menu.add_player_feature("Stripper Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0x9CF26183,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)



npc2 = createped(26,0x9CF26183,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0x9CF26183,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0x9CF26183,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0x9CF26183,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0x9CF26183,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0x9CF26183,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0x9CF26183,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

menu.add_player_feature("Zombie Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0xAC4B4506,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)



npc2 = createped(26,0xAC4B4506,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0xAC4B4506,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0xAC4B4506,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0xAC4B4506,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0xAC4B4506,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0xAC4B4506,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0xAC4B4506,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)


menu.add_player_feature("Clown Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0x04498DDE,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)



npc2 = createped(26,0x04498DDE,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0x04498DDE,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0x04498DDE,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0x04498DDE,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0x04498DDE,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0x04498DDE,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0x04498DDE,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

menu.add_player_feature("StarMan Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0x348065F5,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)



npc2 = createped(26,0x348065F5,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0x348065F5,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0x348065F5,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0x348065F5,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0x348065F5,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0x348065F5,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0x348065F5,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

menu.add_player_feature("Astronaut Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0xE7B31432,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)



npc2 = createped(26,0xE7B31432,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0xE7B31432,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0xE7B31432,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0xE7B31432,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0xE7B31432,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0xE7B31432,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0xE7B31432,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

menu.add_player_feature("Tranny Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0xE0E69974,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)

npc2 = createped(26,0xE0E69974,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)

npc3 = createped(26,0xE0E69974,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0xE0E69974,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0xE0E69974,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0xE0E69974,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0xE0E69974,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0xE0E69974,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

menu.add_player_feature("SWAT Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0x8D8F1B1,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)

npc2 = createped(26,0x8D8F1B1,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)

npc3 = createped(26,0x8D8F1B1,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0x8D8F1B1,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0x8D8F1B1,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0x8D8F1B1,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0x8D8F1B1,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0x8D8F1B1,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

menu.add_player_feature("Space Monkey Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0xDC59940D,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)

npc2 = createped(26,0xDC59940D,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)

npc3 = createped(26,0xDC59940D,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0xDC59940D,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0xDC59940D,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0xDC59940D,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0xDC59940D,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0xDC59940D,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

local cages = menu.add_player_feature("Animal Cults", "parent", Cage).id

menu.add_player_feature("Alien Cult", "action", cages, function(playerfeat, pid)
  
  function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0x64611296,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)



npc2 = createped(26,0x64611296,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0x64611296,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0x64611296,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0x64611296,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0x64611296,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0x64611296,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0x64611296,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)


end)

menu.add_player_feature("Bigfoot Cult", "action", cages, function(playerfeat, pid)

    local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6
  
npc1 = createped(26,0x61D4C771,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)

npc2 = createped(26,0x61D4C771,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)

npc3 = createped(26,0x61D4C771,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0x61D4C771,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0x61D4C771,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0x61D4C771,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0x61D4C771,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0x61D4C771,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)
end)

menu.add_player_feature("MonKe Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0xA8683715,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)

npc2 = createped(26,0xA8683715,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0xA8683715,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0xA8683715,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0xA8683715,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0xA8683715,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0xA8683715,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0xA8683715,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)
end)

menu.add_player_feature("Deer Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0xD86B5A95,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)

npc2 = createped(26,0xD86B5A95,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0xD86B5A95,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0xD86B5A95,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0xD86B5A95,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0xD86B5A95,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0xD86B5A95,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0xD86B5A95,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)
end)

menu.add_player_feature("Cow Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0xFCFA9E1E,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)

npc2 = createped(26,0xFCFA9E1E,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)


npc3 = createped(26,0xFCFA9E1E,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0xFCFA9E1E,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0xFCFA9E1E,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)


npc6 = createped(26,0xFCFA9E1E,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0xFCFA9E1E,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0xFCFA9E1E,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)
end)

menu.add_player_feature("Boar Cult", "action", cages, function(playerfeat, pid)
  
  local function createped(type, hash, pos, dir)
        streaming.request_model(hash)
        while not streaming.has_model_loaded(hash) do
        system.wait(10)
        end
        local ped = ped.create_ped(type, hash, pos, dir, true, false)
            streaming.set_model_as_no_longer_needed(hash)
            return ped
        end
pos = player.get_player_coords(pid)
local pedp = player.get_player_ped(pid)
pos.z = pos.z + 0.6

npc1 = createped(26,0xCE5FF074,pos,0)
entity.attach_entity_to_entity(npc1,pedp, 0, v3(0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc1, true)

npc2 = createped(26,0xCE5FF074,pos,0)
entity.attach_entity_to_entity(npc2,pedp, 0, v3(0.00,0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc2, true)

npc3 = createped(26,0xCE5FF074,pos,0)
entity.attach_entity_to_entity(npc3,pedp, 0, v3(-0.30,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc3, true)

npc4 = createped(26,0xCE5FF074,pos,0)
entity.attach_entity_to_entity(npc4,pedp, 0, v3(0.0,-0.30,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc4, true)

npc5 = createped(26,0xCE5FF074,pos,0)
entity.attach_entity_to_entity(npc5,pedp, 0, v3(0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc5, true)

npc6 = createped(26,0xCE5FF074,pos,0)
entity.attach_entity_to_entity(npc6,pedp, 0, v3(0.00,0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc6, true)

npc7 = createped(26,0xCE5FF074,pos,0)
entity.attach_entity_to_entity(npc7,pedp, 0, v3(-0.60,0,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc7, true)

npc8 = createped(26,0xCE5FF074,pos,0)
entity.attach_entity_to_entity(npc8,pedp, 0, v3(0.0,-0.60,0.0),v3(0.0,0,0.0), true, true, false, 0, true)
entity.freeze_entity(npc8, true)
end)

local Cage =  menu.add_feature("Tools", "parent", 0, function(feat, pid)
end).id

local cages = menu.add_feature("Crosshairs", "parent", Cage).id

crosshair1 = menu.add_feature("Crosshair (+)", "toggle", cages, function(feat)
    if feat.on
        then
        
        local pos = v2()
        pos.x = .4999
        pos.y = .4798
        ui.set_text_scale(0.5)
        ui.set_text_font(0)
        ui.set_text_centre(1)
        ui.set_text_outline(0)
        ui.set_text_color(255, 0, 0, 180)
        ui.draw_text("+", pos)
    end
    return HANDLER_CONTINUE
end)
crosshair1.on = false

crosshair2 = menu.add_feature("Crosshair (.)", "toggle", cages, function(feat)
    if feat.on
        then
        
        local pos = v2()
        pos.x = .4997
        pos.y = .4740
        ui.set_text_scale(0.5)
        ui.set_text_font(0)
        ui.set_text_centre(1)
        ui.set_text_outline(0)
        ui.set_text_color(255, 0, 0, 180)
        ui.draw_text(".", pos)
    end
    return HANDLER_CONTINUE
end)
crosshair2.on = false

crosshair3 = menu.add_feature("Crosshair (-)", "toggle", cages, function(feat)
    if feat.on
        then
        
        local pos = v2()
        pos.x = .4999
        pos.y = .4798
        ui.set_text_scale(0.5)
        ui.set_text_font(0)
        ui.set_text_centre(1)
        ui.set_text_outline(0)
        ui.set_text_color(255, 0, 0, 180)
        ui.draw_text("-", pos)
    end
    return HANDLER_CONTINUE
end)
crosshair3.on = false

crosshair4 = menu.add_feature("Crosshair (^)", "toggle", cages, function(feat)
    if feat.on
        then
        
        local pos = v2()
        pos.x = .4999
        pos.y = .4798
        ui.set_text_scale(0.5)
        ui.set_text_font(0)
        ui.set_text_centre(1)
        ui.set_text_outline(0)
        ui.set_text_color(255, 0, 0, 180)
        ui.draw_text("^", pos)
    end
    return HANDLER_CONTINUE
end)
crosshair4.on = false

crosshair5 = menu.add_feature("Crosshair (*)", "toggle", cages, function(feat)
    if feat.on
        then
        
        local pos = v2()
        pos.x = .4997
        pos.y = .4839
        ui.set_text_scale(0.5)
        ui.set_text_font(0)
        ui.set_text_centre(1)
        ui.set_text_outline(0)
        ui.set_text_color(255, 0, 0, 180)
        ui.draw_text("*", pos)
    end
    return HANDLER_CONTINUE
end)
crosshair5.on = false

crosshair5 = menu.add_feature("Crosshair (!)", "toggle", cages, function(feat)
    if feat.on
        then
        
        local pos = v2()
        pos.x = .4999
        pos.y = .4798
        ui.set_text_scale(0.5)
        ui.set_text_font(0)
        ui.set_text_centre(1)
        ui.set_text_outline(0)
        ui.set_text_color(255, 0, 0, 180)
        ui.draw_text("!", pos)
    end
    return HANDLER_CONTINUE
end)
crosshair5.on = false

crosshair6 = menu.add_feature("Crosshair ($)", "toggle", cages, function(feat)
    if feat.on
        then
        
        local pos = v2()
        pos.x = .4999
        pos.y = .4798
        ui.set_text_scale(0.5)
        ui.set_text_font(0)
        ui.set_text_centre(1)
        ui.set_text_outline(0)
        ui.set_text_color(255, 0, 0, 180)
        ui.draw_text("$", pos)
    end
    return HANDLER_CONTINUE
end)
crosshair6.on = false

crosshair7 = menu.add_feature("Crosshair (:)", "toggle", cages, function(feat)
    if feat.on
        then
        
        local pos = v2()
        pos.x = .4997
        pos.y = .4839
        ui.set_text_scale(0.5)
        ui.set_text_font(0)
        ui.set_text_centre(1)
        ui.set_text_outline(0)
        ui.set_text_color(255, 0, 0, 180)
        ui.draw_text(":", pos)
    end
    return HANDLER_CONTINUE
end)
crosshair7.on = false

local cages = menu.add_feature("Rapid Weapon Switches", "parent", Cage).id

local rpg = menu.add_feature("Rapid RPG Switch", "toggle", cages, function(feat)

        if feat.on then
            
            pped = player.get_player_ped(player.player_id())

            if ped.is_ped_shooting(pped) then
                if ped.get_current_ped_weapon(pped) == 2982836145 then

                    weapon.remove_weapon_from_ped(pped, 2982836145)
                    -- system.wait(0)
                    weapon.give_delayed_weapon_to_ped(pped, 2982836145, 0, 1)

                end
            end
            return HANDLER_CONTINUE
        end
        return HANDLER_POP
       
end)
rpg.on = false

local grenade = menu.add_feature("Rapid Grenade Launcher Switch", "toggle", cages, function(feat)

        if feat.on then
            
            pped = player.get_player_ped(player.player_id())

            if ped.is_ped_shooting(pped) then
                if ped.get_current_ped_weapon(pped) == 2726580491 then

                    weapon.remove_weapon_from_ped(pped, 2726580491)
                    -- system.wait(0)
                    weapon.give_delayed_weapon_to_ped(pped, 2726580491, 0, 1)

                end
            end
            return HANDLER_CONTINUE
        end
        return HANDLER_POP
end)
grenade.on = false

local homingL = menu.add_feature("Rapid Homing Launcher Switch", "toggle", cages, function(feat)

        if feat.on then
            
            pped = player.get_player_ped(player.player_id())

            if ped.is_ped_shooting(pped) then
                if ped.get_current_ped_weapon(pped) == 1672152130 then

                    weapon.remove_weapon_from_ped(pped, 1672152130)
                    -- system.wait(0)
                    weapon.give_delayed_weapon_to_ped(pped, 1672152130, 0, 1)

                end
            end
            return HANDLER_CONTINUE
        end
        return HANDLER_POP
end)
homingL.on = false

local fireworkg = menu.add_feature("Rapid Firework Launcher Switch", "toggle", cages, function(feat)

        if feat.on then
            
            pped = player.get_player_ped(player.player_id())

            if ped.is_ped_shooting(pped) then
                if ped.get_current_ped_weapon(pped) == 2138347493 then

                    weapon.remove_weapon_from_ped(pped, 2138347493)
                    -- system.wait(0)
                    weapon.give_delayed_weapon_to_ped(pped, 2138347493, 0, 1)

                end
            end
            return HANDLER_CONTINUE
        end
        return HANDLER_POP
end)
fireworkg.on = false

local aliengun = menu.add_feature("Rapid Up-n-Atomizer Switch", "toggle", cages, function(feat)

        if feat.on then
            
            pped = player.get_player_ped(player.player_id())

            if ped.is_ped_shooting(pped) then
                if ped.get_current_ped_weapon(pped) == 2939590305 then

                    weapon.remove_weapon_from_ped(pped, 2939590305)
                    -- system.wait(0)
                    weapon.give_delayed_weapon_to_ped(pped, 2939590305, 0, 1)

                end
            end
            return HANDLER_CONTINUE
        end
        return HANDLER_POP
end)
aliengun.on = false

local railg = menu.add_feature("Rapid Railgun Switch", "toggle", cages, function(feat)

        if feat.on then
            
            pped = player.get_player_ped(player.player_id())

            if ped.is_ped_shooting(pped) then
                if ped.get_current_ped_weapon(pped) == 1834241177 then

                    weapon.remove_weapon_from_ped(pped, 1834241177)
                    -- system.wait(0)
                    weapon.give_delayed_weapon_to_ped(pped, 1834241177, 0, 1)

                end
            end
            return HANDLER_CONTINUE
        end
        return HANDLER_POP
end)
railg.on = false

local cgl = menu.add_feature("Rapid Compact Grenade Launcher Switch", "toggle", cages, function(feat)

        if feat.on then
            
            pped = player.get_player_ped(player.player_id())

            if ped.is_ped_shooting(pped) then
                if ped.get_current_ped_weapon(pped) == 125959754 then

                    weapon.remove_weapon_from_ped(pped, 125959754)
                    -- system.wait(0)
                    weapon.give_delayed_weapon_to_ped(pped, 125959754, 0, 1)

                end
            end
            return HANDLER_CONTINUE
        end
        return HANDLER_POP
end)
cgl.on = false

local fgl = menu.add_feature("Rapid Flare Gun Switch", "toggle", cages, function(feat)

        if feat.on then
            
            pped = player.get_player_ped(player.player_id())

            if ped.is_ped_shooting(pped) then
                if ped.get_current_ped_weapon(pped) == 1198879012 then

                    weapon.remove_weapon_from_ped(pped, 1198879012)
                    -- system.wait(0)
                    weapon.give_delayed_weapon_to_ped(pped, 1198879012, 0, 1)

                end
            end
            return HANDLER_CONTINUE
        end
        return HANDLER_POP
end)
fgl.on = false
menu.notify("Ready To Launch", "At0m1c Script", 3, 0x64F06414)
