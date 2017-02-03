var i, arrayLength;
arrayLength = array_length_1d(obj_inventory_controller.name);
for(i = 1; i > 0; i++)
{
    if (obj_inventory_controller.name[i] == "")
    {
        obj_inventory_controller.name[i] = name;
        i = 1;
        break;
    }
    else
    {
        if ((i + 1) == array_length_1d(obj_inventory_controller.name)) //Cause array start 0 and [0,1], length == 2 !
        {
            obj_inventory_controller.name[i + 1] = "";
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
