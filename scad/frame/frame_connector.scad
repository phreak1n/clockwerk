module frame_connector_male() {
    difference() {
        union() {
            cube(size=[frame_connector_block_width, frame_connector_block_length, frame_connector_block_height], center=true);
            translate([frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness, -(frame_connector_block_length-min_thickness/2), 0]) {
                rotate([90, 0, 0]) {
                    cylinder(d=frame_connector_pin_dia-tollerance_push_fit, h=frame_connector_pin_length, center=true);    
                }    
            }
            translate([-(frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness), -(frame_connector_block_length-min_thickness/2), 0]) {
                rotate([90, 0, 0]) {
                    cylinder(d=frame_connector_pin_dia-tollerance_push_fit, h=frame_connector_pin_length, center=true);    
                }    
            }
        }
        translate([0, frame_connector_block_length/2-m4_screw_hexsocket_head_height+0.1, 0]) {
            rotate([90, 0, 0]) {
                m4xX();    
            }
        }
        frame_connector_screwholes();
    }
}
module frame_connector_female() {
    difference() {
        cube(size=[frame_connector_block_width, frame_connector_block_length, frame_connector_block_height], center=true);
        translate([frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness, min_thickness/2+0.1, 0]) {
            rotate([90, 0, 0]) {
                cylinder(d=frame_connector_pin_dia, h=frame_connector_pin_length, center=true);    
            }    
        }
        translate([-(frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness), min_thickness/2+0.1, 0]) {
            rotate([90, 0, 0]) {
                cylinder(d=frame_connector_pin_dia, h=frame_connector_pin_length, center=true);    
            }    
        }
        translate([0, frame_connector_block_length/2+1, 0]) {
            rotate([90, 0, 0]) {
                m4xX();    
            }
        }
        translate([0, -frame_connector_block_length/2+m4_hexnut_height/2-0.1, 0]) {
            rotate([90, 0, 0]) {
                hull() {
                    m4nut();    
                }
            }
        }
    }
}

module frame_connector_screwholes() {
    translate([0, 0, -(frame_connector_block_height + frame_front_thickness)/2]) {
        // Screwholes bottom
        translate([  frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness,
                    -frame_connector_block_length/2-frame_connector_pin_length/2-1,
                    -frame_bottom_screwhole_thickness]) {
            m4xX();
        }
        translate([  -(frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness),
                    -frame_connector_block_length/2-frame_connector_pin_length/2-1,
                    -frame_bottom_screwhole_thickness]) {
            m4xX();
        }


        // Hexnutholes bottom
        translate([  frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness,
                    -frame_connector_block_length/2-frame_connector_pin_length/2-1,
                    frame_main_thickness/2+frame_connector_block_height-m4_hexnut_height/2+0.01]) {
            m4nutCutout();
        }
        translate([  -(frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness),
                    -frame_connector_block_length/2-frame_connector_pin_length/2-1,
                    frame_main_thickness/2+frame_connector_block_height-m4_hexnut_height/2+0.01]) {
            m4nutCutout();
        }

   }
   
}