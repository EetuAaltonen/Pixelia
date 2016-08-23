hspeed = 0;
vspeed = 0;
sprite_index = spr_pelaaja_woodcutting;
image_speed = 0.1;
if ((instance_nearest(x, y, obj_tree)).x > x)
{
    image_xscale = 1;
}
else if ((instance_nearest(x, y, obj_tree)).x < x)
{
    image_xscale = -1;
}
if ((instance_nearest(x, y, obj_tree)).log == 1)
{
    obj_pelaaja.action_state = "null"
    sprite_index = spr_pelaaja;
}
