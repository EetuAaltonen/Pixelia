if (file_exists("SkillTree.sav"))
{
    scr_st_skill_info();
    var arrayHeight = array_height_2d(Sprite);
    for(id_x = 1; id_x < arrayHeight; id_x++)
    {
        for (id_y = 1; id_y < array_length_2d(Sprite, id_x); id_y++)
        {
            var key = "Skill[" + string(id_x) + "," + string(id_y) + "]";
            ini_open("SkillTree.sav");
            var unlocked = ini_read_string(global.save_file,key,"false");
            if (unlocked == "true")
            {
                scr_add_unclocked_skill_bonus();
            }
            ini_close();
        }
    }
}
