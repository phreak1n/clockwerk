module beltdrive_suspension_top() {
    color([222/255, 211/255, 100/255]) {
        beltdrive_suspension_connector();
        beltdrive_suspension_top_leg();
    }
}

module beltdrive_suspension_top_cutout() {
    beltdrive_suspension_connector_stamp();
}