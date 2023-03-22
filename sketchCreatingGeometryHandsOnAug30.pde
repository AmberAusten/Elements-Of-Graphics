//Amber Etana Vasquez kav835
//CS324e
//Hands on: Creating Geometry 

void setup() {
  size(500,500);
}

void draw () {
  //LIBRA
  //three points of the Libra constellatin triangle 
  point(400, 100);
  point(375, 150);
  point(450,160);
  // three lines of the Libra triangle
  line(400,100,375,150);
  line(375,150,450,160);
  line(400,100,450,160);
  //Scale arms of the Libra constellation
  point(375,275);
  line(375,150,385,275);
  point(430,245);
  line(450,160,430,245);
  
  //General shapes 
  rect(100,200,150,75);
  fill(175);
  
  rect(100,350,75,100);
  fill(180);
  
  ellipse(100,100,50,75);
  ellipse(450,450,75,50);
  
  triangle(200,100,375,150,360, 160);
  triangle(350,450, 375,450, 365,400);
  
  quad(250, 250, 200, 450, 300, 450, 300,250);
  quad(450,50, 425, 75, 475, 75, 475, 50 );
  
  
  
}
