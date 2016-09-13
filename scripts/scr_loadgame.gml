if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
    global.current_room = ini_read_real("Save1","room","0");
    global.player_health = ini_read_real("Save1","health","0");
    
    global.level = ini_read_real("Save1","level","0");
    global.xp = ini_read_real("Save1","xp","0");
    global.xp_limit = ini_read_real("Save1","xplimit","0");
    
    global.skillpoint = ini_read_real("Save1","skillpoints","0");
    global.death_counter = ini_read_string("Save1","deaths","0");
    global.kill_counter = ini_read_string("Save1","kills","0");

    global.quest = ini_read_string("Save1","quest","0");
    
    global.coins = ini_read_real("Save1","coins","0");
    global.potions = ini_read_real("Save1","potions","0");
    
    //= real(base64_decode(LoadedRoom));
    //= real(base64_decode(LoadedCoins));
    
    ini_close();
    
    room_goto(global.current_room);
}
else
{
    room_goto(Test);
}
