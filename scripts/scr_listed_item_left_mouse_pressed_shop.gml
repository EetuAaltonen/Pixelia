//Buy item
if (global.coins >= price)
{
    //Cost
    global.coins -= price;
    //Save to inventory
    //scr_save_to_inventory();
}
else
{
    //Animation if not enough coins
    if (obj_inventory_controller.image_scale_coin == 1)
    {
        obj_inventory_controller.alarm[4] = 5;
    }
}
