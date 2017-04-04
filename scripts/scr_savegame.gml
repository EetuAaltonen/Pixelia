ini_open(global.save_file);

//Datetime
var Datetime = (string(current_day) + "/" + string (current_month) + "/" + string(current_year) + "  " + string(current_hour));
var minutes;
if (string_length(string(current_minute)) < 2)
{
    minutes = ("0" + string(current_minute));
}
else
{
    minutes = string(current_minute);
}
var seconds;
if (string_length(string(current_second)) < 2)
{
    seconds = ("0" + string(current_second));
}
else
{
    seconds = string(current_second);
}
Datetime += (":" + minutes + ":" + seconds);
ini_write_string(global.save_file,"last_played", Datetime);
                
ini_write_real(global.save_file,"room",global.current_room);
ini_write_real(global.save_file,"health",global.health);

ini_write_real(global.save_file,"level",global.level);
ini_write_real(global.save_file,"xp",global.xp);
ini_write_real(global.save_file,"xplimit",global.xp_limit);

ini_write_real(global.save_file,"skill_points",global.skill_points);
ini_write_real(global.save_file,"deaths",global.death_counter);
ini_write_real(global.save_file,"kills",global.kill_counter);

ini_write_string(global.save_file,"quest",global.quest);

ini_write_real(global.save_file,"coins",global.coins);
ini_write_real(global.save_file,"potions",global.potions);

ini_write_real(global.save_file,"home_happiness",global.home_happiness);
ini_write_real(global.save_file,"home_defence",global.home_defence);
ini_write_real(global.save_file,"home_hunger",global.home_hunger);
ini_write_real(global.save_file,"home_thirst",global.home_thirst);

ini_close();
