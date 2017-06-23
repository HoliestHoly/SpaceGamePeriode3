draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_text(x,y,mass);
/*draw_set_color(c_blue);
draw_circle(x, y, mass/2, true);*/

if distance_to_object(OBJECT_PLAYER) < 300 {
    if alpha < 1 {
        alpha += 0.02;
    } else {
        alpha = 1;
    }
    draw_set_alpha(point_distance(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y)/700-0.5);
    draw_set_color(c_white);
    //draw_line(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y);
    path = path_add();
    path_add_point(path,0,0,0);
    path_add_point(path,OBJECT_PLAYER.x-x,OBJECT_PLAYER.y-y,0);
    path_set_closed(path,false);
    //draw_path_sprite(path, x, y, 32, LINE, 0, 32, 32, c_white, 1, 2, true); 
} else {
    if alpha > 0 {
        alpha -= 0.02;
    } else {
        alpha = 0;
    }
}

draw_set_alpha(alpha*2);
draw_set_color(c_white);
draw_set_font(FONT);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text(x+sprite_width/2, y-sprite_height/2, "Mass: " + string(floor(mass)));
draw_line(x+sprite_width/2, y-sprite_height/2+2, x+sprite_width/2+150, y-sprite_height/2+2);
draw_line(x+sprite_width/2-20, y-sprite_height/2+20, x+sprite_width/2, y-sprite_height/2+2);

if mass >= OBJECT_PLAYER.mass {
    draw_set_alpha(alpha);
    draw_set_color(c_red);
    //draw_line(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y);
    draw_set_blend_mode( bm_add );
    draw_circle_colour(x, y, sprite_width/3*2, c_red, c_black, false);
    draw_set_blend_mode( bm_normal ); 
} else {
    draw_set_alpha(alpha);
    draw_set_color(c_green);
    //draw_line(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y);
    draw_set_blend_mode( bm_add );
    //draw_circle_colour(x, y, sprite_width/2, c_green, c_black, false);
    draw_set_blend_mode( bm_normal ); 
}

draw_set_alpha(1);

draw_self();
