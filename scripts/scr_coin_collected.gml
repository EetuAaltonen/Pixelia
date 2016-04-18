//Coin collected
if (distance_to_object(obj_pelaaja) < 10)
{
    instance_create(x, y, obj_coin_collected)
    instance_destroy(); 
}
