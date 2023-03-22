// Hands On: Moving Cameras 
// Wed Oct 6 2021

// create several 3D shapes
  // In order to specify 3D coordinates for shapes in Processing, you have to use translate(). 
  // In 2D, translate looks like: “translate(x,y)”, and 3D we add one more argument: “translate(x,y,z)”.

float x,y,z;

void setup () { 
  size(640,360,P3D);
  background(150);
  // if (mousePressed){ // wonder why it didn't work here, and had to put the if statement in every shape 
  // lights();
  // }
  
  // Set up a camera to look at objects
  // camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ)
  //camera(360.0, 180.0, 120.0, 400.0, 220.0, 0.0, 0.0, 1.0, 0.0);
  //camera(70.0, 35.0, 120.0, 50.0, 50.0, 0.0, 0.0, 1.0, 0.0);
  
  
  beginCamera();
  camera();
  rotateX(-PI/6);
  ////rotateY(PI/2);
  ////rotate(PI/8);
  endCamera();
} 
void draw () {
  // Cube 
  pushMatrix();
  fill(127);
  translate(130,height/2,0);
  if (mousePressed){
    lights();
  }
  rotateZ(1.25);
  box(100);
  popMatrix();
  
  // Sphere
  pushMatrix();
  translate(500, height*0.50, -200);
  if (mousePressed){
    lights();
  }
  sphere(120);
  popMatrix();
  
  // Triangle 
  translate(width/2, height/2, 0);
  if (mousePressed){
    lights();
  }
  rotateX(PI/2);
  rotateZ(-PI/6);
  noFill();
  
  beginShape();
  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex(   0,    0,  100);
  
  vertex( 100, -100, -100);
  vertex( 100,  100, -100);
  vertex(   0,    0,  100);
  
  vertex( 100, 100, -100);
  vertex(-100, 100, -100);
  vertex(   0,   0,  100);
  
  vertex(-100,  100, -100);
  vertex(-100, -100, -100);
  vertex(   0,    0,  100);
  endShape(); 
  
  //  Sphere 2
  translate(100,100,0);
  if (mousePressed){
    lights();
  sphere(50);
  } 
} 
