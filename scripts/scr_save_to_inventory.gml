//Save inventory
ini_open("Inventory.sav");
var saved_amount, key;
key = "Amount[" + string(type_id) + "," + string(item_id) + "]";
saved_amount = ini_read_real("Save1",string(key),"0");
saved_amount = round(saved_amount) + added_amount;
if (saved_amount <= 0)
{
    saved_amount = 0;
}
ini_write_real("Save1",key,saved_amount);

ini_close();
