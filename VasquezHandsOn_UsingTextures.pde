// Hands On: Using Textures 

float x,y,z;
PImage tex;
PShape sphere;
float angle;

void setup () { 
  size(640,360,P3D);
  background(150);
  tex = loadImage("KhaloCrying.jpg");
  sphere = createShape(SPHERE, 50);
  sphere.setTexture(tex); // set spheres texture to that image 
  angle = 0;
  textureMode(NORMAL); // often done to set to normal
  textureWrap(REPEAT);
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
  lightSpecular(204,204,204);
  specular(255,50,100);
  
  directionalLight(210,210,210, -1,0,0);
  pointLight(255,255,255,350,350,50);
  spotLight(255,255,255,350,350,50,-1,0,0,PI,1);
  ambientLight(102,102,102); // darker greyish color
  
  translate(width/2,height/2,0); //shift to middle of screen
  ambient(40,200,40); 
  shininess(30.0); 
  sphere(120);
  popMatrix();
  
  // Triangle 
  translate(width/2, height/2, 0);
  if (mousePressed){
    lights();
  }
  rotateX(PI/2);
  rotateZ(-PI/6);
  shininess(30.0); 
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
  beginShape(QUADS); // quadrlaterale shape 
  texture(tex);
  vertex(0,0,0,0,0);
  vertex(350,0,0,1,0); // last 2 coordinated tell what percent of image should be wrapped onto shape 
  vertex(350,200,0,1,1);
  vertex(0,200,0,0,1);
  endShape();
  
  pushMatrix();
  rotateY(angle);
  angle+=0.05;
  //shape(sphere);
  popMatrix();
} 
