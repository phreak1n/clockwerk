include <vars.scad>

include <parts/motor.scad>
include <parts/damper.scad>
include <parts/screws.scad>

include <frame/frame.scad>

include <belt/beltElement.scad>
include <belt/beltBolt.scad>

include <wheel/wheel.scad>
include <wheel/powerwheel.scad>

include <suspension/suspension.scad>



//// parts
translate([0, -bp_base_width/2 - view_space - motor_diameter/2, 0]) {
    motor();
}

translate([view_space + motor_length + damper_extended_length/2, -bp_base_width/2 - view_space - motor_diameter/2, 0]) {
    damper();
}

//// frame
frame();


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
//// suspension
/// upper
translate([view_space + b_belt_width,view_space + su_upper_leg_angle + bp_base_width/2 + view_space + b_belt_width + w_wheel_diameter, 0]) {
    upper_leg();
}
//lower
translate([view_space + su_lower_leg_length/2 + su_upper_leg_length + view_space + b_belt_width,view_space + su_upper_leg_angle + bp_base_width/2 + view_space + b_belt_width + w_wheel_diameter, 0]) {
    lower_leg();
}