


module belt_wheel() {
    translate([ beltdrive_suspension_leg_bottom_width/2+beltdrive_wheel_width/2,
                0,
                0]) {
        difference() {
            rotate([0, 90, 0]) {
                cylinder(  d=beltdrive_wheel_dia + beltdrive_belt_block_height*2,
                            h=beltdrive_wheel_width,
                            center=true);
            }
            rotate([0, 90, 0]) {
                make_ring_of (beltdrive_wheel_dia/2+beltdrive_belt_block_height, $fn) {
                    rotate([-90, 90, 0]) {
                        scale([1.01, 1.01, 1.01]) {
                            belt_element_cutout();
                        }
                    }
                }
                translate([0, 0, -beltdrive_wheel_width/4]) {
                    cylinder(d=beltdrive_wheel_inner_dia, h=beltdrive_wheel_width/4*3, center=true);
                }
                cylinder(d=beltdrive_wheel_bolt_dia, h=beltdrive_wheel_width+0.01, center=true);
            }
        }
    }
}