scr_inventory_item_info();

if (global.hud_state = "forge")
{
    if (selected = false)
    {
        if (global.forg_slot_1 == false)
        {
            instance_create(obj_forg_slot_1.x, obj_forg_slot_1.y, Object[1, item_id]);
            global.forg_slot_1 = true;
            obj_forg_slot_1.item_id = item_id;
        }
        else if (global.forg_slot_2 == false)
        {
            instance_create(obj_forg_slot_2.x, obj_forg_slot_2.y, Object[1, item_id]);
            global.forg_slot_2 = true;
            obj_forg_slot_2.item_id = item_id;
        }
        else if (global.forg_slot_3 == false)
        {
            instance_create(obj_forg_slot_3.x, obj_forg_slot_3.y, Object[1, item_id]);
            global.forg_slot_3 = true;
            obj_forg_slot_3.item_id = item_id;
        }
    }
    else if (selected == true)
    {
        if (x == obj_forg_slot_1.x and y == obj_forg_slot_1.y)
        {
            global.forg_slot_1 = false;
            obj_forg_slot_1.item_id = 0;
            instance_destroy();
        }
        else if (x == obj_forg_slot_2.x and y == obj_forg_slot_2.y)
        {
            global.forg_slot_2 = false;
            obj_forg_slot_2.item_id = 0;
            instance_destroy();
        }
        else if (x == obj_forg_slot_3.x and y == obj_forg_slot_3.y)
        {
            global.forg_slot_3 = false;
            obj_forg_slot_3.item_id = 0;
            instance_destroy();
        }
    }
}
