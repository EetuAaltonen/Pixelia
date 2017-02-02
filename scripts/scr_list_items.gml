if (page_refresh == true)
{
    if (instance_exists(obj_listed_item))
    {
        with (obj_listed_item) instance_destroy();
    }
    //Better code
    item_count = 0;
    type_id = 1;
    i = 0;
    global.total_item_weight = 0;
    
    ini_open("Inventory.sav");
    scr_inventory_item_info();
    for(item_id = 1; item_id < 100; item_id++)
    {
        //Change category
        if (string_pos("inventory", string(global.hud_state)))
        {
            var arrayLength = array_length_2d(Sprite, type_id);
            if (type_id == 1 and item_id == arrayLength) //This is first category of ordering
            {
                type_id = 2;
                item_id = 1;
            }
            else if(type_id == 2 and item_id == arrayLength)
            {
                type_id = 3;
                item_id = 1;
            }
            else if(type_id == 3 and item_id == arrayLength)
            {
                type_id = 4;
                item_id = 1;
            }
            else if(type_id == 4 and item_id == arrayLength)
            {
                type_id = 5;
                item_id = 1;
            }
            else if(type_id == 5 and item_id == arrayLength)
            {
                break;
            }
        }
        else if (global.hud_state == "forge")
        {
            if (type_id == 1 and item_id == arrayLength)
            {
                break;
            }
        }
        key = "Amount[" + string(type_id) + "," + string(item_id) + "]";
        
        //Item amount
        item_amount[type_id,item_id] = ini_read_real(global.save_file, key, -1);
        
        //Check if item amount > 0
        if (round(item_amount[type_id,item_id]) > 0)
        {
            //Item
            item_sprite[type_id,item_id] = Sprite[type_id,item_id];
            
            //Item name
            item_name[type_id,item_id] = string(Name[type_id,item_id]);
            
            //Item info
            item_info[type_id,item_id] = string(Info[type_id,item_id]);
            
            //Item amount is top of for loop
            
            //Item weight
            item_weight[type_id,item_id] = string(Weight[type_id,item_id]);
            global.total_item_weight += (Weight[type_id,item_id] * item_amount[type_id,item_id]);
            
            //Draw
            item_type_id_draw[i] = type_id;
            item_sprite_draw[i] = item_sprite[type_id,item_id];
            item_name_draw[i] = item_name[type_id,item_id];
            item_info_draw[i] = item_info[type_id,item_id];
            item_amount_draw[i] = item_amount[type_id,item_id];
            item_weight_draw[i] = item_weight[type_id,item_id];
            
            item_count += 1;
            i += 1;
        }
    }
    ini_close();
    //Calculate number of pages
    scr_page_calculate();
    create_once = true;
    page_refresh = false;
}
var y_pos; //y position
y_pos = 120;
if (item_count > 0)
{
    //Item create
    if (create_once == true)
    {
        create_once = false;
        for (i = start_count; i != end_count; i++;)
        {
            instance_create(view_xview+30, view_yview+y_pos, obj_listed_item);
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).sprite_index = asset_get_index(string(item_sprite_draw[i]));
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).type_id = item_type_id_draw[i];
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).get_attributes = true;
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).type_id = item_type_id_draw[i];
            (instance_nearest(view_xview+30, view_yview+y_pos, obj_listed_item)).item_info = item_info_draw[i];
            y_pos += 19;
        }
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
        if (string_pos("inventory", string(global.hud_state)))
        {
            //Item weight background
            draw_sprite(spr_inv_item_amount_bg, 0,view_xview+295, view_yview+y_pos);
            //Item weight
            draw_text(view_xview+274,view_yview+y_pos, string(item_weight_draw[i]) + "  Kg");
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
    if (string_pos("inventory", string(global.hud_state)))
    {
        //Item info background
        draw_sprite(spr_inv_item_info_bg, 0,view_xview+335, view_yview+85);
        //Item info text
        draw_text(view_xview+350, view_yview+100, item_info_text);
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
