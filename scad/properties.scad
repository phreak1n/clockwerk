/*
    proberties.scad
    ---------------

    All Variables are declaered here for easy editing of the model
*/

// Fixed values
$fn = 16;

min_thickness = 2;
tollerance_push_fit = 0.1;


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
frame_main_thickness = 8;
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
frame_bottom_lower_plate_scaling = 0.4; // 0.01-1.0
frame_bottom_screwhole_thickness = 2;

//Beltdrive
beltdrive_suspension_elements = 3;
beltdrive_suspension_connector_length = 28;
beltdrive_suspension_connector_width = 12;
beltdrive_suspension_connector_height = 8;
