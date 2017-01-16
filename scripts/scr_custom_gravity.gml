var custom_gravity = 0.2;
var max_vspeed = 4;
if (vspeed < max_vspeed)
{
    if (instance_exists(obj_block_water))
    {
        if (distance_to_object(obj_block_water) == 0)
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
}
