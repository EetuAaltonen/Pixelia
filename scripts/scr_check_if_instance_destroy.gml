if (global.hud_state == "forge")
{
    if (obj_forge_controller.update_amounts == true and selected == false)
    {
        instance_destroy();
    }
    if (x == obj_forg_slot_1.x and y == obj_forg_slot_1.y)
    {
        if (obj_forge_controller.item_amount[1,number] == 0)
        {
            global.forg_slot_1 = false;
            obj_forg_slot_1.number = 0;
            instance_destroy();
        }
    }
    else if (x == obj_forg_slot_2.x and y == obj_forg_slot_2.y)
    {
        if (obj_forge_controller.item_amount[1,number] == 0)
        {
            global.forg_slot_2 = false;
            obj_forg_slot_2.number = 0;
            instance_destroy();
        }
    }
    else if (x == obj_forg_slot_3.x and y == obj_forg_slot_3.y)
    {
        if (obj_forge_controller.item_amount[1,number] == 0)
        {
            global.forg_slot_3 = false;
            obj_forg_slot_3.number = 0;
            instance_destroy();
        }
    }
}
else if (global.hud_state == "alchemy")
{
    if (obj_alchemy_controller.update_amounts == true and selected == false)
    {
        instance_destroy();
    }
    if (x == obj_alch_slot_1.x and y == obj_alch_slot_1.y)
    {
        if (obj_alchemy_controller.item_amount[2,number] == 0)
        {
            global.alch_slot_1 = false;
            obj_alch_slot_1.number = 0;
            instance_destroy();
        }
    }
    else if (x == obj_alch_slot_2.x and y == obj_alch_slot_2.y)
    {
        if (obj_alchemy_controller.item_amount[2,number] == 0)
        {
            global.alch_slot_2 = false;
            obj_alch_slot_2.number = 0;
            instance_destroy();
        }
    }
    else if (x == obj_alch_slot_3.x and y == obj_alch_slot_3.y)
    {
        if (obj_alchemy_controller.item_amount[2,number] == 0)
        {
            global.alch_slot_3 = false;
            obj_alch_slot_3.number = 0;
            instance_destroy();
        }
    }
}
else
{
    instance_destroy();
}
