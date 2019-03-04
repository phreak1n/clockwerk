include <../vars.scad>


module make_ring_of (radius, count) {
    for (a = [0: count -1]){
        angle = a * 360 /count;
        
        translate (radius * [sin(angle), -cos(angle), 0])
            rotate ([0, 0, angle])
                children ();
    }
}

module powerwheel(
    width,
    hole_diameter,
    teeth_amount,
    teeth_l,
    teeth_w,
    teeth_h,
    teeth_ls,
    teeth_ws,
    teeth_tollerance,
    math_teeth_space,
    pi) {
    
    diameter = (teeth_amount * (teeth_l + math_teeth_space)) / pi;
    difference() {
        union(){
            cylinder( d=diameter, h=width, center=true);
            
            translate([0, 0, -teeth_w/2]) {
                make_ring_of (radius = diameter/2, count = teeth_amount)
                rotate([270, 90, 0]) {
                    hull() {
                        cube(size=[teeth_w, teeth_l, .1], center=true);
                        translate([0, 0, -teeth_h]) {
                            scale([teeth_ls, teeth_ws, 1]) {
                                cube(size=[teeth_w, teeth_l, .1], center=true);
                            }
                        }
                    }
                }
            }
        }
        cylinder(d=hole_diameter, h=width+2, center=true);
    }
}