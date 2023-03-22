// Hands On: Using Masses and Springs


// change coordinates to p vectors 
// pvector stores x,y for 2D
PVector y;
PVector v;
PVector ry;



//float y;
//float vy;
float m = 1.0;
//float ry = 250;
float ks = 0.1;
float kd = 0.1;

void setup () {
  size(500,500);
  y = new PVector(0,0); 
  v = new PVector(0,0);
  ry = new PVector(250,250);
}

void draw () {
  background(210);
  
  PVector dy = PVector.sub(y, ry);
  PVector stiffnessForce = PVector.mult(dy, -ks);
  PVector dampingForce = PVector.mult(v, -kd);
  PVector f = PVector.add(stiffnessForce, dampingForce);
  PVector a = PVector.div(f, m);
  v.add(a);
  y.add(v);
 
  //float f = -(ks * (y-ry));
  //float a = f/m;
  //vy = vy + a;
  //y +=vy;
  
  rect(y.y,y.y,100,20);
}
