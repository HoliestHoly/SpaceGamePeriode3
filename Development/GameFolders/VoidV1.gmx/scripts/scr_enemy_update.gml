scr_enemy_outside_room();
scr_enemy_change_mass();

if blackhole = true {
    if mass <= 0 {
        instance_destroy();
    }
    mass-=25;
}
