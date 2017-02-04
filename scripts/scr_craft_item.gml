if (Recipe[key])
{
    var tempItemId = itemId;
    var tempTypeId = typeId;
    //Change material count in inventory
    if (obj_crafting_slot_1.itemId != false)
    {
        itemId = obj_crafting_slot_1.itemId;
        typeId = obj_crafting_slot_1.typeId;
        added_amount = -1; //Added amount
        scr_save_to_inventory();  
    }
    if (obj_crafting_slot_2.itemId != false)
    {
        itemId = obj_crafting_slot_2.itemId;
        typeId = obj_crafting_slot_2.typeId;
        added_amount = -1; //Added amount
        scr_save_to_inventory();  
    }
    if (obj_crafting_slot_3.itemId != false)
    {
        itemId = obj_crafting_slot_3.itemId;
        typeId = obj_crafting_slot_3.typeId;
        added_amount = -1; //Added amount
        scr_save_to_inventory();  
    }
    //Add crafted material
    itemId = tempItemId;
    typeId = tempTypeId;
    added_amount = 1; //Added amount
    scr_save_to_inventory();
    obj_crafting_controller.pageUpdate = true;
}
