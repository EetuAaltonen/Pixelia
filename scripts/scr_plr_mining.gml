hspeed = 0;
vspeed = 0;
sprite_index = spr_plr_mining;
image_speed = 0.1;
if ((instance_nearest(x, y, obj_iron_ore)).x > x)
{
    image_xscale = 1;
}
else if ((instance_nearest(x, y, obj_iron_ore)).x < x)
{
    image_xscale = -1;
}
if ((instance_nearest(x, y, obj_iron_ore)).iron == 1)
{
    obj_player.action_state = "null"
    sprite_index = spr_player;
}
