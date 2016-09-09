var i;
for(i = 1; i > 0; i++)
{
    if (obj_inventory_controller.info_text[i] = "" ||
        is_undefined(obj_inventory_controller.info_text[i]))
    {
        obj_inventory_controller.info_text[i] = info_text;
        break;
    }
}
