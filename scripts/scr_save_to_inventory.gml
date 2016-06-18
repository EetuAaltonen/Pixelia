//Save inventory
ini_open("Inventory.sav");

var SavedAmount = ini_read_string("Save1",string(global.n1),"0");
SavedAmount = round(real(SavedAmount)) + global.AddedItemAmount;
if (SavedAmount <= 0)
{
    SavedAmount = 0;
}
ini_write_real("Save1",string(global.n1),SavedAmount);

ini_close();
global.n1 = 0;
global.AddedItemAmount = 0;
