class SnowFall{
  Snowflake[] storm;
  SnowFall(int snowValue, float snowSize, float snowVariation){
  storm = new Snowflake[snowValue];
  for(int i=0; i<snowValue; i++){
  float r  =  snowSize + snowVariation * random(-1,1);
  storm[i] = new Snowflake(random(height), r , r/snowSize * 15);
  }
  }

void display(float wind, float gravity){
for(int i = 0; i<storm.length; i++){
  storm[i].display();
  storm[i].applyForces(wind, gravity);
  
  }
}



}
