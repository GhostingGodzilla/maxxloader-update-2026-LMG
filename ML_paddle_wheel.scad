wheel_d=90; wheel_t=5; paddle_w=20; paddle_h=35; paddle_th=3; shaft_r=3;
module paddle(){ translate([wheel_d/2 - paddle_h/2,0,0]) cube([paddle_w,paddle_th,paddle_h],center=true); }
module wheel(){ rotate([90,0,0]) difference(){ cylinder(h=wheel_t,r=wheel_d/2,$fn=128); translate([0,0,-1]) cylinder(h=wheel_t+2,r=shaft_r,$fn=64); } }
union(){ wheel(); for(i=[0:7]) rotate([0,0,i*45]) paddle(); }
