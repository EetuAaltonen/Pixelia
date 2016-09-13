ini_open("Save.sav");

ini_write_real("Save1","room",global.current_room);
ini_write_real("Save1","health",global.player_health);

ini_write_real("Save1","level",global.level);
ini_write_real("Save1","xp",global.xp);
ini_write_real("Save1","xplimit",global.xp_limit);

ini_write_real("Save1","skillpoints",global.skillpoints);
ini_write_real("Save1","deaths",global.death_counter);
ini_write_real("Save1","kills",global.kill_counter);

ini_write_string("Save1","quest",global.quest);

ini_write_real("Save1","coins",global.coins);
ini_write_real("Save1","potions",global.potions);

ini_write_real("Save1","home_happiness",global.home_happiness);
ini_write_real("Save1","home_defence",global.home_defence);
ini_write_real("Save1","home_hunger",global.home_hunger);
ini_write_real("Save1","home_thirst",global.home_thirst);

ini_close();
