// New Vars


//ToDo: Elliminate all above  --- Code starts below

module beltdrive_motormount_fix() {
    difference() {
        union() {
            // outer holder
            hull() {
                translate([ beltdrive_suspension_connector_width-0.01,
                            -frame_back_length/2-0.5,
                            frame_wall_height-0.5]) {
                    cube(size=[ frame_wall_thickness, 
                                frame_back_length,
                                1], center=true);
                }
                translate([ 0,
                            -0.5,
                            0]) {
                    cube(size=[ frame_wall_thickness,
                                1,
                                1],
                                center=true);
                }
                translate([ -(frame_back_width - frame_back_narrow_width)/2,
                            -frame_back_length,
                            0]) {
                    cube(size=[ frame_wall_thickness ,
                                1,
                                1],
                                center=true);
                }
                translate([ beltdrive_suspension_connector_width/2-1.5,
                            frame_wall_thickness/2,
                            frame_wall_height-0.5]) {
                    cube(size=[1,
                                frame_wall_thickness,
                                1],
                                center=true);
                }
            }
            // inner holder
            translate([ beltdrive_suspension_connector_width - part_motor_beltdrive_main_length + frame_wall_thickness+0.01 ,
                        -frame_back_length/2-0.5,
                        frame_wall_height/2]) {
                cube(size=[ 10,
                            frame_back_length,
                            frame_wall_height],
                            center=true);
            }
        }
        // make space for suspension
        translate([ beltdrive_suspension_connector_width-1,
                    beltdrive_suspension_connector_length/2+0.5,
                    frame_wall_height/2]) {
            rotate([0, 0, 0]) {
                beltdrive_suspension_top();
            }   
        }
        // make space for main frame
        translate([ 0,
                    frame_wall_thickness/2+0.5,
                    frame_wall_height/2]) {
            cube(size=[frame_wall_thickness,
                        frame_wall_thickness,
                        frame_wall_height+1.01],
                        center=true);
        }
        // screwholes
        //beltdrive_motormount_fix_screwholes();
    }
}

module beltdrive_motormount_fix_screwholes() {
    /*
     to import and set first screw at [0,0,0]

    translate([ frame_wall_height+1,
                (min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                (frame_wall_thickness+beltdrive_suspension_connector_width)/2+beltdrive_motormount_screw_dia/2]) {
        beltdrive_motormount_fix_screwholes();
    }
    */

    // outer holes
    translate([0, 0, frame_wall_height+1]) {
        // front screw
        translate([ (frame_wall_thickness+beltdrive_suspension_connector_width)/2,
                    -(min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                    0]) {
            rotate([0, 180, 0]) {
                screw_hexsocket(beltdrive_motormount_screw_dia,
                                beltdrive_motormount_screw_length + screw_hole_pocket,
                                m4_screw_hexsocket_head_diameter,
                                100);
            }
            
        }
        // front nut
        translate([ (frame_wall_thickness+beltdrive_suspension_connector_width)/2,
                    -(min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                    -beltdrive_motormount_hexnut_deep-m4_hexnut_height/2]) {
            hull() {
                m4nutCutout();
                translate([0, -part_motor_beltdrive_main_dia/2, 0]) {
                    m4nutCutout();
                }
            }
        }
        
        translate([0, -part_motor_beltdrive_main_dia-beltdrive_motormount_holder_thickness*2 - m4_hexnut_diameter/2, 0]) {
            // back screw
            translate([ (frame_wall_thickness+beltdrive_suspension_connector_width)/2,
                        -(min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                        0]) {
                rotate([0, 180, 0]) {
                    screw_hexsocket(beltdrive_motormount_screw_dia,
                                    beltdrive_motormount_screw_length + screw_hole_pocket,
                                    m4_screw_hexsocket_head_diameter,
                                    100);
                }
                
            }
            //back nut
             translate([ (frame_wall_thickness+beltdrive_suspension_connector_width)/2,
                        -(min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                        -beltdrive_motormount_hexnut_deep-m4_hexnut_height/2]) {
                hull() {
                    m4nutCutout();
                    translate([0, part_motor_beltdrive_main_dia/2, 0]) {
                        m4nutCutout();
                    }
                }
            }
        }
    }

    // inner holes
    translate([-part_motor_beltdrive_main_length + frame_wall_thickness + 1, 
                0,
                frame_wall_height+1]) {
        // front screw
        translate([ (frame_wall_thickness+beltdrive_suspension_connector_width)/2,
                    -(min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                    0]) {
            rotate([0, 180, 0]) {
                screw_hexsocket(beltdrive_motormount_screw_dia,
                                beltdrive_motormount_screw_length + screw_hole_pocket,
                                m4_screw_hexsocket_head_diameter,
                                100);
            }
            
        }
        // front nut
        translate([ (frame_wall_thickness+beltdrive_suspension_connector_width)/2,
                    -(min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                    -beltdrive_motormount_hexnut_deep-m4_hexnut_height/2]) {
            hull() {
                m4nutCutout();
                translate([0, -part_motor_beltdrive_main_dia/2, 0]) {
                    m4nutCutout();
                }
            }
        }
        
        translate([0, -part_motor_beltdrive_main_dia-beltdrive_motormount_holder_thickness*2 - m4_hexnut_diameter/2, 0]) {
            // back screw
            translate([ (frame_wall_thickness+beltdrive_suspension_connector_width)/2,
                        -(min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                        0]) {
                rotate([0, 180, 0]) {
                    screw_hexsocket(beltdrive_motormount_screw_dia,
                                    beltdrive_motormount_screw_length + screw_hole_pocket,
                                    m4_screw_hexsocket_head_diameter,
                                    100);
                }
                
            }
            //back nut
             translate([ (frame_wall_thickness+beltdrive_suspension_connector_width)/2,
                        -(min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                        -beltdrive_motormount_hexnut_deep-m4_hexnut_height/2]) {
                hull() {
                    m4nutCutout();
                    translate([0, part_motor_beltdrive_main_dia/2, 0]) {
                        m4nutCutout();
                    }
                }
            }
        }
    }   
}




