// 3-Inch Brushless Drone Frame for Custom 52x64mm ESP32-S3 Flight Controller
// Fast 0.5-Second CGAL Render

$fn = 48;

// --- Parametric Dimensions (mm) ---
plate_w         = 54;    // Center deck width (52mm PCB + 1mm bumper)
plate_l         = 66;    // Center deck length (64mm PCB + 1mm bumper)
thick           = 3.6;   // Main plate & arm thickness
rib_h           = 1.6;   // Raised stiffness rib height (outside PCB footprint)
rib_w           = 2.6;   // Raised stiffness rib width
arm_x           = 58;    // Motor X offset (170mm diagonal wheelbase)
arm_y           = 62;    // Motor Y offset (clears 64mm board + 3" props)
arm_w           = 9.5;   // Arm width
add_antenna_tab = false; // Set to true if you want the rear T-antenna zip-tie tab

// --- OPTIONAL PREVIEW: Remove // below to inspect PCB & Motors in F5 ---
// #translate([-150, 99, thick + 6]) import("C:/Users/Dell5531/Downloads/brushless.stl");
// for (sx = [-1, 1], sy = [-1, 1]) #translate([sx*arm_x, sy*arm_y, thick]) {
//     translate([-12, 8, -1.2]) rotate([90, 0, 45]) import("C:/Users/Dell5531/Downloads/original.stl");
//     color("Cyan", 0.25) translate([0, 0, 11]) cylinder(d = 76.2, h = 0.8);
// }

module rounded_rect_2d(w, l, r) {
    hull() {
        for (sx = [-1, 1], sy = [-1, 1])
            translate([sx*(w/2 - r), sy*(l/2 - r)])
                circle(r = r);
    }
}

module frame_base_2d() {
    difference() {
        union() {
            rounded_rect_2d(plate_w, plate_l, 5);
            for (sx = [-1, 1], sy = [-1, 1]) {
                hull() {
                    translate([sx*(plate_w/2 - 7), sy*(plate_l/2 - 7)])
                        circle(d = arm_w);
                    translate([sx*arm_x, sy*arm_y])
                        circle(d = 16);
                }
            }
            if (add_antenna_tab) {
                translate([0, -(plate_l/2 + 4)])
                    rounded_rect_2d(18, 10, 2);
            }
        }

        // 1. Exact 20x20mm M3 Stack Holes: Top-Right at (0,0), Bottom-Left at (-20,-20)
        for (hx = [0, -20], hy = [0, -20])
            translate([hx, hy])
                circle(d = 3.1);

        // 2. Weight-Reduction Cutout centered inside your 20x20mm square at (-10, -10)
        translate([-10, -10])
            rounded_rect_2d(11, 11, 2);

        // 3. Battery Strap Slots (left & right of the PCB deck)
        for (sx = [-1, 1])
            translate([sx*21, 0])
                rounded_rect_2d(3.2, 20, 1);

        // 4. Optional Rear T-Antenna Zip-Tie Holes
        if (add_antenna_tab) {
            for (sx = [-1, 1])
                translate([sx*5, -(plate_l/2 + 4.5)])
                    circle(d = 2.5);
        }

        // 5. 4x Motor Mounts (5mm center shaft hole + 9.0mm diameter M2 bolt circle)
        for (sx = [-1, 1], sy = [-1, 1]) {
            translate([sx*arm_x, sy*arm_y]) {
                circle(d = 5.0);
                for (mx = [-1, 1], my = [-1, 1])
                    translate([mx*3.182, my*3.182])
                        circle(d = 2.1);
            }
        }
    }
}

union() {
    linear_extrude(height = thick)
        frame_base_2d();

    for (sx = [-1, 1], sy = [-1, 1]) {
        translate([0, 0, thick - 0.2])
            linear_extrude(height = rib_h + 0.2)
                hull() {
                    translate([sx*(plate_w/2 + 2), sy*(plate_l/2 + 2)])
                        circle(d = rib_w);
                    translate([sx*(arm_x - 6), sy*(arm_y - 6)])
                        circle(d = rib_w);
                }
    }
}
