//Create particle
//part_emitter_stream(wood_dust_particles, wood_dust_emitter, wood_dust, 1);
//XP
scr_add_xp();
/*//Hit
if ((global.max_item_weight - global.total_item_weight) - weight >= 0)
{
    if (source > 0 and can_hit == true and obj_player.action_state == action_state)
    {  
        //Create particle
        part_emitter_stream(wood_dust_particles, wood_dust_emitter, wood_dust, 1);
        
        alarm[3] = 10;
        
        source -= 1;
        can_hit = false;
        alarm[2] = 40; //Can hit
        
        //Weight
        global.total_item_weight += weight;
        
        //XP
        scr_add_xp();
        
        //Info text
        scr_collected_item_name();
        
        //Save to inventory
        scr_save_to_inventory();
    }
    else if (source <= 1)
    {
        alarm[1] = 200;
    }
}
else
{
    var previous_info;
    previous_info = name;
    name = "Inventory is full!";
    scr_collected_item_name();
    name = previous_info;
    
    obj_player.action_state = "null";
    obj_player.sprite_index = spr_player;
}

