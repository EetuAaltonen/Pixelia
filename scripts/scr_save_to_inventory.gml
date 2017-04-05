///scr_save_to_inventory(argument0, argument1)
var spriteName = sprite_get_name(argument0);
var addedAmount = argument1;
//Save inventory
var itemInfo = ds_list_create();
var inInventory = false;
var listSize = ds_list_size(global.inventory);
var value, count, itemName, itemWeight;
//Read
for (i = 0; i < listSize; i++) {
    value = ds_list_find_value(global.inventory, i);
    if (string(ds_list_find_value(value, 0)) == spriteName) {
        count = ds_list_find_value(value, 2);
        count += addedAmount;
        if (count <= 0) { 
            ds_list_delete(global.inventory, i);
        } else {
            ds_list_replace(value, 2, count);
            ds_list_replace(global.inventory, i, value);
        }
        inInventory = true;
        break;
    }
}
if (!inInventory) {
    if (addedAmount > 0) {
        //Write
        ds_list_clear(itemInfo);
        ds_list_add(itemInfo, spriteName);
        itemName = scr_inventory_item_name(sprite_index_);
        ds_list_add(itemInfo, itemName);
        ds_list_add(itemInfo, addedAmount);
        itemWeight = scr_inventory_item_weight(sprite_index_);
        ds_list_add(itemInfo, itemWeight);
        ds_list_add(global.inventory, itemInfo);
    }
}
itemWeight = scr_inventory_item_weight(sprite_index_);
global.total_item_weight += (addedAmount*itemWeight);

//Write to file
var fileName = "Inventory.ini";
listSize = ds_list_size(global.inventory);
ini_open(fileName);
if (ini_section_exists(global.save_file)) {
    ini_section_delete(global.save_file);
}
for (i = 0; i < listSize; i++) {
    
    var values = ds_list_create();
    values = ds_list_find_value(global.inventory, i);
    values = ds_list_write(values);
    ini_write_string(global.save_file, string(i), values);
}
ini_write_real(global.save_file, "weight_of_items", global.total_item_weight);
ini_close();
