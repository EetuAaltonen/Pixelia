if (instance_nearest(x, y, obj_source_tree_parent).source > 0)
{
    solid = false;
    mask_index = spr_no_mask;
    hspeed = 0;
    vspeed = 0;
    sprite_index = spr_plr_woodcutting;
    image_speed = 0.1;
    y = instance_nearest(x, y, obj_source_tree_parent).y - 2;
    if (instance_nearest(x, y, obj_source_tree_parent).x > x)
    {
        image_xscale = 1;
        x = instance_nearest(x, y, obj_source_tree_parent).x - 15;
    }
    else if (instance_nearest(x, y, obj_source_tree_parent).x < x)
    {
        image_xscale = -1;
        x = instance_nearest(x, y, obj_source_tree_parent).x + 15;  
    }
}
else
{
    scr_plr_set_action_state_null();
}
