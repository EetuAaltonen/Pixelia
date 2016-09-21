if (type_id == 1)
{

}
else if (type_id == 2)
{
    switch (sprite_index)
    {
        case spr_barbarea_vulgaris: 
            item_id = 1; //Id
            name = ""; //Name
            description = ""; //Description
            weight = 0; //Weight
            added_amount = 0; //Added amount
    }
    
    switch (item_id)
    {
        case 1:
            type = "ingr";
            category = "?";
            item_id = 2;
        break;
    }
}

//Info location
scr_inventory_item_info();

//Description
description = Descr[type_id,item_id];

//Weight
weight = Weight[type_id,item_id];
