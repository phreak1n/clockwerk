include <../vars.scad>

include <beltElementBase.scad>
include <beltProfile.scad>

// Use with:
// beltElement(b_belt_width, b_belt_thickness, b_belt_element_length, b_belt_element_cutout, b_belt_element_connector_height, b_belt_element_connector_width, b_belt_element_connector_bolt_diameter);

//b_belt_width;
//b_belt_thickness;
//b_belt_element_length;
//b_belt_element_cutout;
//b_belt_element_connector_height;
//b_belt_element_connector_width;
//b_belt_element_connector_bolt_diameter;
//b_belt_element_rounding = 10; //in percent
//b_belt_element_tollerance = 1;
//b_inner_profile_cuts = 4;
//b_inner_profile_cut_depth = 2;
//b_inner_profile_cut_width = 2;
//b_inner_profile_extra_thicknes 




module beltElement(width, thickness, length, cutout, c_height, c_width, c_bolt_diameter, rounding, tollerance, cuts, cut_d, cut_w, scale, extra_thickness) {
    %beltElementBase(width, thickness, length, cutout, c_height, c_width, c_bolt_diameter, rounding, tollerance);
    beltProfile(width, thickness, length, cutout, c_height, c_width, c_bolt_diameter, rounding, tollerance, cuts, cut_d, cut_w, scale, extra_thickness);
}

//beltElement(b_belt_width, b_belt_thickness, b_belt_element_length, b_belt_element_cutout, b_belt_element_connector_height, b_belt_element_connector_width, b_belt_element_connector_bolt_diameter);