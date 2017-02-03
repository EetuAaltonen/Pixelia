obj_menu_text_box.selected = false;
obj_menu_text_box.blink_icon = "";
string_replace(obj_menu_text_box.txt, "|", "");
var file = false;
var arrayLength = array_length_1d(obj_screen_controller.Saves);
for (i = 0; i < arrayLength; i++)
{
    if (obj_menu_text_box.txt == obj_screen_controller.Saves[i])
    {
        file = string(obj_screen_controller.Saves[i]);
    }
}

if (file != false)
{
    if show_question(("Load " + file + "?"))
    {
        global.save_file = (file + ".sav");
        global.player_spawner = 1;
        room_goto(First_loading);
    }
}
else
{
    file = obj_menu_text_box.txt;
    if show_question(("Save doesn't exist, create " + file + "?"))
    {
        global.save_file = (file + ".sav");
        global.player_spawner = 1;
        room_goto(First_loading);
    }
}
