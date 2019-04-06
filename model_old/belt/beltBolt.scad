include <../vars.scad>

module beltBolt() {
    translate([b_belt_width/2-b_belt_width/4+b_belt_element_connector_bolt_diameter, 0, 0]) {
        scale([2.5, 1, 1]) {
            sphere(d=b_belt_element_connector_bolt_diameter);   
        }
    }
    translate([-b_belt_width/2+b_belt_width/4-b_belt_element_connector_bolt_diameter, 0, 0]) {
        scale([2.5, 1, 1]) {
            sphere(d=b_belt_element_connector_bolt_diameter);   
        }
    }
    rotate([0, 90, 0]) {
        cylinder(d=b_belt_element_connector_bolt_diameter-b_belt_bolt_tollerance, h=b_belt_width, center=true);
    }
    
}
