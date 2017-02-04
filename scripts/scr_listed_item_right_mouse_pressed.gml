///Start dropping items
if (global.hud_state == "inventory1")
{
    if (dropping_item == false)
    {
        ini_open("Inventory.sav");
        key = "Amount[" + string(type_id) + "," + string(item_id) + "]";      
        //Item amount
        item_count = ini_read_real(global.save_file, key, 0);
        ini_close();
        //Create buttons to drop items
        if (createOnce == true)
        {
            instance_create(view_xview+330, view_yview+150,obj_button_increase);
            instance_create(view_xview+170, view_yview+150,obj_button_decrease);
            instance_create(view_xview+250, view_yview+190,obj_button_confirm);
            obj_button_confirm.item_count = item_count;
            createOnce = false;
        }
        dropping_item = true;
    }
}
