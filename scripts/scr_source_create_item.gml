var x_random, y_random, i;
x_random = random_range(1, 2);
x_random = round(x_random);
if (x_random == 1)
{
    x_random = random_range(10, 51);
}
else if (x_random == 2)
{
    x_random = random_range(-50, -11);
}
else
{
    show_message(string("Error: " + x_random + " was wrong value!"));
}
y_random = random_range(-5, -10);
instance_create(x + x_random, y + y_random, obj_dropped_item);
(instance_nearest(x + x_random, y + y_random, obj_dropped_item)).sprite_index = sprite_index_item;
(instance_nearest(x + x_random, y + y_random, obj_dropped_item)).type_id = type_id;
(instance_nearest(x + x_random, y + y_random, obj_dropped_item)).get_attributes = true;
