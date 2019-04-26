/*
    proberties.scad
    ---------------

    All Variables are declaered here for easy editing of the model
*/

//ToDo: move maths to math.scad


// Options
// #######
/*
    Drivetypes:
    - beltdrive
    - roverdrive    /not implemented yet
*/
drive_type = "beltdrive";

/*
    Mainboards:
    - raspberrypi   /not implemented yet
    - orangepi      /not implemented yet
    - jetson        /not implemented yet
    - arduino       /not implemented yet
*/
main_board = "raspberrypi";

// Fixed values
$fn = 32;

// Main Values
// ###########
min_thickness = 2;
screw_hole_pocket = 5;
clamp_space = 1;

// 3D-Printer Settings
// ###################
tollerance_push_fit = 0.1;
tollerance_rotating_faces = 0.1;
tollerance_sliding_faces = tollerance_rotating_faces;

// Modelsettings
// #############
// Frame
frame_wall_height = 30;
frame_wall_thickness = 10;
// Frame Connector Block
frame_connector_block_length = 12;
// Frame Main
frame_main_length = 190;
frame_main_width = 120;
frame_main_height = 0;
frame_main_thickness = 4;
// Frame Front
frame_front_length = 40;
frame_front_width_narrow = 20;
// Frame back
frame_back_length = 60;
frame_back_width_narrow = 20;
// Frame bottom
frame_bottom_thickness = 12;
frame_bottom_lower_plate_scaling = 0.2; // 0.01-1.0
frame_bottom_screwhole_thickness = 2;

// Beltdrive
// #########
// Beltdrive belt element
beltdrive_belt_width = 35;
beltdrive_belt_element_length = 8;
beltdrive_belt_block_height = 6;
beltdrive_belt_block_top_reduce = 4;
beltdrive_belt_element_connector_dia = 1.75;
beltdrive_belt_element_connector_thickness = 1;
//beltdrive_belt_teeth_length = 4;
//beltdrive_belt_teeth_width = 2;
//beltdrive_belt_teeth_height = beltdrive_belt_block_height/4*3;

// Beltdrive wheel
beltdrive_wheel_dia = 30;
//beltdrive_wheel_inner_dia = beltdrive_suspension_leg_bottom_wheel_connector_dia_thickness*2 + beltdrive_wheel_bolt_dia;
beltdrive_wheel_bolt_dia = 8;
beltdrive_wheel_space_to_suspension = 5;
// Belt powerwheel
beltdrive_powerwheel_element_amount = 12;
beltdrive_powerwheel_space_to_motor = beltdrive_wheel_space_to_suspension;
// Beltdrive suspension
beltdrive_suspension_elements = 3;
beltdrive_suspension_connector_length = 24;
beltdrive_suspension_connector_width = 12;
beltdrive_suspension_connector_height = 8;
// Beltdrive suspension top leg
beltdrive_suspension_leg_top_length = 50;
beltdrive_suspension_leg_top_angle = 35;
beltdrive_suspension_leg_top_joint_dia = 15;
// Beltdrive suspension bottom leg
beltdrive_suspension_leg_bottom_joint_extra_cutout_height = 2;
beltdrive_suspension_leg_bottom_joint_extra_cutout_angle = 8;
beltdrive_suspension_leg_bottom_wheel_connector_dia = bearing_608zz_inner_dia/2;
// Beltdrive motormount
beltdrive_motormount_width = part_motor_beltdrive_main_length/4;
beltdrive_motormount_holder_thickness = 4;
//beltdrive_motormount_screw_type = "m4"; // "m4" or "m3"
beltdrive_motormount_screw_dia = 4;
beltdrive_motormount_screw_length = 15;
beltdrive_motormount_hexnut_deep = part_motor_beltdrive_main_dia/8;


