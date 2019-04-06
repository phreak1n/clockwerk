module beltdrive_suspension_connector() {
    difference() {
        union() {
            cube(size=[ beltdrive_suspension_connector_width,
                        beltdrive_suspension_connector_length,
                        beltdrive_suspension_connector_height],
                        center=true);
            translate([ -(beltdrive_suspension_connector_width+beltdrive_suspension_connector_pin_length)/2,
                        (beltdrive_suspension_connector_length-beltdrive_suspension_connector_height)/2,
                        0]) {
                rotate([0, 90, 0]) {
                    cylinder(d=beltdrive_suspension_connector_height, h=10, center=true);
                }
            }
            translate([ -(beltdrive_suspension_connector_width+beltdrive_suspension_connector_pin_length)/2,
                        -(beltdrive_suspension_connector_length-beltdrive_suspension_connector_height)/2,
                        0]) {
                rotate([0, 90, 0]) {
                    cylinder(d=beltdrive_suspension_connector_height, h=10, center=true);
                }
            }
        }
        translate([0, 0, 0]) {
            rotate([0, -90, 0]) {
                m4xX();
            }
        }
    }
}