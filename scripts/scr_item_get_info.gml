if (type_id == 1)
{

}
else if (type_id == 2)
{
    switch (sprite_index)
    {
        case spr_water_flask: 
            item_id = 1; //Id
            added_amount = 1; //Added amount
        break;
        case spr_barbarea_vulgaris: 
            item_id = 2; //Id
            added_amount = 1; //Added amount
        break;
        case spr_camomile: 
            item_id = 3; //Id
            added_amount = 1; //Added amount
        break;
        case spr_celandine: 
            item_id = 4; //Id
            added_amount = 1; //Added amount
        break;
        case spr_lambsquarter: 
            item_id = 5; //Id
            added_amount = 1; //Added amount
        break;
        case spr_nettle: 
            item_id = 6; //Id
            added_amount = 1; //Added amount
        break;
        case spr_plantain: 
            item_id = 7; //Id
            added_amount = 1; //Added amount
        break;
        case spr_sheeps_sorrel: 
            item_id = 8; //Id
            added_amount = 1; //Added amount
        break;
    }
}
else if (type_id == 3)
{

}

//Info location
scr_inventory_item_info();

//Name
name = Name[type_id,item_id];

//Description
//description = Descr[type_id,item_id];

//Weight
weight = Weight[type_id,item_id];
