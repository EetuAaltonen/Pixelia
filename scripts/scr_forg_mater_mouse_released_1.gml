if (selected == false and global.forg_slot_4 == false)
{
    if (global.forg_slot_1 == false)
    {
        x = obj_forg_slot_1.x;
        y = obj_forg_slot_1.y;
        selected = true;
        global.forg_slot_1 = true;
        obj_forg_slot_1.number = number;
    }
    else if (global.forg_slot_2 == false)
    {
        x = obj_forg_slot_2.x;
        y = obj_forg_slot_2.y;
        selected = true;
        global.forg_slot_2 = true;
        obj_forg_slot_2.number = number;
    }
    else if (global.forg_slot_3 == false)
    {
        x = obj_forg_slot_3.x;
        y = obj_forg_slot_3.y;
        selected = true;
        global.forg_slot_3 = true;
        obj_forg_slot_3.number = number;
    }
}
else if (selected == true)
{
    if (x == obj_forg_slot_1.x and y == obj_forg_slot_1.y)
    {
        global.forg_slot_1 = false;
        obj_forg_slot_1.number = 0;
        obj_forg_slot_4.create_only_once = false;
    }
    else if (x == obj_forg_slot_2.x and y == obj_forg_slot_2.y)
    {
        global.forg_slot_2 = false;
        obj_forg_slot_2.number = 0;
        obj_forg_slot_4.create_only_once = false;
    }
    else if (x == obj_forg_slot_3.x and y == obj_forg_slot_3.y)
    {
        global.forg_slot_3 = false;
        obj_forg_slot_3.number = 0;
        obj_forg_slot_4.create_only_once = false;
    }
    x = x_prev;
    y = y_prev;
    selected = false;
}
else if (x == obj_forg_slot_4.x and y == obj_forg_slot_4.y)
{
    scr_forge_smelting();
    
    //Save to inventory
    global.n1 = number;
    global.AddedItemAmount = 1;
    scr_save_to_inventory();
}