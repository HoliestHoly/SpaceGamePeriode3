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

/*if !instance_exists(OBJECT_ENEMY) {
    show_message("THE END");
    with OBJECT_PARTICLES {
        instance_destroy();
    }
    room_goto(MENU);
}*/

if keyboard_check_pressed(ord("R")) {
    with OBJECT_PARTICLES { instance_destroy(); }
    room_restart();
}

instance_deactivate_object(OBJECT_ENEMY);
instance_activate_region(view_xview[0]-100,view_yview[0]-100,view_wview[0]+200,view_hview[0]+200,true);

if collision_alpha > 0 {
    collision_alpha -= collision_alpha_decrease;
}
