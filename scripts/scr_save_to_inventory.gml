//Save inventory
ini_open("Inventory.sav");
var saved_amount, key;
key = search_id + "[" + string(item_id) + "]";
saved_amount = ini_read_real("Save1",string(key),"0");
saved_amount = round(saved_amount) + added_amount;
if (saved_amount <= 0)
{
    saved_amount = 0;
}
ini_write_real("Save1",key,saved_amount);

ini_close();

/*ini_open("Inventory.sav");

var SavedAmount = ini_read_string("Save1",string(global.n1),"0"); //global.n1 = item id
SavedAmount = round(real(SavedAmount)) + global.AddedItemAmount;
if (SavedAmount <= 0)
{
    SavedAmount = 0;
}
ini_write_real("Save1",string(global.n1),SavedAmount);

ini_close();
global.n1 = 0;
global.AddedItemAmount = 0;
