global.pause = 0;
global.pause_draw = 0;
global.damage = 0;
global.inventory = 0;
obj_hitbox.alarm[1] = 60;

//Blood
part_particles_create(global.ps, obj_hitbox.x, obj_hitbox.y, 
global.pt_Blood, random_range(5,10));
