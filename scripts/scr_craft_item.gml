if (Recipe[key])
{
    if (instance_exists(obj_crafting_slot_1) &&
        instance_exists(obj_crafting_slot_2) &&
        instance_exists(obj_crafting_slot_3))
    {
        var slot1 = obj_crafting_slot_1;
        var slot2 = obj_crafting_slot_2;
        var slot3 = obj_crafting_slot_3;
        var slot4 = obj_crafting_slot_4;
        var tempItemId = itemId;
        var tempTypeId = typeId;
        //Change material count in inventory
        if (slot1.itemId != false)
        {
            itemId = slot1.itemId;
            typeId = slot1.typeId;
            slot1.itemId = false;
            slot1.typeId = false;
            added_amount = -1; //Added amount
            scr_save_to_inventory();  
        }
        if (slot2.itemId != false)
        {
            itemId = slot2.itemId;
            typeId = slot2.typeId;
            slot2.itemId = false;
            slot2.typeId = false;
            added_amount = -1; //Added amount
            scr_save_to_inventory();  
        }
        if (slot3.itemId != false)
        {
            itemId = slot3.itemId;
            typeId = slot3.typeId;
            slot3.itemId = false;
            slot3.typeId = false;
            added_amount = -1; //Added amount
            scr_save_to_inventory();  
        }
        slot4.itemId = false;
        //Add crafted material
        itemId = tempItemId;
        typeId = tempTypeId;
        added_amount = 1; //Added amount
        scr_save_to_inventory();
        itemId = false;
        typeId = false;
        checkRecipe = true;
        obj_crafting_controller.pageUpdate = true;
    }
}
