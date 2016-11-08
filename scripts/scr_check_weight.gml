if (move_to_player == false)
{
    if ((global.max_item_weight - global.total_item_weight) - weight < 0)
    {
        //draw_info = true; ??
        var previous_info;
        previous_info = name;
        name = "Inventory is full!";
        scr_collected_item_name();
        name = previous_info;
        
        alarm[1] = 50;
    }
    else
    {
        //Weight
        global.total_item_weight += weight;
        move_to_player = true;
    }
}
