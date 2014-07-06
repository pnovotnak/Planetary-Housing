/*
 *  Peter Novotnak, Chris Meyer, Micah Ericson :: 2014
 *
 *    This is the outer portion of a housing for a Currie 75mm
 *  planetary gear reduction. RTV not included ;)
 *
*/


facets = 200; // Reduce to reduce OpenSCAD build time


difference() {
    cylinder (h=21, r=37.5, $fn=facets);

    // Flutes
    cylinder (h=30, r=6, $fn=facets);  // shaft
    cylinder (h=18, r=16, $fn=facets); // bearing
    cylinder (h=7.25, r=30, $fn=facets);  // planetary
    

    // Snap ring flutes
    translate([0, 0, 21-4])
    	cylinder (h=2.5, r=8, $fn=facets);
    translate([0, 0, 7.25])
    	cylinder (h=1.2, r=17.25, $fn=facets);

    // Bolt holes
    for (i = [0 : 8]) {
        rotate( i * 360 / 8, [0, 0, 1])
        translate([0, 34.125, 0])
        cylinder (h=30, r=4.87/2, $fn=facets);
    }
};

