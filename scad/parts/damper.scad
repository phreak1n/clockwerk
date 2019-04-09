

// Homyl 65mm 1:18
// https://www.amazon.de/Homyl-Paar-Metall-Sto%C3%9Fd%C3%A4mpfer-D%C3%A4mpfer/dp/B07KX13CQR/ref=sr_1_25?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=modellbau+d%C3%A4mpfer&qid=1554797919&s=gateway&sr=8-25&pldnSite=1
//      !!! DATA FROM WEBSITE !!!
/*
homyl_65_length = 65;   
homyl_65_length_hole_to_hole = 45;  
homyl_65_length_hole_to_hole_max = 55;  
homyl_65_diameter= 13;  
homyl_65_hole_diameter= 2;  
*/

// Goolsky 100mm 1:10 RC4WD HSP DHK  
// https://www.amazon.de/dp/B07M8HTM2H/ref=sspa_dk_detail_3?psc=1&pd_rd_i=B07M8HTM2H&pd_rd_w=HF0D4&pf_rd_p=00903874-3af0-47e0-8622-ee58087f71cf&pd_rd_wg=rUcE8&pf_rd_r=W77XQ6VPBYMV65E7820F&pd_rd_r=81c418b4-5ac5-11e9-a42f-d932de63180d
//      !!! DATA FROM WEBSITE !!!

/*
golsky_100_length = golsky_100_length_hole_to_hole + golsky_100_bottom_witdth/2 + golsky_100_top_width/2;
golsky_100_damperbody_length = golsky_100_length/6*4;
golsky_100_damperbody_diameter = 20;
golsky_100_top_length = golsky_100_length/6;
golsky_100_top_width = golsky_100_damperbody_diameter+4;
golsky_100_top_thickness = golsky_100_diameter/10;
golsky_100_bottom_length = golsky_100_length/6;
golsky_100_bottom_width = golsky_100_damperbody_diameter+4;
golsky_100_bottom_thickness = golsky_100_diameter/10;
golsky_100_length_hole_to_hole = 100;
golsky_100_hole_diameter= 5;
*/

//ToDo: get the real values and use the right orientated list above
// Reorder to make math work
golsky_100_damperbody_diameter = 20;
golsky_100_length_hole_to_hole = 100;
golsky_100_hole_diameter= 5;
golsky_100_top_width = golsky_100_damperbody_diameter/2;
golsky_100_bottom_width = golsky_100_top_width;
golsky_100_length = golsky_100_length_hole_to_hole + golsky_100_bottom_width/2 + golsky_100_top_width/2;
golsky_100_damperbody_length = golsky_100_length/6*4;
golsky_100_top_length = golsky_100_length/6;
golsky_100_top_thickness = golsky_100_damperbody_diameter/10;
golsky_100_bottom_length = golsky_100_length/6;
golsky_100_bottom_thickness = golsky_100_damperbody_diameter/10;




module damper(  length,
                damperbody_length,
                damperbody_diameter,
                top_length,
                top_width,
                top_thickness,
                bottom_length,
                bottom_width,
                bottom_thickness,
                length_hole_to_hole,
                hole_diameter) {
    difference() {
        union() {
            cylinder(d = damperbody_diameter, h=damperbody_length, center=true);
            translate([0, 0, length/4]) {
                cube(size=[top_thickness, top_width, length/2], center=true);
            }
            translate([0, 0, -length/4]) {
                cube(size=[bottom_thickness, bottom_width, length/2], center=true);
            }
        }
        translate([0, 0, length_hole_to_hole/2]) {
            rotate([0, 90, 0]) {
                cylinder(d=hole_diameter, h=damperbody_diameter+0.01, center=true);
            }
        }
        translate([0, 0, -length_hole_to_hole/2]) {
            rotate([0, 90, 0]) {
                cylinder(d=hole_diameter, h=damperbody_diameter+0.01, center=true);
            }
        }
    }
}


module damper_golsky_100() {
    damper( golsky_100_length,
            golsky_100_damperbody_length,
            golsky_100_damperbody_diameter,
            golsky_100_top_length,
            golsky_100_top_width,
            golsky_100_top_thickness,
            golsky_100_bottom_length,
            golsky_100_bottom_width,
            golsky_100_bottom_thickness,
            golsky_100_length_hole_to_hole,
            golsky_100_hole_diameter);
}

/*
module damper_homyl_65() {
    damper( homyl_65_length,
            homyl_65_length_hole_to_hole,
            homyl_65_diameter,
            homyl_65_hole_diameter);
}
*/
