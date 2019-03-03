include <../vars.scad>

// Use with:
// beltElementBase(b_belt_width, b_belt_thickness, b_belt_element_length, b_belt_element_cutout, b_belt_element_connector_height, b_belt_element_connector_width, b_belt_element_connector_bolt_diameter);

//b_belt_width;
//b_belt_thickness;
//b_belt_element_length;
//b_belt_element_cutout;
//b_belt_element_connector_height;
//b_belt_element_connector_width;
//b_belt_element_connector_bolt_diameter;
//b_belt_element_rounding = 10; //in percent
//b_belt_element_tollerance = 1;





module base(width, thickness, length, cutout, c_height, c_width, c_bolt_diameter, rounding, tollerance) {
    difference() {
        union() {
            cube(size=[c_width, length, thickness], center=true);
            translate([0, -(length/2 - c_height/2), thickness]) {
                difference(){
                    cube(size=[c_width, c_height, c_height], center=true);
                    rotate([0, 90, 0]) {
                        cylinder(d=c_bolt_diameter, h=width, center=true);
                    }
                }       
            }
            translate([width/2-(width - c_width)/4, cutout, 0]) {
                cube(size=[(width - c_width)/2, length, thickness], center=true);
                translate([0, length/2 - c_height/2, thickness]) {
                    difference() {
                        cube(size=[(width - c_width)/2, c_height, c_height], center=true);
                        rotate([0, 90, 0]) {
                            cylinder(d=c_bolt_diameter, h=width, center=true);
                        }
                    }
                }
            }
            translate([-(width/2-(width - c_width)/4), cutout, 0]) {
                cube(size=[(width - c_width)/2, length, thickness], center=true);
                translate([0, length/2 - c_height/2, thickness]) {
                    difference() {
                        cube(size=[(width - c_width)/2, c_height, c_height], center=true);
                        rotate([0, 90, 0]) {
                            cylinder(d=c_bolt_diameter, h=width, center=true);
                        }
                    }
                }
            }
        }
        translate([cutout-tollerance/2, cutout/2, c_height/2]) {
            cube(size=[tollerance+0.1, length+cutout+2, thickness + c_height+2], center=true);
        }
        translate([-cutout+tollerance/2, cutout/2, c_height/2]) {
            cube(size=[tollerance+0.1, length+cutout+2, thickness + c_height+2], center=true);
        }
    }
    translate([0, cutout/2, 0]) {
        cube(size=[width, length-cutout, thickness], center=true);
    }    
}



module beltElementBase(width, thickness, length, cutout, c_height, c_width, c_bolt_diameter, rounding, tollerance) {
    base(width, thickness, length, cutout, c_height, c_width, c_bolt_diameter, rounding, tollerance);
}

//beltElementBase(b_belt_width, b_belt_thickness, b_belt_element_length, b_belt_element_cutout, b_belt_element_connector_height, b_belt_element_connector_width, b_belt_element_connector_bolt_diameter);