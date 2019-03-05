include <../vars.scad>

module damper() {
            rotate([0, 0, 0]) {
                intersection() {
                    cylinder(d=damper_diameter, h=damper_extended_length-damper_diameter/2, center=true);
                    scale([1, 1, 9]) {
                        sphere(d=damper_diameter);
                    }
                }
                translate([0, 0, damper_extended_length/2]) {
                    difference() {
                        scale([1, .5, 1]) {
                            sphere(d=damper_diameter);
                        }
                        rotate([90, 0, 0]) {
                            cylinder(d=damper_upper_hole_diamter, h=damper_diameter, center=true);
                        }
                        
                    }   
                }
                translate([0, 0, -damper_extended_length/2]) {
                    difference() {
                        scale([1, .5, 1]) {
                            sphere(d=damper_diameter);
                        }
                        rotate([90, 0, 0]) {
                            cylinder(d=damper_lower_hole_diameter, h=damper_diameter, center=true);
                        }
                        
                    }   
                }
            }
}