var key = string(id_x) + "," + string(id_y);
switch(key)
{
    case "2,3":
        global.stamreg_plus += (global.staminaRegenAmount * (real(Bonus[id_x,id_y]) / 100));
        show_message("Global stamina regeration bonus + " + string(global.stamreg_plus));
    break;
    case "2,4":
        global.stamreg_plus += (global.staminaRegenAmount * (real(Bonus[id_x,id_y]) / 100));
        show_message("Global stamina regeration bonus + " + string(global.stamreg_plus));
    break;
}
