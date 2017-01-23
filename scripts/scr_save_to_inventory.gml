//Save inventory
if (added_amount != 0)
{
    ini_open("Inventory.sav");
    var saved_amount, key;
    key = "Amount[" + string(type_id) + "," + string(item_id) + "]";
    saved_amount = ini_read_real(global.save_file,string(key),0);
    saved_amount += added_amount;
    ini_write_real(global.save_file,key,saved_amount);
    ini_close();
}
