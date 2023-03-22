// Hands on: Building with Inheritance
// Amber 
// Wed Sep 22 

ColoredSpot csp1;
ColoredSpot csp2;
TwoSpots ts1;
TwoSpots ts2;


void setup () {
  size(500,500);
  background(250,100,190);
  
  color c1 = color(255,0,0);// define a color here, red
  csp1 = new ColoredSpot(20,200,15,0.5, 1, -1,c1);
  
  color c2 = color(0,0,255);// define a color here, blue
  csp2 = new ColoredSpot(200,10,9,0.5, -1, 1,c2);
  
  color c3 = color(91,237,109);
  ts1 = new TwoSpots(300,300,30,0.5,2,-2,c3);
  
  color c4 = color(250,8,190);
  ts2 = new TwoSpots(300,300,30,0.5,-2,2,c4);
  
}

void draw () {
  csp1.display();
  csp2.display();
  
  csp1.move();
  csp2.move();
  
  ts1.display();
  ts2.display();
  
  ts1.move();
  ts2.move();
  
}
