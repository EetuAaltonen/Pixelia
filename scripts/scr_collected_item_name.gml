///scr_inventory_item_info(argument0);
text = argument0;
var i, arrayLength;
var controller = obj_inventory_controller;
arrayLength = array_length_1d(controller.toast);
for(i = 1; i > 0; i++)
{
    if (controller.toast[i] == "")
    {
        controller.toast[i] = argument0;
        i = 1;
        break;
    }
    else
    {
        if ((i + 1) == array_length_1d(controller.toast)) //Cause array start 0 and [0,1], length == 2 !
        {
            controller.toast[i + 1] = "";
        }
    }
}
if (controller.draw_toast == false)
{
    controller.draw_toast = true;
}
if (controller.alarm[1] <= 0)
{
    controller.alarm[1] = 2;
}
