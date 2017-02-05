//Add info to scr_inventory_item_info too...
//Add info text to scr_inventory_item_info_text too...

if (typeId == 1)
{
    switch (sprite_index_)
    {
        case spr_iron_ore: itemId = 1;break;
        case spr_oak_log: itemId = 2;break;
        case spr_coal: itemId = 3;break;
        case spr_ironbar: itemId = 4;break;
        case spr_steelbar: itemId = 5;break;
        case spr_feather: itemId = 6;break;
        case spr_leather: itemId = 7;break;
    }
}
else if (typeId == 2)
{
    switch (sprite_index_)
    {
        case spr_water_flask: itemId = 1;break;
        case spr_barbarea_vulgaris: itemId = 2;break;
        case spr_camomile: itemId = 3;break;
        case spr_celandine: itemId = 4;break;
        case spr_lambsquarter: itemId = 5;break;
        case spr_nettle: itemId = 6;break;
        case spr_plantain: itemId = 7;break;
        case spr_sheeps_sorrel: itemId = 8;break;
    }
}
else if (typeId == 3)
{
    switch (sprite_index_)
    {
        case spr_healing_potion: itemId = 1;break;
        case spr_icon_potion_2: itemId = 2;break;
    }
}
else if (typeId == 4)
{

}
else if (typeId == 5)
{
    switch (sprite_index_)
    {
        case spr_arrow_pouch: itemId = 1;break;
    }
}
