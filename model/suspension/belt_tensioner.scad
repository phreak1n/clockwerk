include <../vars.scad>



module belt_tensioner() {
    translate([10, 0, 0]) {
        cube(size=[10, 10, 10], center=true);
    }
}