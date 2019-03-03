include <../vars.scad>

module singleProfileCut(cut_d, cut_w, length, cutout, c_height, extra_thickness) {
    translate([0, cutout/2, c_height + extra_thickness+0.01]) {
        cube(size=[cut_w, length, cut_d], center=true);
    }
}

module profileCut(cuts, cut_d, cut_w, length, width, cutout, c_height, extra_thickness) {
    step = (width-cut_w*cuts)/cuts;
    profileCuts = cuts + 1;

    translate([-width/2+cut_w, 0, 0.01]) {
        for (i=[0:profileCuts]) {
            translate([i * step, 0, 0]) {
                if (i==0) {         
                    x=1;           
                } else {
                    if (i==profileCuts) {
                        x=1;    
                    } else {
                        singleProfileCut(cut_d,cut_w,length,cutout,c_height,extra_thickness);
                    }
                }
            }
        }
    }
    
    //singleProfileCut(cut_d,cut_w,length,cutout,c_height,extra_thickness);
}

module profile(width, thickness, length, cutout, c_height, c_width, c_bolt_diameter, rounding, tollerance, cuts, cut_d, cut_w, scale, extra_thickness) {
    height = c_height + extra_thickness;
    difference() {
        translate([0, cutout/2, height/2+thickness/2]) {
            hull() {
                scale([scale, scale, 1]) {
                    cube(size=[width, length - cutout, height], center=true);
                }
                translate([0, 0, -height/2]) {
                    cube(size=[width, length - cutout, 0.1], center=true);
                }
            }
        }
        profileCut(cuts, cut_d,cut_w,length,width,cutout,c_height,extra_thickness);
    }
}


module beltProfile(width, thickness, length, cutout, c_height, c_width, c_bolt_diameter, rounding, tollerance, cuts, cut_d, cut_w, scale, extra_thickness) {
    profile(width, thickness, length, cutout, c_height, c_width, c_bolt_diameter, rounding, tollerance, cuts, cut_d, cut_w, scale, extra_thickness);
}