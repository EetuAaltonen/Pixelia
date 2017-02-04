scr_inventory_item_info();

if (selected = false)
{
    if (global.alch_slot_1 == false)
    {
        instance_create(obj_alch_slot_1.x, obj_alch_slot_1.y, Object[2, itemId]);
        global.alch_slot_1 = true;
        obj_alch_slot_1.itemId = itemId;
    }
    else if (global.alch_slot_2 == false)
    {
        instance_create(obj_alch_slot_2.x, obj_alch_slot_2.y, Object[2, itemId]);
        global.alch_slot_2 = true;
        obj_alch_slot_2.itemId = itemId;
    }
    else if (global.alch_slot_3 == false)
    {
        instance_create(obj_alch_slot_3.x, obj_alch_slot_3.y, Object[2, itemId]);
        global.alch_slot_3 = true;
        obj_alch_slot_3.itemId = itemId;
    }
}
else if (selected == true)
{
    if (x == obj_alch_slot_1.x and y == obj_alch_slot_1.y)
    {
        global.alch_slot_1 = false;
        obj_alch_slot_1.itemId = 0;
        instance_destroy();
    }
    else if (x == obj_alch_slot_2.x and y == obj_alch_slot_2.y)
    {
        global.alch_slot_2 = false;
        obj_alch_slot_2.itemId = 0;
        instance_destroy();
    }
    else if (x == obj_alch_slot_3.x and y == obj_alch_slot_3.y)
    {
        global.alch_slot_3 = false;
        obj_alch_slot_3.itemId = 0;
        instance_destroy();
    }
}
