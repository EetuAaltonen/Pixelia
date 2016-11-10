var custom_gravity = 0.2;
if (instance_exists(obj_water))
{
    if (distance_to_object(obj_water) == 0)
    {
        if (vspeed < 0.5)
        {
            vspeed += custom_gravity;
        }
        else if (vspeed >= 0.5)
        {
            vspeed = 0.5;
        }
    }
    else
    {
        if (vspeed < 10)
        {
            vspeed += custom_gravity;
        }
    }
}
else
{
    if (vspeed < 10)
    {
        vspeed += custom_gravity;
    } 
}
