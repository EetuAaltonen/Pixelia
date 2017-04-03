///scr_draw_in_language(argument0);
var weight = 0;
var spriteIndex = string(sprite_get_name(argument0));
switch(spriteIndex) {
    //Materials
    case "spr_wood_billet": {weight = 0.1;break;}
    //Tools
    case "spr_tool_saw": {weight = 0.5;break;}
    case "spr_tool_knife": {weight = 0.3;break;}
};
return weight;
