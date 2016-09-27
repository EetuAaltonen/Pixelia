//Image index
if (source < 5)
{
    sprite_index = spr_source_tree_hit
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
    sprite_index = spr_source_tree;
    image_speed = 0.1;
}

