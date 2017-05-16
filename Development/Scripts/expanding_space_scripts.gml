#define scr_spawner_initialize
objectEnemy = obj_enemy;
maxEnemies = 500;

#define scr_spawner_update
scr_spawn_enemies();

#define scr_spawn_enemies
if maxEnemies > 0 {
    do {
        var spawnX = random(room_width);
        var spawnY = random(room_height);
        
        
    }
    until((spawnX < view_xview[0]) || (spawnX > view_xview[0] + view_wview[0]) || spawnY < view_yview[0]) || (spawnY > view_yview[0] + view_hview[0])
    
    instance_create(spawnX, spawnY, objectEnemy);
    
    maxEnemies--;
}

#define scr_camera_initialize
objectPlayer = obj_player;

view_enabled = true;

view_wview[0] = 1920;
view_hview[0] = 1080;
view_wport[0] = 1920;
view_hport[0] = 1080;
view_hborder[0] = 1920;
view_vborder[0] = 1080;

view_visible[0] = true;

#define scr_camera_update
view_xview[0] = view_xview[0] + ((objectPlayer.x-(view_wview[0]/2)) - view_xview[0]) * 0.1;
view_yview[0] = view_yview[0] + ((objectPlayer.y-(view_hview[0]/2)) - view_yview[0]) * 0.1;

#define scr_create_objects_initialize
instance_create(0, 0, obj_spawner);
instance_create(0, 0, obj_camera);
instance_create(0, 0, obj_timer);

#define scr_enemy_initialize
randomize();

smallMass = random(10);

if smallMass <= 5 {
    mass = random_range(10, 200);
} else {
    mass = random_range(300, mass_goal-200);
}
massImageScaler = mass / 1000;
image_xscale = massImageScaler;
image_yscale = massImageScaler;

#define scr_timer_initialize
seconds = 0;
secondsDraw = "";
minutes = 5;
minutesDraw = "";

timerUpdate = room_speed;

timerColor = c_white;          //c_colorname
timerHalign = fa_center;       //fa_left; fa_center; fa_right;     //horizontal alignment
timerValign = fa_middle;       //fa_top; fa_middle; fa_bottom;     //verticle alignment
timerFont = fnt_test;
timerX = view_wview[0]/2;
timerY = 100;
timerText = "";                //Change timer text in update

#define scr_timer_update
if timerUpdate <= 0 {
    if seconds <= 0 {
        seconds = 59;
        
        if minutes > 0 {
            minutes--;
        }
    } else {
        seconds--;
    }
    
    timerUpdate = room_speed;
}

if seconds < 10 {
    secondsDraw = "0" + string(seconds);
} else {
    secondsDraw = string(seconds);
}
minutesDraw = string(minutes);

timerText = "time left: " + minutesDraw + ":" + secondsDraw;

timerUpdate--;

#define scr_timer_draw_gui
draw_set_color(timerColor);
draw_set_halign(timerHalign);
draw_set_valign(timerValign);
draw_set_font(timerFont);
draw_text(timerX, timerY, timerText);

