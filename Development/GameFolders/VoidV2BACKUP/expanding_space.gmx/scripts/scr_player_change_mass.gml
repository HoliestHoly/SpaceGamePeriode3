/*massImageScaler = mass / 1000;
image_xscale = massImageScaler;
image_yscale = massImageScaler;*/

if mass >= 400 && mass < 800 {
    if sprite_index != spr_player_2 {
        scr_text("This is a test (text) box", 0.5, x+100, y);
        //physics_pause_enable(true);
        //paused = true;
        sprite_index = spr_player_2;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 800 && mass < 1500 {
    if sprite_index != spr_player_3 {
        physics_pause_enable(true);
        paused = true;
        sprite_index = spr_player_3;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 1500 && mass < 3000 {
    if sprite_index != spr_player_4 {
        physics_pause_enable(true);
        paused = true;
        sprite_index = spr_player_4;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 3000 && mass < 6000 {
    if sprite_index != spr_player_5 {
        physics_pause_enable(true);
        paused = true;
        sprite_index = spr_player_5;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 6000 && mass < 10000{
    if sprite_index != spr_player_6 {
        physics_pause_enable(true);
        paused = true;
        sprite_index = spr_player_6;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}

if mass >= 10000 {
    if sprite_index != spr_player_blackhole {
        physics_pause_enable(true);
        paused = true;
        sprite_index = spr_player_blackhole;
        image_speed = 1;
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 20);
        physics_fixture_set_friction(fix, 10);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
    }
}
