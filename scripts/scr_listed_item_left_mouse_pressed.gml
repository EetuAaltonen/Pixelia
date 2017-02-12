if (global.hudState != "null")
{
    if (global.hudState == "inventory1")
    {
        if (keyboard_check(vk_shift))
        {
            ini_open("Inventory.sav");
            var key = "Equipment[" + string(typeId) + "," + string(itemId) + "]";
            if (equipped == true)
            {
                equipped = false;
                if (ini_key_exists(global.save_file,key))
                {
                    ini_key_delete(global.save_file,key);
                }
            }
            else
            {
                equipped = true;
                ini_write_string(global.save_file,key,"true");
            }
            ini_close();
        }
    }
    else if (global.hudState == "shop")
    {
        scr_listed_item_left_mouse_pressed_shop();
    }
    else
    {
        scr_listed_item_left_mouse_pressed_crafting();
    }
}
