include <../vars.scad>;

include <basePlate.scad>

// Use with:
// basePlateProtect(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);


baseL = bp_base_length;
baseW = bp_base_width;
baseT = bp_base_thickness;
basePH = bpp_protection_height;
basePS = bpp_protection_bottom_scale;
frontL = bp_front_length;
frontW = bp_front_width;
backL = bp_back_length;
backW = bp_back_width;


// top
module bpp_top(baseL, baseW, baseT, frontL, frontW, backL, backW) {
    translate([0, 0, -baseT/2]) {
        basePlate(baseL, baseW, 0.1, frontL, frontW, backL, backW);
    }
}

//bottom
module bpp_bottom(baseL, baseW, baseT, basePH, basePS, frontL, frontW, backL, backW) {
    translate([0, 0, -baseT/2-basePH]) {
        scale([basePS, basePS, 1]) {
                    basePlate(baseL, baseW, 0.1, frontL, frontW, backL, backW);
        }
    }
}





// basePlateProtect
module basePlateProtect(baseL, baseW, baseT, basePH, basePS, frontL, frontW, backL, backW) {
    hull() {
        bpp_top(baseL, baseW, baseT, frontL, frontW, backL, backW);
        bpp_bottom(baseL, baseW, baseT, basePH, basePS, frontL, frontW, backL, backW);
    }
}

//basePlateProtect(bp_base_length, bp_base_width, bp_base_thickness,bpp_protection_height ,bpp_protection_bottom_scale, bp_front_length, bp_front_width, bp_back_length, bp_back_width);
