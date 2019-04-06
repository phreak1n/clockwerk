include <beltdrive_suspension_connector.scad>
include <beltdrive_suspension_top.scad>

module beltdrive_suspension_assembly() {
    arrange_in_line_Y(  frame_main_length, 
                        beltdrive_suspension_connector_length,
                        beltdrive_suspension_elements)
    beltdrive_suspension_top();
}