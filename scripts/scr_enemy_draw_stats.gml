//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var view_ypos = 14;

if (instance_exists(obj_player))
{
    if (distance_to_object(obj_player) < 60)
    {
        if (draw_state == false)
        {
            if (global.enemy_stats1 == 0)
            {
                global.enemy_stats1 = 1;
                draw_state = global.enemy_stats1;
            }
            else if (global.enemy_stats2 == 0)
            {
                global.enemy_stats2 = 2;
                draw_state = global.enemy_stats2;
            }
            else if (global.enemy_stats3 == 0)
            {
                global.enemy_stats3 = 3;
                draw_state = global.enemy_stats3;
            }
            view_yview_stats = (view_ypos * (draw_state - 1)) + 2;
        }
        else
        {
            //Draw stats background
            draw_sprite_ext(spr_enemies_stats, image_index, view_xview+130,
                        view_yview_stats, image_xscale, image_yscale, 
                        image_angle, c_white, 0.7);
                        
            //Draw stats name bg
            draw_sprite(spr_ene_name_bg, image_index, view_xview+133,
                        view_yview_stats + 2);
            //Draw stats name
            scr_draw_in_language(show_name, view_xview+138, view_yview_stats + 7, 1);
            
            //Draw strength
            var str_draw;
            str_draw = str;
            var c_color = c_white;
            if (str > 1)
            {
                c_color = c_yellow;       
            }
            draw_text_color(view_xview+178, view_yview_stats + 7, "S:",
            c_color, c_color, c_color, c_color, 1);
            draw_text_color(view_xview+192, view_yview_stats + 7, string(str),
            c_color, c_color, c_color, c_color, 1);
            
            //Draw defence
            c_color = c_white;
            if (def > 1)
            {
                c_color = c_yellow;       
            }
            draw_text_color(view_xview+206, view_yview_stats + 7, "D:",
            c_color, c_color, c_color, c_color, 1);
            draw_text_color(view_xview+220, view_yview_stats + 7, string(def),
            c_color, c_color, c_color, c_color, 1);
            
            //Draw magic
            c_color = c_white;
            if (mag > 1)
            {
                c_color = c_yellow; 
            }
            draw_text_color(view_xview+234, view_yview_stats + 7, "M:",
            c_color, c_color, c_color, c_color, 1);
            draw_text_color(view_xview+252, view_yview_stats + 7, string(mag),
            c_color, c_color, c_color, c_color, 1);
        }
    }
    else if (draw_state != false) 
    {
        depth = -100;
        scr_reset_draw_state();
        draw_state = false;
    }
}
else
{
    scr_reset_draw_state();
    draw_state = false;
}
