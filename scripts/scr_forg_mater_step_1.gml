if (global.forg_slot_4 == false and x = obj_forg_slot_4.x and y = obj_forg_slot_4.y)
{
    obj_forg_slot_4.create_only_once = false;
    instance_destroy();
}
else if (global.forge == false)
{
    obj_forg_slot_4.create_only_once = false;
    instance_destroy();
}
else if (global.forg_slot_4 == true and x = obj_forg_slot_4.x and y = obj_forg_slot_4.y)
{
    obj_smelter.crafted_material_info_number = number;  
}
