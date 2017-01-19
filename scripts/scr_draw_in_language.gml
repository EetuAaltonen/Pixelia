///scr_draw_in_language(argument0, argument1, argument2, argument3);

text = argument0;
text_xpos = argument1;
text_ypos = argument2;
text_scale = argument3;

var sprite_id = 0;
var i = 0;

for (i = 0; i < string_length(text); i++)
{
    switch(string_char_at(text, i+1))
    {
        case "a": sprite_id = 0;break;case "o": sprite_id = 14;break;
        case "b": sprite_id = 1;break;case "p": sprite_id = 15;break;
        case "c": sprite_id = 2;break;case "q": sprite_id = 16;break;
        case "d": sprite_id = 3;break;case "r": sprite_id = 17;break;
        case "e": sprite_id = 4;break;case "s": sprite_id = 18;break;
        case "f": sprite_id = 5;break;case "t": sprite_id = 19;break;
        case "g": sprite_id = 6;break;case "u": sprite_id = 20;break;
        case "h": sprite_id = 7;break;case "v": sprite_id = 21;break;
        case "i": sprite_id = 8;break;case "w": sprite_id = 22;break;
        case "j": sprite_id = 9;break;case "x": sprite_id = 23;break;
        case "k": sprite_id = 10;break;case "y": sprite_id = 24;break;
        case "l": sprite_id = 11;break;case "z": sprite_id = 25;break;
        case "m": sprite_id = 12;break;case "_": sprite_id = "space";break;
        case "n": sprite_id = 13;break;
        
        
    }
    if (sprite_id != "space")
    {
        draw_sprite_ext(spr_alphabet, sprite_id, text_xpos + (10 * i), text_ypos, text_scale, text_scale, 0, c_black, 1);
    }
}
