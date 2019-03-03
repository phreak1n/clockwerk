include <../vars.scad>

module motor(motor_diameter,
        motor_length,
        motor_shaft_diameter,
        motor_shaft_extended_length) {
    rotate([0, 90, 0]) {
        cylinder(d=motor_diameter, h=motor_length, center=true);
    }
    translate([motor_length/2+motor_shaft_extended_length/2, 0, 0]) {
        rotate([0, 90, 0]) {
            cylinder(d=motor_shaft_diameter, h=motor_shaft_extended_length, center=true);
        }
    }
}