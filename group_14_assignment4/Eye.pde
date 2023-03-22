class Eye {
  float x, y, size, speed;
  PShape eye;
  
  Eye(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
    
    eye = createShape(GROUP);
    fill(255);
    PShape white = createShape(ELLIPSE, x, y, size, size);
    fill(0);
    PShape pupil = createShape(ELLIPSE, x + (size/4), y, size/2, size/2);
    eye.addChild(white);
    eye.addChild(pupil);
  }
}
