/*
    Motors
*/

//Crazepony-UK BL3650 5200KV
//https://www.amazon.de/Crazepony-UK-Brushless-Waterproof-Electric-Controller/dp/B07FX4WMNN/ref=pd_day0_hl_21_5/260-8987592-0731353?_encoding=UTF8&pd_rd_i=B07FX4WMNN&pd_rd_r=de0476e9-5ad1-11e9-8876-537263cdbb4b&pd_rd_w=ZNkPk&pd_rd_wg=PprSJ&pf_rd_p=2201c3c9-4bbe-45b3-9e49-7948d9b16246&pf_rd_r=G08HATTF6NMD46K9ZXZA&psc=1&refRID=G08HATTF6NMD46K9ZXZA
//      !!! DATA FROM WEBSITE !!!
motor_cp_uk_bl3650_dia = 35;
motor_cp_uk_bl3650_length = 52;
motor_cp_uk_bl3650_shaft_dia = 3.17;
motor_cp_uk_bl3650_shaft_length = 8;

// Motor Template
module motor(motor_dia, motor_length, motor_shaft_dia, motor_shaft_length) {
    translate([0, 0, -motor_length/2]) {
        cylinder(d=motor_dia, h=motor_length, center=true);
    }
    translate([0, 0, motor_shaft_length/2]) {
        cylinder(d=motor_shaft_dia, h=motor_shaft_length, center=true);
    }
}

// Motors generic
module parts_motor_beltdrive_main() {
    motor(  part_motor_beltdrive_main_dia,
            part_motor_beltdrive_main_length,
            part_motor_beltdrive_main_shaft_dia,
            part_motor_beltdrive_main_shaft_length);
}

// Motors
module motor_cp_uk_bl3650() {
    motor(  motor_cp_uk_bl3650_dia,
            motor_cp_uk_bl3650_length,
            motor_cp_uk_bl3650_shaft_dia,
            motor_cp_uk_bl3650_shaft_length);
}