if (collecting == false)
{
    collecting = true;
    if ((global.max_item_weight - global.total_item_weight) - weight < 0)
    {
        draw_info = true;
        
        var previous_info;
        previous_info = name;
        name = "Inventory is full!";
        scr_collected_item_name();
        name = previous_info;
        
        alarm[1] = 50;
    }
    else
    {
        collected = true;
        
        //Weight
        global.total_item_weight += weight;
        
        //Save to inventory
        scr_save_to_inventory();
    }
}