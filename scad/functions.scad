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
    
    space = (length - object_length * count) / (count - 1);

    for (i = [0: count -1]){
        translate([ 0,
                    length/2-object_length/2-
                    (space+object_length)*i,
                    0]) {
            children ();
        }
    }
}
// along Y-Axis with space at the ends
module arrange_in_line_space_Y (length, object_length, count) {
    
    space = (length - object_length * count) / (count + 1);

    for (i = [0: count -1]){
        translate([ 0,
                    -length/2+object_length/2+space+
                    (space + object_length)*i,
                    0]) {
            children ();
        }
    }
}