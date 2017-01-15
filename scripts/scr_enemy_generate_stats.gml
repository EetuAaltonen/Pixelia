///scr_enemy_generate_stats(min_random, max_random);
var rnd = round(random_range(1, 2));
if (rnd == 1)
{
    if (str > 0)
    {
        rnd = round(random_range(1, 2));
        if (rnd == 2)
        {
            str += 1;
        }
    }
    if (def > 0)
    {
        rnd = round(random_range(1, 2));
        if (rnd == 2)
        {
            def += 1;
        }
    }
    if (mag > 0)
    {
        rnd = round(random_range(1, 2));
        if (rnd == 2)
        {
            mag += 1;
        }
    }
}

