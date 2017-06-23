//scr_enemy_outside_room();
scr_enemy_change_mass();

if OBJECT_PLAYER.blackhole = true {
    scr_enemy_goto_player();
    show_message("fuck")
}
