if(paused = false){
    scr_player_movement();
    scr_player_change_mass();
}

if(keyboard_check(ord("L")))
    mass = 10001;

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

if(mass < 40 && keyboard_check_pressed(ord("R"))) {
game_restart();
}

instance_deactivate_object(OBJECT_ENEMY);
instance_activate_region(view_xview[0]-100,view_yview[0]-100,view_wview[0]+200,view_hview[0]+200,true);

if collision_alpha > 0 {
    collision_alpha -= collision_alpha_decrease;
}

if blackhole {
    if blackhole_timer > 0 {
        blackhole_timer--;
    } else {
        game_finish = true;
        if(keyboard_check_pressed(ord("R"))) {
            game_restart();
            }
    }
}
