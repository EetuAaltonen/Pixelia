//Lives
if (global.lives <= 0)
{
        //alarm[7] = 120;
        //global.pause = 1;
        //global.damage = 0;
        
        //Drop coins after death
        coin_drop = round(global.coin*0.5);
        
        //Enemies' stats
        global.enemy_stats1 = 0;
        global.enemy_stats2 = 0;
        global.enemy_stats3 = 0;
        
        //Drop coins
        while coin_drop < global.coin
        {
            instance_create(x, y-5, obj_coin);
            global.coin -= 1;
        }
        
        //Create grave
        instance_create(x, y-5, obj_grave);
        
        //Death counter
        global.death_counter += 1;
        
        x = obj_spawner.x;
        y = obj_spawner.y;
        global.lives = 10;
}
