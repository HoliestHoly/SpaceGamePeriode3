/*massImageScaler = mass / 1000;
image_xscale = massImageScaler;
image_yscale = massImageScaler;*/

if mass >= 400 && mass < 600 {
    if sprite_index != spr_player_2 {
        sprite_index = spr_player_2;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, mass/3.5);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 800 && mass < 1500 {
    if sprite_index != spr_player_3 {
        sprite_index = spr_player_3;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, mass/4);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 1500 && mass < 3000 {
    if sprite_index != spr_player_4 {
        sprite_index = spr_player_4;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, mass/5);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 3000 && mass < 6000 {
    if sprite_index != spr_player_5 {
        sprite_index = spr_player_5;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, mass/8);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 6000 {
    if sprite_index != spr_player_6 {
        sprite_index = spr_player_6;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, mass/12);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}
