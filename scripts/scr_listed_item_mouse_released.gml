if (global.hud_state == "alchemy")
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
