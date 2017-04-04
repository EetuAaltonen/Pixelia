var x_random, y_random, i;
for (i = 1; i <= dropped_count; i++)
{
    x_random = random_range(-10, 10);
    y_random = random_range(-5, -10);
    instance_create(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item);
    (instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).sprite_index = sprite_index;
    //(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).typeId = typeId;
    //(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).get_attributes = true;
    //Save to inventory
    scr_save_to_inventory(sprite_index_, -1);
}
//Refresh inventory list
obj_inventory_controller.pageUpdate = true;
