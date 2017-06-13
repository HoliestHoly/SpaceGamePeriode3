if(paused = false){
    scr_player_movement();
    scr_player_change_mass();
}

/*if(keyboard_check(vk_enter))
{
    if mass < 10000 {
 
        physics_pause_enable(false);
        paused = false;
        
    } else if mass >= 10000 {
    
        paused = false;
        with OBJECT_ENEMY {
            blackhole = true;
        }
        
    }
}*/

if !instance_exists(OBJECT_ENEMY) {
    show_message("THE END");
    with OBJECT_PARTICLES {
        instance_destroy();
    }
    room_goto(MENU);
}
