///scr_crafting_check_recipe(argument0, argument1, argument2);
id1 = argument0;
id2 = argument1;
id3 = argument2;
var slot4 = obj_crafting_slot_4;
var recipeExists = false;
var key = "";
var info;
var spriteIndex;
for (i = 0; i >= 0; i++) {
    switch(i) {
        case 0: {key = string(id1) + "," + string(id2) + "," + string(id3)} break;
        case 1: {key = string(id1) + "," + string(id3) + "," + string(id2)} break;
        case 2: {key = string(id2) + "," + string(id1) + "," + string(id3)} break;
        case 3: {key = string(id2) + "," + string(id3) + "," + string(id1)} break;
        case 4: {key = string(id3) + "," + string(id1) + "," + string(id2)} break;
        case 5: {key = string(id3) + "," + string(id2) + "," + string(id1)} break;
    }
    switch(global.hudState) {
        case "forge": {spriteIndex = scr_forge_recipes(key);} break;
        case "alchemy": {spriteIndex = scr_alchemy_recipes(key);} break;
        case "workbench": {spriteIndex = scr_workbench_recipes(key);} break;
    }
    if (spriteIndex) {
        sprite_index = spriteIndex;
        sprite_index_ = sprite_get_name(sprite_index);
        visible = true;
        slot4.spriteIndex = sprite_index_;
        recipeExists = true;
        break;
    };
    if (i == 5) {
        break;
    }
}
if (!recipeExists) {
    spriteIndex = false;
    visible = false;
    slot4.spriteIndex = false;
}
checkRecipe = false;
