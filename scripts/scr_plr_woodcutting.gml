if (instance_nearest(x, y, obj_source_tree).source > 0)
{
    hspeed = 0;
    vspeed = 0;
    sprite_index = spr_plr_woodcutting;
    image_speed = 0.1;
    
    if (instance_nearest(x, y, obj_source_tree).x > x)
    {
        image_xscale = 1;
        x = instance_nearest(x, y, obj_source_tree).x - 15;
        y = instance_nearest(x, y, obj_source_tree).y + 32;
    }
    else if (instance_nearest(x, y, obj_source_tree).x < x)
    {
        image_xscale = -1;
        x = instance_nearest(x, y, obj_source_tree).x + 15;
        y = instance_nearest(x, y, obj_source_tree).y + 32;
    }
}
else
{
    action_state = "null";
    sprite_index = spr_player;
}
