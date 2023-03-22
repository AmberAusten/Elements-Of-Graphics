class Snowflake{
 float x = random(width), y = 0, ap = 0;
 float vx = 0, vy = 0, av = 0;
 float r;
 float m;
 int numSides = int(random(4,8));
 
 Snowflake(float _y, float _r, float _mass) {
 y = _y;
 r = _r;
 m = _mass;
 }
 
void applyForces(float
_fx, float _fy) {
 vy += _fy/m;
 vx += _fx/m;
 y += vy;
 x += vx;
 av += -(_fx)/m;
 ap += av;
 
 
 if(y >= height){
   vx = 0;
   vy = 0;
   av = 0;
   y = 0;
   numSides = int(random(4,8));
}

if(x >= width){
  x = 0;
  numSides = int(random(4,8));
}
if(x < 0){
  x = width;
  numSides = int(random(4,8));
}
 
 }

void display(){
strokeWeight(5);
stroke(192, 244, 255,50);

PShape flake = createShape(GROUP);
for(int i = 0; i < numSides; i++){
  PShape part = snowPart(r);
  
 
  part.rotate(TWO_PI * i / numSides);
  
  flake.addChild(part);
}
flake.rotate(radians(ap));
shape(flake,x,y);
}

}


PShape snowPart(float size){
  PShape shape = createShape(GROUP);
    
  PShape v = createShape(LINE,0,0,0, -size/2);
  PShape v1 = createShape(LINE, 0,(-size/2 + size/8), (size/15), -size/2 + size/100);
  PShape v2 = createShape(LINE, 0,-size/2 + size/8,(-size/15), -size/2 + size/100);
  PShape v3 = createShape(LINE, 0,-size/2 + size/4,(size/9), -size/2 + size/11);
  PShape v4 = createShape(LINE, 0,-size/2 + size/4,(-size/9), -size/2 + size/11);
  
  shape.addChild(v);
  shape.addChild(v1);
  shape.addChild(v2);
  shape.addChild(v3);
  shape.addChild(v4);

  return shape;


}
