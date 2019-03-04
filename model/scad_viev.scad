include <vars.scad>

include <parts/motor.scad>
include <parts/damper.scad>

include <frame/frame.scad>
//include <frame/basePlate.scad>
//include <frame/basePlateProtect.scad>

include <belt/beltElement.scad>
include <belt/beltBolt.scad>

include <wheel/wheel.scad>
include <wheel/powerwheel.scad>


//// parts
translate([0, -bp_base_width/2 - view_space - motor_diameter/2, 0]) {
    motor(motor_diameter, motor_length, motor_shaft_diameter, motor_shaft_extended_length);
}

translate([view_space + motor_length + damper_extended_length/2, -bp_base_width/2 - view_space - motor_diameter/2, 0]) {
    damper(damper_extended_length, damper_diameter, damper_lower_hole_diameter, damper_upper_hole_diamter);
}

//// frame
frame(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);
// base
//basePlate(bp_base_length, bp_base_width, bp_base_thickness, bp_front_length, bp_front_width, bp_back_length, bp_back_width);
//basePlateProtect(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);

//// belt
// belt element
translate([0, bp_base_width/2 + view_space + b_belt_width/2, 0]) {
    beltElement(
        b_belt_width,
        b_belt_thickness,
        b_belt_element_length,
        b_belt_element_cutout,
        b_belt_element_connector_height,
        b_belt_element_connector_width,
        b_belt_element_connector_bolt_diameter,
        b_belt_element_rounding,
        b_belt_element_tollerance,
        b_inner_profile_cuts,
        b_inner_profile_cut_depth,
        b_inner_profile_cut_width,
        b_inner_profile_scale,
        b_inner_profile_extra_thicknes,
        b_inner_profile_teeth_width,
        b_inner_profile_teeth_length,
        b_inner_profile_teeth_height,
        b_inner_profile_teeth_width_scale,
        b_inner_profile_teeth_length_scale,
        b_inner_profile_teeth_per_element,
        b_inner_profile_teeth_tollerance,
        math_teeth_space);
}
// belt bolt
translate([view_space + b_belt_width, bp_base_width/2 + view_space + b_belt_width/2, 0]) {
    beltBolt(b_belt_width, b_belt_element_connector_bolt_diameter, b_belt_bolt_tollerance);
}

////wheels
//wheel
translate([view_space + b_belt_width, bp_base_width/2 + view_space + b_belt_width + w_wheel_diameter, 0]) {
    wheel(w_wheel_diameter,
        w_wheel_width,
        w_wheel_inner_hole_diameter,
        b_inner_profile_cut_depth,
        b_inner_profile_cut_width,
        b_inner_profile_cuts,
        b_belt_width);
}
