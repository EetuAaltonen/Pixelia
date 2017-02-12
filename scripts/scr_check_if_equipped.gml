ini_open("Inventory.sav");
var key = "Equipment[" + string(typeId) + "," + string(itemId) + "]";
var equppedState = ini_read_string(global.save_file,key,"false");
if (equppedState == "true")
{
    equipped = true;
}
ini_close();
