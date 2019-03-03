include <../vars.scad>

module beltBolt(length, diameter, tollerance) {
    translate([length/2-length/4+diameter, 0, 0]) {
        scale([2.5, 1, 1]) {
            sphere(d=diameter);   
        }
    }
    translate([-length/2+length/4-diameter, 0, 0]) {
        scale([2.5, 1, 1]) {
            sphere(d=diameter);   
        }
    }
    rotate([0, 90, 0]) {
        cylinder(d=diameter-tollerance, h=length, center=true);
    }
    
}