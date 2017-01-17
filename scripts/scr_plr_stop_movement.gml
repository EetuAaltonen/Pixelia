image_index = 0;
if (hspeed != 0)
{
    if (hspeed > max_walk_speed)
    {
        hspeed -= run_acceleration;
    }
    else if (hspeed < -max_walk_speed)
    {
        hspeed += run_acceleration;
    }
    else if (hspeed > walk_acceleration)
    {
        hspeed -= walk_acceleration;
    }
    else if (hspeed < -walk_acceleration)
    {
        hspeed += walk_acceleration;
    }
    else
    {
        hspeed = 0;
    }
}
