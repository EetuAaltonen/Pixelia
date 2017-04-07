///scr_workbench_recipes(argument0);
var sprite = false;
var spriteIndex = argument0;
switch(spriteIndex) {
    //Materials
    case "spr_tool_knife,spr_oak_log,0": {sprite = spr_wood_billet;break;}
    case "spr_tool_knife,spr_spruce_log,0": {sprite = spr_wood_billet;break;}
    case "spr_wood_billet,spr_tool_knife,0": {sprite = spr_wooden_handle;break;}
    //Tools
    case "spr_iron_bar,spr_wooden_handle,0": {sprite = spr_tool_knife;break;}
};
return sprite;

