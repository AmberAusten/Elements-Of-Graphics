class Invader{
  int red = int(random(150,255));
  int green = int(random(150,255));
  int blue = int(random(150,255));
  float size, speed;
  float x,y;
  int direction = 1, counter = 0;
  Boolean wallBump = false;
  Boolean lose = false;
  ArrayList<PImage> invaderImage = new ArrayList<PImage>();
  int frameNum = 0;;
  Invader(float size_in, float speed_in, float x_in, float y_in){
    size = size_in;
    speed = speed_in;
    x = x_in;
    y = y_in;
    for(int i=0; i < 4; i++){
    PImage imgs = loadImage("Invader_"+i+".png");
    imgs.resize(int(size),int(size));
    invaderImage.add(imgs);
    }
    
  }
  
  void display(Boolean upsideDown){
   PShape eye = createShape(GROUP);
   fill(255,255,255);
   PShape white = createShape(ELLIPSE, 0,0 ,size/5, size/5);
   fill(255,0,0);
   PShape pupil = createShape(ELLIPSE, size/20 * sin(radians(counter)), size/20 * cos(radians(counter)), size/10, size/10);
   eye.addChild(white);
   eye.addChild(pupil);
   
   
   if (upsideDown) {
    //pushMatrix();
    rotate(PI);
    //popMatrix();
    }
   
   ellipseMode(CENTER);
   fill(255,0,0);
   if(frameNum > 3){
   frameNum = 0;
   }
   
    //popMatrix();
  tint(red,green,blue);
  image(invaderImage.get(frameNum),x,y);
  shape(eye,x+size/2 + size/10 + 2,y+5);
  shape(eye,x+size/2 - size/10 - 2,y+5);
  noTint();
  }
  
  void bumpCheck(){
  if((x + size/2 >= width) ||(x - size/2 <= 0)){
      wallBump = true;
      return;
    }
  }
  
  void loseCheck(){
  if(y + size/2 >= width){
      lose = true;
      return;
    } 
  }
  
  void move(){
    if(wallBump == true){
    if((millis() - counter) >= speed){
      direction = -direction;
      y += size;
      x += size/2 * direction;
      counter = millis();
      speed = lerp(0,speed,.9);
      frameNum++;
      wallBump = false;
    }}
    
    else{
      if((millis() - counter) >= speed){
      x += size/2 * direction;
      frameNum++;
      counter = millis();
      }
    }
  
  }

}
