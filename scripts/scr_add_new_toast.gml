///scr_inventory_item_info(argument0);
var controller = obj_inventory_controller;
ds_list_add(controller.toaster, argument0);
if (!controller.draw_toast)
{
    controller.draw_toast = true;
}
if (controller.alarm[1] <= 0)
{
    controller.alarm[1] = controller.toasterSpeed;
}
