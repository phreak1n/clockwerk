module beltdrive_suspension_connector() {
    //beltdrive_suspension_connector_template("standart");
    beltdrive_suspension_connector_template_standart();
}
module beltdrive_suspension_connector_stamp() {
    //beltdrive_suspension_connector_template("stamp");
    beltdrive_suspension_connector_template_stamp();
}


module beltdrive_suspension_connector_template_stamp() {
    union() {
        // Block
        cube(size=[ beltdrive_suspension_connector_width,
                    beltdrive_suspension_connector_length,
                    beltdrive_suspension_connector_height],
                    center=true);
        // Pins
        translate([ -(beltdrive_suspension_connector_width+beltdrive_suspension_connector_pin_length)/2,
                    (beltdrive_suspension_connector_length-beltdrive_suspension_connector_height)/2,
                    0]) {
            rotate([0, 90, 0]) {
                cylinder(d=beltdrive_suspension_connector_height-min_thickness+tollerance_push_fit, h=beltdrive_suspension_connector_pin_length, center=true);
            }
        }
        translate([ -(beltdrive_suspension_connector_width+beltdrive_suspension_connector_pin_length)/2,
                    -(beltdrive_suspension_connector_length-beltdrive_suspension_connector_height)/2,
                    0]) {
            rotate([0, 90, 0]) {
                cylinder(d=beltdrive_suspension_connector_height-min_thickness+tollerance_push_fit, h=beltdrive_suspension_connector_pin_length, center=true);
            }
        }
    }
    // Bolt & Nut
    translate([0, 0, 0]) {
        rotate([0, -90, 0]) {
            m4xX();
            translate([0, 0, frame_wall_thickness+beltdrive_suspension_connector_width/2-m4_hexnut_height/2+0.02]) {
                m4nutCutout();
            }
        }
    }
}

module beltdrive_suspension_connector_template_standart() {
    difference(){
        union() {
            // Block
            cube(size=[ beltdrive_suspension_connector_width,
                        beltdrive_suspension_connector_length,
                        beltdrive_suspension_connector_height],
                        center=true);
            // Pins
            translate([ -(beltdrive_suspension_connector_width+beltdrive_suspension_connector_pin_length)/2,
                        (beltdrive_suspension_connector_length-beltdrive_suspension_connector_height)/2,
                        0]) {
                rotate([0, 90, 0]) {
                    cylinder(d=beltdrive_suspension_connector_height-min_thickness, h=beltdrive_suspension_connector_pin_length, center=true);
                }
            }
            translate([ -(beltdrive_suspension_connector_width+beltdrive_suspension_connector_pin_length)/2,
                        -(beltdrive_suspension_connector_length-beltdrive_suspension_connector_height)/2,
                        0]) {
                rotate([0, 90, 0]) {
                    cylinder(d=beltdrive_suspension_connector_height-min_thickness, h=beltdrive_suspension_connector_pin_length, center=true);
                }
            }
        }
        // Screwholes
        translate([0, 0, 0]) {
            rotate([0, -90, 0]) {
                m4xX();
            }
        }
    }
}

// ToDo - Make this work and have nicer code 😎
/*
module beltdrive_suspension_connector_template(mode) {
    if (mode == "standart") {
        difference(){
    }
        union() {
            cube(size=[ beltdrive_suspension_connector_width,
                        beltdrive_suspension_connector_length,
                        beltdrive_suspension_connector_height],
                        center=true);
            translate([ -(beltdrive_suspension_connector_width+beltdrive_suspension_connector_pin_length)/2,
                        (beltdrive_suspension_connector_length-beltdrive_suspension_connector_height)/2,
                        0]) {
                rotate([0, 90, 0]) {
                    cylinder(d=beltdrive_suspension_connector_height, h=beltdrive_suspension_connector_pin_length, center=true);
                }
            }
            translate([ -(beltdrive_suspension_connector_width+beltdrive_suspension_connector_pin_length)/2,
                        -(beltdrive_suspension_connector_length-beltdrive_suspension_connector_height)/2,
                        0]) {
                rotate([0, 90, 0]) {
                    cylinder(d=beltdrive_suspension_connector_height, h=beltdrive_suspension_connector_pin_length, center=true);
                }
            }
        }
        translate([0, 0, 0]) {
            rotate([0, -90, 0]) {
                m4xX();
            }
        }
    if (mode == "standart") {
        }
    }
}
*/