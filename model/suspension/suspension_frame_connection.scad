include <../vars.scad>
include <../parts/screws.scad>
include <suspension.scad>



module frame_connection() {
}

module suspension_connection() {
    difference() {
        union() {
            cube(size=[ su_upper_leg_connection_block_height , su_upper_leg_connection_block_width, math_su_upper_damper_connector_thickness], center=true);
            
        }
        translate([0, su_upper_leg_connection_block_width/4, -(su_upper_leg_connection_height/2-su_upper_leg_thickness/2)]) {
                cube(size=[su_upper_leg_connection_width, su_upper_leg_connection_width, su_upper_leg_connection_height], center=true);
            }
        translate([0, -su_upper_leg_connection_block_width/4, -(su_upper_leg_connection_height/2-su_upper_leg_thickness/2)]) {
                cube(size=[su_upper_leg_connection_width, su_upper_leg_connection_width, su_upper_leg_connection_height], center=true);
            }
        translate([0, 0, math_su_upper_damper_connector_thickness/2-m4_screw_hexsocket_head_height+0.01]) {
            rotate([0, 180, 0]) {
                m4x25();
            }
        }
        translate([0, 0, math_su_upper_damper_connector_thickness/2-m4_hexnut_height/2+0.01]) {
            hull() {
                m4nut();
            }
        }
    }
}

module beam() {
    space = (math_su_beam_length-su_upper_leg_connection_block_width)/(wheel_amount-1);

    difference() {
        cube(size=[su_upper_leg_connection_block_height, math_su_beam_length, su_beam_thickness], center=true);
        for (i=[0:wheel_amount-1]) {
            translate([0, math_su_beam_length/2-su_upper_leg_connection_block_width/2-i*space, (math_su_upper_damper_connector_thickness/2-su_beam_thickness/2)]) {
                rotate([180, 0, 0]) {
                    scale([1, 1, 1.1]) {
                        hull() {
                            suspension_connection();    
                        }   
                    }
                }        
            }
        }
    }
    

    
    for (i=[0:wheel_amount-1]) {
        translate([0, math_su_beam_length/2-su_upper_leg_connection_block_width/2-i*space, (math_su_upper_damper_connector_thickness/2-su_beam_thickness/2)]) {
            rotate([180, 0, 0]) {
                suspension_connection();
            }        
        }
    }
}

module suspension_frame_connection() {
    beam();
    frame_connection();
}