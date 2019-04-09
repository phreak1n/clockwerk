module belt_powerwheel() {
    diameter = (beltdrive_powerwheel_element_amount * (beltdrive_belt_element_length + (beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2-0.5))) / pi;
    
    difference() {
        cylinder( d=diameter, h=beltdrive_belt_width, center=true);
        
        translate([0, 0, 0]) {
            make_ring_of (diameter/2, beltdrive_powerwheel_element_amount) {
                rotate([270, 90, 0]) {
                    belt_element();
                }
            }
        }
        difference(){
            cylinder(d=diameter*2, h=beltdrive_belt_width+0.01, center=true);
            cylinder(d=diameter, h=beltdrive_belt_width+0.01, center=true);
        }
        translate([0, 0, beltdrive_belt_width/2+beltdrive_powerwheel_space_to_motor]) {
            rotate([0, 180, 0]) {
                parts_motor_beltdrive_main();
            }
        }
        translate([part_motor_beltdrive_main_shaft_dia/2 + min_thickness + m3_hexnut_height,
                    0,
                    beltdrive_belt_width/2 - (part_motor_beltdrive_main_shaft_length/2-3)]) {
            rotate([0, -90, 0]) {
                screw_hexsocket(3,
                                part_motor_beltdrive_main_shaft_dia,
                                m3_screw_hexsocket_head_diameter,
                                diameter);
                translate([0, 0, min_thickness + m3_hexnut_height/2]) {
                    hull() {
                        hexnut_cutout(m3_hexnut_diameter,m3_hexnut_height);
                        translate([10, 0, 0]) {
                            hexnut_cutout(m3_hexnut_diameter,m3_hexnut_height);
                        }
                    }
                }
            }
        }
    }
}




/*
r = 18;
module belt_powerwheel() {
    difference(){
        cylinder(r=r-(beltdrive_belt_block_height/4), h=beltdrive_belt_width, center=true);
        make_ring_of (r+0.3, 8){
            rotate([-90, 90, 0]) {
                belt_element();
            }
        }
        translate([0, 0, beltdrive_belt_width/2+beltdrive_powerwheel_space_to_motor]) {
            rotate([0, 180, 0]) {
                parts_motor_beltdrive_main();
            }
        }
        translate([part_motor_beltdrive_main_shaft_dia/2 + min_thickness + m3_hexnut_height,
                    0,
                    beltdrive_belt_width/2 - (part_motor_beltdrive_main_shaft_length/2-3)]) {
            rotate([0, -90, 0]) {
                screw_hexsocket(3,
                                part_motor_beltdrive_main_shaft_dia,
                                m3_screw_hexsocket_head_diameter,
                                beltdrive_belt_block_height*2);
                translate([0, 0, min_thickness + m3_hexnut_height/2]) {
                    hull() {
                        hexnut_cutout(m3_hexnut_diameter,m3_hexnut_height);
                        translate([10, 0, 0]) {
                            hexnut_cutout(m3_hexnut_diameter,m3_hexnut_height);
                        }
                    }
                }
            }
        }
    }
}
*/