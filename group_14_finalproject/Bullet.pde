

class Bullet {
   
  PVector pos;
  float radius;
  color col;
  float vx;
  float vy;
  float yspeed = 5; 

  Bullet (float x, float y, float r, color c) {
    pos = new PVector(x,y);
    radius = r;
    col = c;
    this.vx = (0);
    this.vy = (-1);
  }
 
 void create() {
   fill(col);
  // if (exploded) can be added to alien function 
     ellipse(pos.x,pos.y,radius *2, radius *2);
  
  }
  
  void move () { // assume x n y position of spaceship 
    pos.y -= yspeed;

  }
 }
  
// can disappear the bullet in the alien function 
// set a boolean exploded = false 
// when hits alien, exploded  = true
