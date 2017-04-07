///scr_inventory_item_name(argument0);
var name = '';
var spriteName = string(argument0);
switch(spriteName) {
    //Materials
    case "spr_oak_log": {name = "Oak log";break;}
    case "spr_coal": {name = "Coal";break;}
    case "spr_iron_ore": {name = "Iron ore";break;}
    case "spr_iron_bar": {name = "Iron bar";break;}
    case "spr_wood_billet": {name = "Wood billet";break;}
    case "spr_wooden_handle": {name = "Wooden handle";break;}
    //Tools
    case "spr_tool_saw": {name = "Saw";break;}
    case "spr_tool_knife": {name = "Knife";break;}
};
return name;
