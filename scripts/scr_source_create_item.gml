var x_random, y_random, i;

x_random = random_range(-50, 50);
y_random = random_range(-5, -10);
instance_create(x + x_random, y + y_random, obj_dropped_item);
(instance_nearest(x + x_random, y + y_random, obj_dropped_item)).sprite_index = sprite_index_item;
(instance_nearest(x + x_random, y + y_random, obj_dropped_item)).type_id = type_id;
(instance_nearest(x + x_random, y + y_random, obj_dropped_item)).get_attributes = true;
