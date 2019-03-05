include <../vars.scad>
include <../parts/damper.scad>

su_upper_leg_angle = 60;
su_upper_leg_length = 100;
su_upper_leg_width = 20;
su_upper_leg_thickness = 5;
su_upper_leg_connection_block_width = 40;
su_upper_leg_connection_block_height = 22;
su_upper_leg_connection_width = 7;
su_upper_leg_connection_height = 15;
su_upper_damper_connector_side_thickness = 4;
su_upper_damper_connector_down_thickness = 2;
su_lower_leg_length = 190;
su_lower_leg_width = su_upper_leg_width;
su_lower_leg_thickness = su_upper_leg_thickness;
su_connection_bolt = 8;
su_connection_bolt_tollerance = 0.5;
su_connection_side_tollerance = 0.5;

su_upper_damper_connector_trans_y = -(su_upper_leg_connection_block_width/4+su_upper_leg_connection_block_width/2+su_upper_leg_connection_block_height/2);
su_upper_damper_connector_thickness = (damper_upper_hole_length + su_upper_damper_connector_side_thickness*2);

//damper_extended_length
//damper_upper_hole_length


module upper_leg_connection_block() {
    translate([0, -(su_upper_leg_connection_block_width - su_upper_leg_width)/2, 0]) {
       cube(size=[ su_upper_leg_connection_block_height , su_upper_leg_connection_block_width, su_upper_damper_connector_thickness], center=true);
        translate([0, su_upper_leg_connection_block_width/4, -(su_upper_leg_connection_height/2+su_upper_leg_thickness/2)]) {
            cube(size=[su_upper_leg_connection_width, su_upper_leg_connection_width, su_upper_leg_connection_height], center=true);
        }
        translate([0, -su_upper_leg_connection_block_width/4, -(su_upper_leg_connection_height/2+su_upper_leg_thickness/2)]) {
            cube(size=[su_upper_leg_connection_width, su_upper_leg_connection_width, su_upper_leg_connection_height], center=true);
        }
    }
}

module upper_damper_connector() {
    difference(){
        hull() {
            cylinder(d=su_upper_leg_connection_block_height, h=su_upper_damper_connector_thickness, center=true);
            translate([0, su_upper_leg_connection_block_height/2, 0]) {
                        cube(size=[su_upper_leg_connection_block_height, 1, su_upper_damper_connector_thickness], center=true);   
            }   
        }
        cylinder(d=damper_upper_hole_diamter, h=su_upper_damper_connector_thickness+2, center=true);
        translate([su_upper_leg_connection_block_height/2+damper_upper_hole_diamter/2+su_upper_damper_connector_down_thickness, 0, 0]) {
            cube(size=[ su_upper_leg_connection_block_height, su_upper_leg_connection_block_height, su_upper_damper_connector_thickness+0.01], center=true);
        }
        hull() {
            cylinder(d=su_upper_leg_connection_block_height-su_upper_damper_connector_side_thickness*2, h=damper_upper_hole_length, center=true);
            translate([su_upper_leg_connection_block_height, 0, 0]) {
                cube(size=[su_upper_leg_connection_block_height, su_upper_leg_connection_block_height, su_upper_damper_connector_thickness], center=true);
            }
        }
    }
}

//TODO: add a connection to the wheel
//TODO: add damperconnection witch angleadjust
module upper_leg() {
    rotate([0, 0, -su_upper_leg_angle]) {
        upper_leg_connection_block();
        translate([0, su_upper_damper_connector_trans_y, 0]) {
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
}







//upper_leg();
//lower_leg();
//damper_dummy();
//lower_leg_dummy();



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