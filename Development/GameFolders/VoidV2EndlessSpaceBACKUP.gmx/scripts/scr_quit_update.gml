if mouse_x >= x && mouse_y >= y && mouse_x <= x + sprite_width && mouse_y <= y + sprite_height {
    image_index = 1;
    if mouse_check_button_pressed(mb_left) {
        game_end();
    }
} else {
    image_index = 0;
}
