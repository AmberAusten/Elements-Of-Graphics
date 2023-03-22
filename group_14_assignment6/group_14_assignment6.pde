SnowFall s2;
CloudSystem sys1;
SmokeSystem ss;        // file 'particle2' is the fire and 'particle' is the smoke
Fire f1;
Fire f2;
Fire f3;          // let the smoke rise & leave the screen for smoother animations to occur thereafter

float wind = 0.01;
float gravity = 0.05;
float gusting_wind = -wind*1.8;
float wind1 = 0.9;
float gravity1 = 0.5;
float wind2 = 0.5;
float gravity2 = 0.7;
float wind3 = 0.1;
float gravity3 = 0.2;
float size = 20;
color c1 = color(255, 0, 0);
color c2 = color(255, 0, 100);
color c3 = color(0, 0, 255);

void setup(){
  s2 = new SnowFall(25,20,2);
  sys1 = new CloudSystem(8,35);
  ss = new SmokeSystem(width/2,450);
  f1 = new Fire(500, height - 250, size, c1);
  f2 = new Fire(700, height - 200, size, c2);
  f3 = new Fire(150, height - 150, size, c3);
  size(1000,700);
}

void draw(){
  background(0);
  s2.display(wind,gravity);
  sys1.display(wind,gusting_wind);
  ss.display();
  f1.display(wind1, gravity1);
  f2.display(wind2, gravity2);
  f3.display(wind3, gravity3);
}
