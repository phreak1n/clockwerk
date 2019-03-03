include <vars.scad>;

include <frame/frame.scad>
include <frame/basePlate.scad>
include <frame/basePlateProtect.scad>

include <belt/beltElement.scad>

include <wheel/wheel.scad>
include <wheel/powerwheel.scad>


//// frame
%frame(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);
// base
//basePlate(bp_base_length, bp_base_width, bp_base_thickness, bp_front_length, bp_front_width, bp_back_length, bp_back_width);
//basePlateProtect(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);

////belt element
translate([0, bp_base_width/2 + view_space + b_belt_width/2, 0]) {
    beltElement(b_belt_width, b_belt_thickness, b_belt_element_length, b_belt_element_cutout, b_belt_element_connector_height, b_belt_element_connector_width, b_belt_element_connector_bolt_diameter, b_belt_element_rounding, b_belt_element_tollerance, b_inner_profile_cuts, b_inner_profile_cut_depth, b_inner_profile_cut_width, b_inner_profile_scale, b_inner_profile_extra_thicknes);
}
