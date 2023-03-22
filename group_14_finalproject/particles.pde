class Particle {
  color c = color(200,10,0);
 float x, y;
 float vx, vy;
 float r;
 Particle(float _x, float _y,
float _vx, float _vy, float _r) {
 x = _x;
 y = _y;
 vx = _vx;
 vy = _vy;
 r = _r;
 }
 void applyForces(float
_fx, float _fy) {
 vy += _fy;
 vx += _fx;
 y += vy;
 x += vx;
 }
 void display() {
 fill(c);
 ellipseMode(CENTER);
 ellipse(x, y, r, r);
 }
}
