// Hands On: P Shapes
// Mon Sep 27, 2021

void setup (){
  size(500,500);
  background(100);
  
}

void draw() {
  // Hexagon custom shape
  //beginShape();
  //vertex(100,100);
  //vertex(150,100);
  //vertex(175,150);
  //vertex(150,200);
  //vertex(100,200);
  //vertex(75,150);
  //endShape(CLOSE);
  
  PShape hexagon = createShape();
  hexagon.beginShape();
  hexagon.vertex(100,100);
  hexagon.vertex(150,100);
  hexagon.vertex(175,150);
  hexagon.vertex(150,200);
  hexagon.vertex(100,200);
  hexagon.vertex(75,150);
  hexagon.endShape(CLOSE);
  shape(hexagon);
  
  
  // Triangle Strip 
  beginShape(TRIANGLE_STRIP);
  vertex(200,200);
  vertex(250,200);
  vertex(275,250);
  vertex(250,300);
  vertex(200,300);
  vertex(175,250);
  endShape(CLOSE);
  
  // Curve Vertex
  beginShape();
  curveVertex(150,600); // c1
  curveVertex(350,470); // v1
  curveVertex(120,350); // v2
  curveVertex(350,350); // v3
  curveVertex(350,100); // v4
  curveVertex(350,700); // c2
  endShape();
  
  
  PShape collage = createShape(GROUP);
  PShape ball = createShape(ELLIPSE,400,400,50,50);
  PShape triangle = createShape(TRIANGLE,400,400,450,300,350,400);
  PShape rectangle = createShape(RECT,400,400,450,450);
  collage.addChild(ball);
  collage.addChild(triangle);
  collage.addChild(rectangle);
  collage.endShape(CLOSE);
  shape(collage,20,20);
  
} 
