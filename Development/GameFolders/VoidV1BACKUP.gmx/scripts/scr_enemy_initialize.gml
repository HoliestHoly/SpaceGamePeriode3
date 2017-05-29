smallMass = random(10);

if(OBJECT_PLAYER.mass < 250){
    smallMass = random(10);
    if smallMass <= 7 {
        mass = random_range(10, 200);
    } else {
        mass = random_range(300, MASS_GOAL-500);
    }
}

massImageScaler = mass / 1000;
image_xscale = massImageScaler;
image_yscale = massImageScaler;

fix = physics_fixture_create();
physics_fixture_set_circle_shape(fix, mass/2);
physics_fixture_set_density(fix, 0.5);
physics_fixture_bind(fix, self);
physics_fixture_delete(fix);

phy_speed_x = random_range(-4, 4);
phy_speed_y = random_range(-4, 4);
