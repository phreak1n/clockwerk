

module beltdrive_suspension_top_leg() {
    difference() {
        hull() {
            translate([0, 0, -beltdrive_suspension_connector_height/2]) {
                cube(size=[ beltdrive_suspension_connector_width,
                            beltdrive_suspension_connector_length, 0.01],
                            center=true);   
            }
            rotate([beltdrive_suspension_leg_top_angle, 0, 0]) {
                translate([0, -beltdrive_suspension_leg_top_length, 0]) {
                    rotate([0, 90, 0]) {
                        cylinder(   d=beltdrive_suspension_leg_top_joint_dia,
                                    h=beltdrive_suspension_leg_top_width,
                                    center=true);
                    }
                    
                }
            }
        }
        rotate([beltdrive_suspension_leg_top_angle, 0, 0]) {
            translate([0, -beltdrive_suspension_leg_top_length, 0]) {
                // Cutout for Joint and Bolt
                rotate([0, 90, 0]) {
                    cylinder(   d=beltdrive_suspension_leg_top_joint_bolt_dia,
                                h=beltdrive_suspension_leg_top_width+0.01, 
                                center=true);
                    cylinder(   d=beltdrive_suspension_leg_top_joint_dia+0.01,
                                h=beltdrive_suspension_leg_bottom_joint_width+tollerance_rotating_faces*2,
                                center=true);
                }
                // Cutout for movement of the lower leg
                rotate([-beltdrive_suspension_leg_top_angle-beltdrive_suspension_leg_bottom_joint_extra_cutout_angle, 0, 0]) {
                    translate([0, 0, -beltdrive_suspension_leg_top_joint_dia/2+beltdrive_suspension_leg_bottom_joint_extra_cutout_height]) {
                        cube(size=[    beltdrive_suspension_leg_bottom_joint_width + tollerance_rotating_faces*2,
                                        beltdrive_suspension_leg_top_joint_dia*10,
                                        beltdrive_suspension_leg_top_joint_dia],
                                        center=true);
                    }
                }
                   
            }
        }
    }
}