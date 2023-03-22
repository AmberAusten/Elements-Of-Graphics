// Hands On: Using Transformations 
// Amber 
// Wed Sep 29,2021 


void setup() {
  size(300,300);
  
  // create a rectangle in upper left corner 
  // rect(x,y,length,width)
  fill(#FFB9EE);
  rect(0,0,50,25);
  
  // Before draw call, translate screen origin to center
  fill(#D397C4);
  pushMatrix();
  translate(125,100);
  rect(0,0,50,25);
  popMatrix();
  
  
  // Scale then translate the screen's origin
  noFill();
  stroke(128);
  rect(0,0,50,25);
  
  noFill();
  stroke(0);
  pushMatrix();
  scale(2.0);
  translate(50,50);
  rect(0,0,50,25);
  popMatrix();
  
  //Scale, translate, rotate the screen's origin
  noFill();
  stroke(130);
  pushMatrix();
  scale(4.0);
  translate(20,20);
  rotate(radians(30));
  rect(0,0,50,25);
  popMatrix();
  
  noFill();
  stroke(100);
  pushMatrix();
  scale(4.0);
  rotate(radians(45));
  translate(20,20);
  rect(0,0,50,25);
  popMatrix();
  
  
  fill(#83E8D6,120);
  ellipse(30,30,30,30);
  
  noFill();
  stroke(100);
  pushMatrix();
  scale(2.0);
  rotate(radians(45));
  translate(75,50);
  ellipse(0,0,50,25);
  popMatrix();
  
  pushMatrix();
  translate(20, 20);
  ellipse(0,0,50,25);
  popMatrix();
  
  
}

void draw() {
  
 
  
} 
