/*
    screws.scad
*/


module screw_hexsocket(diameter, length, head_diameter, head_height) {
    translate([0, 0, length/2-0.01]) {
        cylinder(d=diameter, h=length, center=true);
    }
    translate([0, 0, -head_height/2]) {
        cylinder(d=head_diameter, h=head_height, center=true);
    }
}

module hexnut(diameter,height,hole) {
    difference() {
        hull() {
            cube(size=[diameter, diameter/1.7322, height], center=true);
            rotate([0, 0, 120]){
                cube(size=[diameter, diameter/1.7322, height], center=true);
            } 
            rotate([0, 0, -120]) {
                cube(size=[diameter, diameter/1.7322, height], center=true);
            }
        }
        cylinder(d=hole, h=height+2, center=true);
    }
}

module hexnut_cutout(diameter,height) {
    hull() {
        cube(size=[diameter, diameter/1.7322, height], center=true);
        rotate([0, 0, 120]){
            cube(size=[diameter, diameter/1.7322, height], center=true);
        } 
        rotate([0, 0, -120]) {
            cube(size=[diameter, diameter/1.7322, height], center=true);
        }
    }
}



module m3nut() {
    hexnut(m3_hexnut_diameter, m3_hexnut_height, 3);
}
module m3xX() {
    screw_hexsocket(3, 200, m3_screw_hexsocket_head_diameter, 200);
}
module m3x10() {
    screw_hexsocket(3, 10, m3_screw_hexsocket_head_diameter, m3_screw_hexsocket_head_height);
}
module m3x12() {
    screw_hexsocket(3, 12, m3_screw_hexsocket_head_diameter, m3_screw_hexsocket_head_height);
}
module m3x15() {
    screw_hexsocket(3, 15, m3_screw_hexsocket_head_diameter, m3_screw_hexsocket_head_height);
}
module m3x20() {
    screw_hexsocket(3, 20, m3_screw_hexsocket_head_diameter, m3_screw_hexsocket_head_height);
}
module m3x25() {
    screw_hexsocket(3, 25, m3_screw_hexsocket_head_diameter, m3_screw_hexsocket_head_height);
}

module m4nutCutout() {
    hexnut_cutout(m4_hexnut_diameter, m4_hexnut_height);
}
module m4nut() {
    hexnut(m4_hexnut_diameter, m4_hexnut_height, 4);
}
module m4xX() {
    screw_hexsocket(4, 200, m4_screw_hexsocket_head_diameter, 200);
}
module m4x10() {
    screw_hexsocket(4, 10, m4_screw_hexsocket_head_diameter, m4_screw_hexsocket_head_height);
}
module m4x12() {
    screw_hexsocket(4, 12, m4_screw_hexsocket_head_diameter, m4_screw_hexsocket_head_height);
}
module m4x15() {
    screw_hexsocket(4, 15, m4_screw_hexsocket_head_diameter, m4_screw_hexsocket_head_height);
}
module m4x20() {
    screw_hexsocket(4, 20, m4_screw_hexsocket_head_diameter, m4_screw_hexsocket_head_height);
}
module m4x25() {
    screw_hexsocket(4, 25, m4_screw_hexsocket_head_diameter, m4_screw_hexsocket_head_height);
}