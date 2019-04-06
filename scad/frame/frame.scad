include <frame_main.scad>
include <frame_front.scad>
include <frame_back.scad>
include <frame_bottom.scad>
include <frame_connector.scad>

module frame_assembly() {
    frame_main();
    translate([0, (frame_main_length+1)/2, 0]) {   
        frame_front();
    }
    translate([0, -(frame_main_length+1)/2, 0]) {
        frame_back();    
    }
    translate([0, 0, -frame_main_thickness/2]) {
     frame_bottom();   
    }
}