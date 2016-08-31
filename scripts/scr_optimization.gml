//Optimization
if (instance_exists(obj_player))
{
    if (distance_to_object(obj_player) > 500)
    {
        visible = false;
    }
    else
    {
        visible = true;
    }
}
