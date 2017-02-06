if (global.hudState == "forge")
{
    scr_forge_recipes();
}
else if (global.hudState == "alchemy")
{
    scr_alchemy_recipes();
}
var slot4 = obj_crafting_slot_4;
if (real(key) < array_length_1d(Recipe))
{
    if (Recipe[key])
    {
        sprite_index = Recipe[key];
        visible = true;
        itemId = Id[sprite_index];
        typeId = Type[sprite_index];
        itemName = Name[sprite_index];
        slot4.itemId = itemId;
    }
    else
    {
        itemId = false;
        typeid = false;
        visible = false;
        slot4.itemId = false;
    }
}
checkRecipe = false;
