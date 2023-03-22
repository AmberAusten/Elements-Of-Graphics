class Snowman {
  float x, y, radius, speed;
  color c;
  float rot = 0;
  boolean upDir = true;
  float arm_length;
  float arm_dim; // arm dimensions; used for y and z-axis which are the same number
  
  Arm left_arm;
  Arm right_arm;
  
  Snowman(float x, float y, float radius, float speed, color c) {
    this.x = x;
    this.y = y;
    this.radius = radius; // the radius of the top sphere
    this.speed = speed;
    this.c = c;
    this.arm_length = radius * 2;
    this.arm_dim = radius / 5;
  }
  
  void display() {
    noStroke(); // remove outline
    fill(c); // add color
    lights(); // lights need to be added each time
    
    // top sphere
    pushMatrix();
    translate(x, y, 0);
    sphere(radius);
    popMatrix();
    
    // middle sphere
    pushMatrix();
    translate(x, y + (radius*2.5), 0);
    sphere(radius * 1.5);
    popMatrix();
    
    // bottom sphere
    pushMatrix();
    translate(x, y + (radius*5.5), 0);
    sphere(radius * 2);
    popMatrix();
    
    // create arms from Arm class
    left_arm = new Arm(arm_length, arm_dim, arm_dim, brown); // x, y, and z are the size dimensions of the box shape
    right_arm = new Arm(arm_length, arm_dim, arm_dim, brown);
    
  }
  
  void move() {
    x += speed;
    
    // check the conditions to set the rotation direction
    if (rot == -30) { // if rotation hits -30 then make up direction variable true to set the direction of rotation
      upDir = true;
    } else if (rot == 30) { // otherwise if rotation hits 30 degrees then make the up direction variable false so the rotation is going downward
      upDir = false;
    }
    if (upDir) { // if up direction boolean is true, make rotation increase by 1 degree
      rot += 1;
    } else if (upDir == false) { // if up direction boolean is false, make rotation decrease by 1 degree
      rot -= 1;
    }
    
    // animate left arm
    pushMatrix();
    translate(x - radius, y + (radius * 2.5), 0); // translate origin to middle sphere, left side
    rotate(radians(rot));
    shape(left_arm.arm, -arm_length / 2, 0); // draw to left by half the size of the arm/box shape
    popMatrix();
    
    // animate right arm
    pushMatrix();
    translate(x + radius, y + (radius * 2.5), 0); // translate origin to middle sphere, right side
    rotate(radians(rot));
    shape(left_arm.arm, +arm_length / 2, 0); // draw to right by half the size of the arm/box shape
    popMatrix();
    
    if (x - ((radius * 1.5) + arm_length) > width) {
      x = 0; 
    }
  }
  
}
