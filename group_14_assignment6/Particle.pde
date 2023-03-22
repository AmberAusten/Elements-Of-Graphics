class Particle {
  float x;
  float y;
  float vx;  
  float vy;
  float yspeed = 0;
  float gravity = 0.1;
  
  
  Particle (float x, float y) { // passes in an initial location and velocity
    this.vx = random(-1,1); // forces applying affect this
    this.vy = random(-0.1,-1);
    this.x = x;
    this.y = y;
    
  }
  // method to apply force 
  void applyForce(float fx,float fy) { 
    vx = vx + fx;
    vy = vy + fy;
    yspeed = vy + yspeed;
    yspeed = yspeed + gravity;
    if (y>height) {
      yspeed = yspeed * -0.95;
      y = height;
    }
    update();
  }  

  // method to update position 
  void update () {
    x += vx;
    y += vy;   
}
  void display () {
    noStroke();
    ellipse(x,y,random(45),random(45));
  }
}
