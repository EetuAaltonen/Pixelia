///scr_draw_in_language(argument0);
var name = '';
var spriteIndex = string(sprite_get_name(argument0));
switch(spriteIndex) {
    //Materials
    case "spr_wood_billet": {name = "Wood billet";break;}
    //Tools
    case "spr_tool_saw": {name = "Saw";break;}
    case "spr_tool_knife": {name = "Knife";break;}
};
return name;
