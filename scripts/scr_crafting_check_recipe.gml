///scr_draw_in_language(argument0, argument1, argument2);
id1 = argument0;
id2 = argument1;
id3 = argument2;
var slot4 = obj_crafting_slot_4;
var recipeExists = false;
var key = "";

switch(global.hudState) {
    case "forge": {scr_forge_recipes();} break;
    case "alchemy": {scr_alchemy_recipes();} break;
    case "workbench": {scr_alchemy_recipes();} break;
}

for (i = 0; i >= 0; i++) {
    switch(i) {
        case 0: {key = real(string(id1) + string(id2) + string(id3))} break;
        case 1: {key = real(string(id1) + string(id3) + string(id2))} break;
        case 2: {key = real(string(id2) + string(id1) + string(id3))} break;
        case 3: {key = real(string(id2) + string(id3) + string(id1))} break;
        case 4: {key = real(string(id3) + string(id1) + string(id2))} break;
        case 5: {key = real(string(id3) + string(id2) + string(id1))} break;
    }
    if (key < array_length_1d(Recipe))
    {
        if (Recipe[key])
        {
            sprite_index = Recipe[key];
            visible = true;
            itemId = Id[sprite_index];
            typeId = Type[sprite_index];
            itemName = Name[sprite_index];
            slot4.itemId = itemId;
            recipeExists = true;
            break;
        };
    }
    if (i == 5) {
        break;
    }
}
if (!recipeExists) {
    itemId = false;
    typeid = false;
    visible = false;
    slot4.itemId = false;
}
checkRecipe = false;
