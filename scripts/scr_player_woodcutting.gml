hspeed = 0;
vspeed = 0;
sprite_index = spr_pelaaja_woodcutting;
image_speed = 0.1;
if (obj_tree.x > x)
{
    image_xscale = 1;
}
else if (obj_tree.x < x)
{
    image_xscale = -1;
}
if (obj_tree.log == 1)
{
    woodcutting = 0;
    sprite_index = spr_pelaaja;
}
