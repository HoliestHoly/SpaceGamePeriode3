// layer normal
part_emitter_region(partSys[1], partEmitter[1],
view_xview[0]-offset, view_xview[0]+view_wview[0]+offset, view_yview[0] - offset, view_yview[0]+view_hview[0]+offset,
ps_shape_rectangle, ps_distr_linear);

// layer front
part_emitter_region(partSys[1], partEmitter[2],
view_xview[0]-offset, view_xview[0]+view_wview[0]+offset, view_yview[0] - offset, view_yview[0]+view_hview[0]+offset,
ps_shape_rectangle, ps_distr_linear);

// clouds
part_emitter_region(partSys[1], partEmitter[4],
view_xview[0]-offset, view_xview[0]+view_wview[0]+offset, view_yview[0] - offset, view_yview[0]+view_hview[0]+offset,
ps_shape_rectangle, ps_distr_linear);
