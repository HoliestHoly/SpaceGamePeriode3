draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);


if(blackhole == false){
draw_sprite_ext(spr_collision, 0, x, y, sprite_width/1000, sprite_height/1000, collision_rotation, c_white, collision_alpha);
}

scr_player_check_change();

if wasd_alpha > 0 {
    wasd_alpha -= wasd_alpha_reduce;
    draw_sprite_ext(spr_wasd, 0, x, y, 0.5, 0.5, 0, c_white, wasd_alpha);
}

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text(x+sprite_width/2, y-sprite_height/2, "Mass: " + string(floor(mass)));
draw_line(x+sprite_width/2, y-sprite_height/2+2, x+sprite_width/2+150, y-sprite_height/2+2);
draw_line(x+sprite_width/2-20, y-sprite_height/2+20, x+sprite_width/2, y-sprite_height/2+2);

//draw_set_color(c_blue);
//draw_circle(x, y, mass/2, true);

//draw_set_color(c_aqua);
//draw_text(view_xview[0]+32, view_yview[0]+100, fps);

if(mass < 20){
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x, y-160, "je massa is te klein geworden druk op 'r' om te restarten");
}

if(game_finish){
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x, y-160, "Druk op 'r' om de game te resetten");
}
