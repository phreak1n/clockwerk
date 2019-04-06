module frame_bottom() {
    difference() {
        hull() {
            // Top
            cube(size=[frame_main_width, frame_main_length+2, 1], center=true);
            translate([0, frame_main_length/2+frame_front_length+0.5, 0]) {
                cube(size=[frame_front_narrow_width, 1, 1], center=true);
            }
            translate([0, -frame_main_length/2-frame_back_length-0.5, 0]) {
                cube(size=[frame_back_narrow_width, 1, 1], center=true);
            }
            // Bottom
            translate([0, 0, -frame_bottom_thickness]) {
                scale([ frame_bottom_lower_plate_scaling,
                        frame_bottom_lower_plate_scaling,
                        1]) {
                    cube(size=[frame_main_width, frame_main_length+2, 1], center=true);
                    translate([0, frame_main_length/2+frame_front_length+0.5, 0]) {
                        cube(size=[frame_front_narrow_width, 1, 1], center=true);
                    }
                    translate([0, -frame_main_length/2-frame_back_length-0.5, 0]) {
                        cube(size=[frame_back_narrow_width, 1, 1], center=true);
                    }
                }
            }
        }

        // Screwholes
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
    }
}