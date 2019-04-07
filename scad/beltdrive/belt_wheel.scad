
// Beltdrive belt element
beltdrive_belt_width = 20;
beltdrive_belt_element_length = 8;
beltdrive_belt_block_height = 6;
beltdrive_belt_block_top_width_reduce = 4;
beltdrive_belt_element_connector_dia = 1.75;
beltdrive_belt_element_connector_thickness = 1;

// Beltdrive wheel
beltdrive_wheel_width = beltdrive_belt_width;
beltdrive_wheel_dia = 15;
beltdrive_wheel_bolt_dia = 8;
// Beltdrive suspension
beltdrive_suspension_elements = 3;
beltdrive_suspension_connector_length = 24;
beltdrive_suspension_connector_width = 12;
beltdrive_suspension_connector_height = 8;
beltdrive_suspension_leg_top_length = 30;
beltdrive_suspension_leg_top_width = beltdrive_suspension_connector_width;
beltdrive_suspension_leg_top_angle = 40;
beltdrive_suspension_leg_top_joint_dia = 10;
beltdrive_suspension_leg_top_joint_bolt_dia = beltdrive_suspension_leg_top_joint_dia/2;
beltdrive_suspension_leg_bottom_joint_extra_cutout_height = 2;
beltdrive_suspension_leg_bottom_joint_extra_cutout_angle = 8;
beltdrive_suspension_leg_bottom_joint_width = beltdrive_suspension_connector_width/2;
beltdrive_suspension_leg_bottom_joint_dia = beltdrive_suspension_leg_top_joint_dia-1;
beltdrive_suspension_leg_bottom_length = beltdrive_suspension_leg_top_length;
beltdrive_suspension_leg_bottom_width = beltdrive_suspension_leg_bottom_joint_width;
beltdrive_suspension_leg_bottom_height = beltdrive_suspension_leg_bottom_width;
beltdrive_suspension_leg_bottom_wheel_connector_dia_thickness = 4;
beltdrive_suspension_leg_bottom_wheel_connector_width = beltdrive_wheel_width/2;



module belt_wheel() {
    translate([10, 0, 0]) {
        rotate([0, 90, 0]) {
            cylinder(d=beltdrive_wheel_dia, h=10, center=true);
        }
    }
}