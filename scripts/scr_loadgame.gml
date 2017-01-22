if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
    global.current_room = ini_read_real("Save1","room",Test_improved);
    global.player_health = ini_read_real("Save1","health",20);
    
    global.total_item_weight = ini_read_real("Save1","weight_of_items",0);
    
    global.level = ini_read_real("Save1","level",0);
    global.xp = ini_read_real("Save1","xp",0);
    global.xp_limit = ini_read_real("Save1","xplimit",0);
    
    global.skill_points = ini_read_real("Save1","skill_points",0);
    global.death_counter = ini_read_real("Save1","deaths",0);
    global.kill_counter = ini_read_real("Save1","kills",0);

    global.quest = ini_read_string("Save1","quest","Beginning");
    
    global.coins = ini_read_real("Save1","coins",0);
    global.potions = ini_read_real("Save1","potions",0);
    
    //= real(base64_decode(LoadedRoom));
    //= real(base64_decode(LoadedCoins));
    
    ini_close();
    
    room_goto(Pixelia_Castle_1);//global.current_room);
}
else
{
    ini_open("Save.sav");
    ini_write_real("Save1","room",Test_improved);
    ini_close();
    global.current_room = Test_improved//Test;
    room_goto(global.current_room);
}
