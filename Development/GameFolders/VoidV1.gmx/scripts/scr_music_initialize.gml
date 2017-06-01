audio_stop_all();

if room = rm_level_1 {
    snd = audio_play_sound(MUSIC, 10, true);
} else if room = rm_menu {
    snd = audio_play_sound(MUSIC_MENU, 10, true);
}
