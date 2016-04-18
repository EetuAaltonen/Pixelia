//Level
var level;
level = global.level;
draw_text(view_xview+180,view_yview+278, string(level));
//Level - logo
draw_sprite_ext(spr_level_draw, image_index, view_xview+165,
                view_yview+285, image_xscale, image_yscale, 
                image_angle, c_white, image_alpha);
