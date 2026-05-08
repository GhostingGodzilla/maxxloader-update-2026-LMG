plate_x=60; plate_y=60; plate_t=4; bolt_r=2.25; shaft_r=4;
module plate(){ translate([-plate_x/2,-plate_y/2,0]) cube([plate_x,plate_y,plate_t]); translate([0,0,0]) for(i=[-1,1]) for(j=[-1,1]) translate([i*12,j*12,0]) cylinder(h=plate_t+2,r=bolt_r,$fn=32); translate([0,0,-1]) cylinder(h=plate_t+4,r=shaft_r,$fn=64); }
plate();
