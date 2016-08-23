x = (instance_nearest(x, y, obj_ladder).x);
if (keyboard_check(vk_up))
{
    vspeed = -2;
    x = (instance_nearest(x, y, obj_ladder).x)   
}
else if (keyboard_check(vk_down))
{
    vspeed = 2;
    x = (instance_nearest(x, y, obj_ladder).x) 
}
else if (!keyboard_check(vk_up) and !keyboard_check(vk_down))
{
    vspeed = 0;
    gravity = 0;
}
