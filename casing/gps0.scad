l = 36.5;
w = 26.5;
h = 13;

wall = 4.0;

w2 = 25;
w3 = -42;
bottom = 0;


difference(){
  union(){
  hull(){
    translate([0,0,0])cube([l+wall,w+wall,h+wall], center=true);
    translate([w2,0,-(h-wall)/2])cylinder(r=12,h=(h-wall),$fn=40); 
    translate([w3,0,-(5)/2])cylinder(r=5,h=(5),$fn=40); 
  }  
  if (bottom==1){
    hull(){
    translate([0,0,h/2+5])cube([10,10,2],center=true); 
    translate([0,0,h/2])cube([20,20,2],center=true); 
    }
  }
  }
  
  
  translate([0,0,0])cube([l,w,h ], center=true);
  translate([0,0,0])cube([60,20,8 ], center=true);

  translate([0,0,0])cube([45,15,h+2 ], center=true);
  
  translate([21,+12.5,-50/2])cylinder(r=1,h=50,$fn=40); 
  translate([21,-12.5,-50/2])cylinder(r=1,h=50,$fn=40); 
  translate([-21,+12.5,-50/2])cylinder(r=1,h=50,$fn=40); 
  translate([-21,-12.5,-50/2])cylinder(r=1,h=50,$fn=40);   
  
  translate([21,+12.5,h/2+wall/2-1])cylinder(r=2,h=50,$fn=40);
  translate([21,-12.5,h/2+wall/2-1])cylinder(r=2,h=50,$fn=40); 
  translate([-21,+12.5,h/2+wall/2-1])cylinder(r=2,h=50,$fn=40); 
  translate([-21,-12.5,h/2+wall/2-1])cylinder(r=2,h=50,$fn=40); 
  
  translate([0,0,-50])color("red")cube([200,200,100], center=true);
  if (bottom==1){
    translate([0,0,h/2])cube([8.05,8.05,80],center=true);   
  }
}





