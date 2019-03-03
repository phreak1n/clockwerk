include <vars.scad>;


include <frame/basePlate.scad>
include <frame/basePlateProtect.scad>

//// frame
// base
%basePlate(bp_base_length, bp_base_width, bp_base_thickness, bp_front_length, bp_front_width, bp_back_length, bp_back_width);
%basePlateProtect(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);
