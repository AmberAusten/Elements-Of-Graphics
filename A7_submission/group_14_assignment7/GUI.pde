class GUI {
  int rows;
  int row_size;
  int remaining;
  int killed;
  int shot;
  float accuracy;
  
  GUI(int rows, int row_size, int remaining){
    this.rows = rows;
    this.row_size = row_size;
    this.remaining = remaining;
    this.killed = rows*row_size - remaining;
  }
  
void display(int remain,int bullets){
  remaining = remain;
  killed = rows*row_size - remain;
  shot = bullets;
  accuracy = round(((killed+.001)/(shot+.001))*100);
  accuracy = int(accuracy);
  
  
  String track1 = "ALIENS REMAINING:";
  String track2 = "ALIENS KILLED:";
  String track3 = "BULLETS SHOT:";
  String track4 = "ACCURACY:";
  fill(255);
  rect(width*.1,10,width*.8,25);
  fill(0);
  textSize(15);
  text(track1,width*.11,30);
  text(track2,width*.335,30);
  text(track3,width*.515,30);
  text(track4,width*.7,30);
  text(remaining,width*.295,30);
  text(killed,width*.478,30);
  text(shot,width*.658,30);
  text(accuracy+"%",width*.812,30);
}
}
