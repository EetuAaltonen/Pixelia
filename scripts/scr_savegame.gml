ini_open(global.save_file);

ini_write_real(global.save_file,"room",global.current_room);
ini_write_real(global.save_file,"health",global.player_health);

ini_write_real(global.save_file,"weight_of_items",global.total_item_weight);

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
