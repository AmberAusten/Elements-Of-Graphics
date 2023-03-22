class CloudSystem{
  Cloud[] system;
  CloudSystem(int cloudCount, float cloudSize){
  system = new Cloud[cloudCount];
  for(int i=0; i<cloudCount; i++){
  float r  =  cloudSize + 15 * random(-1,1);
  system[i] = new Cloud(random(width), random(0,height/4)+(r*1.17)/2, r, r*1.17);
  }
}

void display(float wind, float gusts){
for(int i = 0; i<system.length; i++){
  system[i].display();
  system[i].direction(wind, gusts);
  
  }
 }
}
