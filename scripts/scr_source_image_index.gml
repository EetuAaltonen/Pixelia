//Image index
if (source < 5)
{
    sprite_index = sprite_index_hit;
    switch (source)
    {
        case 4: image_index = 0; break;
        case 3: image_index = 1; break;
        case 2: image_index = 2; break;
        case 1: image_index = 3; break;
        case 0: image_index = 4; break;
    }
}
else
{
    sprite_index = sprite_index_untoch;
    image_speed = default_speed;
}

