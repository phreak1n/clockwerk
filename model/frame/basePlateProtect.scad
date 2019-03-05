include <../vars.scad>;

include <basePlate.scad>

// Use with:
// basePlateProtect(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);





// top
module bpp_top() {
    translate([0, 0, -bp_base_thickness/2]) {
        scale([1, 1, 0.01]) {
            basePlate();
        }
        
    }
}

//bottom
module bpp_bottom() {
    translate([0, 0, -bp_base_thickness/2-bpp_protection_height]) {
        scale([bpp_protection_bottom_scale, bpp_protection_bottom_scale, 0.01]) {
                    basePlate();
        }
    }
}





// basePlateProtect
module basePlateProtect() {
    hull() {
        bpp_top();
        bpp_bottom();
    }
}

//basePlateProtect(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);
