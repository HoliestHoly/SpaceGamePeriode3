/*massImageScaler = mass / 1000;
image_xscale = massImageScaler;
image_yscale = massImageScaler;*/

if mass >= 400 && mass < 800 {
    if sprite_index != spr_player_2 {
        alpha = 0;
        changingFirst = 1;
        scr_text("Een ster ontstaat uit gaswolken die door de zwaartekracht bijeen worden gedreven", 0.5, x+100, y+100);
        physics_pause_enable(true);
        paused = true;
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
        alpha = 0;
        changingFirst = 0;
        changingSecond = 1;
        scr_text("Maar 15% van alle sterren in ons melkwegstelsel zijn van hetzelfde type als onze zon", 0.5, x+100, y+100);
        physics_pause_enable(true);
        paused = true;
        
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
        alpha = 0;
        changingFirst = 0;
        changingSecond = 0;
        changingThird = 1;
        scr_text("Het sterven van een ster noemen wij een super- of een hypernova", 0.5, x+100, y+100);
        physics_pause_enable(true);
        paused = true;
   
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
        alpha = 0;
        changingFirst = 0;
        changingSecond = 0;
        changingThird = 0;
        changingFourth = 1;
        scr_text("De kracht van een hypernova explosie is 100 keer zo sterk als een supernova", 0.5, x+100, y+100);
        physics_pause_enable(true);
        paused = true;

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
        alpha = 0;
        changingFirst = 0;
        changingSecond = 0;
        changingThird = 0;
        changingFourth = 0;
        changingFifth = 1;
        scr_text("Er bestaan zwarte gaten die duizenden keren zo zwaar zijn als onze zon, hoe die zijn ontstaan weten we niet", 0.5, x+100, y+100);
        physics_pause_enable(true);
        paused = true;
   
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
