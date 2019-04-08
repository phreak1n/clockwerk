
// Motor Template
module motor(motor_dia, motor_length, motor_shaft_dia, motor_shaft_length) {
    translate([0, 0, -motor_length/2]) {
        cylinder(d=motor_dia, h=motor_length, center=true);
    }
    translate([0, 0, motor_shaft_length/2]) {
        cylinder(d=motor_shaft_dia, h=motor_shaft_length, center=true);
    }
}

// Motors
module parts_motor_beltdrive_main() {
    motor(  part_motor_beltdrive_main_dia,
            part_motor_beltdrive_main_length,
            part_motor_beltdrive_main_shaft_dia,
            part_motor_beltdrive_main_shaft_length);
}