smallMass = random(10);
alpha = 0;
enemyGoToSpeed = 10;

if(OBJECT_PLAYER.mass < 4000){
    smallMass = random(100);
    if smallMass <= 70 {
        mass = random_range(10, OBJECT_PLAYER.mass);
    } else {
        mass = random_range(0, MASS_GOAL);
    }
} else {
    mass = random_range(10, MASS_GOAL);
}

if(mass < 100){
    sprChooser = round(random_range(1,4));

    if(sprChooser = 1){
        sprite_index = spr_enemy_small_1;
    }
    else if(sprChooser = 2){
        sprite_index = spr_enemy_small_2;
    }
    else if(sprChooser = 3){
        sprite_index = spr_enemy_small_3;
    }
    else if(sprChooser = 4){
        sprite_index = spr_enemy_small_4;
    }
}

massImageScaler = mass / 1000;
/*image_xscale = massImageScaler;
image_yscale = massImageScaler;*/
blackhole = false;
xs = 0;
ys = 0;

if(OBJECT_PLAYER.blackhole){
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/20);
        physics_fixture_set_density(fix, 0.5);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
        phy_active = false;
} else {
        fix = physics_fixture_create();
        physics_fixture_set_circle_shape(fix, sprite_width/3);
        physics_fixture_set_density(fix, 0.5);
        physics_fixture_bind(fix, self);
        physics_fixture_delete(fix);
}

phy_speed_x = random_range(-4, 4);
phy_speed_y = random_range(-4, 4);
