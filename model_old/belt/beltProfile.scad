include <../vars.scad>

//TODO: Cleanup

module singleProfileCut() {
    translate([0, b_belt_element_cutout/2, b_belt_element_connector_height + b_inner_profile_extra_thicknes+0.01]) {
        cube(size=[b_inner_profile_cut_width, b_belt_element_length, b_inner_profile_cut_depth], center=true);
    }
}

module profileCut() {
    //step = (b_belt_width-b_inner_profile_cut_width*b_inner_profile_cuts)/b_inner_profile_cuts;
    cuts = b_inner_profile_cuts + 2;
    cutsCounter = b_inner_profile_cuts + 1;
    //step = (b_belt_width-b_inner_profile_cut_width)/(b_inner_profile_cuts);
    step =b_belt_width/(cuts-1)-(b_inner_profile_cut_width/cuts) ;

    //translate([-b_belt_width/2+b_inner_profile_cut_width, 0, 0.01]) {
        for (i=[0:cutsCounter]) {
            translate([(-b_belt_width/2+b_inner_profile_cut_width/2)+(step*i), 0, 0.01]) {
                //math_su_beam_length/2-su_upper_leg_connection_block_width/2-i*space
                if (i==0) {
                } else {
                    if (i==cutsCounter) {
                    } else {
                        singleProfileCut();
                    }
                }
            }
        }
    //}
    
    //singleProfileCut(b_inner_profile_cut_depth,b_inner_profile_cut_width,b_belt_element_length,b_belt_element_cutout,b_belt_element_connector_height,b_inner_profile_extra_thicknes);
}

module teethCut() {
    
    step = (b_belt_element_length-b_inner_profile_teeth_length*b_inner_profile_teeth_per_element)/b_inner_profile_teeth_per_element;
    height = b_belt_element_connector_height + b_inner_profile_extra_thicknes;

    for (i=[0:b_inner_profile_teeth_per_element]) {
        translate([b_inner_profile_teeth_width/2,b_belt_element_length/2-(i*(b_inner_profile_teeth_length+math_teeth_space)), height+b_belt_thickness/2-0.05+0.01]) {
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

module profile() {

    height = b_belt_element_connector_height + b_inner_profile_extra_thicknes;
    difference() {
        translate([0, b_belt_element_cutout/2, height/2+b_belt_thickness/2]) {
            hull() {
                scale([b_inner_profile_scale, b_inner_profile_scale, 1]) {
                    cube(size=[b_belt_width, b_belt_element_length - b_belt_element_cutout, height], center=true);
                }
                translate([0, 0, -height/2]) {
                    cube(size=[b_belt_width, b_belt_element_length - b_belt_element_cutout, 0.1], center=true);
                }
            }
        }
        profileCut();
        teethCut();
    }
}


module beltProfile() {
    profile();
}