var n;
for(n = 1; n > 0; n++)
{
    if (obj_inventory_controller.description[n] == "")
    {
        obj_inventory_controller.description[n] = description;
        n = 1;
        break;
    }
    else
    {
        if (n + 1 >= array_length_1d(obj_inventory_controller.description))
        {
            obj_inventory_controller.description[n + 1] = "";
        }
    }
}
if (obj_inventory_controller.draw_description == false)
{
    obj_inventory_controller.draw_description = true;
}
if (obj_inventory_controller.alarm[1] <= 0)
{
    obj_inventory_controller.alarm[1] = 2;
}
