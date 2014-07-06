/*
 *  Peter Novotnak, Chris Meyer, Micah Ericson :: 2014
 *
 *    This is the inner portion of a housing for a Currie 75mm
 *  planetary gear reduction for an AquaStar T20 motor.
 *
*/


facets = 100; // Reduce to reduce OpenSCAD build time


difference() {
    cylinder (h=9.5, r=37.5, $fn=facets);

    // Flutes
    cylinder (h=30, r=4.7, $fn=facets);  // shaft
    cylinder (h=6.5, r=30, $fn=facets);  // planetary

    // Planetary / housing bolt holes
    for (i = [0 : 8]) {
        rotate( i * 360 / 8, [0, 0, 1])
        translate([0, 34.125, 0])
        cylinder (h=30, r=4.87/2, $fn=facets);
    }

    // Motor bolt holes
    for (i = [0 : 6]) {
        rotate( i * 360 / 6, [0, 0, 1])
        translate([0, 14.695, 0])
        cylinder (h=30, r=4/2, $fn=facets);
    }
};

