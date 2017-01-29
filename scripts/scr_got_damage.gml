global.pause = 0;
global.pause_draw = 0;
global.damage = 0;
global.hud_state = "null";
if (instance_exists(obj_player))
{
    obj_player.action_state = "null";
}
//Armor regeneration
if (instance_exists(obj_lives))
{
    obj_lives.alarm[1] = global.armor_reg_time;
}
obj_plr_hitbox.alarm[1] = 60;

//Blood
part_particles_create(global.ps, obj_plr_hitbox.x, obj_plr_hitbox.y, 
global.pt_Blood, random_range(5,10));
