// Assignment 1
// Amber
// Sep 7, 2021 



void setup(){
  size(600,600);
}

void draw () { 
  
  background(200);
  stroke(100);
  noFill();
  rect(50,50,500,500);
  

  //Person
  pushStyle();
  strokeWeight(2);
  //head
  ellipse(150,400,50,50);
  circle (165,388,3);
  fill(0);
  
  //body
  line(150,430,150,500);
  
  //legs
  line(150,500,175,550);
  line(150,500,125,550);
  
  //arms
  line(150,470,200,425);
  line(150,465,200,430);
  
  // Moon 
  bezier(450,100,500,75,520,200,450,200);
  bezier(450,100,500,75,520,200,450,200);
  
  // stars
  line (400,100,385,125);
  line (385,100,400,125);
  line (393,100,393,125);
  
  line (500,150,525,175);
  line (525,150,500,180);
  line (515,150,515,175);
  
  //telescope
  line(190,380,250,350);
  line(200,400,275,375);
  arc(260,360,35,35,0,PI+PI);
  arc(200,390,20,20,0, QUARTER_PI+PI);
  popStyle();
  
  
  //Color frames
  pushStyle();
  strokeWeight(3);
  color y = color (255,255,0);
  noFill();
  stroke(y);
  rect(25,25,550,550);
  
  color p = color (234,43,115);
  noFill();
  stroke(p);
  rect(15,15,570,570);
  
  color b = color (43,214,234);
  noFill();
  stroke(b);
  rect(10,10,580,580);
  popStyle();
  
  noStroke();
  fill(255,20);
  rect (60,60,475,475);
 
}
