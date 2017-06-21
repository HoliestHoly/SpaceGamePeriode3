/*massImageScaler = mass / 1000;
image_xscale = massImageScaler;
image_yscale = massImageScaler;*/

if mass >= 100 && mass < 800 {
    if sprite_index != spr_enemy_1 {
        sprite_index = spr_enemy_1;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 800 && mass < 1500 {
    if sprite_index != spr_enemy_2 {
        sprite_index = spr_enemy_2;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 1500 && mass < 3000 {
    if sprite_index != spr_enemy_3 {
        sprite_index = spr_enemy_3;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 3000 && mass <= 8000 {
    if sprite_index != spr_enemy_4 {
        sprite_index = spr_enemy_4;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}
