class Ship {
  ArrayList<PImage> fire = new ArrayList<PImage>();
  ArrayList<Particle> particles = new ArrayList<Particle>();
  PImage img; // create PImage object
  int img_width = 50; // width for image size
  float x = width/2 - (img_width/2); // x coordinate adjusted by image width
  float y;
  int tot_bullets = 0, counter = 0, imgCounter = 0, speed = 300;
  color bulletColor = color(200);
  ArrayList<Bullet> Bullets = new ArrayList<Bullet>();
  // constructor, takes string parameter for image name to load image
  Ship(String s) {
    this.img = loadImage(s); // load image
    for(int i=0; i < 4; i++){
    PImage imgs = loadImage("fireShot_"+i+".png");
    imgs.resize(img_width/4, 0);
    fire.add(imgs);
    }
    
    
    
  }
  
  // display ship
  void display() {
  if((millis() - counter) >= speed){
  Particle newP = new Particle(x + img.width/2, y + img_width, random(-1,1), random(.5,1), 5);
  particles.add(newP);
  imgCounter ++;
  counter = millis();
  }
  
  if(imgCounter >= 4){
  imgCounter = 0;
  }
  
  
  println(particles.size());
  for(int i = particles.size(); i > 0 ; i--){
  Particle p = particles.get(i-1);
  p.applyForces(0, 1);
  p.display();
  if(p.y > height || ((p.x >= width) || (p.x <= 0))){
  particles.remove(i-1);
  }
  }
  

    image(fire.get(imgCounter), x + img_width/(2.75), y + img_width);
    img.resize(img_width, 0); // resize image

    y = height - (img.height) - 25; // y coordinate based on image height   
    image(img, x, y);


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
      Bullets.add(new Bullet(x + img_width/2,y,5,bulletColor)); // these 2 lines will be inside spaceship.shoot 
      tot_bullets++;
  }
}
