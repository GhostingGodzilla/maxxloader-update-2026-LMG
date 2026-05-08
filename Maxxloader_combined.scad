// Maxxloader_combined.scad
// Single file containing all parts. Use -D part="name" to select output.
// Example: openscad -o ML_bottom_front.stl -D part="bottom_front" Maxxloader_combined.scad

// Parameters (global)
units = "mm";

// ---------- Part modules ----------

module bottom_front() {
  outer_w = 280; outer_d = 165; outer_h = 120;
  inner_w = 240; inner_d = 127; inner_h = 100; bottom_wall = 10;
  difference() {
    translate([-outer_w/2, -outer_d/2, 0]) cube([outer_w, outer_d, outer_h]);
    translate([-inner_w/2, -inner_d/2, bottom_wall]) cube([inner_w, inner_d, inner_h]);
    // funnel
    translate([-inner_w/2, -inner_d/2, bottom_wall]) rotate([-30,0,0]) translate([0,-20,0]) cube([inner_w, inner_d, 60]);
    // paddle chamber
    translate([0, outer_d/2 - 20, outer_h/2 - 22]) rotate([90,0,0]) cylinder(h=45, r=50, $fn=64);
    // ports
    for (xsign = [-1,1]) translate([xsign*(outer_w/2-30), outer_d/2-40, outer_h/2]) rotate([0,-35,0])
      difference() { cylinder(h=40, r=16, $fn=48); translate([0,0,0]) cylinder(h=42, r=12.5, $fn=48); }
  }
}

module bottom_back() {
  outer_w = 280; outer_d = 165; outer_h = 120;
  inner_w = 240; inner_d = 127; inner_h = 100; bottom_wall = 10;
  difference() {
    translate([-outer_w/2, -outer_d/2, 0]) cube([outer_w, outer_d, outer_h]);
    translate([-inner_w/2, -inner_d/2, bottom_wall]) cube([inner_w, inner_d, inner_h]);
    // strap slots
    translate([-60, outer_d/2-3, outer_h-20]) cube([32,6,5], center=true);
    translate([60, outer_d/2-3, outer_h-20]) cube([32,6,5], center=true);
    translate([-60, outer_d/2-3, 20]) cube([32,6,5], center=true);
    translate([60, outer_d/2-3, 20]) cube([32,6,5], center=true);
  }
}

module top_front() {
  outer_w=280; outer_d=165; outer_h=90;
  inner_w=240; inner_d=127; inner_h=80; bottom_wall=5;
  difference() {
    translate([-outer_w/2,-outer_d/2,0]) cube([outer_w,outer_d,outer_h]);
    translate([-inner_w/2,-inner_d/2,bottom_wall]) cube([inner_w,inner_d,inner_h]);
  }
}

module top_back() {
  outer_w=280; outer_d=165; outer_h=90;
  inner_w=240; inner_d=127; inner_h=80; bottom_wall=5;
  difference() {
    translate([-outer_w/2,-outer_d/2,0]) cube([outer_w,outer_d,outer_h]);
    translate([-inner_w/2,-inner_d/2,bottom_wall]) cube([inner_w,inner_d,inner_h]);
    // hinge bosses
    for (i=[-1,0,1]) translate([i*40, outer_d/2, outer_h-6]) rotate([90,0,0]) cylinder(h=12, r=3, $fn=32);
  }
}

module lid() {
  lid_w=280; lid_d=165; lid_t=15; lip=8; groove_w=2; groove_d=2;
  difference() {
    translate([-lid_w/2,-lid_d/2,0]) cube([lid_w,lid_d,lid_t]);
    translate([-lid_w/2+8,-lid_d/2+8,-1]) cube([lid_w-16,lid_d-16,lid_t-10]);
    // gasket groove (example along one edge)
    translate([-lid_w/2+4,-lid_d/2+4,2]) cube([lid_w-8,groove_w,groove_d]);
  }
}

module paddle_chamber() {
  outer_r=50; inner_r=45; h=45; shaft_clear=8;
  difference() {
    rotate([90,0,0]) cylinder(h=h, r=outer_r, $fn=128);
    translate([0,0,-1]) rotate([90,0,0]) cylinder(h=h+2, r=inner_r, $fn=128);
  }
}

module paddle_wheel() {
  wheel_d=90; wheel_t=5; paddle_w=20; paddle_h=35; paddle_th=3; shaft_r=3;
  union() {
    rotate([90,0,0]) difference() {
      cylinder(h=wheel_t, r=wheel_d/2, $fn=128);
      translate([0,0,-1]) cylinder(h=wheel_t+2, r=shaft_r, $fn=64);
    }
    for (i=[0:7]) rotate([0,0,i*45]) translate([0,0,0]) translate([wheel_d/2 - paddle_h/2,0,0]) cube([paddle_w,paddle_th,paddle_h], center=true);
  }
}

module port() {
  od=32; id=25; h=40; angle=-35;
  rotate([0,angle,0]) difference() {
    cylinder(h=h, r=od/2, $fn=64);
    translate([0,0,0]) cylinder(h=h+2, r=id/2, $fn=64);
  }
}

module port_cap() {
  cap_od=32; cap_t=12; recess_r=13; recess_d=8;
  difference() {
    cylinder(h=cap_t, r=cap_od/2, $fn=64);
    translate([0,0,2]) cylinder(h=recess_d, r=recess_r, $fn=64);
  }
}

module motor_mount() {
  plate_x=60; plate_y=60; plate_t=4; bolt_r=2.25; shaft_r=4;
  union() {
    translate([-plate_x/2,-plate_y/2,0]) cube([plate_x,plate_y,plate_t]);
    for (i=[-1,1]) for (j=[-1,1]) translate([i*12,j*12,0]) cylinder(h=plate_t+2, r=bolt_r, $fn=32);
    translate([0,0,-1]) cylinder(h=plate_t+4, r=shaft_r, $fn=64);
  }
}

module emf_adapter() {
  collar_od=40; collar_id=22; collar_h=18; stub_od=25; stub_h=40; angle=-35;
  difference() {
    union() {
      cylinder(h=collar_h, r=collar_od/2, $fn=64);
      translate([0,0,collar_h/2]) rotate([0,angle,0]) cylinder(h=stub_h, r=stub_od/2, $fn=64);
    }
    translate([0,0,0]) cylinder(h=collar_h+2, r=collar_id/2, $fn=64);
  }
}

// ---------- Part selector ----------
// Default part variable; can be overridden with -D part="name"
if (!exists("part")) part = "bottom_front";

echo(str("Selected part: ", part));

if (part == "bottom_front") bottom_front();
else if (part == "bottom_back") bottom_back();
else if (part == "top_front") top_front();
else if (part == "top_back") top_back();
else if (part == "lid") lid();
else if (part == "paddle_chamber") paddle_chamber();
else if (part == "paddle_wheel") paddle_wheel();
else if (part == "port_right") translate([30,0,0]) port(); // example offset
else if (part == "port_left") translate([-30,0,0]) port();
else if (part == "port_cap") port_cap();
else if (part == "motor_mount") motor_mount();
else if (part == "emf_adapter_right") translate([20,0,0]) emf_adapter();
else if (part == "emf_adapter_left") translate([-20,0,0]) emf_adapter();
else if (part == "all") {
  // optional combined preview layout
  translate([-350,0,0]) bottom_front();
  translate([350,0,0]) bottom_back();
  translate([0,300,0]) paddle_wheel();
}
