include <../vars.scad>

// Use with:
// beltElementBase(b_belt_b_belt_width, b_belt_b_belt_thickness, b_belt_element_b_belt_element_length, b_belt_element_b_belt_element_cutout, b_belt_element_connector_height, b_belt_element_connector_b_belt_width, b_belt_element_connector_bolt_diameter);

//b_belt_b_belt_width;
//b_belt_b_belt_thickness;
//b_belt_element_b_belt_element_length;
//b_belt_element_b_belt_element_cutout;
//b_belt_element_connector_height;
//b_belt_element_connector_b_belt_width;
//b_belt_element_connector_bolt_diameter;
//b_belt_element_b_belt_element_rounding = 10; //in percent
//b_belt_element_b_belt_element_tollerance = 1;





module base() {
    difference() {
        union() {
            cube(size=[b_belt_element_connector_width, b_belt_element_length, b_belt_thickness], center=true);
            translate([0, -(b_belt_element_length/2 - b_belt_element_connector_height/2), b_belt_thickness]) {
                difference(){
                    cube(size=[b_belt_element_connector_width, b_belt_element_connector_height, b_belt_element_connector_height], center=true);
                    rotate([0, 90, 0]) {
                        cylinder(d=b_belt_element_connector_bolt_diameter, h=b_belt_width, center=true);
                    }
                }       
            }
            translate([b_belt_width/2-(b_belt_width - b_belt_element_connector_width)/4, b_belt_element_cutout, 0]) {
                cube(size=[(b_belt_width - b_belt_element_connector_width)/2, b_belt_element_length, b_belt_thickness], center=true);
                translate([0, b_belt_element_length/2 - b_belt_element_connector_height/2, b_belt_thickness]) {
                    difference() {
                        cube(size=[(b_belt_width - b_belt_element_connector_width)/2, b_belt_element_connector_height, b_belt_element_connector_height], center=true);
                        rotate([0, 90, 0]) {
                            cylinder(d=b_belt_element_connector_bolt_diameter, h=b_belt_width, center=true);
                        }
                    }
                }
            }
            translate([-(b_belt_width/2-(b_belt_width - b_belt_element_connector_width)/4), b_belt_element_cutout, 0]) {
                cube(size=[(b_belt_width - b_belt_element_connector_width)/2, b_belt_element_length, b_belt_thickness], center=true);
                translate([0, b_belt_element_length/2 - b_belt_element_connector_height/2, b_belt_thickness]) {
                    difference() {
                        cube(size=[(b_belt_width - b_belt_element_connector_width)/2, b_belt_element_connector_height, b_belt_element_connector_height], center=true);
                        rotate([0, 90, 0]) {
                            cylinder(d=b_belt_element_connector_bolt_diameter, h=b_belt_width, center=true);
                        }
                    }
                }
            }
        }
        translate([b_belt_element_cutout-b_belt_element_tollerance/2, b_belt_element_cutout/2, b_belt_element_connector_height/2]) {
            cube(size=[b_belt_element_tollerance+0.1, b_belt_element_length+b_belt_element_cutout+2, b_belt_thickness + b_belt_element_connector_height+2], center=true);
        }
        translate([-b_belt_element_cutout+b_belt_element_tollerance/2, b_belt_element_cutout/2, b_belt_element_connector_height/2]) {
            cube(size=[b_belt_element_tollerance+0.1, b_belt_element_length+b_belt_element_cutout+2, b_belt_thickness + b_belt_element_connector_height+2], center=true);
        }
    }
    translate([0, b_belt_element_cutout/2, 0]) {
        cube(size=[b_belt_width, b_belt_element_length-b_belt_element_cutout, b_belt_thickness], center=true);
    }    
}



module beltElementBase() {
    base();
}

//beltElementBase(b_belt_b_belt_width, b_belt_b_belt_thickness, b_belt_element_b_belt_element_length, b_belt_element_b_belt_element_cutout, b_belt_element_connector_height, b_belt_element_connector_b_belt_width, b_belt_element_connector_bolt_diameter);