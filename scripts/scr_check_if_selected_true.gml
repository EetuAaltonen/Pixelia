if (global.hudState == "forge")
{
    if (x == obj_forg_slot_1.x and y == obj_forg_slot_1.y)
    {
        selected = true;
    }
    else if (x == obj_forg_slot_2.x and y == obj_forg_slot_2.y)
    {
        selected = true;
    }
    else if (x == obj_forg_slot_3.x and y == obj_forg_slot_3.y)
    {
        selected = true;
    }
    else
    {
        selected = false;
    }
}
else if (global.hudState == "alchemy")
{
    if (x == obj_alch_slot_1.x and y == obj_alch_slot_1.y)
    {
        selected = true;
    }
    else if (x == obj_alch_slot_2.x and y == obj_alch_slot_2.y)
    {
        selected = true;
    }
    else if (x == obj_alch_slot_3.x and y == obj_alch_slot_3.y)
    {
        selected = true;
    }
    else
    {
        selected = false;
    }
}

