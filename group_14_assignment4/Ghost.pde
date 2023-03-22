class Ghost {
  float x, y, speed;
  color c;
  
  
  float leye_x = 15;
  float leye_y = 20;
  
  float rot = 0;

  Eye left_eye;
  Eye right_eye;
  
  Ghost(float x, float y, float speed, color c) {
   this.x = x;
   this.y = y;
   this.speed = speed;
   this.c = c;
  }
  
  void display() {
   
   fill(c);
   noStroke();
   PShape ghost = createShape(GROUP); // entire ghost body shape
   PShape circle = createShape(ELLIPSE, 30, 30, 60, 60); // for curved top
   PShape square = createShape(RECT, 0, 30, 60, 30); // for straight sides on the body
   PShape wave_1 = createShape(ELLIPSE, 10, 60, 20, 20); // first curve on bottom of body
   PShape wave_2 = createShape(ELLIPSE, 30, 60, 20, 20); // second curve
   PShape wave_3 = createShape(ELLIPSE, 50, 60, 20, 20); // third curve
   ghost.addChild(circle);
   ghost.addChild(square);
   ghost.addChild(wave_1);
   ghost.addChild(wave_2);
   ghost.addChild(wave_3);
   
   
   // create eyes from Eye class and display them
   left_eye = new Eye(15, 25, 20);
   right_eye = new Eye(40, 25, 20);

   // draw ghost at x, y
   shape(ghost, x, y);

  }
  
  void move(){
    x += speed;
    rot += 10;
    pushMatrix();
    translate(x + 15, y + 25);
    rotate(radians(rot));
    shape(left_eye.eye, -15, -25); // makes left eye rotate and translate
    popMatrix();
    
    pushMatrix();
    translate(x + 40, y + 25);
    rotate(radians(rot));
    shape(right_eye.eye, -40, -25); // makes right eye rotate and translate
    popMatrix();
    if (x > width) {
      x = 0; 
    }  
  }

}
