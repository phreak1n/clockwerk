include <belt_element.scad>
include <belt_wheel.scad>
include <belt_powerwheel.scad>
include <beltdrive_suspension.scad>

module beltdrive_assembly() {
    translate([0, 0, frame_main_thickness/2+frame_wall_height/2]) {
        translate([(frame_main_width+beltdrive_suspension_connector_width)/2, 0, 0]) {
            beltdrive_suspension_assembly();    
        }
        /*
        rotate([0, 180, 0]) {
            translate([(frame_main_width+beltdrive_suspension_connector_width)/2, 0, 0]) {
                beltdrive_suspension_assembly();    
            }
        }
        */
    }
    mirror([1, 0, 0]) {
        translate([0, 0, frame_main_thickness/2+frame_wall_height/2]) {
        translate([(frame_main_width+beltdrive_suspension_connector_width)/2, 0, 0]) {
            beltdrive_suspension_assembly();    
        }
        /*
        rotate([0, 180, 0]) {
            translate([(frame_main_width+beltdrive_suspension_connector_width)/2, 0, 0]) {
                beltdrive_suspension_assembly();    
            }
        }
        */
    }
    }
    
}

module beltdrive_cutout_assembly() {
    translate([0, 0, frame_main_thickness/2+frame_wall_height/2]) {
        translate([(frame_main_width+beltdrive_suspension_connector_width)/2+0.01, 0, 0]) {
            beltdrive_suspension_cutout_assembly();
        }
        rotate([0, 180, 0]) {
            translate([(frame_main_width+beltdrive_suspension_connector_width)/2+0.01, 0, 0]) {
                beltdrive_suspension_cutout_assembly();
            }
        }
    }
}

