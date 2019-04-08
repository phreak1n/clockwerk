module frame_main() {
    difference() {
        frame_main_main();
        frame_main_screwholes();
        beltdrive_cutout_assembly();
    }
}

module frame_main_main() {
        // base
    cube(size=[frame_main_width, frame_main_length, frame_main_thickness], center=true);
    translate([0, frame_main_length/2-frame_connector_block_length/2, (frame_main_thickness+frame_connector_block_height)/2]) {
        frame_connector_female();
    }
    translate([0, -(frame_main_length/2-frame_connector_block_length/2), (frame_main_thickness+frame_connector_block_height)/2]) {
        rotate([0, 0, 180]) {
            frame_connector_female();
        }   
    }

    // walls
    difference() {
        translate([0, 0, (frame_main_thickness+frame_wall_height)/2]) {
            difference() {
                cube(size=[frame_main_width, frame_main_length, frame_wall_height], center=true);
                cube(size=[frame_main_width-frame_wall_thickness*2, frame_main_length+0.1, frame_wall_height+0.1], center=true);
            }
        }
        translate([ -frame_main_width/2+frame_wall_thickness/2,
                    -(frame_main_length-frame_connector_pin_length)/2-0.01,
                    frame_wall_height+frame_main_thickness/2-(frame_wall_thickness-min_thickness*2)/2-min_thickness]) {
            rotate([90, 0, 0]) {
                cylinder(d=frame_wall_thickness-min_thickness*2+tollerance_push_fit, h=frame_connector_pin_length, center=true);
            }
            
        }
        translate([ frame_main_width/2-frame_wall_thickness/2,
                    -(frame_main_length-frame_connector_pin_length)/2-0.01,
                    frame_wall_height+frame_main_thickness/2-(frame_wall_thickness-min_thickness*2)/2-min_thickness]) {
            rotate([90, 0, 0]) {
                cylinder(d=frame_wall_thickness-min_thickness*2+tollerance_push_fit, h=frame_connector_pin_length, center=true);
            }
        }
        translate([ -frame_main_width/2+frame_wall_thickness/2,
                    (frame_main_length-frame_connector_pin_length)/2+0.01,
                    frame_wall_height+frame_main_thickness/2-(frame_wall_thickness-min_thickness*2)/2-min_thickness]) {
            rotate([90, 0, 0]) {
                cylinder(d=frame_wall_thickness-min_thickness*2+tollerance_push_fit, h=frame_connector_pin_length, center=true);
            }
            
        }
        translate([ frame_main_width/2-frame_wall_thickness/2,
                    (frame_main_length-frame_connector_pin_length)/2+0.01,
                    frame_wall_height+frame_main_thickness/2-(frame_wall_thickness-min_thickness*2)/2-min_thickness]) {
            rotate([90, 0, 0]) {
                cylinder(d=frame_wall_thickness-min_thickness*2+tollerance_push_fit, h=frame_connector_pin_length, center=true);
            }
        }
    }    
}

module frame_main_screwholes() {
    // Screwholes bottom
    translate([  frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness,
                frame_main_length/2-frame_connector_block_length/2,
                -frame_bottom_screwhole_thickness]) {
        m4xX();
    }
    translate([  -(frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness),
                frame_main_length/2-frame_connector_block_length/2,
                -frame_bottom_screwhole_thickness]) {
        m4xX();
    }
    translate([  frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness,
                -(frame_main_length/2-frame_connector_block_length/2),
                -frame_bottom_screwhole_thickness]) {
        m4xX();
    }
    translate([  -(frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness),
                -(frame_main_length/2-frame_connector_block_length/2),
                -frame_bottom_screwhole_thickness]) {
        m4xX();
    }

    //Hexnutholes bottom
    translate([  frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness,
                frame_main_length/2-frame_connector_block_length/2,
                frame_main_thickness/2+frame_connector_block_height-m4_hexnut_height/2+0.01]) {
        m4nutCutout();
    }
    translate([  -(frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness),
                frame_main_length/2-frame_connector_block_length/2,
                frame_main_thickness/2+frame_connector_block_height-m4_hexnut_height/2+0.01]) {
        m4nutCutout();
    }
    translate([  frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness,
                -(frame_main_length/2-frame_connector_block_length/2),
                frame_main_thickness/2+frame_connector_block_height-m4_hexnut_height/2+0.01]) {
        m4nutCutout();
    }
    translate([  -(frame_connector_block_width/2-frame_connector_pin_dia/2-min_thickness),
                -(frame_main_length/2-frame_connector_block_length/2),
                frame_main_thickness/2+frame_connector_block_height-m4_hexnut_height/2+0.01]) {
        m4nutCutout();
    }
}