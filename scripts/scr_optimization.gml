//Optimization
if (instance_exists(obj_pelaaja))
{
    if (distance_to_object(obj_pelaaja) > 500)
    {
        visible = false;
    }
    else
    {
        visible = true;
    }
}
