// Bottom-Front (simple)
outer_w=280; outer_d=165; outer_h=120;
inner_w=240; inner_d=127; inner_h=100; bottom_wall=10;
module shell(){ translate([-outer_w/2,-outer_d/2,0]) cube([outer_w,outer_d,outer_h]); }
module hollow(){ translate([-inner_w/2,-inner_d/2,bottom_wall]) cube([inner_w,inner_d,inner_h]); }
module funnel(){ translate([-inner_w/2,-inner_d/2,bottom_wall]) rotate([-30,0,0]) translate([0,-20,0]) cube([inner_w,inner_d,60]); }
module chamber(){ translate([0, outer_d/2-20, outer_h/2-22]) rotate([90,0,0]) cylinder(h=45,r=50,$fn=64); }
module port(x=1){ translate([x*(outer_w/2-30), outer_d/2-40, outer_h/2]) rotate([0,-35,0]) difference(){ cylinder(h=40,r=16,$fn=48); translate([0,0,0]) cylinder(h=42,r=12.5,$fn=48);} }
difference(){ shell(); hollow(); funnel(); chamber(); port(1); port(-1); }
