//// Main Settings
thickness_structural_plate = 4;
thickness_impact_plate = 9;
tollerance_flats_moving_free = 1;
tollerance_rund_moving_free = 0.3;
wheel_amount = 4;


// Parts sizes
// motor
motor_diameter = 40;
motor_length = 76;
motor_shaft_diameter = 5;
motor_shaft_extended_length = 18;
// Damper
damper_extended_length = 100; //from hole to hole under no compression
damper_diameter = 17;
damper_lower_hole_diameter = 5;
damper_lower_hole_length = 8;
damper_upper_hole_diamter = 3;
damper_upper_hole_length = 5;

//// Screws
//m3
m3_screw_hexsocket_head_diameter = 5;
m3_screw_hexsocket_head_height = 3;
m3_hexnut_diameter = 6; //Size of wrench
m3_hexnut_height = 4;
//m4
m4_screw_hexsocket_head_diameter = 5;
m4_screw_hexsocket_head_height = 3;
m4_hexnut_diameter = 8; //Size of wrench
m4_hexnut_height = 4;

//// Model Settings
// frame
bp_base_length = 100;
bp_base_width = 60;
bp_base_thickness = thickness_structural_plate;
bp_front_width = bp_base_width;
bp_front_length = 30;
bp_back_width = bp_base_width;
bp_back_length = bp_front_length;
bpp_protection_height = 10;
bpp_protection_bottom_scale = .1;
// belt
b_belt_width = 25;
b_belt_thickness = 2;
b_belt_element_length = 20;
b_belt_element_cutout = 5;
b_belt_element_connector_height = 5;
b_belt_element_connector_width = 10;
b_belt_element_connector_bolt_diameter = 2;
b_belt_element_rounding = 10; //in percent
b_belt_element_tollerance = tollerance_flats_moving_free;
b_belt_bolt_tollerance = tollerance_rund_moving_free;
b_inner_profile_cuts = 4;
b_inner_profile_cut_depth = 3;
b_inner_profile_cut_width = 2;
b_inner_profile_scale = 0.85; // 0.00-1.00
b_inner_profile_extra_thicknes = 3;
b_inner_profile_teeth_width = 2 ;
b_inner_profile_teeth_length = 4 ;
b_inner_profile_teeth_height = 3 ;
b_inner_profile_teeth_width_scale = .5 ; // 0.00-1.00
b_inner_profile_teeth_length_scale = .8 ; // 0.00-1.00
b_inner_profile_teeth_tollerance = tollerance_flats_moving_free;
b_inner_profile_teeth_per_element = 4;
// wheel
w_wheel_diameter = 15;
w_wheel_width = b_belt_width;
w_wheel_inner_hole_diameter = 4;
// small:wheel
sw_small_wheel_diameter = w_wheel_diameter/2;
sw_small_wheel_width = b_belt_width;
sw_small_wheel_inner_hole_diameter = w_wheel_inner_hole_diameter;
// powerwheel
//pw_powerwheel_diameter = 60;
pw_powerwheel_width = b_belt_width;
pw_powerwheel_inner_hole_diameter = motor_shaft_diameter;
pw_teeth_amount = 9;
// suspension
su_upper_leg_angle = 60;
su_upper_leg_length = 30;
su_upper_leg_width = 10;
su_upper_leg_thickness = 5;
su_upper_leg_connection_block_width = 20;
su_upper_leg_connection_block_height = 14;
su_upper_leg_connection_width = 3;
su_upper_leg_connection_height = 15;
su_upper_damper_connector_side_thickness = 4;
su_upper_damper_connector_down_thickness = 2;
su_lower_leg_length = 70;
su_lower_leg_width = su_upper_leg_width;
su_lower_leg_thickness = su_upper_leg_thickness;
su_lower_damper_connector_angle = 32;
su_lower_damper_connector_distance2joint = 50;
su_lower_damper_connector_side_thickness = su_upper_damper_connector_side_thickness;
su_lower_damper_connector_down_thickness = su_upper_damper_connector_down_thickness;
su_connection_bolt = 5;
su_connection_bolt_tollerance = 0.5;
su_connection_side_tollerance = 0.5;
su_beam_thickness = 8;

//// Math
math_teeth_space = (b_belt_element_length-(b_inner_profile_teeth_per_element*b_inner_profile_teeth_length))/b_inner_profile_teeth_per_element;
math_su_upper_damper_connector_trans_y = -(su_upper_leg_connection_block_width/4+su_upper_leg_connection_block_width/2+su_upper_leg_connection_block_height/2);
math_su_upper_damper_connector_thickness = (damper_upper_hole_length + su_upper_damper_connector_side_thickness*2);
math_su_lower_damper_connector_thickness = (damper_lower_hole_length + su_lower_damper_connector_side_thickness*2);
//TODO: calc the overall length of the suspension to arange them automaticly on suspension_frame_connection
math_su_suspension_overall_langth = 0;
math_su_beam_length = bp_base_length+bp_back_length/2+bp_front_length/2;
// Fix values
pi = 3.14159;
//// SCAD-Settings
// fix settings
$fn = 20;
// scad_view settings
view_space = 10;