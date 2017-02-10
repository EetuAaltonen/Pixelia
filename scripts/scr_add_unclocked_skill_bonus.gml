var key = string(id_x) + "," + string(id_y);
switch(key)
{
    //Health
    case "5,1":
        if (global.healthPlus > 0)
        {
            //Reset global bonus
            global.healthPlus = 0;
        }
        global.healthPlus += 5;
    break;
    case "5,2":
        global.healthPlus += 5;
    break;
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
    case "5,3":
        if (global.staminaPlus > 0)
        {
            //Reset global bonus
            global.staminaPlus = 0;
        }
        global.staminaPlus += 5;
    break;
    case "5,4":
        global.staminaPlus += 5;
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
    case "6,1":
        if (global.manaPlus > 0)
        {
            //Reset global bonus
            global.manaPlus = 0;
        }
        global.manaPlus += 5;
    break;
    case "6,2":
        global.manaPlus += 5;
    break;
    //Armor
    case "6,3":
        if (global.armorPlus > 0)
        {
            //Reset global bonus
            global.armorPlus = 0;
        }
        global.armorPlus += 5;
    break;
    case "6,4":
        global.armorPlus += 5;
    break;
    
}
