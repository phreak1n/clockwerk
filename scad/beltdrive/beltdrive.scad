include <belt_element.scad>
include <belt_wheel.scad>
include <belt_powerwheel.scad>
include <beltdrive_suspension.scad>

module beltdrive_assembly() {
    translate([(frame_main_width+beltdrive_suspension_connector_width)/2, 0, 0]) {
        beltdrive_suspension_assembly();    
    }
    
}