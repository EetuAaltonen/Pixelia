//Changed ingredient count in inventory
global.n1 = obj_alch_slot_1.number;
global.AddedItemAmount = -1;
scr_save_to_inventory();

global.n1 = obj_alch_slot_2.number;
global.AddedItemAmount = -1;
scr_save_to_inventory();

global.n1 = obj_alch_slot_3.number;
global.AddedItemAmount = -1;
scr_save_to_inventory();

obj_alch_slot_4.create_only_once = false;
obj_alchemy.alch_loop_stop = false;
obj_alchemy.alch_page_refresh = true;

instance_destroy();
