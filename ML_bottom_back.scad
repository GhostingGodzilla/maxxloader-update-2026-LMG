outer_w=280; outer_d=165; outer_h=120;
inner_w=240; inner_d=127; inner_h=100; bottom_wall=10;
module shell(){ translate([-outer_w/2,-outer_d/2,0]) cube([outer_w,outer_d,outer_h]); }
module hollow(){ translate([-inner_w/2,-inner_d/2,bottom_wall]) cube([inner_w,inner_d,inner_h]); }
module strap(x,z){ translate([x, outer_d/2-3, z]) rotate([0,0,0]) cube([32,6,5],center=true); }
difference(){ shell(); hollow(); strap(-60, outer_h-20); strap(60, outer_h-20); strap(-60,20); strap(60,20); }

