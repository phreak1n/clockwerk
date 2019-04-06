include <../vars.scad>;

// Use with:
//basePlate(bp_base_length, bp_base_width, bp_base_thickness, bp_front_length, bp_front_width, bp_back_length, bp_back_width);


// base
module bp_base() {
    cube(size=[bp_base_length, bp_base_width, bp_base_thickness], center=true);
}


// front
module bp_front() {
    translate([bp_base_length/2+bp_front_length/2, 0, 0]) {
        cube(size=[bp_front_length, bp_front_width, bp_base_thickness], center=true);   
    }
}

// back
module bp_back() {
    translate([-bp_base_length/2-bp_back_length/2, 0, 0]) {
        cube(size=[bp_back_length, bp_back_width, bp_base_thickness], center=true);
    }
}


// basePlate
module basePlate() {
    hull() {
        bp_base();
        bp_front();
        bp_back();
    }
}