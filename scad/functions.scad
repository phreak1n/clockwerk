/*
    functions.scad
    --------------

    all main functions gatherd in this file
*/

// Make ring of Objects
module make_ring_of (radius, count) {
    for (a = [0: count -1]){
        angle = a * 360 /count;
        
        translate (radius * [sin(angle), -cos(angle), 0])
            rotate ([0, 0, angle])
                children ();
    }
}

// Arrange Object ins a Line
// along Y-Axis
module arrange_in_line_Y (length, object_length, count) {
    
    length = length-object_length;

    for (i = [0: count -1]){
        translate([0, -length/2+(object_length/count/4)+(length/count*i)+(object_length/count*(i)), 0]) {
            children ();
        }
    }
}