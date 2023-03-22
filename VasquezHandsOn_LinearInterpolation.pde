// Hands on: Linear Interpolation 
// Amber Etana
// Oct 4, 2021

float x = 200;
float y = 200; 
float dx = .3;

// Lerp method
//size(400, 400);
//float a = 80;
//float b = 320;
//float c = lerp(a, b, .8);
//float d = lerp(a, b, .20);
//float e = lerp(a, b, .32);
//beginShape(POINTS);
//vertex(a, 200);
//vertex(b, 200);
//vertex(c, 200);
//vertex(d, 200);
//vertex(e, 200);
//endShape();

// Linear Interpolation

//float x;
//float y;


void setup() {
  size(640, 360); 
  noStroke();  
}

void draw() { 
  background(51);
  //x = lerp(x, mouseX, 0.8);
  //y = lerp(y, mouseY, 0.20);
  
  //fill(255);
  //stroke(255);
  //ellipse(x, y, 66, 66);
  
  move();
}

void move() {
  //x = lerp(x, mouseX, 0.8);
  //y = lerp(y, mouseY, 0.20);
 
  fill(255);
  stroke(255);
  ellipse(x, y, 66, 66);
  if (x < 250) {
    x += dx;
  }
}
