//Add info to scr_inventory_item_info too...
//Add info text to scr_inventory_item_info_text too...

if (type_id == 1)
{
    switch (sprite_index_)
    {
        case spr_iron_ore: item_id = 1;break;
        case spr_oak_log: item_id = 2;break;
        case spr_coal: item_id = 3;break;
        case spr_ironbar: item_id = 4;break;
        case spr_steelbar: item_id = 5;break;
        case spr_feather: item_id = 6;break;
        case spr_leather: item_id = 7;break;
    }
}
else if (type_id == 2)
{
    switch (sprite_index_)
    {
        case spr_water_flask: item_id = 1;break;
        case spr_barbarea_vulgaris: item_id = 2;break;
        case spr_camomile: item_id = 3;break;
        case spr_celandine: item_id = 4;break;
        case spr_lambsquarter: item_id = 5;break;
        case spr_nettle: item_id = 6;break;
        case spr_plantain: item_id = 7;break;
        case spr_sheeps_sorrel: item_id = 8;break;
    }
}
else if (type_id == 3)
{

}
else if (type_id == 4)
{

}
else if (type_id == 5)
{
    switch (sprite_index_)
    {
        case spr_arrow_pouch: item_id = 1;break;
    }
}
