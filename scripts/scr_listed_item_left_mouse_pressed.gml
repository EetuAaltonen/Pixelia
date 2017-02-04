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
                slot1.typeId = type_id;
                selected = true;
                obj_crafted_item.checkRecipe = true;
            }
            else if (slot2.itemId == false)
            {
                prev_x = x;
                prev_y = y;
                x = slot2.x;
                y = slot2.y;
                slot2.itemId = item_id;
                slot2.typeId = type_id;
                selected = true;
                obj_crafted_item.checkRecipe = true;
            }
            else if (slot3.itemId == false)
            {
                prev_x = x;
                prev_y = y;
                x = slot3.x;
                y = slot3.y;
                slot3.itemId = item_id;
                slot2.typeId = type_id;
                selected = true;
                obj_crafted_item.checkRecipe = true;
            }
        }
        else if (selected == true)
        {
            if (slot1.itemId == item_id)
            {
                x = prev_x;
                y = prev_y;
                slot1.itemId = false;
                slot1.typeId = false;
                selected = false;
                obj_crafted_item.checkRecipe = true;
            }
            else if (slot2.itemId == item_id)
            {
                x = prev_x;
                y = prev_y;
                slot2.itemId = false;
                slot2.typeId = false;
                selected = false;
                obj_crafted_item.checkRecipe = true;
            }
            else if (slot3.itemId == item_id)
            {
                x = prev_x;
                y = prev_y;
                slot3.itemId = false;
                slot3.typeId = false;
                selected = false;
                obj_crafted_item.checkRecipe = true;
            }
        }
    }
}
