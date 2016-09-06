if (selected = false)
{
    if (global.forg_slot_1 == false)
    {
        instance_create(obj_forg_slot_1.x, obj_forg_slot_1.y, object);
        global.forg_slot_1 = true;
        obj_forg_slot_1.number = number;
    }
    else if (global.forg_slot_2 == false)
    {
        instance_create(obj_forg_slot_2.x, obj_forg_slot_2.y, object);
        global.forg_slot_2 = true;
        obj_forg_slot_2.number = number;
    }
    else if (global.forg_slot_3 == false)
    {
        instance_create(obj_forg_slot_3.x, obj_forg_slot_3.y, object);
        global.forg_slot_3 = true;
        obj_forg_slot_3.number = number;
    }
}
else if (selected == true)
{
    if (x == obj_forg_slot_1.x and y == obj_forg_slot_1.y)
    {
        global.forg_slot_1 = false;
        obj_forg_slot_1.number = 0;
        instance_destroy();
    }
    else if (x == obj_forg_slot_2.x and y == obj_forg_slot_2.y)
    {
        global.forg_slot_2 = false;
        obj_forg_slot_2.number = 0;
        instance_destroy();
    }
    else if (x == obj_forg_slot_3.x and y == obj_forg_slot_3.y)
    {
        global.forg_slot_3 = false;
        obj_forg_slot_3.number = 0;
        instance_destroy();
    }
}
