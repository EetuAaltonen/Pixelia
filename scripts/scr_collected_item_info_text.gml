var n;
for(n = 1; n > 0; n++)
{
    if (obj_inventory_controller.info_text[n] == "")
    {
        obj_inventory_controller.info_text[n] = info_text;
        n = 1;
        break;
    }
    else
    {
        if (n + 1 >= array_length_1d(obj_inventory_controller.info_text))
        {
            obj_inventory_controller.info_text[n + 1] = "";
        }
    }
}
if (obj_inventory_controller.draw_info_text == false)
{
    obj_inventory_controller.draw_info_text = true;
}
if (obj_inventory_controller.alarm[1] <= 0)
{
    obj_inventory_controller.alarm[1] = 2;
}
