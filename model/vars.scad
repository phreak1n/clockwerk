// Main Settings
thickness_structural_plate = 4;
thickness_impact_plate = 9;

// Object sizes
// motor
motor_diameter = 40;
motor_length = 76;
motor_shaft_diameter = 5;
motor_shaft_extended_length = 18;
// Damper
damper_extended_length = 100;
damper_diameter = 17;
damper_lower_hole_diameter = 5;
upper_hole_diamter = 3;

// Part Settings
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
b_belt_width = 20;
b_belt_thickness = 2;
b_belt_element_length = 20;
b_belt_element_cutout = 5;
b_belt_element_connector_height = 5;
b_belt_element_connector_width = 10;
b_belt_element_connector_bolt_diameter = 2;
b_belt_element_rounding = 10; //in percent
b_belt_element_tollerance = 1;
b_inner_profile_cuts = 4;
b_inner_profile_cut_depth = 3;
b_inner_profile_cut_width = 2;
b_inner_profile_scale = 0.85; // 0.00-1.00
b_inner_profile_extra_thicknes = 1;
// wheel
w_wheel_diameter = 60;
w_wheel_width = b_belt_width;
w_wheel_inner_hole_diameter = 8;
w_powerwheel_diameter = 60;
w_powerwheel_width = b_belt_width;
w_powerwheel_inner_hole_diameter = motor_shaft_diameter;


// SCAD-Settings
//fix settings
$fn = 90;
// scad_view settings
view_space = 10;