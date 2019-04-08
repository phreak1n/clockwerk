module belt_element() {
    // Main block
    hull() {
        translate([0, 0, 0.5]) {
            cube(size=[beltdrive_belt_width, beltdrive_belt_element_length, 1], center=true);    
        }
        
        translate([0, 0, beltdrive_belt_block_height-0.5]) {
            cube(size=[ beltdrive_belt_width - beltdrive_belt_block_top_reduce,
                        beltdrive_belt_element_length - beltdrive_belt_block_top_reduce,
                        1],
                        center=true);
        }
    }
    // Connector Block
    translate([ 0,
                0,
                -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
        cube(size=[ beltdrive_belt_width,
                    beltdrive_belt_element_length-1,
                    beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2],
                    center=true);
    }
    // Connector front
    difference() {
        hull() {
            translate([ 0,
                        beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/4-1,
                        -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
                cube(size=[ beltdrive_belt_width,
                            (beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2,
                            beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2],
                            center=true);
            }
            translate([ 0,
                        beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/4+1, // Why "+1"  // when removed the overall-length of the element doesnt fit anymore
                        -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
                rotate([0, 90, 0]) {
                    cylinder(   d=beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2,
                                h=beltdrive_belt_width,
                                center=true);
                }
            }
        }
        // hole
        translate([ 0,
                    (beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/4+1), // Why "+1"  // when removed the overall-length of the element doesnt fit anymore
                    -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
            rotate([0, 90, 0]) {
                cylinder(  d=beltdrive_belt_element_connector_dia,
                            h=beltdrive_belt_width+0.01,
                            center=true);
            } 
        }
        // cutout
        translate([ 0,
                    (beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/4+1),
                    -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
            cube(size=[    beltdrive_belt_width/2+tollerance_rotating_faces,
                            beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2+0.01,
                            beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2+0.01],
                            center=true);
        }
    }
    // Connector back
    difference() {
        hull() {
            translate([ 0,
                        -(beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/4-1),
                        -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
                cube(size=[ beltdrive_belt_width,
                            (beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2,
                            beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2],
                            center=true);
            }
            translate([ 0,
                        -(beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/4+1), // Why "+1"  // when removed the overall-length of the element doesnt fit anymore
                        -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
                rotate([0, 90, 0]) {
                    cylinder(   d=beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2,
                                h=beltdrive_belt_width,
                                center=true);
                }
            }
        }
        // hole
        translate([ 0,
                    -(beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/4+1), // Why "+1"  // when removed the overall-length of the element doesnt fit anymore
                    -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
            rotate([0, 90, 0]) {
                cylinder(  d=beltdrive_belt_element_connector_dia,
                            h=beltdrive_belt_width+0.01,
                            center=true);
            } 
        }
        // cutout
        translate([ 0,
                    -(beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/4+1),
                    -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
            translate([beltdrive_belt_width/2-beltdrive_belt_width/8+0.01, 0, 0]) {
                cube(size=[    beltdrive_belt_width/4+tollerance_rotating_faces,
                                beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2+0.01,
                                beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2+0.01],
                                center=true);
            }
            translate([-beltdrive_belt_width/2+beltdrive_belt_width/8-0.01, 0, 0]) {
                cube(size=[    beltdrive_belt_width/4+tollerance_rotating_faces,
                                beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2+0.01,
                                beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2+0.01],
                                center=true);
            }
        }
    }
}

module belt_element_cutout() {
    // Main block
    hull() {
        translate([0, 0, 0.5]) {
            cube(size=[beltdrive_belt_width, beltdrive_belt_element_length, 1], center=true);    
        }
        
        translate([0, 0, beltdrive_belt_block_height-0.5]) {
            cube(size=[ beltdrive_belt_width - beltdrive_belt_block_top_reduce,
                        beltdrive_belt_element_length - beltdrive_belt_block_top_reduce,
                        1],
                        center=true);
        }
    }
    // Connector Block
    translate([ 0,
                0,
                -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
        cube(size=[ beltdrive_belt_width,
                    beltdrive_belt_element_length,
                    beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2],
                    center=true);
    }
    // Connector front
    translate([ 0,
                beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2,
                -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
        cube(size=[ beltdrive_belt_width,
                    beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2,
                    beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2],
                    center=true);
    }
    // Connector back
    translate([ 0,
                -(beltdrive_belt_element_length/2+(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2),
                -(beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2)/2+1]) {
        cube(size=[ beltdrive_belt_width,
                    beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2,
                    beltdrive_belt_element_connector_dia + beltdrive_belt_element_connector_thickness*2],
                    center=true);
    }
}