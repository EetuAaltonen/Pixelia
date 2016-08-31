//Potion collected
if (distance_to_object(obj_player) < 10)
{
    instance_create(x, y, obj_potion_collected)
    instance_destroy(); 
}
