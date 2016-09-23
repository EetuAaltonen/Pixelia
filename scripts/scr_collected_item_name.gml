var n;
for(n = 1; n > 0; n++)
{
    if (obj_inventory_controller.name[n] == "")
    {
        obj_inventory_controller.name[n] = name;
        n = 1;
        break;
    }
    else
    {
        if (n + 1 >= array_length_1d(obj_inventory_controller.name))
        {
            obj_inventory_controller.name[n + 1] = "";
        }
    }
}
if (obj_inventory_controller.draw_name == false)
{
    obj_inventory_controller.draw_name = true;
}
if (obj_inventory_controller.alarm[1] <= 0)
{
    obj_inventory_controller.alarm[1] = 2;
}
