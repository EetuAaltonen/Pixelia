//Change page
if (global.hud_state == "inventory1" and keyboard_check_released(vk_right) and
    (item_count - ((current_page+1)*8)) > 0)
{
    current_page += 1;
    page_refresh = true;
    create_once = true;
    loop_stop = false;
}
else if (global.hud_state == "inventory1" and keyboard_check_released(vk_left)
         and current_page > 0)
{
    current_page -= 1;
    page_refresh = true;
    create_once = true;
    loop_stop = false;
}