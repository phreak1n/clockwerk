//// Main Settings
thickness_structural_plate = 4;
thickness_impact_plate = 9;
tollerance_flats_moving_free = 1;
tollerance_rund_moving_free = 0.3;


// Parts sizes
// motor
motor_diameter = 40;
motor_length = 76;
motor_shaft_diameter = 5;
motor_shaft_extended_length = 18;
// Damper
damper_extended_length = 100;
damper_diameter = 17;
damper_lower_hole_diameter = 5;
damper_upper_hole_diamter = 3;

// Model Settings
// frame
bp_base_length = 500;
bp_base_width = 300;
bp_base_thickness = thickness_structural_plate;
bp_front_width = 120;
bp_front_length = 150;
bp_back_width = 200;
bp_back_length = 150;
bpp_protection_height = 45;
bpp_protection_bottom_scale = .1;
// belt
b_belt_width = 30;
b_belt_thickness = 2;
b_belt_element_length = 40;
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
b_inner_profile_teeth_length = 8 ;
b_inner_profile_teeth_height = 4 ;
b_inner_profile_teeth_width_scale = .5 ; // 0.00-1.00
b_inner_profile_teeth_length_scale = .8 ; // 0.00-1.00
b_inner_profile_teeth_tollerance = tollerance_flats_moving_free;
b_inner_profile_teeth_per_element = 4;
// wheel
w_wheel_diameter = 80;
w_wheel_width = b_belt_width;
w_wheel_inner_hole_diameter = 8;
// powerwheel
//pw_powerwheel_diameter = 60;
pw_powerwheel_width = b_belt_width;
pw_powerwheel_inner_hole_diameter = motor_shaft_diameter;
pw_teeth_amount = 30;

//// Math
// Fix values
pi = 3.14159;

math_teeth_space = (b_belt_element_length-(b_inner_profile_teeth_per_element*b_inner_profile_teeth_length))/b_inner_profile_teeth_per_element;

//// SCAD-Settings
// fix settings
$fn = 90;
// scad_view settings
view_space = 10;