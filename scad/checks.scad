if (true) {
    if (frame_back_length  < part_motor_beltdrive_main_dia + min_thickness*2 + beltdrive_motormount_holder_thickness*2 + m4_hexnut_diameter*2) {
        to_short = -(frame_back_length - ( part_motor_beltdrive_main_dia + min_thickness*2 + beltdrive_motormount_holder_thickness*2 + m4_hexnut_diameter*2));
        echo(str("Frame back is to short for Main Motor diameter! Add at least ", str(to_short),str(" Units")));    
    }
}
