include <main.scad>

// Main Body
frame_assembly();
//beltdrive_assembly();

// Belt
translate([frame_main_width*2, 0, 0]) {
    arrange_in_line_Y(  beltdrive_belt_element_length_overall*20,
                        beltdrive_belt_element_length_overall,
                        20){
        //belt_element();
    }
}

// Main Motor clamp
translate([frame_main_width*2+ 40, 0, 0]) {
    //beltdrive_motormount_clamp();
}
