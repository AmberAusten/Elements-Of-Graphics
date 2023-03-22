class Arm { // class to create arm shape for the snowman body; creates long skinny box shape
  float x, y, z;
  color c;
  PShape arm;
  
  Arm(float x, float y, float z, color c) {
     this.x = x; 
     this.y = y;
     this.z = z;
     this.c = c;
     
     fill(c);
     arm = createShape(BOX, x, y, z);
  }
  
}
