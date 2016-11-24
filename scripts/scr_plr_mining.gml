if (instance_nearest(x, y, obj_source_ironore).source > 0)
{
    solid = false;
    mask_index = spr_no_mask;
    hspeed = 0;
    vspeed = 0;
    sprite_index = spr_plr_mining;
    image_speed = 0.1;
    y = instance_nearest(x, y, obj_source_ironore).y - 2;
    if (instance_nearest(x, y, obj_source_ironore).x > x)
    {
        image_xscale = 1;
        x = instance_nearest(x, y, obj_source_ironore).x - 15;
    }
    else if (instance_nearest(x, y, obj_source_ironore).x < x)
    {
        image_xscale = -1;
        x = instance_nearest(x, y, obj_source_ironore).x + 15;  
    }
}
else
{
    action_state = "null";
    sprite_index = spr_player;
    solid = true;
    mask_index = spr_player;
}
