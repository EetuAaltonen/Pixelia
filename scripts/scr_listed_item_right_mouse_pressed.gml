///Start dropping items
if (global.hudState == "inventory1" || global.hudState == "inventoryEquipments")
{
    if (droppingItem == false)
    {
        //Create buttons to drop items
        if (createOnce == true)
        {
            instance_create(view_xview+330, view_yview+150,obj_button_increase);
            instance_create(view_xview+170, view_yview+150,obj_button_decrease);
            instance_create(view_xview+250, view_yview+190,obj_button_confirm);
            obj_button_confirm.item_count = itemCount;
            createOnce = false;
        }
        droppingItem = true;
    }
}
