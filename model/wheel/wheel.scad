include <../vars.scad>



module profileTeath() {
    step = (w_wheel_width-b_inner_profile_cut_width*b_inner_profile_cuts)/b_inner_profile_cuts;
    profileb_inner_profile_cuts = b_inner_profile_cuts + 1;

    translate([0, 0,-w_wheel_width/2]) {
        for (i=[0:profileb_inner_profile_cuts]) {
            translate([0, 0, i * step]) {
                if (i==0) {          
                } else {
                    if (i==profileb_inner_profile_cuts) {
                    } else {
                        cylinder(d=w_wheel_diameter+b_inner_profile_cut_depth*2, h=b_inner_profile_cut_width, center=true);
                    }
                }
            }
        }
    }
    
    //singleProfileCut(b_inner_profile_cut_depth,b_inner_profile_cut_width,length,cutout,c_height,extra_thickness);
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