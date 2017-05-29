moveSpeed = 0.3;
moveSpeedDecFactor = 0.98
yMoveSpeedCurrent = 0;
xMoveSpeedCurrent = 0;
mass = 100;
massImageScaler = mass / 1000;
massRange = mass / 20;
massRangeInstaKill = mass / 2;
image_xscale = massImageScaler;
image_yscale = massImageScaler;
playerOffsetX = 500;
playerOffsetY = 500;

fix = physics_fixture_create();
physics_fixture_set_circle_shape(fix, mass/2);
physics_fixture_set_density(fix, 20);
physics_fixture_set_friction(fix, 10);
physics_fixture_bind(fix, self);
physics_fixture_delete(fix);
