include <../vars.scad>

//TODO: Cleanup


//module profileTeath() {
//    step = (w_wheel_width-b_inner_profile_cut_width*b_inner_profile_cuts)/b_inner_profile_cuts;
//    profiles = b_inner_profile_cuts + 1;
//
//    translate([0, 0,-w_wheel_width/2]) {
//        for (i=[0:profiles]) {
//            translate([0, 0, i * step]) {
//                if (i==0) {          
//                } else {
//                    if (i==profiles) {
//                    } else {
//                        cylinder(d=w_wheel_diameter+b_inner_profile_cut_depth*2, h=b_inner_profile_cut_width, center=true);
//                    }
//                }
//            }
//        }
//    }
//    //singleProfileCut(b_inner_profile_cut_depth,b_inner_profile_cut_width,length,cutout,c_height,extra_thickness);
//}

module profileTeath() {
    //step = (b_belt_width-b_inner_profile_cut_width*b_inner_profile_cuts)/b_inner_profile_cuts;
    cuts = b_inner_profile_cuts + 2;
    cutsCounter = b_inner_profile_cuts + 1;
    //step = (b_belt_width-b_inner_profile_cut_width)/(b_inner_profile_cuts);
    step =b_belt_width/(cuts-1)-(b_inner_profile_cut_width/cuts) ;

    //translate([-b_belt_width/2+b_inner_profile_cut_width, 0, 0.01]) {
        for (i=[0:cutsCounter]) {
            translate([ 0, 0, (-b_belt_width/2+b_inner_profile_cut_width/2)+(step*i)]) {
                //math_su_beam_length/2-su_upper_leg_connection_block_width/2-i*space
                if (i==0) {
                } else {
                    if (i==cutsCounter) {
                    } else {
                        cylinder(d=w_wheel_diameter+b_inner_profile_cut_depth*2, h=b_inner_profile_cut_width, center=true);
                    }
                }
            }
        }
    //}
    
    //singleProfileCut(b_inner_profile_cut_depth,b_inner_profile_cut_width,b_belt_element_length,b_belt_element_cutout,b_belt_element_connector_height,b_inner_profile_extra_thicknes);
}

module wheel() {

    difference() {
        union() {
            cylinder(d=w_wheel_diameter , h=w_wheel_width, center=true);
            profileTeath();
        }
        cylinder(r=w_wheel_inner_hole_diameter, h=w_wheel_width+2, center=true);
    }
}

//wheel(w_w_wheel_diameter, w_wheel_width, w_wheel_inner_hole_diameter, b_inner_profile_cut_depth, b_inner_profile_cut_width, b_inner_profile_b_inner_profile_cuts, b_belt_width);