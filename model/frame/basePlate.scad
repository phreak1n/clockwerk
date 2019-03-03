include <../vars.scad>;

// Use with:
//basePlate(bp_base_length, bp_base_width, bp_base_thickness, bp_front_length, bp_front_width, bp_back_length, bp_back_width);

baseL = bp_base_length;
baseW = bp_base_width;
baseT = bp_base_thickness;
frontL = bp_front_length;
frontW = bp_front_width;
backL = bp_back_length;
backW = bp_back_width;

// base
module bp_base(baseL, baseW, baseT) {
    cube(size=[baseL, baseW, baseT], center=true);
}


// front
module bp_front(frontL, frontW, baseT, baseL) {
    translate([baseL/2+frontL/2, 0, 0]) {
        cube(size=[frontL, frontW, baseT], center=true);   
    }
}

// back
module bp_back(backL, backW, baseT, baseL) {
    translate([-baseL/2-backL/2, 0, 0]) {
        cube(size=[backL, backW, baseT], center=true);
    }
}


// basePlate
module basePlate(baseL, baseW, baseT, frontL, frontW, backL, backW) {
    hull() {
        bp_base(baseL, baseW, baseT);
        bp_front(frontL, frontW, baseT, baseL);
        bp_back(backL, backW, baseT, baseL);
    }
}