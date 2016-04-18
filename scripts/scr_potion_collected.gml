//Potion collected
if (distance_to_object(obj_pelaaja) < 10)
{
    instance_create(x, y, obj_potion_collected)
    instance_destroy(); 
}
