sprite_index = spr_player_bow;
//Movement
if (keyboard_check(vk_right))
{
    hspeed = 1;
}
else if (keyboard_check(vk_left))
{
    hspeed = -1;
}
//X_Scale
if (obj_plr_aim.x > x)//(hspeed > 0) 
{
    image_xscale = 1;
}

else if (obj_plr_aim.x < x)//(hspeed < 0) 
{
    image_xscale = -1;
}
//Stop
if (keyboard_check_released(vk_right) || keyboard_check_released(vk_left))
{
    hspeed = 0;
}
