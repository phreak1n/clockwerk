module bearing(outer_dia, inner_dia, thickness) {
    difference() {
        cylinder(d=outer_dia, h=thickness, center=true);
        cylinder(d=inner_dia, h=thickness+0.01, center=true);
    }
}

bearing_608zz_inner_dia = 8;
bearing_608zz_outer_dia = 22;
bearing_608zz_thickness = 7;

module bearing_608zz() {
    bearing(22, 8, 7);
}