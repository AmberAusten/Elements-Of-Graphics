class Timer{
  float savedtime = millis();
  float int1 = 2500;
  Timer(){}
  boolean interval1(){
    float passedtime = millis() - savedtime;
    if (passedtime > int1){
      savedtime = millis();
      passedtime = 0;
      return true;
    }
    else{return false;}
  }
}
