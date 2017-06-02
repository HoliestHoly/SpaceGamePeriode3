partSys[1] = part_system_create();
part_system_depth(partSys[1], 10);
partSys[2] = part_system_create();
part_system_depth(partSys[2], -10);

// layer normal
partType[1] = part_type_create();
part_type_shape(partType[1], pt_shape_pixel);
part_type_orientation(partType[1], 0, 0, 0, 0, 1);
part_type_size(partType[1], 2, 6, 0, 0);
part_type_speed(partType[1], 0.2, 0.6, 0, 0);
part_type_direction(partType[1], 0, 360, 0, 4);
part_type_life(partType[1], 300, 500);
part_type_color1(partType[1], c_white);

// layer back
partType[3] = part_type_create();
part_type_shape(partType[3], pt_shape_pixel);
part_type_orientation(partType[3], 0, 0, 0, 0, 1);
part_type_size(partType[3], 0.5, 1, 0, 0);
part_type_speed(partType[3], 0, 0, 0, 0);
part_type_direction(partType[3], 0, 360, 0, 4);
part_type_life(partType[3], 10, 50);
part_type_color1(partType[3], c_white);

// layer front
partType[4] = part_type_create();
part_type_shape(partType[4], pt_shape_flare);
part_type_orientation(partType[4], 0, 0, 0, 0, 1);
part_type_size(partType[4], 0.5, 2, 0, 0);
part_type_speed(partType[4], 0.5, 1, 0, 0);
part_type_direction(partType[4], 0, 360, 0, 4);
part_type_life(partType[4], 300, 500);
part_type_color1(partType[4], c_white);

// collision
partType[2] = part_type_create();
part_type_shape(partType[2], pt_shape_cloud);
part_type_orientation(partType[2], 0, 360, 1, 2, 1);
part_type_size(partType[2], 0.5, 1, 0, 0);
part_type_speed(partType[2], 0.4, 1, 0, 0);
part_type_direction(partType[2], 0, 360, 0, 4);
part_type_life(partType[2], 100, 300);
part_type_color1(partType[2], c_purple);

// clouds
partType[5] = part_type_create();
part_type_orientation(partType[5], 0, 0, 0, 0, 1);
part_type_size(partType[5], 2, 6, 0, 0);
part_type_speed(partType[5], 0.2, 0.6, 0, 0);
part_type_direction(partType[5], 0, 360, 0, 4);
part_type_life(partType[5], 200, 800);
part_type_color1(partType[5], c_white);
part_type_sprite(partType[5], spr_cloud, false, true, true);

if room = LEVEL_1 {
    partEmitter[1] = part_emitter_create(partSys[1]);
    part_emitter_region(partSys[1], partEmitter[1], 0-100, room_width+100, -10, room_height + 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(partSys[1], partEmitter[1], partType[1], 10);
    partEmitter[2] = part_emitter_create(partSys[2]);
    part_emitter_region(partSys[2], partEmitter[2], 0-100, room_width+100, -10, room_height + 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(partSys[2], partEmitter[2], partType[4], 2);
    /*partEmitter[3] = part_emitter_create(partSys[1]);
    part_emitter_region(partSys[1], partEmitter[3], 0-100, room_width+100, -10, room_height + 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(partSys[1], partEmitter[3], partType[3], 1000);*/
    partEmitter[4] = part_emitter_create(partSys[1]);
    part_emitter_region(partSys[1], partEmitter[4], 0-100, room_width+100, -10, room_height + 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(partSys[1], partEmitter[4], partType[5], -3);
} else if room = MENU {
    partEmitter[1] = part_emitter_create(partSys[1]);
    part_emitter_region(partSys[1], partEmitter[1], 0-100, room_width+100, -10, room_height + 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(partSys[1], partEmitter[1], partType[1], -5);
    partEmitter[2] = part_emitter_create(partSys[2]);
    part_emitter_region(partSys[2], partEmitter[2], 0-100, room_width+100, -10, room_height + 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(partSys[2], partEmitter[2], partType[4], -10);
    partEmitter[3] = part_emitter_create(partSys[1]);
    part_emitter_region(partSys[1], partEmitter[3], 0-100, room_width+100, -10, room_height + 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(partSys[1], partEmitter[3], partType[3], 100);
    partEmitter[4] = part_emitter_create(partSys[1]);
    part_emitter_region(partSys[1], partEmitter[4], 0-100, room_width+100, -10, room_height + 10, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(partSys[1], partEmitter[4], partType[5], -50);
}
