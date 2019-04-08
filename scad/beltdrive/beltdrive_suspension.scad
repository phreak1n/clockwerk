include <beltdrive_suspension_connector.scad>
include <beltdrive_suspension_top.scad>
include <beltdrive_suspension_top_leg.scad>
include <beltdrive_suspension_bottom_leg.scad>
include <belt_element.scad>

module beltdrive_suspension_assembly() {
    arrange_in_line_Y(  frame_main_length, 
                        beltdrive_suspension_connector_length,
                        beltdrive_suspension_elements) {
        // Top suspension
        beltdrive_suspension_top();
        // Bottom suspensino
        rotate([beltdrive_suspension_leg_top_angle, 0, 0]) {
            translate([0, -beltdrive_suspension_leg_top_length, 0]) {
                rotate([-beltdrive_suspension_leg_top_angle*2, 0, 0]) {
                    beltdrive_suspension_bottom_leg();  
                }
            }
        }
        // Belt wheel
        rotate([beltdrive_suspension_leg_top_angle, 0, 0]) {
            translate([0, -beltdrive_suspension_leg_top_length, 0]) {
                rotate([-beltdrive_suspension_leg_top_angle*2, 0, 0]) {
                    translate([beltdrive_wheel_space_to_suspension, beltdrive_suspension_leg_bottom_length, 0]) {
                        belt_wheel();
                    }  
                }
            }
        }
    }    
}


module beltdrive_suspension_cutout_assembly() {
    arrange_in_line_Y(  frame_main_length, 
                        beltdrive_suspension_connector_length,
                        beltdrive_suspension_elements)
    beltdrive_suspension_top_cutout();    
}

