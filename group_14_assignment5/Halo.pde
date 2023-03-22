class Halo {
  float x,y,radius; 
  float speed = 5;
  float easing = .9;
  boolean glow = true;
  color haloColor;
  
  
  Halo (float x, float y, float radius, color haloColor) {
    
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.haloColor = haloColor;
}

  void display () {
    pushMatrix();
    pushStyle();
    translate(x,y,0);
    fill(haloColor,50); // yellow glowing halo, #FAF323
    noStroke();
    sphere(radius);
    //filter(BLUR,1);
    popMatrix();
    popStyle();
    
    
    // movement, sets with sun
    y += speed * easing;   
    
    // glow
    if (glow) {
      radius ++;
      if (radius == 100) {
        glow = false;
      }
    } else {
      radius --;
      if (radius == 75){
        glow = true;
      }
    } 
  } 
}
  
  
