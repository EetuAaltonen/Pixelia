///Check text length
if (instance_exists(obj_menu_text_box))
{
    if (string_length(obj_menu_text_box.txt) >= 4 &&
        obj_menu_text_box.txt != obj_menu_text_box.place_holder)
    {
        image_blend = make_colour_hsv(0, 0, -1);
    }
    else
    {
        image_blend = make_colour_hsv(0, 0, 150);
    }
}
