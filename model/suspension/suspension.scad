include <../vars.scad>
include <../parts/damper.scad>
include <../parts/screws.scad>



module upper_leg_connection_block() {
    difference() {
        union() {
            cube(size=[ su_upper_leg_connection_block_height , su_upper_leg_connection_block_width, math_su_upper_damper_connector_thickness], center=true);
            translate([0, su_upper_leg_connection_block_width/4, -(su_upper_leg_connection_height/2+su_upper_leg_thickness/2)]) {
                cube(size=[su_upper_leg_connection_width, su_upper_leg_connection_width, su_upper_leg_connection_height], center=true);
            }
            translate([0, -su_upper_leg_connection_block_width/4, -(su_upper_leg_connection_height/2+su_upper_leg_thickness/2)]) {
                cube(size=[su_upper_leg_connection_width, su_upper_leg_connection_width, su_upper_leg_connection_height], center=true);
            }
        }
        translate([0, 0, math_su_upper_damper_connector_thickness/2-m4_screw_hexsocket_head_height+0.01]) {
            rotate([0, 180, 0]) {
                m4x25();
            }
            
        }
    }
}

module upper_damper_connector() {
    difference(){
        hull() {
            cylinder(d=su_upper_leg_connection_block_height, h=math_su_upper_damper_connector_thickness, center=true);
            translate([0, su_upper_leg_connection_block_height/2, 0]) {
                        cube(size=[su_upper_leg_connection_block_height, 1, math_su_upper_damper_connector_thickness], center=true);   
            }   
        }
        cylinder(d=damper_upper_hole_diamter, h=math_su_upper_damper_connector_thickness+2, center=true);
        translate([su_upper_leg_connection_block_height/2+damper_upper_hole_diamter/2+su_upper_damper_connector_down_thickness, 0, 0]) {
            cube(size=[ su_upper_leg_connection_block_height, su_upper_leg_connection_block_height, math_su_upper_damper_connector_thickness+0.01], center=true);
        }
        hull() {
            cylinder(d=su_upper_leg_connection_block_height-su_upper_damper_connector_side_thickness*2, h=damper_upper_hole_length, center=true);
            translate([su_upper_leg_connection_block_height, 0, 0]) {
                cube(size=[su_upper_leg_connection_block_height, su_upper_leg_connection_block_height, math_su_upper_damper_connector_thickness], center=true);
            }
        }
    }
}

module upper_leg() {
    rotate([0, 0, -su_upper_leg_angle]) {
        translate([0, -(su_upper_leg_connection_block_width - su_upper_leg_width)/2, 0]) {
            upper_leg_connection_block();
        }
        translate([0, math_su_upper_damper_connector_trans_y, 0]) {
            upper_damper_connector();
        }
    }
    translate([su_upper_leg_length/2, 0, 0]) {
        difference(){
            hull() {
                cube(size=[su_upper_leg_length-su_upper_leg_width/2, su_upper_leg_width, su_upper_leg_thickness], center=true);   
                translate([su_upper_leg_length/2-su_upper_leg_width/4, 0, 0]) {
                    cylinder(d=su_upper_leg_width, h=su_upper_leg_thickness, center=true);
                }
            }
            translate([su_upper_leg_length/2-su_upper_leg_width/4, 0, 0]) {
                cylinder(d=su_connection_bolt+su_connection_bolt_tollerance, h=su_upper_leg_thickness+0.01, center=true);
            }
        }
    }
}



module lower_damper_connection() {
    difference(){
        cylinder(d=su_lower_leg_width, h=math_su_lower_damper_connector_thickness, center=true);
        cylinder(d=damper_lower_hole_diameter, h=math_su_lower_damper_connector_thickness+2, center=true);
        translate([su_lower_leg_width/2+damper_lower_hole_diameter/2+su_lower_damper_connector_down_thickness, 0, 0]) {
            cube(size=[ su_lower_leg_width, su_lower_leg_width, math_su_lower_damper_connector_thickness+0.01], center=true);
        }
        hull() {
            cylinder(d=su_lower_leg_width-su_upper_damper_connector_side_thickness*2, h=damper_upper_hole_length, center=true);
            translate([su_lower_leg_width, 0, 0]) {
                cube(size=[su_lower_leg_width, su_lower_leg_width, math_su_lower_damper_connector_thickness], center=true);
            }
        }
    }
    hull() {
        translate([-su_lower_leg_width, 0, 0]) {
            cylinder(d=su_lower_leg_width/10, h=su_lower_leg_thickness, center=true);
        }
        difference() {
            cylinder(d=su_lower_leg_width, h=math_su_lower_damper_connector_thickness, center=true);
            translate([su_lower_damper_connector_side_thickness, 0, 0]) {
                cube(size=[su_lower_leg_width, su_lower_leg_width, su_lower_leg_width], center=true);
            }
        }
    }        
}

module wheel_connection() {
    cylinder(r=10, h=10, center=true);
}
module lower_leg() {
    difference() {
        union() {
            cube(size=[su_lower_leg_length, su_lower_leg_width, su_lower_leg_thickness], center=true);
            hull() {
                translate([su_lower_leg_length/2, 0, 0]) {
                    cylinder(d=su_lower_leg_width, h=su_lower_leg_thickness*3, center=true);
                }
                translate([su_lower_leg_length/4, 0, 0]) {
                    cube(size=[1, su_lower_leg_width, su_lower_leg_thickness], center=true);
                }   
            }
        }
        translate([su_lower_leg_length/2, 0, 0]) {
            cylinder(d=su_connection_bolt, h=su_lower_leg_thickness*3+0.01, center=true);
            cylinder(d=su_lower_leg_width+su_connection_bolt_tollerance, h=su_upper_leg_thickness+su_connection_side_tollerance, center=true);
        }
    }
    translate([0, su_lower_leg_width, 0]) {
        rotate([0, 0, 90-su_lower_damper_connector_angle]) {
            lower_damper_connection();
        }    
    }
    translate([-su_lower_leg_length/2, 0, 0]) {
        wheel_connection();
    }
}










module damper_dummy(){
    rotate([0, 0, -su_upper_leg_angle]) {
       translate([damper_extended_length/2, 0, 0]) {
            rotate([-90, 0, 90]) {
                translate([-su_upper_leg_connection_block_width/4*3-su_upper_leg_connection_block_height/2, 0, 0]) {
                    damper();   
                }
            }   
        }
    }
}

module lower_leg_dummy() {
    translate([0, 50, 0]) {
        rotate([0, 0, -su_upper_leg_angle-90]) {
            translate([0, 0, 0]) {
                lower_leg();   
            }
        }
    }
}