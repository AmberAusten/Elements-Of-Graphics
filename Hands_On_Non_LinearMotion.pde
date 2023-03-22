//Hands-On: Non-Linear Motion


float easeOut = 0;
float easeIn = 0;
float target = 400;
float easing = 0.2;
float oscillate = 0;
final float oscillateStart = 100;
float theta = 0;
float spinX = 0.0;
float spinY = 0.0;
float spinTheta = 0;
final float Spin_Center_X = 250.0;
final float Spin_Center_Y = 400.0;

void setup() {
  size(500,500);
}

void draw(){
  background(#F0CBED);
  easeOut();
  easeIn();
  oscillate();
  spin();
  
  noStroke();
  ellipse(easeOut, 100, 30, 30);
  ellipse(easeIn, 250, 80, 80);
  ellipse(oscillate, 100, 50, 50);
  ellipse(spinX, spinY, 50, 50);
  
}

void easeOut() {
  easeOut = lerp(easeOut, target, easing);
}

void easeIn() {
  float speed = abs(target - easeIn); 
  float distance = target - 0;
  float easeIn = 1 ; /// (speed * distance);
  if (easeIn < 1) {
    easeIn = lerp(easeIn,target,easeIn);
  }
}

void oscillate() {
  oscillate = oscillateStart + 300.0 * cos(theta);
  theta += 0.05;
}
void spin() {
  spinX = Spin_Center_X + 200.0 * cos(spinTheta);
  spinY = Spin_Center_Y + 200.0 * sin(spinTheta);
  spinTheta += 0.5;
} 
