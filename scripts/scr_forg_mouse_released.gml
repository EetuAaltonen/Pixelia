scr_inventory_item_info();
if (selected = false)
{
    if (global.forg_slot_1 == false)
    {
        prev_x = x;
        prev_y = y;
        x = obj_forg_slot_1.x;
        y = obj_forg_slot_1.y;
        global.forg_slot_1 = true;
        obj_forg_slot_1.itemId = itemId;
        selected = true;
    }
    else if (global.forg_slot_2 == false)
    {
        prev_x = x;
        prev_y = y;
        x = obj_forg_slot_2.x;
        y = obj_forg_slot_2.y;
        global.forg_slot_2 = true;
        obj_forg_slot_2.itemId = itemId;
        selected = true;
    }
    else if (global.forg_slot_3 == false)
    {
        prev_x = x;
        prev_y = y;
        x = obj_forg_slot_3.x;
        y = obj_forg_slot_3.y;
        global.forg_slot_3 = true;
        obj_forg_slot_3.itemId = itemId;
        selected = true;
    }
}
else if (selected == true)
{
    if (x == obj_forg_slot_1.x and y == obj_forg_slot_1.y)
    {
        x = prev_x;
        y = prev_y;
        global.forg_slot_1 = false;
        obj_forg_slot_1.itemId = 0;
        selected = false;
    }
    else if (x == obj_forg_slot_2.x and y == obj_forg_slot_2.y)
    {
        x = prev_x;
        y = prev_y;
        global.forg_slot_2 = false;
        obj_forg_slot_2.itemId = 0;
        selected = false;
    }
    else if (x == obj_forg_slot_3.x and y == obj_forg_slot_3.y)
    {
        x = prev_x;
        y = prev_y;
        global.forg_slot_3 = false;
        obj_forg_slot_3.itemId = 0;
        selected = false;
    }
}
