if (def <= 0)
{
    //Enemy clear draw stats
    scr_reset_draw_state();
    
    //XP
    global.xp += 20;
    
    //Kill counter
    global.kill_counter += 1;
    
    instance_destroy();
}
