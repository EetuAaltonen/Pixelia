//Save inventory
if (added_amount > 0)
{
    var spriteName = sprite_get_name(sprite_index_);
    var itemInfo = ds_list_create();
    var inInventory = false;
    var listSize = ds_list_size(global.inventory);
    var value, count, itemName, itemWeight;
    //Read
    for (i = 0; i < listSize; i++) {
        value = ds_list_find_value(global.inventory, i);
        if (string(ds_list_find_value(value, 0)) == spriteName) {
            count = ds_list_find_value(value, 2);
            count += added_amount;
            ds_list_replace(value, 2, count);
            ds_list_replace(global.inventory, i, value);
            inInventory = true;
            break;
        }
    }
    if (!inInventory) {
        //Write
        ds_list_clear(itemInfo);
        ds_list_add(itemInfo, spriteName);
        itemName = scr_inventory_item_name(sprite_index_);
        ds_list_add(itemInfo, itemName);
        ds_list_add(itemInfo, added_amount);
        itemWeight = scr_inventory_item_weight(sprite_index_);
        ds_list_add(itemInfo, itemWeight);
        ds_list_add(global.inventory, itemInfo);
    }
    itemWeight = scr_inventory_item_weight(sprite_index_);
    global.total_item_weight += (added_amount*itemWeight);
    
    /*ini_open("Inventory");
        //Write to file
        for (i = 0; i < listSize; i++) {
            value = ds_list_find_value(global.inventory, i);
            if (string(ds_list_find_value(value, 0)) == spriteName) {
                count = ds_list_find_value(value, 2);
                count += added_amount;
                ds_list_replace(value, 2, count);
                ds_list_replace(global.inventory, i, value);
                inInventory = true;
                break;
            }
        }*/
    /*var values;
    ini_open("Inventory");
    values = ds_list_write(global.inventory);
    ini_write_string(global.save_file, "inventory", values);
    ini_write_real(global.save_file, "weight_of_items", global.total_item_weight);
    ini_close();*/
}
