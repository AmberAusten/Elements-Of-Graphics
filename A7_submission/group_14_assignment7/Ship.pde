// create a ship that handles left and right arrow movements
class Ship {
  PImage img; // create PImage object
  int img_width = 100; // width for image size
  float x = width/2 - (img_width/2); // x coordinate adjusted by image width
  float y;
  int tot_bullets = 0;
  ArrayList<Bullet> Bullets = new ArrayList<Bullet>();
  // constructor, takes string parameter for image name to load image
  Ship(String s) {
    this.img = loadImage(s); // load image
  }
  
  // display ship
  void display() {
    img.resize(img_width, 0); // resize image
    y = height - (img.height); // y coordinate based on image height
    image(img, x, y); // display image
  }
  
  // update x coordinate of ship
  void update() {
    if (keyPressed && key == CODED) { // if coded key pressed
      if (keyCode == LEFT) { // if left arrow pressed
        if (x > 0) { // if x coordinate is not off screen to the left
          x -= 5;
        }    
      } else if (keyCode == RIGHT) { // if right arrow pressed
        if (x + img.width < width) { // if x coordinate is not off screen to the right
          x += 5;
        }      
      }
    }
    
   if (Bullets.size() > 0) {
     for(int i = 0; i < Bullets.size();i++){
     Bullet b = Bullets.get(i);
     b.create();
     b.move();
     
     if(b.pos.y <= 0){
     Bullets.remove(b);
     }
     
     }
     
 }
}

void fire(){

      bulletShot = true; //append bullet to new list
      Bullets.add(new Bullet(x + img_width/2,y,5,200)); // these 2 lines will be inside spaceship.shoot 
      tot_bullets++;
  }
}
