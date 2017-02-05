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
        for (i = 1; i <= 15; i++)
        {
            for (a = 1; a <= 4; a++)
            {
                instance_create(view_xview+x_pos+(margin_right*(i-1)), view_yview+y_pos+(margin_bottom*a), obj_skill_tree_skill);
                (instance_nearest(view_xview+x_pos+(margin_right*(i-1)), view_yview+y_pos+(margin_bottom*a), obj_skill_tree_skill)).id_x = i;
                (instance_nearest(view_xview+x_pos+(margin_right*(i-1)), view_yview+y_pos+(margin_bottom*a), obj_skill_tree_skill)).id_y = a;
                (instance_nearest(view_xview+x_pos+(margin_right*(i-1)), view_yview+y_pos+(margin_bottom*a), obj_skill_tree_skill)).get_attributes = true;
            }
        }
        createOnce = false;
    }
}
