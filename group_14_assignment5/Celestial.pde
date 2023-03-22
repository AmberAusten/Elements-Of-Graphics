
class Celestial {
  float x, y, radius, speed;
  color c;
  float angle = PI/200;
  float easing = .9;    
  color haloColor;
  
  Halo myHalo;
  
  Celestial(color c, float x, float y, float radius, float speed, color haloColor) {
    
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.c = c;
    this.speed = speed;
    myHalo = new Halo(x, y, radius * 1.5, haloColor);
    


}
  
  void display () {
    
    // sun 
    pushMatrix ();
    pushStyle();
    translate(x,y,0);
    noStroke();
    fill(c); // orange sun , #FF920D
    sphere(radius);
    //myHalo.display(); // yellow halo radiating
    popMatrix();
    popStyle();
    
    
    // radiating halo around Sun
    pushStyle();
    myHalo.display();
    popStyle();
    
    // moon
    pushMatrix();
    pushStyle();
    translate(x,y,0);
    strokeWeight(0.1);
    fill(#F2F2E1);
    // moon rotation (unrealistic, but pretend)
    rotateY(angle);
    rotateX(angle);
    rotateZ(angle);
    angle = angle+PI/50;
    sphere(radius);
    popMatrix();
    popStyle();
  }
  
  void move () {
    y += speed * easing;
    
    // moon rising then stops
     if (y < 120) {
      y = 120;
     }
  }
  
}
