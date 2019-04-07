/*
    proberties.scad
    ---------------

    All Variables are declaered here for easy editing of the model
*/

// Fixed values
$fn = 16;

min_thickness = 2;
tollerance_push_fit = 0.1;
tollerance_rotating_faces = 0.1;
tollerance_sliding_faces = tollerance_rotating_faces;

// Frame
frame_wall_height = 15;
frame_wall_thickness = 10;
// Frame Connector Block
frame_connector_block_length = 12;
frame_connector_block_space_to_sides = frame_wall_thickness;
frame_connector_block_height = frame_connector_block_length;
// Frame Main
frame_main_length = 100;
frame_main_width = 70;
frame_main_height = 0;
frame_main_thickness = 4;
// Frame Front
frame_front_length = 30;
frame_front_width = frame_main_width;
frame_front_width_narrow = 20;
frame_front_height = frame_main_height;
frame_front_thickness = frame_main_thickness;
// Frame back
frame_back_length = 30;
frame_back_width = frame_main_width;
frame_back_width_narrow = 20;
frame_back_height = frame_main_height;
frame_back_thickness = frame_main_thickness;
// Frame bottom
frame_bottom_thickness = 8;
frame_bottom_lower_plate_scaling = 0.01; // 0.01-1.0
frame_bottom_screwhole_thickness = 2;

// Beltdrive

// Beltdrive belt element
beltdrive_belt_width = 20;
beltdrive_belt_element_length = 8;
beltdrive_belt_block_height = 6;
beltdrive_belt_block_top_width_reduce = 4;
beltdrive_belt_element_connector_dia = 1.75;
beltdrive_belt_element_connector_thickness = 1;

// Beltdrive wheel
beltdrive_wheel_width = beltdrive_belt_width;
beltdrive_wheel_dia = 15;
beltdrive_wheel_bolt_dia = 8;
// Beltdrive suspension
beltdrive_suspension_elements = 3;
beltdrive_suspension_connector_length = 24;
beltdrive_suspension_connector_width = 12;
beltdrive_suspension_connector_height = 8;
beltdrive_suspension_leg_top_length = 30;
beltdrive_suspension_leg_top_width = beltdrive_suspension_connector_width;
beltdrive_suspension_leg_top_angle = 40;
beltdrive_suspension_leg_top_joint_dia = 10;
beltdrive_suspension_leg_top_joint_bolt_dia = beltdrive_suspension_leg_top_joint_dia/2;
beltdrive_suspension_leg_bottom_joint_extra_cutout_height = 2;
beltdrive_suspension_leg_bottom_joint_extra_cutout_angle = 8;
beltdrive_suspension_leg_bottom_joint_width = beltdrive_suspension_connector_width/2;
beltdrive_suspension_leg_bottom_joint_dia = beltdrive_suspension_leg_top_joint_dia-1;
beltdrive_suspension_leg_bottom_length = beltdrive_suspension_leg_top_length;
beltdrive_suspension_leg_bottom_width = beltdrive_suspension_leg_bottom_joint_width;
beltdrive_suspension_leg_bottom_height = beltdrive_suspension_leg_bottom_width;
beltdrive_suspension_leg_bottom_wheel_connector_dia_thickness = 4;
beltdrive_suspension_leg_bottom_wheel_connector_width = beltdrive_wheel_width/2;