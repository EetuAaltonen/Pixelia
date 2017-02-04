canOpenClose = false;
global.hud_state = hudState;
alarm[1] = 30;

//Create slots
instance_create(view_xview+300, view_yview+117, obj_forg_slot_1);
instance_create(view_xview+300, view_yview+147, obj_forg_slot_2);
instance_create(view_xview+300, view_yview+177, obj_forg_slot_3);
instance_create(view_xview+350, view_yview+147, obj_forg_slot_4);
//Created item slot
instance_create(view_xview+350, view_yview+147, obj_forg_crafted_item);
instance_create(view_xview+464, view_yview+54, obj_crafting_close_button);

obj_forge_controller.pageUpdate = true;
obj_forge_controller.current_page = 0;
