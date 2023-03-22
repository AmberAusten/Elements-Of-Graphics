class Particle2 {
  float x, y, r, vx, vy, alpha, mass;
  float av = 0;
  float ap = 0;
  color c;
  // constructor with parameters
  // x and y for location of fire which can be bottom center of the
  // screen
  Particle2(float x, float y, float r, color c) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.vx = random(-1, 1);
    this.vy = random(-5, -1);
    this.alpha = 255;
    this.mass = 30;
    this.c = c;
  }
  
 void display() {
    noStroke();
    fill(c, alpha);
    // little circle
    ellipse(x, y, r, r);
  }
  
  void update (float fx, float fy) {
      vx += fx / mass;
      vy += fy / mass;
      x += vx;
      y += vy;  
      av += -(fx) / mass;
      ap += av;
      alpha -= 5;
  }
  
  boolean isGone() {
      return alpha < 0;
  }

}
