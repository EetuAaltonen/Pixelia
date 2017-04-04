if (move_to_player == true)
{
    depth = obj_player.depth - 1;
    image_speed = 0;
    move_towards_point(obj_player.x, obj_player.y, obj_player.speed + 1);
    if (distance_to_object(obj_player) <= 1)
    {
        //Info text
        scr_add_new_toast(name);
        //Save to inventory
        scr_save_to_inventory(sprite_index_, added_amount);
        obj_player.highlight = false;
        instance_destroy();  
    } 
}

