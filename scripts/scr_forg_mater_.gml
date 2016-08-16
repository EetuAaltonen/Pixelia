if (global.forge == false)
{
    instance_destroy();
}
if (obj_smelter.forg_amount[number] == 0)
{
    if (x == obj_forg_slot_1.x and y == obj_forg_slot_1.y)
    {
        global.forg_slot_1 = false;
        obj_forg_slot_1.number = 0;
    }
    else if (x == obj_forg_slot_2.x and y == obj_forg_slot_2.y)
    {
        global.forg_slot_2 = false;
        obj_forg_slot_2.number = 0;
    }
    else if (x == obj_forg_slot_3.x and y == obj_forg_slot_3.y)
    {
        global.forg_slot_3 = false;
        obj_forg_slot_3.number = 0;
    }
    instance_destroy();
}
