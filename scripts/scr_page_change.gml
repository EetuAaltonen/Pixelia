//Change page
if (global.hudState == "inventory1" and keyboard_check_released(vk_right) and
    (item_count - ((current_page+1)*8)) > 0)
{
    current_page += 1;
    pageUpdate = true;
    createOnce = true;
    loop_stop = false;
}
else if (global.hudState == "inventory1" and keyboard_check_released(vk_left)
         and current_page > 0)
{
    current_page -= 1;
    pageUpdate = true;
    createOnce = true;
    loop_stop = false;
}
