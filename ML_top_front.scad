outer_w=280; outer_d=165; outer_h=90;
inner_w=240; inner_d=127; inner_h=80; bottom_wall=5;
module shell(){ translate([-outer_w/2,-outer_d/2,0]) cube([outer_w,outer_d,outer_h]); }
module hollow(){ translate([-inner_w/2,-inner_d/2,bottom_wall]) cube([inner_w,inner_d,inner_h]); }
difference(){ shell(); hollow(); }
