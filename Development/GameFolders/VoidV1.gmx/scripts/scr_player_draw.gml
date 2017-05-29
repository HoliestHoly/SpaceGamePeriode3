draw_sprite_ext(spr_player, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y+20, mass);

draw_set_color(c_blue);
//draw_circle(x, y, mass/2, true);

draw_set_color(c_blue);
draw_rectangle(0, 0, room_width, room_height, true);

draw_set_color(c_red);
draw_rectangle(playerOffsetX, playerOffsetY, room_width-playerOffsetX, room_height-playerOffsetY, true);

draw_text(view_xview[0]+32, view_yview[0]+100, fps);
