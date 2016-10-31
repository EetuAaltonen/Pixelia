//Movement while push
//X_Scale
if (hspeed > 0) 
{
    image_xscale = 1;
}

else if (hspeed < 0) 
{
    image_xscale = -1;
}

//Movement
if (keyboard_check(vk_right))
{
    hspeed = 1;
}
else if (keyboard_check(vk_left))
{
    hspeed = -1;
}
//Stop
if (keyboard_check_released(vk_right) || keyboard_check_released(vk_left))
{
    hspeed = 0;
}

/*hspeed = instance_nearest(x, y, obj_crate).hspeed;
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
if (distance_to_object(instance_nearest(x, y, obj_crate)) > 3 ||
    instance_nearest(x, y, obj_crate).vspeed > 2)
{
    obj_player.action_state = "null";
    sprite_index = spr_player;
}*/
