size_of_list = 8; //Limit of list
start_count = 0; //First item
if (item_count > 8)
{                       //This have to be set!
    if ((item_count - ((current_page+1)*8)) > 0 and current_page == 0)
    {
        start_count = 0;
        end_count = 8;
        
    }
    else if ((item_count - ((current_page+1)*8)) > 0 and
            current_page > 0)
    {
        start_count = (current_page*8);
        end_count = ((current_page*8)*2);
    }
    else
    {
        start_count = (current_page*8);
        end_count = item_count;
    }
}
else
{
    end_count = item_count;
    start_count = 0;
}
