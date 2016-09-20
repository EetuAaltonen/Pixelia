var x_random, y_random;
x_random = random_range(-10, 10);
y_random = random_range(-5, -10);
instance_create(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item);
(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).sprite_index = sprite_index;
(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).item_id = item_id;
(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).search_id = search_id;
(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).description = description;
(instance_nearest(obj_player.x + x_random, obj_player.y + y_random, obj_dropped_item)).weight = weight;

global.total_item_weight -= weight;

//Save to inventory
scr_save_to_inventory();

//Refresh inventory list
global.hud_state = "null";
