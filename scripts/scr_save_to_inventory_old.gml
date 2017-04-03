//Save inventory
if (added_amount != 0)
{
    //Write
    var itemInfo = ds_list_create();
    var spriteName = sprite_get_name(sprite_index_);
    ds_list_add(itemInfo, spriteName);
    ds_list_add(itemInfo, added_amount);
    ds_list_add(global.Intentory, itemInfo);
    //Read
    var itemInfo2 = ds_list_create();
    var listSize = ds_list_size(global.Intentory);
    for (index1 = 0; index1 < listSize; index1++) {
        itemInfo2 = ds_list_find_value(global.Intentory, index1);
        var subListSize = ds_list_size(itemInfo2);
        for (index2 = 0; index2 < subListSize; index2++) {
            var value = ds_list_find_value(itemInfo2, index2);
            if (value == spriteName) {
                show_message(value);
            }
        }
    }
    ini_open("Inventory.sav");
    var saved_amount, key;
    key = "Amount[" + string(typeId) + "," + string(itemId) + "]";
    saved_amount = ini_read_real(global.save_file,string(key),0);
    saved_amount += added_amount;
    ini_write_real(global.save_file,key,saved_amount);
    ini_close();
}
