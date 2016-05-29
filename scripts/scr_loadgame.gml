if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
    var LoadedRoom = ini_read_string("Save1","room","0");
    var LoadedHealth = ini_read_string("Save1","health","0");
    
    var LoadedLevel = ini_read_string("Save1","level","0");
    var LoadedXp = ini_read_string("Save1","xp","0");
    var LoadedXpLimit = ini_read_string("Save1","xplimit","0");
    
    var LoadedSkillPoint = ini_read_string("Save1","skillpoints","0");
    var LoadedDeathCounter = ini_read_string("Save1","deaths","0");
    var LoadedKillCounter = ini_read_string("Save1","kills","0");

    var LoadedQuest = ini_read_string("Save1","quest","0");
    
    var LoadedCoins = ini_read_string("Save1","coins","0");
    var LoadedPotions = ini_read_string("Save1","potions","0");
    var LoadedIronores = ini_read_string("Save1","ironores","0");
    var LoadedLogs = ini_read_string("Save1","logs","0");
    
    //var LoadedQuest= ini_read_string("Save1","quest","0");
    
    //LoadedRoom = real(base64_decode(LoadedRoom));
    //LoadedCoins = real(base64_decode(LoadedCoins));
    
    ini_close();
    
    global.current_room = LoadedRoom;
    global.player_health = round(real(LoadedHealth));
    
    global.level = round(real(LoadedLevel));
    global.xp = round(real(LoadedXp));
    global.xp_limit = round(real(LoadedXpLimit));
    
    global.skillpoint = round(real(LoadedSkillPoint));
    global.death_counter = round(real(LoadedDeathCounter));
    global.kill_counter = round(real(LoadedKillCounter));
    
    global.quest = string(LoadedQuest);
    
    global.coins = round(real(LoadedCoins));
    global.potions = round(real(LoadedPotions));
    global.ironore = round(real(LoadedIronores));
    global.logs = round(real(LoadedLogs));
    
    //var LoadedQuest = global.guest;
    
    room_goto(global.current_room);
}
else
{
    room_goto(Test);
}

