
beltdrive_suspension_leg_bottom_wheel_connector_dia_thickness = 4;
beltdrive_suspension_leg_bottom_wheel_connector_width = beltdrive_wheel_width/2;

module beltdrive_suspension_bottom_leg() {
    difference() {
        union() {
        // Joint
        rotate([0, 90, 0]) {
            cylinder(   d=beltdrive_suspension_leg_bottom_joint_dia,
                        h=beltdrive_suspension_leg_bottom_joint_width,
                        center=true);
        }
        // Leg
        translate([ 0,
                    beltdrive_suspension_leg_bottom_length/2,
                    0]) {
            cube(size=[ beltdrive_suspension_leg_bottom_width,
                        beltdrive_suspension_leg_bottom_length,
                        beltdrive_suspension_leg_bottom_height],
                        center=true);
        }
        // Wheel connector
        translate([ beltdrive_suspension_leg_bottom_width+beltdrive_suspension_leg_bottom_wheel_connector_dia_thickness/2,
                    beltdrive_suspension_leg_bottom_length,
                    0]) {
            rotate([0, 90, 0]) {
                difference() {
                    hull() {
                        cylinder(   d=beltdrive_suspension_leg_bottom_wheel_connector_dia_thickness + beltdrive_wheel_bolt_dia,
                                    h=beltdrive_suspension_leg_bottom_wheel_connector_width,
                                    center=true);
                        translate([0, 0, -beltdrive_suspension_leg_bottom_wheel_connector_width/2-beltdrive_suspension_leg_bottom_width]) {
                            cylinder(d=beltdrive_suspension_leg_bottom_width, h=0.01, center=true);
                        }
                    }
                    cylinder(d=beltdrive_suspension_leg_top_joint_bolt_dia, h=beltdrive_wheel_width+0.01, center=true);
                }
                
            }
        }
    }
    // Bolt hole
    rotate([0, 90, 0]) {
        cylinder(   d=beltdrive_suspension_leg_top_joint_bolt_dia+tollerance_rotating_faces,
                    h=20,
                    center=true);
    }
    }    
}