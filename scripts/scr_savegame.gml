if (file_exists("Save.sav"))
{
    file_delete("Save.sav");
}
ini_open("Save.sav");
var SavedRoom = global.current_room; //base64_encode(string(global.current_room));
var SavedHealth = global.lives; //base64_encode(string(global.coin));
var SavedCoins = global.coin; //base64_encode(string(global.coin));

var SavedPotions = global.potion; //base64_encode(string(global.potion));
var SavedIronores = global.ironore; //base64_encode(string(global.ironore));
var SavedLogs = global.logs; //base64_encode(string(global.logs));

var SavedQuest = global.guest; //base64_encode(string(global.logs));


ini_write_real("Save1","room",SavedRoom);
ini_write_real("Save1","health",SavedHealth);
ini_write_real("Save1","coins",SavedCoins);

ini_write_real("Save1","potions",SavedPotions);
ini_write_real("Save1","ironores",SavedIronores);
ini_write_real("Save1","logs",SavedLogs);

ini_write_real("Save1","quest",SavedQuest);

//ini_write_string("Save1","room",SavedRoom);
//ini_write_string("Save1","coins",SavedCoins);
ini_close();
