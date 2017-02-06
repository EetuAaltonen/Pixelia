if (global.hudState == "forge")
{
    if (obj_forge_controller.update_amounts == true and selected == false)
    {
        instance_destroy();
    }
    if (x == obj_forg_slot_1.x and y == obj_forg_slot_1.y)
    {
        if (obj_forge_controller.item_amount[1,itemId] == 0)
        {
            global.forg_slot_1 = false;
            obj_forg_slot_1.itemId = 0;
            instance_destroy();
        }
    }
    else if (x == obj_forg_slot_2.x and y == obj_forg_slot_2.y)
    {
        if (obj_forge_controller.item_amount[1,itemId] == 0)
        {
            global.forg_slot_2 = false;
            obj_forg_slot_2.itemId = 0;
            instance_destroy();
        }
    }
    else if (x == obj_forg_slot_3.x and y == obj_forg_slot_3.y)
    {
        if (obj_forge_controller.item_amount[1,itemId] == 0)
        {
            global.forg_slot_3 = false;
            obj_forg_slot_3.itemId = 0;
            instance_destroy();
        }
    }
}
else if (global.hudState == "alchemy")
{
    /*if (obj_alchemy_controller.update_amounts == true and selected == false)
    {
        instance_destroy();
    }
    if (x == obj_alch_slot_1.x and y == obj_alch_slot_1.y)
    {
        if (obj_alchemy_controller.item_amount[2,itemId] == 0)
        {
            global.alch_slot_1 = false;
            obj_alch_slot_1.itemId = 0;
            instance_destroy();
        }
    }
    else if (x == obj_alch_slot_2.x and y == obj_alch_slot_2.y)
    {
        if (obj_alchemy_controller.item_amount[2,itemId] == 0)
        {
            global.alch_slot_2 = false;
            obj_alch_slot_2.itemId = 0;
            instance_destroy();
        }
    }
    else if (x == obj_alch_slot_3.x and y == obj_alch_slot_3.y)
    {
        if (obj_alchemy_controller.item_amount[2,itemId] == 0)
        {
            global.alch_slot_3 = false;
            obj_alch_slot_3.itemId = 0;
            instance_destroy();
        }
    }*/
}
else if (global.hudState == "inventory1")
{
}
else
{
    instance_destroy();
}
