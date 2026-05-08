lid_w=280; lid_d=165; lid_t=15; lip=8; groove_w=2; groove_d=2;
module lid(){ translate([-lid_w/2,-lid_d/2,0]) cube([lid_w,lid_d,lid_t]); translate([-lid_w/2+8,-lid_d/2+8,-1]) cube([lid_w-16,lid_d-16,lid_t-10]); }
difference(){ lid(); translate([-lid_w/2+4,-lid_d/2+4,2]) cube([lid_w-8,groove_w,groove_d]); }
