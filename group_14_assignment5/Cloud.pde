class Cloud{
  int counter = 0;
   float w, h, x, y;
   PShape cloudForm;   
   Snowflake[] storm;
Cloud(float wid, float hei, float xPos, float yPos, int snowValue){
  w = wid;
  h = hei;
  x = xPos;
  y = yPos;
  storm = new Snowflake[snowValue];
  for(int i=0; i<snowValue; i++){
  storm[i] = new Snowflake(15 + 10 * random(-1,1),random(height));
  }

  
}
  void display(){
  if(counter == 0){cloudForm = cloudCluster(h,w);}
   counter++;
  
  for(int i = 0; i<storm.length; i++){
  storm[i].display();
  storm[i].move(1, random(1));
  
  }
  
  shape(cloudForm, x + w/50 * sin(radians(counter)), y);
  }



}

PShape cloudCluster(float h, float w){
   noStroke();
  PShape cloud = createShape(GROUP);
  float p = int(random(25,50));
  for(int i = 0; i<= p;i++){
    fill(100 + 50 * sin(radians(i)),200 + 55 * sin(radians(i)));
    pushMatrix();
    float w2 = lerp(0, w, i/p) - w/2 + random(-2,2);
    float h2 = random(-h/2,h/2);
    PShape s = createShape(SPHERE,h/2);
    s.translate(w2,h2);
    popMatrix();
    
    cloud.addChild(s);
  }

  return cloud;
}
