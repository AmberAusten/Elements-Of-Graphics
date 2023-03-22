// Hands On: Using lighting
// Amber Vasquez kav835

// 1. Create 3D objects in a scene as well as a camera

void setup () {
  size (500,500,P3D);
  noStroke();
  beginCamera();
//camera(eyeX,eyeY,eyeZ,centerX,centerY,centerZ,upX,upY,upZ)
  camera(300, 300, 100, 150.0, 150, 0, 0.0, 1.0, 0.0);
  rotate(PI/2);
  endCamera();
  
}

// 2. Create one of each: a directional light, a point light, a spot light, and ambient light

// 3. Change each of these lights by adjusting its color, its position and/or direction, and the spot light’s angle and concentration

void draw() {
  background(0);
  
  pushMatrix();
  directionalLight(240,203,237,0,-1,0);
  translate(50,50,0);
  sphere(50);
  popMatrix();
  
  pushMatrix();
  pointLight(240,203,237,0,-2,0);
  translate(50,50,0);
  sphere(50);
  popMatrix();
  
  pushMatrix();
  spotLight(51, 102, 126, 320, 80, 160, -1, 0, 0, PI/2, 2);
  translate(50,50,0);
  sphere(50);
  popMatrix();
  
  pushMatrix();
  ambientLight(102, 102, 102);
  translate(50,50,0);
  sphere(80);
  popMatrix();

} 

  
