if (loop_stop == false)
{
    
    //Better code
    item_count = 0;
    typeId = 2;
    i = 0;
    
    ini_open("Inventory.sav");
    scr_inventory_item_info();
    for(itemId = 1; itemId < 100; itemId++)
    {
        //Change category
        if (typeId == 1 and itemId == array_length_2d(Sprite, typeId)) //This is first category of ordering
        {
            break;
        }
        key = "Amount[" + string(typeId) + "," + string(itemId) + "]";
        
        //Item amount
        item_amount[typeId,itemId] = ini_read_real("Save1", key, -1);
        
        //Check if item amount > 0
        if (round(item_amount[typeId,itemId]) > 0)
        {
            //Item
            item_sprite[typeId,itemId] = Sprite[typeId,itemId];
            
            //Item name
            item_name[typeId,itemId] = string(Name[typeId,itemId]);
            
            //Item amount is top of for loop
            
            //Draw
            item_typeId_draw[i] = typeId;
            item_sprite_draw[i] = item_sprite[typeId,itemId];
            item_name_draw[i] = item_name[typeId,itemId];
            item_amount_draw[i] = item_amount[typeId,itemId];
            
            item_count += 1;
            i += 1;
        }
    }
    ini_close();
    createOnce = true;
    loop_stop = true;
}
var y_pos; //y position
y_pos = 120;
if (item_count > 0)
{
    scr_page_calculate();
    //Item create
    if (createOnce == true)
    {
        for (i = start_count; i != end_count; i++;)
        {
            //Materials
            instance_create(view_xview+30, view_yview+y_pos, obj_listed_item);
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).sprite_index = asset_get_index(string(item_sprite_draw[i]));
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).typeId = item_typeId_draw[i];
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).fill_info = true;
            y_pos += 19;
        }
        createOnce = false;
        y_pos = 120;
    } 
    for (i = start_count; i != end_count; i++;)
    {               
        //Item background
        draw_sprite(spr_inv_item_bg, 0,view_xview+30, view_yview+y_pos);        
        //Item description background
        draw_sprite(spr_inv_item_description_bg, 0,view_xview+120, view_yview+y_pos);
        //Item description
        draw_text(view_xview+56,view_yview+y_pos, string(item_name_draw[i]));
        //Item amount background
        draw_sprite(spr_inv_item_amount_bg, 0,view_xview+228, view_yview+y_pos);
        //Item amount
        draw_text(view_xview+207,view_yview+y_pos, string(item_amount_draw[i]) + "  x");
        
        y_pos += 19;
    }
    //Page number background
    draw_sprite(spr_inv_item_description_bg, 0,view_xview+87, view_yview+95);
    //Page number max
    page_max = (round(item_count/8));
    if ((page_max - (item_count/8)) < 0 )
    {   
        page_max += 1;
    }
    //Draw page number and max
    draw_text(view_xview+22,view_yview+95, string("PAGE:    " + string(current_page + 1) + "  /  " + string(page_max)));
}
else
{
    //If empty
    draw_text(view_xview+30, view_yview+120, "You don't have ingredients...");
}
