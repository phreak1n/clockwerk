module frame_back() {
    difference() {
        union() {
            hull() {
                cube(size=[frame_back_width, 1, frame_back_thickness], center=true);
                translate([0, -frame_back_length, 0]) {
                    cube(size=[frame_back_narrow_width, 1, frame_back_thickness], center=true);
                }
            }
            translate([0, -frame_connector_block_length/2+0.5, (frame_back_thickness+frame_connector_block_height)/2]) {
                rotate([0, 0, 180]) {
                    frame_connector_male();
                }
            }
            
            // Slope
            translate([0, 0, frame_back_thickness/2]) {
                difference() {
                    hull() {
                        cube(size=[frame_back_width, 1, 1], center=true);
                        translate([0, -frame_back_length, 0]) {
                            cube(size=[frame_back_narrow_width, 1, 1], center=true);
                        }
                        translate([0, 0, frame_wall_height-0.5]) {
                            cube(size=[frame_back_width, 1, 1], center=true);
                        }
                    }
                    translate([0, 0, frame_connector_block_height/2]) {
                        rotate([90, 0, 0]) {
                            cylinder(d=m3_screw_hexsocket_head_diameter, h=1000, center=true); //ToDo: Replace the "1000" -Value with somtihng variable      
                        }
                    }
                }
                // Pins
                translate([ -frame_back_width/2+frame_wall_thickness/2,
                            frame_connector_wall_pin_length/2,
                            frame_wall_height-(frame_wall_thickness-min_thickness*2)/2-min_thickness]) {
                    rotate([90, 0, 0]) {
                        cylinder(d=frame_wall_thickness-min_thickness*2+tollerance_push_fit, h=frame_connector_wall_pin_length, center=true);
                    }
                    
                }
                translate([ frame_back_width/2-frame_wall_thickness/2,
                            frame_connector_wall_pin_length/2,
                            frame_wall_height-(frame_wall_thickness-min_thickness*2)/2-min_thickness]) {
                    rotate([90, 0, 0]) {
                        cylinder(d=frame_wall_thickness-min_thickness*2+tollerance_push_fit, h=frame_connector_wall_pin_length, center=true);
                    }
                }
                // Beltdrive motormount
                if (drive_type == "beltdrive") {
                    difference() {
                        union() {
                            translate([frame_back_width/2-frame_wall_thickness/2, 0, 0]) {
                                beltdrive_motormount_fix();
                                
                            }
                            mirror([1,0,0]) {
                                translate([frame_back_width/2-frame_wall_thickness/2, 0, 0]) {
                                    beltdrive_motormount_fix();
                                }
                            }
                        }
                    }
                }
            }
        }
        if (drive_type == "beltdrive") {
            // motor cutout
            translate([ frame_back_width/2 + beltdrive_suspension_connector_width,
                        -frame_back_length/2,
                        frame_wall_height]) {
                rotate([0, 90, 0]) {
                    parts_motor_beltdrive_main();
                    %parts_motor_beltdrive_main();
                }
                
            }
            mirror([1,0,0]) {
                translate([ frame_back_width/2 + beltdrive_suspension_connector_width,
                            -frame_back_length/2,
                            frame_wall_height+2]) {
                    rotate([0, 90, 0]) {
                        parts_motor_beltdrive_main();
                        %parts_motor_beltdrive_main();
                    }
                    
                }
            }
            // screwholes motormount
            translate([frame_back_width/2-frame_wall_thickness/2, 0, 1.51]) {
                beltdrive_motormount_fix_screwholes();
            }
            mirror([1,0,0]) {
                translate([frame_back_width/2-frame_wall_thickness/2, 0, 1]) {
                    beltdrive_motormount_fix_screwholes();
                }
            }
        }
    }
}




/*

translate([ frame_back_width/2 + beltdrive_suspension_connector_width,
                            -frame_back_length/2,
                            frame_wall_height]) {
                    rotate([0, 90, 0]) {
                        parts_motor_beltdrive_main();
                    }
                    
                }
                mirror([1,0,0]) {
                    translate([ frame_back_width/2 + beltdrive_suspension_connector_width,
                                -frame_back_length/2,
                                frame_wall_height]) {
                        rotate([0, 90, 0]) {
                            parts_motor_beltdrive_main();
                        }
                        
                    }
                }

*/