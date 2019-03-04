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
                } else {
                    if (i==profileCuts) {
                    } else {
                        singleProfileCut(cut_d,cut_w,length,cutout,c_height,extra_thickness);
                    }
                }
            }
        }
    }
    
    //singleProfileCut(cut_d,cut_w,length,cutout,c_height,extra_thickness);
}

module teethCut(
    length,
    teeth_amount,
    teeth_l,
    teeth_w,
    teeth_h,
    teeth_ls,
    teeth_ws,
    teeth_tollerance,
    c_height,
    thickness,
    extra_thickness,
    math_teeth_space) {
    
    step = (length-teeth_l*teeth_amount)/teeth_amount;
    height = c_height + extra_thickness;

    for (i=[0:teeth_amount]) {
        translate([teeth_w/2,length/2-(i*(teeth_l+math_teeth_space)), height+thickness/2-0.05+0.01]) {
            hull() {
                cube(size=[teeth_w, teeth_l, .1], center=true);
                translate([0, 0, -teeth_h]) {
                    scale([teeth_ls, teeth_ws, 1]) {
                        cube(size=[teeth_w, teeth_l, .1], center=true);
                    }
                }
            }
        }
    }    
    
}

module profile(
    width,
    thickness,
    length,
    cutout,
    c_height,
    c_width,
    c_bolt_diameter,
    rounding,
    tollerance,
    cuts,
    cut_d,
    cut_w,
    scale,
    extra_thickness,
    teeth_w,
    teeth_l,
    teeth_h,
    teeth_ws,
    teeth_ls,
    teeth_amount,
    teeth_tollerance,
    math_teeth_space) {

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
        teethCut(
            length,
            teeth_amount,
            teeth_l,
            teeth_w,
            teeth_h,
            teeth_ls,
            teeth_ws,
            teeth_tollerance,
            c_height,
            thickness,
            extra_thickness,
            math_teeth_space);
    }
}


module beltProfile(width,
        thickness,
        length,
        cutout,
        c_height,
        c_width,
        c_bolt_diameter,
        rounding,
        tollerance,
        cuts,
        cut_d,
        cut_w,
        scale,
        extra_thickness,
        teeth_w,
        teeth_l,
        teeth_h,
        teeth_ws,
        teeth_ls,
        teeth_amount,
        teeth_tollerance,
        math_teeth_space) {
    profile(
        width,
        thickness,
        length,
        cutout,
        c_height,
        c_width,
        c_bolt_diameter,
        rounding,
        tollerance,
        cuts,
        cut_d,
        cut_w,
        scale,
        extra_thickness,
        teeth_w,
        teeth_l,
        teeth_h,
        teeth_ws,
        teeth_ls,
        teeth_amount,
        teeth_tollerance,
        math_teeth_space);
}