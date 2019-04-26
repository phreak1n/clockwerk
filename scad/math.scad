// Fixed Values
pi = 3.16;


frame_connector_block_space_to_sides = frame_wall_thickness;
frame_connector_block_height = frame_connector_block_length;

frame_front_width = frame_main_width;
frame_front_height = frame_main_height;
frame_front_thickness = frame_main_thickness;

frame_back_width = frame_main_width;
frame_back_height = frame_main_height;
frame_back_thickness = frame_main_thickness;

beltdrive_wheel_width = beltdrive_belt_width;

beltdrive_suspension_leg_top_width = beltdrive_suspension_connector_width;



// Frame
frame_connector_block_width = frame_main_width - frame_connector_block_space_to_sides*2;
frame_connector_pin_length = frame_connector_block_length-min_thickness;
frame_connector_wall_pin_length = (frame_connector_block_length-min_thickness)/2;
frame_connector_pin_dia = frame_connector_block_height - min_thickness*2;
frame_front_narrow_width = frame_front_width-frame_front_width_narrow;
frame_back_narrow_width = frame_back_width-frame_back_width_narrow;

// Beltdrive
beltdrive_wheel_inner_dia = bearing_608zz_outer_dia;
beltdrive_suspension_connector_pin_length = frame_wall_thickness-min_thickness;
beltdrive_belt_element_length_overall = beltdrive_belt_element_length + beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2;
// Beltdrive suspension
beltdrive_suspension_leg_top_joint_bolt_dia = beltdrive_suspension_leg_top_joint_dia/2;
beltdrive_suspension_leg_bottom_joint_width = beltdrive_suspension_connector_width/2;
beltdrive_suspension_leg_bottom_joint_dia = beltdrive_suspension_leg_top_joint_dia-1;
beltdrive_suspension_leg_bottom_length = beltdrive_suspension_leg_top_length*1.2; //ToDo: Eliminate fix value for extended lower leg length
beltdrive_suspension_leg_bottom_wheel_connector_width = beltdrive_wheel_width/4*3;
beltdrive_suspension_leg_bottom_width = beltdrive_suspension_leg_bottom_joint_width;
beltdrive_suspension_leg_bottom_height = beltdrive_suspension_leg_bottom_width;
