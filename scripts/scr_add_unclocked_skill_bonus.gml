var key = string(id_x) + "," + string(id_y);
switch(key)
{
    //Stamina
    case "2,3":
        if (global.staminaRegenPlus > 0)
        {
            //Reset global bonus
            global.staminaRegenPlus = 0;
        }
        global.staminaRegenPlus += (global.staminaRegenAmount * (real(Bonus[id_x,id_y]) / 100));
        show_message(Name[id_x,id_y] + string(global.staminaRegenPlus));
    break;
    case "2,4":
        global.staminaRegenPlus += (global.staminaRegenAmount * (real(Bonus[id_x,id_y]) / 100));
        show_message(Name[id_x,id_y] + string(global.staminaRegenPlus));
    break;
    //Mana
    case "3,3":
        if (global.manaRegenPlus > 0)
        {
            //Reset global bonus
            global.manaRegenPlus = 0;
        }
        global.manaRegenPlus += (global.manaRegenAmount * (real(Bonus[id_x,id_y]) / 100));
        show_message(Name[id_x,id_y] + string(global.manaRegenPlus));
    break;
    case "3,4":
        global.manaRegenPlus += (global.manaRegenAmount * (real(Bonus[id_x,id_y]) / 100));
        show_message(Name[id_x,id_y] + string(global.manaRegenPlus));
    break;
}
