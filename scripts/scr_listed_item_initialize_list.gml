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
