if (pageUpdate == true)
{
    createOnce = false;
    if (instance_exists(obj_listed_item))
    {
        with (obj_listed_item) instance_destroy();
    }
    //Better code
    item_count = 0;
    typeId = 1;
    i = 0;
    global.total_item_weight = 0;
    
    ini_open("Inventory.sav");
    scr_inventory_item_info();
    var arrayLength = array_length_2d(Sprite, typeId);
    for(itemId = 1; itemId > 0; itemId++)
    {
        //Change category
        scr_list_id_type();
        if (createOnce)
        {
            break;
        }
        key = "Amount[" + string(typeId) + "," + string(itemId) + "]";
        
        //Item amount
        item_amount[typeId,itemId] = ini_read_real(global.save_file, key, -1);
        
        //Check if item amount > 0
        if (round(item_amount[typeId,itemId]) > 0)
        {
            //Item
            item_sprite[typeId,itemId] = Sprite[typeId,itemId];
            
            //Item name
            item_name[typeId,itemId] = string(Name[typeId,itemId]);
            
            //Item info
            item_info[typeId,itemId] = string(Info[typeId,itemId]);
            
            //Item amount is top of for loop
            
            //Item weight
            item_weight[typeId,itemId] = string(Weight[typeId,itemId]);
            global.total_item_weight += (Weight[typeId,itemId] * item_amount[typeId,itemId]);
            
            if (global.hudState == "shop")
            {
                //Item price
                item_price[typeId,itemId] = string(Price[typeId,itemId]);
            }
            
            //Draw
            item_typeId_draw[i] = typeId;
            item_sprite_draw[i] = item_sprite[typeId,itemId];
            item_name_draw[i] = item_name[typeId,itemId];
            item_info_draw[i] = item_info[typeId,itemId];
            item_amount_draw[i] = item_amount[typeId,itemId];
            item_weight_draw[i] = item_weight[typeId,itemId];
            if (global.hudState == "shop")
            {
                item_price_draw[i] = item_price[typeId,itemId];
            }
            
            item_count += 1;
            i += 1;
        }
    }
    ini_close();
    //Calculate number of pages
    scr_page_calculate();
    pageUpdate = false;
}
var y_pos; //y position
y_pos = 120;
if (item_count > 0)
{
    //Item create
    if (createOnce == true)
    {
        createOnce = false;
        for (i = start_count; i != end_count; i++;)
        {
            instance_create(view_xview+30, view_yview+y_pos, obj_listed_item);
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).sprite_index = asset_get_index(string(item_sprite_draw[i]));
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).typeId = item_typeId_draw[i];
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).get_attributes = true;
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).typeId = item_typeId_draw[i];
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).item_info = item_info_draw[i];
            y_pos += 19;
        }
        y_pos = 120;
    }
    //Background
    draw_sprite(spr_inventory_background, 0, view_xview, view_yview);
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
        if (string_pos("inventory", string(global.hudState)) || global.hudState == "shop")
        {
            //Item weight background
            draw_sprite(spr_inv_item_amount_bg, 0,view_xview+295, view_yview+y_pos);
            //Item weight
            draw_text(view_xview+274,view_yview+y_pos, string(item_weight_draw[i]) + "  Kg");
        }
        if (global.hudState == "shop")
        {
            //Item price background
            draw_sprite(spr_inv_item_amount_bg, 0,view_xview+362, view_yview+y_pos);
            //Item price
            draw_text(view_xview+341,view_yview+y_pos, string(item_price_draw[i]) + "  G");
        }
        
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
    if (string_pos("inventory", string(global.hudState)))
    {
        //Item info background
        draw_sprite(spr_inv_item_info_bg, 0,view_xview+334, view_yview+85);
        //Item info text
        draw_text(view_xview+349, view_yview+100, item_info_text);
        //Total and weight background
        draw_sprite(spr_inv_item_description_bg, 0,view_xview+255, view_yview+95);
        //Total and weight
        draw_text(view_xview+190,view_yview+95, "Weight:  " + string(global.total_item_weight) + "  /  " + string(global.max_item_weight) + "  Kg");
    }
}
else
{
    //If empty
    draw_text(view_xview+30, view_yview+120, "Inventory is empty...");
}
