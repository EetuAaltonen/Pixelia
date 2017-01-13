if (keyboard_check(vk_right) and
distance_to_object(obj_dec_stairs) < 5 and hspeed < 3)
{
    y = y-3;
}
else if (keyboard_check(vk_left) and 
distance_to_object(obj_dec_stairs) < 5 and hspeed > -3)
{
    y = y-3;
}
else if (keyboard_check(vk_right) and 
distance_to_object(obj_dec_stairs) < 7 and hspeed >= 3)
{
    y = y-4;
}
else if (keyboard_check(vk_left) and 
distance_to_object(obj_dec_stairs) < 7 and hspeed <= -3)
{
    y = y-4;
}
