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
//Image_xscale
if (obj_plr_aim.x > x)
{
    image_xscale = 1;
}
else
{
    image_xscale = -1;
}
//Stop
if (keyboard_check_released(vk_right) || keyboard_check_released(vk_left))
{
    hspeed = 0;
}
