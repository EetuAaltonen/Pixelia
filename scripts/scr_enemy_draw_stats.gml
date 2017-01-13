//Font
draw_set_font(fnt_inventory_text);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var view_ypos = 14;

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
        view_yview_stats = (view_ypos*draw_state) + 5;
    }
    else
    {
        //Draw stats background
        draw_sprite_ext(spr_enemies_stats, image_index, view_xview+130,
                    view_yview_stats, image_xscale, image_yscale, 
                    image_angle, c_white, 0.7);
                    
        //Draw stats picture
        draw_sprite_ext(spr_pic_bat, image_index, view_xview+145,
                    view_yview_stats, image_xscale, image_yscale, 
                    image_angle, c_white, image_alpha);
        
        /*//Draw strength
        var str_draw;
        str_draw = str;
        if (str > 1)
        {       
            draw_text_color(view_xview+180, view_yview_stats, string(str),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+165, view_yview_stats, "S:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(view_xview+180, view_yview_stats, string(str),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+165, view_yview_stats, "S: ",
            c_white, c_white, c_white, c_white, 1);
        }*/
    }
    
    /*if (global.enemy_stats1 == 0 and draw_state == false)
    {
        //State
        global.enemy_stats1 = 1;
        draw_state = global.enemy_stats1;
        depth = -4001;
    }
    else if (global.enemy_stats2 == 0 and draw_state == false)
    {
        //State
        global.enemy_stats2 = 2;
        draw_state = global.enemy_stats2;
        depth = -4001;
    }
    else if (global.enemy_stats3 == 0 and draw_state == false)
    {
        //State
        global.enemy_stats3 = 3;
        draw_state = global.enemy_stats3;
        depth = -4001;
    }
    else if (global.enemy_stats1 == draw_state)
    {
        //Draw stats background
        draw_sprite_ext(spr_enemies_stats, image_index, view_xview+130,
                    view_yview+3, image_xscale, image_yscale, 
                    image_angle, c_white, 0.7);
                    
        //Draw stats picture
        draw_sprite_ext(spr_pic_bat, image_index, view_xview+145,
                    view_yview+10, image_xscale, image_yscale, 
                    image_angle, c_white, image_alpha);
        
        //Draw strength
        var str_draw;
        str_draw = str;
        if (str > 1)
        {       
            draw_text_color(view_xview+180, view_yview_stats, string(str),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+165, view_yview_stats, "S:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(view_xview+180, view_yview_stats, string(str),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+165, view_yview_stats, "S: ",
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw defence
        var def_draw;
        def_draw = def;
        if (def > 1)
        {
            draw_text_color(view_xview+210, view_yview_stats, string(def),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+195, view_yview_stats, "D:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(view_xview+210, view_yview_stats, string(def),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+195, view_yview_stats, "D:",
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw magic
        var mag_draw;
        mag_draw = mag;    
        if (mag > 1)
        {
            draw_text_color(view_xview+240, view_yview_stats, string(mag),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+225, view_yview_stats, "M:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(view_xview+240, view_yview_stats, string(mag),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+225, view_yview_stats, "M:",
            c_white, c_white, c_white, c_white, 1);
        }
    }
    else if (global.enemy_stats2 == draw_state)
    {
        //Draw stats background
        draw_sprite_ext(spr_enemies_stats, image_index, view_xview+130,
                    view_yview+17, image_xscale, image_yscale, 
                    image_angle, c_white, 0.7);
                    
        //Draw stats picture
        draw_sprite_ext(spr_pic_bat, image_index, view_xview+145,
                    view_yview+24, image_xscale, image_yscale, 
                    image_angle, c_white, image_alpha);
        
        //Draw strength
        var str_draw;
        str_draw = str;
        if (str > 1)
        {       
            draw_text_color(view_xview+180, (view_yview_stats*2), string(str),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+165, (view_yview_stats*2), "S:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(view_xview+180, (view_yview_stats*2), string(str),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+165, (view_yview_stats*2), "S:",
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw defence
        var def_draw;
        def_draw = def;
        if (def > 1)
        {
            draw_text_color(view_xview+210, (view_yview_stats*2), string(def),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+195, (view_yview_stats*2), "D:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(view_xview+210, (view_yview_stats*2), string(def),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+195, (view_yview_stats*2), "D:",
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw magic
        var mag_draw;
        mag_draw = mag;    
        if (mag > 1)
        {
            draw_text_color(view_xview+240, (view_yview_stats*2), string(mag),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+225, (view_yview_stats*2), "M:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
           draw_text_color(view_xview+240, (view_yview_stats*2), string(mag),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+225, (view_yview_stats*2), "M:",
            c_white, c_white, c_white, c_white, 1);
        }
    }
    else if (global.enemy_stats3 == draw_state)
    {
        //Draw stats background
        draw_sprite_ext(spr_enemies_stats, image_index, view_xview+130,
                    view_yview+31, image_xscale, image_yscale, 
                    image_angle, c_white, 0.7);
                    
        //Draw stats picture
        draw_sprite_ext(spr_pic_bat, image_index, view_xview+145,
                    view_yview+38, image_xscale, image_yscale, 
                    image_angle, c_white, image_alpha);
        
        //Draw strength
        var str_draw;
        str_draw = str;
        if (str > 1)
        {       
            draw_text_color(view_xview+180, (view_yview_stats*3), string(str),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+165, (view_yview_stats*3), "S:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(view_xview+180, (view_yview_stats*3), string(str),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+165, (view_yview_stats*3), "S:",
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw defence
        var def_draw;
        def_draw = def;
        if (def > 1)
        {
            draw_text_color(view_xview+210, (view_yview_stats*3), string(def),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+195, (view_yview_stats*3), "D:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(view_xview+210, (view_yview_stats*3), string(def),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+195, (view_yview_stats*3), "D:",
            c_white, c_white, c_white, c_white, 1);
        }
        
        //Draw magic
        var mag_draw;
        mag_draw = mag;    
        if (mag > 1)
        {
            draw_text_color(view_xview+240, (view_yview_stats*3), string(mag),
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
            draw_text_color(view_xview+225, (view_yview_stats*3), "M:",
            c_yellow, c_yellow, c_yellow, c_yellow, 1);
        }
        else
        {
            draw_text_color(view_xview+240, (view_yview_stats*3), string(mag),
            c_white, c_white, c_white, c_white, 1);
            draw_text_color(view_xview+225, (view_yview_stats*3), "M:",
            c_white, c_white, c_white, c_white, 1);
        }
    }
    else
    {
        draw_state = false;
    }*/
}
else if (draw_state != false) 
{
    depth = -100;
    if (draw_state == global.enemy_stats1)
    {
        global.enemy_stats1 = 0;
        draw_state = false;
    }
    else if (draw_state == global.enemy_stats2)
    {
        global.enemy_stats2 = 0;
        draw_state = false;
    }
    else if (draw_state == global.enemy_stats3)
    {
        global.enemy_stats3 = 0;
        draw_state = false;
    }
}
