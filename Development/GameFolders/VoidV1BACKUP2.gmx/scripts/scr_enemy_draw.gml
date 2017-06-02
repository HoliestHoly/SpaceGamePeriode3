draw_self();

draw_set_color(c_aqua);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_text(x,y,mass);
/*draw_set_color(c_blue);
draw_circle(x, y, mass/2, true);*/

if distance_to_object(OBJECT_PLAYER) < 700 {
    if mass >= OBJECT_PLAYER.mass {
        draw_set_alpha(1);
        draw_set_color(c_red);
        draw_line(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y);
    } else {
        draw_set_alpha(1);
        draw_set_color(c_green);
        draw_line(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y);
    }
    draw_set_alpha(point_distance(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y)/700-0.5);
    show_debug_message(draw_get_alpha());
    draw_set_color(c_white);
    draw_line(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y);
    var path = path_add();
    path_add_point(path, x, y, 0);
    path_add_point(path, OBJECT_PLAYER.x, OBJECT_PLAYER.y, 0);
    path_start(path, 0, path_action_restart, false);
    draw_path_sprite(path, x, y, sprite_width, spr_enemy, 0, 1, 1, c_white, 1, 5, false);
}

draw_set_alpha(1);
