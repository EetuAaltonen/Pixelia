if (visible)
{
    if (instance_exists(obj_crafting_slot_1) &&
        instance_exists(obj_crafting_slot_2) &&
        instance_exists(obj_crafting_slot_3))
    {
        var slot1 = obj_crafting_slot_1;
        var slot2 = obj_crafting_slot_2;
        var slot3 = obj_crafting_slot_3;
        var slot4 = obj_crafting_slot_4;
        var itemType;
        //Change material count in inventory
        if (slot1.spriteIndex != false)
        {
            itemType = scr_inventory_item_type(slot1.spriteIndex)
            if (!string_pos("tool", itemType)) {
                added_amount = -1;
                scr_save_to_inventory(slot1.spriteIndex, added_amount);
            }
            slot1.spriteIndex = false;  
        }
        if (slot2.spriteIndex != false)
        {
            itemType = scr_inventory_item_type(slot2.spriteIndex)
            if (!string_pos("tool", itemType)) {
                added_amount = -1;
                scr_save_to_inventory(slot2.spriteIndex, added_amount);
            }
            slot2.spriteIndex = false;   
        }
        if (slot3.spriteIndex != false)
        {
            itemType = scr_inventory_item_type(slot3.spriteIndex)
            if (!string_pos("tool", itemType)) {
                added_amount = -1;
                scr_save_to_inventory(slot3.spriteIndex, added_amount);
            }
            slot3.spriteIndex = false;   
        }
        //Add crafted material
        added_amount = 1;
        scr_save_to_inventory(slot4.spriteIndex, added_amount);
        slot4.spriteIndex = false;
        spriteIndex = false;
        checkRecipe = true;
        obj_crafting_controller.pageUpdate = true;
    }
}
