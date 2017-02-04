if (global.hud_state != "null")
{
    if (instance_exists(obj_crafting_slot_1) &&
        instance_exists(obj_crafting_slot_2) &&
        instance_exists(obj_crafting_slot_3) &&
        instance_exists(obj_crafting_slot_4))
    {
        var slot1 = obj_crafting_slot_1;
        var slot2 = obj_crafting_slot_2;
        var slot3 = obj_crafting_slot_3;
        var slot4 = obj_crafting_slot_4;
        //scr_forg_mouse_released();
        scr_inventory_item_info();
        if (selected == false)
        {
            if (slot1.itemId == false)
            {
                prev_x = x;
                prev_y = y;
                x = slot1.x;
                y = slot1.y;
                slot1.itemId = item_id;
                selected = true;
            }
            else if (slot2.itemId == false)
            {
                prev_x = x;
                prev_y = y;
                x = slot2.x;
                y = slot2.y;
                slot2.itemId = item_id;
                selected = true;
            }
            else if (slot3.itemId == false)
            {
                prev_x = x;
                prev_y = y;
                x = slot3.x;
                y = slot3.y;
                slot3.itemId = item_id;
                selected = true;
            }
        }
        else if (selected == true)
        {
            if (x == slot1.x && y == slot1.y)
            {
                x = prev_x;
                y = prev_y;
                slot1.itemId = false;
                selected = false;
            }
            else if (x == slot2.x && y == slot2.y)
            {
                x = prev_x;
                y = prev_y;
                slot2.itemId = false;
                selected = false;
            }
            else if (x == slot3.x && y == slot3.y)
            {
                x = prev_x;
                y = prev_y;
                slot3.itemId = false;
                selected = false;
            }
        }
    }
}
/*if (global.hud_state == "alchemy")
{
    if (selected == false)
    {
        if (global.alch_slot_1 == false)
        {
            instance_create(obj_alch_slot_1.x, obj_alch_slot_1.y, obj_listed_item);
            (instance_nearest(obj_alch_slot_1.x, obj_alch_slot_1.y, obj_listed_item)).sprite_index = sprite_index;
            (instance_nearest(obj_alch_slot_1.x, obj_alch_slot_1.y, obj_listed_item)).selected = true;
            obj_alch_slot_1.item_id = item_id;
            global.alch_slot_1 = true;
        }
        else if (global.alch_slot_2 == false)
        {
            instance_create(obj_alch_slot_2.x, obj_alch_slot_2.y, obj_listed_item);
            (instance_nearest(obj_alch_slot_2.x, obj_alch_slot_2.y, obj_listed_item)).sprite_index = sprite_index;
            (instance_nearest(obj_alch_slot_2.x, obj_alch_slot_2.y, obj_listed_item)).selected = true;
            obj_alch_slot_2.item_id = item_id;
            global.alch_slot_2 = true;
        }
        else if (global.alch_slot_3 == false)
        {
            instance_create(obj_alch_slot_2.x, obj_alch_slot_2.y, obj_listed_item);
            (instance_nearest(obj_alch_slot_2.x, obj_alch_slot_2.y, obj_listed_item)).sprite_index = sprite_index;
            (instance_nearest(obj_alch_slot_2.x, obj_alch_slot_2.y, obj_listed_item)).selected = true;
            obj_alch_slot_3.item_id = item_id;
            global.alch_slot_3 = true;
        }
    }
    else
    {
        if (x == obj_alch_slot_1 && y == obj_alch_slot_1)
        {
            global.alch_slot_1 = false;
        }
        else if (x == obj_alch_slot_2 && y == obj_alch_slot_2)
        {
            global.alch_slot_2 = false;
        }
        else if (x == obj_alch_slot_2 && y == obj_alch_slot_2)
        {
            global.alch_slot_3 = false;
        }
        instance_destroy();
    }
}
