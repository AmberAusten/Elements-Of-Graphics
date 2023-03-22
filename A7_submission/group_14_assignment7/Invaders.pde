class Invader{
  float size, speed;
  float x,y;
  int direction = 1, counter = 0;
  Boolean wallBump = false;
  Boolean lose = false;
  
  Invader(float size_in, float speed_in, float x_in, float y_in){
    size = size_in;
    speed = speed_in;
    x = x_in;
    y = y_in;
  }
  
  void display(){
   ellipseMode(CENTER);
   fill(255,0,0);
  PShape invader = createShape(ELLIPSE,0,0,size,size);
  
  shape(invader,x,y);
  
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
      wallBump = false;
    }}
    
    else{
      if((millis() - counter) >= speed){
      x += size/2 * direction;
      counter = millis();
      }
    }
  
  }

}
