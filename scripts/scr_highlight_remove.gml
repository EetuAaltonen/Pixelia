if (image_blend == make_colour_hsv(0, 0, 150))
{
    image_blend = make_colour_hsv(0, 0, -1);
    obj_player.highlight = false;
    depth = depth_;
}
