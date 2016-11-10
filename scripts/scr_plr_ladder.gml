x = (instance_nearest(x, y, obj_ladder).x);
hspeed = 0;

image_speed = 0;
sprite_index = spr_player;
image_index = 0;

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
else if (!keyboard_check(vk_up) && !keyboard_check(vk_down))
{
    vspeed = 0;
}
if (keyboard_check(vk_left) || keyboard_check(vk_right))
{
    if (distance_to_object(obj_solidify_parent) > 5)
    {
        action_state = "null";
        speed = 0;
    }
}
