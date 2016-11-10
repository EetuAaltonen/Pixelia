if (instance_exists(obj_player))
{
    if(obj_player.action_state == "null" || obj_player.action_state == "jump")
    {
        if (distance_to_object(obj_player) <= 35)
        {
            if (y - obj_player.y <= 10 && y - obj_player.y >= -10 ||
                distance_to_object(obj_player) == 0)
            {
                if ((x > obj_player.x && obj_player.image_xscale == 1) ||
                    (x < obj_player.x && obj_player.image_xscale == -1) ||
                     distance_to_object(obj_player) == 0)
                {
                    if (obj_player.highlight == false)
                    {
                        image_blend = make_colour_hsv(0, 0, 150);
                        obj_player.highlight = true;
                    }
                }
                else
                {
                    if (image_blend == make_colour_hsv(0, 0, 150))
                    {
                        image_blend = make_colour_hsv(0, 0, -1);
                        obj_player.highlight = false;
                    }
                }
            }
            else
            {
                if (image_blend == make_colour_hsv(0, 0, 150))
                {
                    image_blend = make_colour_hsv(0, 0, -1);
                    obj_player.highlight = false;
                }
            }
        }
        else
        {
            if (image_blend == make_colour_hsv(0, 0, 150))
            {
                image_blend = make_colour_hsv(0, 0, -1);
                obj_player.highlight = false;
            }
        }
    }
}
