///scr_forge_recipes(argument0);
var sprite = false;
var spriteIndex = argument0;
switch(spriteIndex) {
    //Materials
    case "spr_oak_log,0,0": {sprite = spr_coal;break;}
    case "spr_spruce_log,0,0": {sprite = spr_coal;break;}
    case "spr_coal,spr_iron_ore,0": {sprite = spr_iron_bar;break;}
    //Tools
    case "spr_tool_saw": {sprite = "Saw";break;}
    case "spr_tool_knife": {sprite = "Knife";break;}
    case "spr_iron_bar,spr_wooden_handle,0": {sprite = spr_tool_knife;break;}
};
return sprite;
