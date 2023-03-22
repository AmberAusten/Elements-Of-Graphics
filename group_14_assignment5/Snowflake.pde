class Snowflake{
  float size, x = int(random(width)), y0, y;
  int counter = 0, part = int(random(4,7));
  float rate = random(1,2);
Snowflake(float s, float hi){
  size = s;
  y = hi;
  y0 = y;
}

void display(){
counter++;
strokeWeight(5);
stroke(137, 207, 240,100);
PShape snowflake = createShape(GROUP);

for(int i = 0; i <= part; i++){
PShape s1 = snowPart(size);
s1.rotateY(HALF_PI);
s1.rotateX(TWO_PI * i / part);

snowflake.addChild(s1);
}

for(int j = 0; j <= part; j++){
PShape s1 = snowPart(size);

s1.rotateX(TWO_PI * j/ part);

s1.rotateY(PI);

snowflake.addChild(s1);
}


snowflake.rotateY(rate * radians(counter));
snowflake.rotateX(rate * sin(radians(counter)));

shape(snowflake,x,y);

}

void move(float fall, float move){
y += fall * rate;
x += move;
if(y >= height){
y = 0;}

if(x >= width){
  x = 0;
}
if(x < 0){
  x = width;
}
}}


PShape snowPart(float size){
  PShape shape = createShape(GROUP);
    
  PShape v = createShape(LINE,0,0,0,0, -size/2,0);
  PShape v1 = createShape(LINE, 0,(-size/2 + size/8), 0, (size/15), -size/2 + size/100,0);
  PShape v2 = createShape(LINE, 0,-size/2 + size/8,0,(-size/15), -size/2 + size/100,0);
  PShape v3 = createShape(LINE, 0,-size/2 + size/4,0,(size/9), -size/2 + size/11,0);
  PShape v4 = createShape(LINE, 0,-size/2 + size/4,0,(-size/9), -size/2 + size/11,0);
  
  shape.addChild(v);
  shape.addChild(v1);
  shape.addChild(v2);
  shape.addChild(v3);
  shape.addChild(v4);

  return shape;


}
