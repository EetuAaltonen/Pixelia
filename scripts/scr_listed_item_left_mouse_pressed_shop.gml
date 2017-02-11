//Buy item
if (global.coins >= price)
{
    //Cost
    global.coins -= price;
    //Save to inventory
    scr_save_to_inventory();
}
