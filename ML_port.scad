od=32; id=25; h=40; angle=-35;
module port(){ difference(){ cylinder(h=h,r=od/2,$fn=64); translate([0,0,0]) cylinder(h=h+2,r=id/2,$fn=64); } }
translate([0,0,0]) rotate([0,angle,0]) port();
