if (file_exists("SkillTree.sav"))
{
    var key = "Skill[" + string(id_y) + "," + string(id_x) + "]";
    ini_open("SkillTree.sav");
    unlocked = ini_read_string(global.save_file,key,"false");
    if (unlocked == "true")
    {
        unlocked = true;
    }
    else
    {
        unlocked = false;
    }
    ini_close();
}
