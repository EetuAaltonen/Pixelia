if (keyboard_check(vk_right) && keyboard_check(vk_left))
{
    scr_plr_stop_movement();
}
else if (keyboard_check(vk_right))
{
    if (image_index == 0 && image_speed == 0)
    {
        image_index += 1;
    }
    if (keyboard_check(vk_shift) 
        && !keyboard_check(vk_down) 
        && global.stamina != 0
        && !place_free(x, y+1))
    {
        //Run
        image_speed = 0.5;
        if (hspeed < max_run_speed)
        {
            hspeed += run_acceleration;
        }
        else
        {
            hspeed = max_run_speed;
        }
    }
    else
    {
        //Walk
        if (hspeed < max_walk_speed)
        {
            hspeed += walk_acceleration;
        }
        else
        {
            hspeed = max_walk_speed;
        }
    }
}
else if (keyboard_check(vk_left))
{
    if (image_index == 0 && image_speed == 0)
    {
        image_index += 1;
    }
    if (keyboard_check(vk_shift)
    && not keyboard_check(vk_down)
    && global.stamina != 0
    && !place_free(x, y+1))
    {
        //Run
        image_speed = 0.5;
        if (hspeed > -max_run_speed)
        {
            hspeed -= run_acceleration;
        }
        else
        {
            hspeed = -max_run_speed;
        }
    }
    else
    {
        //Walk
        if (hspeed > -max_walk_speed)
        {
            hspeed -= walk_acceleration;
        }
        else
        {
            hspeed = -max_walk_speed;
        }
    }
}
else
{
    scr_plr_stop_movement();
}
if (hspeed == 0)
{
    image_speed = 0;
    image_index = 0;   
}
else
{
    image_speed = 0.2;
}
