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
    motor();
}

translate([view_space + motor_length + damper_extended_length/2, -bp_base_width/2 - view_space - motor_diameter/2, 0]) {
    damper();
}

//// frame
frame();
// base
//basePlate(bp_base_length, bp_base_width, bp_base_thickness, bp_front_length, bp_front_width, bp_back_length, bp_back_width);
//basePlateProtect(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);

//// belt
// belt element
translate([0, bp_base_width/2 + view_space + b_belt_width/2, 0]) {
    beltElement();
}
// belt bolt
translate([view_space + b_belt_width, bp_base_width/2 + view_space + b_belt_width/2, 0]) {
    beltBolt();
}

////wheels
//wheel
translate([view_space + b_belt_width, bp_base_width/2 + view_space + b_belt_width + w_wheel_diameter, 0]) {
    wheel();
}
// powerheel
translate([view_space + b_belt_width + w_wheel_diameter + view_space, bp_base_width/2 + view_space + b_belt_width + w_wheel_diameter, 0]) {
    powerwheel();
}