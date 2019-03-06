include <../vars.scad>



module small_profileTeath() {
    step = (sw_small_wheel_width-b_inner_profile_cut_width*b_inner_profile_cuts)/b_inner_profile_cuts;
    profiles = b_inner_profile_cuts + 1;

    translate([0, 0,-sw_small_wheel_width/2]) {
        for (i=[0:profiles]) {
            translate([0, 0, i * step]) {
                if (i==0) {          
                } else {
                    if (i==profiles) {
                    } else {
                        cylinder(d=sw_small_wheel_diameter+b_inner_profile_cut_depth*2, h=b_inner_profile_cut_width, center=true);
                    }
                }
            }
        }
    }
    
    //singleProfileCut(b_inner_profile_cut_depth,b_inner_profile_cut_width,length,cutout,c_height,extra_thickness);
}

module small_wheel() {

    difference() {
        union() {
            cylinder(d=sw_small_wheel_diameter , h=sw_small_wheel_width, center=true);
            small_profileTeath();
        }
        cylinder(r=sw_small_wheel_inner_hole_diameter, h=sw_small_wheel_width+2, center=true);
    } 
}

//wheel(w_sw_small_wheel_diameter, sw_small_wheel_width, sw_small_wheel_inner_hole_diameter, b_inner_profile_cut_depth, b_inner_profile_cut_width, b_inner_profile_b_inner_profile_cuts, b_belt_width);