//Change material count in inventory
if (global.forg_slot_1 == true)
{
    global.n1 = obj_forg_slot_1.number;
    global.AddedItemAmount = -1;
    scr_save_to_inventory();
}
if (global.forg_slot_2 == true)
{
    global.n1 = obj_forg_slot_2.number;
    global.AddedItemAmount = -1;
    scr_save_to_inventory();
}
if (global.forg_slot_3 == true)
{
    global.n1 = obj_forg_slot_3.number;
    global.AddedItemAmount = -1;
    scr_save_to_inventory();
}

obj_smelter.forg_page_refresh = true;
obj_smelter.forg_loop_stop = false;
obj_smelter.create_only_once = true;

instance_destroy();
