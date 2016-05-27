if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
    var LoadedRoom = ini_read_string("Save1","room","0");
    var LoadedCoins = ini_read_string("Save1","coins","0");
    var LoadedHealth = ini_read_string("Save1","health","0");
    
    var LoadedPotions = ini_read_string("Save1","potions","0");
    var LoadedIronores = ini_read_string("Save1","ironores","0");
    var LoadedLogs = ini_read_string("Save1","logs","0");
    
    var LoadedQuest= ini_read_string("Save1","quest","0");
    
    //LoadedRoom = real(base64_decode(LoadedRoom));
    //LoadedCoins = real(base64_decode(LoadedCoins));
    
    ini_close();
    
    global.current_room = LoadedRoom;
    global.lives = LoadedHealth;
    global.coin = round(LoadedCoins);
    
    global.potion = round(LoadedPotions);
    global.ironore = round(LoadedIronores);
    global.logs = round(LoadedLogs);
    
    var SavedQuest = global.guest;
    
    room_goto(global.current_room);
}
else
{
    room_goto(Test);
}

