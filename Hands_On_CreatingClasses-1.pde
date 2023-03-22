// Hands On: Creating Classes 
// Amber 
// Sep 20, 2021

Spot sp;

float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;

void setup (){
  size(200,200);
  smooth();
  background(255);
}

void move () {
  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;

  // Check for bouncing
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  // Display at x,y location
  stroke(0);
  fill(175);
  ellipse(x,y,16,16);
}
  
void draw() {
  //noStroke();
  //fill(255,10);
  //rect(0,0,width,height);
  
  sp = new Spot();
  
  move ();
  
}

  
