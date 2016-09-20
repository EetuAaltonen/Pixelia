move_towards_point(obj_money_target.x, obj_money_target.y, 5);
    
if (distance_to_object(obj_money_target) < 20)
{
    //Info text
    scr_collected_item_description();
    
    instance_destroy();
}
