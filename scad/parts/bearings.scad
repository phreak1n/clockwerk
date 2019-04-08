module bearing(outer_dia, inner_dia, thickness) {
    difference() {
        cylinder(d=outer_dia, h=thickness, center=true);
        cylinder(d=inner_dia, h=thickness+0.01, center=true);
    }
}