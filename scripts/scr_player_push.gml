//Movement while push
hspeed = instance_nearest(x, y, obj_crate).hspeed;
if (!speed == 0)
{
    image_speed = 0.1;
}
else
{
    image_speed = 0;
}
if (instance_nearest(x,y,obj_crate).x > x)
{
    image_xscale = 1;
}
else if (instance_nearest(x,y,obj_crate).x < x)
{
    image_xscale = -1;
}
if (distance_to_object(instance_nearest(x, y, obj_crate)) > 3 || instance_nearest(x, y, obj_crate).vspeed > 2)
{
    push = 0;
    sprite_index = spr_pelaaja;
}
