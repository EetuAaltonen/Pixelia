///scr_inventory_item_weight(argument0);
var type = '';
var spriteIndex = string(argument0);
switch(spriteIndex) {
    //Materials
    case "spr_oak_log": {type = "[inventory1,shop,forge,workbench]";break;}
    case "spr_coal": {type = "[inventory1,shop,forge]";break;}
    case "spr_iron_ore": {type = "[inventory1,shop,forge]";break;}
    case "spr_iron_bar": {type = "[inventory1,shop,forge,workbench]";break;}
    case "spr_wood_billet": {type = "[inventory1,shop,workbench]";break;}
    case "spr_wooden_handle": {type = "[inventory1,shop,workbench]";break;}
    //Tools
    case "spr_tool_saw": {type = "[inventory1,shop,tool,workbench]";break;}
    case "spr_tool_knife": {type = "[inventory1,shop,tool,workbench]";break;}
    //Equipments
    case "spr_broken_helmet": {type = "[inventory1,inventoryEquipments,shop]";break;}
};
return type;
