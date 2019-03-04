include <../vars.scad>



module profileTeath(cuts, cut_d, cut_w, width, wheel_diameter ) {
    step = (width-cut_w*cuts)/cuts;
    profileCuts = cuts + 1;

    translate([0, 0,-width/2]) {
        for (i=[0:profileCuts]) {
            translate([0, 0, i * step]) {
                if (i==0) {          
                } else {
                    if (i==profileCuts) {
                    } else {
                        cylinder(d=wheel_diameter+cut_d*2, h=cut_w, center=true);
                    }
                }
            }
        }
    }
    
    //singleProfileCut(cut_d,cut_w,length,cutout,c_height,extra_thickness);
}

module wheel(w_wheel_diameter,
        w_wheel_width,
        w_wheel_inner_hole_diameter,
        b_inner_profile_cut_depth,
        b_inner_profile_cut_width,
        b_inner_profile_cuts,
        b_belt_width) {

            difference() {
                union() {
                    cylinder(d=w_wheel_diameter , h=w_wheel_width, center=true);
                    profileTeath(b_inner_profile_cuts, b_inner_profile_cut_depth, b_inner_profile_cut_width, w_wheel_width, w_wheel_diameter);
                }
                cylinder(r=w_wheel_inner_hole_diameter, h=w_wheel_width+2, center=true);
            }
                
            
    
    
}

//wheel(w_wheel_diameter, w_wheel_width, w_wheel_inner_hole_diameter, b_inner_profile_cut_depth, b_inner_profile_cut_width, b_inner_profile_cuts, b_belt_width);