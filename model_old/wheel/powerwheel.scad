include <../vars.scad>


module make_ring_of (radius, count) {
    for (a = [0: count -1]){
        angle = a * 360 /count;
        
        translate (radius * [sin(angle), -cos(angle), 0])
            rotate ([0, 0, angle])
                children ();
    }
}

module powerwheel() {
    
    diameter = (pw_teeth_amount * (b_inner_profile_teeth_length + math_teeth_space)) / pi;
    difference() {
        union(){
            cylinder( d=diameter, h=pw_powerwheel_width, center=true);
            
            translate([0, 0, -b_inner_profile_teeth_width/2]) {
                make_ring_of (radius = diameter/2, count = pw_teeth_amount)
                rotate([270, 90, 0]) {
                    hull() {
                        cube(size=[b_inner_profile_teeth_width, b_inner_profile_teeth_length, .1], center=true);
                        translate([0, 0, -b_inner_profile_teeth_height]) {
                            scale([b_inner_profile_teeth_length_scale, b_inner_profile_teeth_width_scale, 1]) {
                                cube(size=[b_inner_profile_teeth_width, b_inner_profile_teeth_length, .1], center=true);
                            }
                        }
                    }
                }
            }
        }
        cylinder(d=pw_powerwheel_inner_hole_diameter, h=pw_powerwheel_width+2, center=true);
    }
}