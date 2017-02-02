//Create skills
if (pageUpdate == true)
{
    pageUpdate = false;
    if (createOnce == true)
    {
        var x_pos = 10;
        var margin_right = 32;
        var y_pos = 90;
        var margin_bottom = 35;
        for (i = 1; i <= 4; i++)
        {
            for (a = 1; a <= 15; a++)
            {
                instance_create(view_xview+x_pos+(margin_right*(a-1)), view_yview+y_pos+(margin_bottom*i), obj_skill_tree_skill);
                (instance_nearest(view_xview+x_pos+(margin_right*(a-1)), view_yview+y_pos+(margin_bottom*i), obj_skill_tree_skill)).id_x = a;
                (instance_nearest(view_xview+x_pos+(margin_right*(a-1)), view_yview+y_pos+(margin_bottom*i), obj_skill_tree_skill)).id_y = i;
                (instance_nearest(view_xview+x_pos+(margin_right*(a-1)), view_yview+y_pos+(margin_bottom*i), obj_skill_tree_skill)).get_attributes = true;
            }
        }
        createOnce = false;
    }
}
