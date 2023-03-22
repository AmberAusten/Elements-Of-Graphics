// Hands-on: Using Color 
// Amber Etana Vasquez kav835
// CS324e Sep 1, 2021 


void setup () {
  // create a sketch window of size 400 x 400
  size(400,400);
}

// Analogous color scheme using adjacent, 
// secondary or tertiary colors
void draw () {
  background(0);

  // Left rectangle
  fill(59,44,232);
  rect(0,0,100,400);
  
  // Top rectangle, 100% opacity
  fill(240,128,128);
  rect(0,0,400,60);
  stroke(240,128,128);
  
  // Second rectangle, 75% opactiy
  fill(240,128,128,191);
  rect(0,100,400,60);
  stroke(240,128,128,185);
  
  // Third rectangle, 55% opacity
  fill(240,128,128,127);
  rect(0,200,400,60);
  stroke(240,128,128,120);
  
  // Fourth rectangle, 25% opacity
  fill(240,128,128,63);
  rect(0,300,400,60);
  stroke(240,128,128,60);
  
  blendMode(REPLACE);
  
  // Top 3 circles
  fill(234,43,113);
  ellipse(20,20,30,30);
  noStroke();
  
  fill(127,0,0);
  ellipse(30,20,22,22);
  
  fill(255,200,200);
  ellipse(40,20,18,18);
  
  // Bottom 3 circles
  fill(234,43,113,53);
  ellipse(375,335,30,30);
  
  fill(127,0,0,53);
  ellipse(365,335,22,22);
  
  fill(255,200,200,53);
  ellipse(355,335,18,18);
  
  blendMode(DIFFERENCE);
  
  // Store primitives in an array for reuse
  color[] colors = {
    color(59,44,232), color(240,128,128), color(234,43,113), color(127,0,0), color(255,200,200),
    };
  
  // Sample reuse 
  for (int i = 0; i < colors.length; i++) {
    fill(colors[i]);
    ellipse( i * 65, i * 65,50,50);
    blendMode(SCREEN);
  }
}
