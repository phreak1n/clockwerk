// Frame
frame_connector_block_width = frame_main_width - frame_connector_block_space_to_sides*2;
frame_connector_pin_length = frame_connector_block_length-min_thickness;
frame_connector_wall_pin_length = (frame_connector_block_length-min_thickness)/2;
frame_connector_pin_dia = frame_connector_block_height - min_thickness*2;
frame_front_narrow_width = frame_front_width-frame_front_width_narrow;
frame_back_narrow_width = frame_back_width-frame_back_width_narrow;

// Beltdrive
beltdrive_suspension_connector_pin_length = frame_wall_thickness-min_thickness;