/*if (file_exists("Save.sav"))
{
    file_delete("Save.sav");
}*/
ini_open("Save.sav");
var SavedRoom = global.current_room; //base64_encode(string(global.current_room));
var SavedHealth = global.player_health;

var SavedLevel = global.level;
var SavedXp = global.xp;
var SavedXpLimit = global.xp_limit;

var SavedSkillPoint = global.skillpoint;
var SavedDeathCounter = global.death_counter;
var SavedKillCounter = global.kill_counter;

var SavedQuest= string(global.quest);

var SavedCoins = global.coins;
var SavedPotions = global.potions;
var SavedIronores = global.ironore;
var SavedLogs = global.logs;


ini_write_real("Save1","room",SavedRoom);
ini_write_real("Save1","health",SavedHealth);

ini_write_real("Save1","level",SavedLevel);
ini_write_real("Save1","xp",SavedXp);
ini_write_real("Save1","xplimit",SavedXpLimit);

ini_write_real("Save1","coins",SavedCoins);
ini_write_real("Save1","potions",SavedPotions);

ini_write_real("Save1","skillpoints",SavedSkillPoint);
ini_write_real("Save1","deaths",SavedDeathCounter);
ini_write_real("Save1","kills",SavedKillCounter);

ini_write_string("Save1","quest",SavedQuest);

//ini_write_real("Save1","quest",string(SavedQuest));

//ini_write_string("Save1","room",SavedRoom);
//ini_write_string("Save1","coins",SavedCoins);
ini_close();
