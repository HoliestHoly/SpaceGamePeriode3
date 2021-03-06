moveSpeed = 0.4;
MoveSpeedMax = 8;
moveSpeedDecFactor = 0.98
yMoveSpeedCurrent = 0;
xMoveSpeedCurrent = 0;
mass = 100;
massImageScaler = mass / 1000;
massRange = mass / 20;
massRangeInstaKill = mass;
//image_xscale = massImageScaler;
//image_yscale = massImageScaler;
playerOffsetX = 500;
playerOffsetY = 500;
image_speed = 0;
image_index = 0;
paused = false;
changingFirst = 0;
changingSecond = 0;
changingThird = 0; 
changingFourth = 0;
changingFifth = 0;
alphaReduction = 0.01;
alpha = 0;
imageScaleStart_1 = 0.5;
imageScaleStart_2 = 0.66;
imageScaleStart_3 = 0.75;
imageScaleStart_4 = 0.8;
imageScaleStart_5 = 0.84;
imageScaler = 0.01;
spriteToDraw = spr_player_1;
wasd_alpha = 1;
wasd_alpha_reduce = 0.002;
playSupernova = true;
point_x = 0;
point_y = 0;
collision_alpha = 0;
collision_alpha_increase = 1;
collision_alpha_decrease = 0.02;
collision_rotation = 0;

blackhole = false;
blackhole_timer = room_speed * 30;
game_finish = false;


fix = physics_fixture_create();
physics_fixture_set_circle_shape(fix, sprite_width/3);
physics_fixture_set_density(fix, 20);
physics_fixture_set_friction(fix, 10);
physics_fixture_bind(fix, self);
physics_fixture_delete(fix);
