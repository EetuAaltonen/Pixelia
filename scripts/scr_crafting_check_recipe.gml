scr_forge_recipes();
var arrayLength = array_length_1d(Recipe);
if (Recipe[key])
{
    sprite_index = Recipe[key];
    visible = true;
    itemId = Id[sprite_index];
    typeId = Type[sprite_index];
    itemName = Name[sprite_index];
    obj_crafting_slot_4.itemId = itemId;
}
else
{
    itemId = false;
    typeid = false;
    visible = false;
    obj_crafting_slot_4.itemId = false;
}
checkRecipe = false;
