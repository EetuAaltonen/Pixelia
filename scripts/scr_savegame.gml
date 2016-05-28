if (file_exists("Save.sav"))
{
    file_delete("Save.sav");
}
ini_open("Save.sav");
var SavedRoom = global.current_room; //base64_encode(string(global.current_room));
var SavedHealth = global.player_health; //base64_encode(string(global.coins));
var SavedCoins = global.coins; //base64_encode(string(global.coins));

var SavedSkillPoint = global.skillpoint;
var SavedDeathCounter = global.death_counter;
var SavedKillCounter = global.kill_counter;

var SavedPotions = global.potions; //base64_encode(string(global.potions));
var SavedIronores = global.ironore; //base64_encode(string(global.ironore));
var SavedLogs = global.logs; //base64_encode(string(global.logs));

//var SavedQuest = global.guest; //base64_encode(string(global.logs));


ini_write_real("Save1","room",SavedRoom);
ini_write_real("Save1","health",SavedHealth);
ini_write_real("Save1","coins",SavedCoins);

ini_write_real("Save1","skillpoints",SavedSkillPoint);
ini_write_real("Save1","deaths",SavedDeathCounter);
ini_write_real("Save1","kills",SavedKillCounter);

ini_write_real("Save1","potions",SavedPotions);
ini_write_real("Save1","ironores",SavedIronores);
ini_write_real("Save1","logs",SavedLogs);

//ini_write_real("Save1","quest",string(SavedQuest));

//ini_write_string("Save1","room",SavedRoom);
//ini_write_string("Save1","coins",SavedCoins);
ini_close();
