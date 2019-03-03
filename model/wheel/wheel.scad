include <../vars.scad>

module teath(depth, width) {
    x=width/2;
    y=depth/2;
    polygon(points=[[x-0.5,y],[x,-y],[-x,-y],[-x+.5,y]]);
    
}

module profileTeath(cuts, cut_d, cut_w, width) {
    step = (width-cut_w*cuts)/cuts;
    profileCuts = cuts + 1;

    translate([-width/2+cut_w, 0]) {
        for (i=[0:profileCuts]) {
            translate([i * step, 0]) {
                if (i==0) {          
                } else {
                    if (i==profileCuts) {
                    } else {
                        teath(cut_d, cut_w);
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

            square(size=[w_wheel_width, w_wheel_diameter/2 ], center=true);
            translate([0, w_wheel_diameter/4+b_inner_profile_cut_depth/2]) {
                profileTeath(b_inner_profile_cuts, b_inner_profile_cut_depth, b_inner_profile_cut_width, b_belt_width);    
            }
    
    
}

//wheel(w_wheel_diameter, w_wheel_width, w_wheel_inner_hole_diameter, b_inner_profile_cut_depth, b_inner_profile_cut_width, b_inner_profile_cuts, b_belt_width);