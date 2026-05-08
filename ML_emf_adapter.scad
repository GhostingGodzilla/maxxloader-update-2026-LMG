collar_od=40; collar_id=22; collar_h=18; stub_od=25; stub_h=40; angle=-35;
module adapter(){ difference(){ translate([0,0,0]) union(){ cylinder(h=collar_h,r=collar_od/2,$fn=64); translate([0,0,collar_h/2]) rotate([0,angle,0]) translate([0,0,0]) cylinder(h=stub_h,r=stub_od/2,$fn=64); } translate([0,0,0]) translate([0,0,0]) cylinder(h=collar_h+2,r=collar_id/2,$fn=64); } }
adapter();
