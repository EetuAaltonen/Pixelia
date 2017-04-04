///scr_draw_in_language(argument0);
var sprite = false;
var spriteIndex = argument0;
switch(spriteIndex) {
    //Materials
    case "spr_wood_billet,0,0": {sprite = spr_coal;break;}
    //Tools
    case "spr_tool_saw": {sprite = "Saw";break;}
    case "spr_tool_knife": {sprite = "Knife";break;}
};
return sprite;
