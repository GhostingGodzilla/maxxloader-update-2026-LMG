cap_od=32; cap_t=12; recess_r=13; recess_d=8;
difference(){ cylinder(h=cap_t,r=cap_od/2,$fn=64); translate([0,0,2]) cylinder(h=recess_d,r=recess_r,$fn=64); }
