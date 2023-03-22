class Cloud {
 float x, y;
 float vx = 2;
 float xr;
 float yr;
 Timer t1 = new Timer();
 boolean force2 = false;
 int lumps = int(random(2,5));
 
 
 Cloud(float _x, float _y,float _xr, float _yr) {
     x = _x;
     y = _y;
     xr = _xr;
     yr = _yr;
     }
 
 void direction(float _fx, float _fx2) {
 vx += _fx;
 if (t1.interval1()){force2 = !force2;}
 if (force2){
 vx += _fx2;
 }
 x += vx;
 
 if(x >= width+xr){
  x = 0-(xr*2*lumps);
  y = random(0,height/4)+(yr*1.1)/2;
  vx = 1;
  lumps = int(random(2,5));
}
if(x < 0-(xr*2*lumps)){
  x = width+xr;
  y = random(0,height/4)+(yr*1.1)/2;
  vx = 1;
  lumps = int(random(2,5));
}
 
}
 
 void display() {
 noStroke();
 fill(255);
 for (int i = 0; i <= lumps; i++){
 ellipse(x+(i*(8*xr/10)), y, xr, yr);
 }
 }
}
