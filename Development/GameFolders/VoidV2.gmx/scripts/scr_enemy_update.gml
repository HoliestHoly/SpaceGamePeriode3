//scr_enemy_outside_room();
scr_enemy_change_mass();

if OBJECT_PLAYER.blackhole {
    scr_enemy_goto_player();
    scr_enemy_destroy();
}
