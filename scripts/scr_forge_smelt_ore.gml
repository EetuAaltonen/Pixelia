//Changed material count in inventory
global.n1 = obj_forg_slot_1.number;
global.AddedItemAmount = -1;
scr_save_to_inventory();

global.n1 = obj_forg_slot_2.number;
global.AddedItemAmount = -1;
scr_save_to_inventory();

global.n1 = obj_forg_slot_3.number;
global.AddedItemAmount = -1;
scr_save_to_inventory();

obj_forg_slot_4.create_only_once = false;
obj_forge.forg_loop_stop = false;
obj_forge.forg_page_update = true;

instance_destroy();
