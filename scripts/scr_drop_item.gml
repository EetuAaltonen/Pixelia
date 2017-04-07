var randomX, randomY, i;
for (i = 1; i <= droppedCount; i++)
{
    randomX = random_range(-10, 10);
    randomY = random_range(-5, -10);
    instance_create(obj_player.x + randomX, obj_player.y + randomY, obj_dropped_item);
    (instance_nearest(obj_player.x + randomX, obj_player.y + randomY, obj_dropped_item)).sprite_index = sprite_index;
}
//Save to inventory
scr_save_to_inventory(sprite_index, (droppedCount*(-1)));
//Refresh inventory list
obj_inventory_controller.pageUpdate = true;
