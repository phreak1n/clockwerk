module beltdrive_motormount_clamp() {
    difference(){
        cylinder(   d=part_motor_beltdrive_main_dia+beltdrive_motormount_holder_thickness*2,
                    h=frame_wall_thickness,
                    center=true);
        cylinder(   d=part_motor_beltdrive_main_dia,
                    h=frame_wall_thickness+0.01,
                    center=true);
        translate([ (part_motor_beltdrive_main_dia+beltdrive_motormount_holder_thickness*2)/2-clamp_space,
                    0,
                    0]) {
            cube(size=[ part_motor_beltdrive_main_dia+beltdrive_motormount_holder_thickness*2,
                        part_motor_beltdrive_main_dia+beltdrive_motormount_holder_thickness*2,
                        frame_wall_thickness+0.01],
                        center=true);
        }
    }
    // ears
    difference() {
        union() {
            translate([ -beltdrive_motormount_holder_thickness/2-clamp_space,
                        part_motor_beltdrive_main_dia/2+beltdrive_motormount_holder_thickness/2,
                        0]) {
                hull() {
                    cube(size=[ beltdrive_motormount_holder_thickness,
                                beltdrive_motormount_holder_thickness,
                                frame_wall_thickness],
                                center=true);
                    translate([ 0,
                                beltdrive_motormount_holder_thickness/2+m4_screw_hexsocket_head_diameter,
                                0]) {
                        rotate([0, 90, 0]) {
                            cylinder(d=frame_wall_thickness, h=beltdrive_motormount_holder_thickness, center=true);
                        }
                    }
                }
            }
            mirror([0, 1, 0]) {
                translate([ -beltdrive_motormount_holder_thickness/2-clamp_space,
                    part_motor_beltdrive_main_dia/2+beltdrive_motormount_holder_thickness/2,
                    0]) {
            hull() {
                cube(size=[ beltdrive_motormount_holder_thickness,
                            beltdrive_motormount_holder_thickness,
                            frame_wall_thickness],
                            center=true);
                translate([ 0,
                            beltdrive_motormount_holder_thickness/2+m4_screw_hexsocket_head_diameter,
                            0]) {
                    rotate([0, 90, 0]) {
                        cylinder(d=frame_wall_thickness, h=beltdrive_motormount_holder_thickness, center=true);
                    }
                }
            }
        }
            }
            
        }
        translate([ frame_wall_height+1,
                    (min_thickness + beltdrive_motormount_holder_thickness + m4_hexnut_diameter/2),
                    (frame_wall_thickness+beltdrive_suspension_connector_width)/2+beltdrive_motormount_screw_dia/2]) {
            translate([ -beltdrive_motormount_holder_thickness,
                        part_motor_beltdrive_main_dia/2+beltdrive_motormount_holder_thickness+m4_hexnut_diameter/4,
                        0]) {
                rotate([0, -90, 0]) {
                beltdrive_motormount_fix_screwholes();
            }
            }   
        }
    }
}
