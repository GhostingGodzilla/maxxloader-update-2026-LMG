outer_r=50; inner_r=45; h=45; shaft_clear=8;
module chamber(){ difference(){ translate([-outer_r,0,0]) rotate([90,0,0]) cylinder(h=h,r=outer_r,$fn=128); translate([-inner_r,0,-1]) rotate([90,0,0]) cylinder(h=h+2,r=inner_r,$fn=128); } }
chamber();
