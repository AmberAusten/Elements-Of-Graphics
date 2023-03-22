class invaderRows{
  int numRows, numInvaders, numTotalInvaders = 0;
  float size, speed, x; 
  ArrayList<ArrayList<Invader>> army = new ArrayList<ArrayList<Invader>>();
  Boolean win = false;
  Boolean lose = false;
  
  invaderRows(int _numRows, int _numInvaders, float _size, float _speed){
    numRows = _numRows;
    numInvaders = _numInvaders;
    size = _size;
    speed = _speed;
    for (int i = 0; i < numRows; i++) {
      army.add(new ArrayList<Invader>());
    for (int j = 0; j < numInvaders; j++) {
      army.get(i).add(new Invader(size, speed, size* (j+1) + (j * width/ (4 * size)), size * (i+1)+ (i * size/2)));
      numTotalInvaders++; 
     }
}
    
  }
  
  void display(){
  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < army.get(i).size(); j++) {
      Invader inv = army.get(i).get(j);
      inv.display();
  }
}
}
  
  void checkCollision(ArrayList<Bullet> bullets){
    for(int i = 0; i < army.size(); i++){
      ArrayList<Invader> row = army.get(i);
      for(int j = 0; j < row.size(); j++){
        Boolean hit = false;
      for(int k = 0; k < bullets.size(); k++){
      Bullet b = bullets.get(k);
      Invader inv = row.get(j);
      
      float ix = inv.x;
      float iy = inv.y;
      float ir = inv.size/2;
      
      float px = b.pos.x;
      float py = b.pos.y;
      float pr = b.radius;
      
      if((((ix - ir <= px-pr) && (ir + ix >= px - pr))||((ix - ir <= px+pr) && (ir + ix >= px + pr)))&&(((iy - ir <= py-pr) && (ir + iy >= py - pr))||((iy - ir <= py-pr) && (ir + iy >= py - pr)))){
        bullets.remove(k);
        army.get(i).remove(j);
        numTotalInvaders--;
        break;
      }
        
      
      }
    if(hit == true){
      row.remove(j);
      break;
    }  
  }}}
 

  void move(){
    Boolean wallBump = false;
    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < army.get(i).size(); j++) {
        Invader inv = army.get(i).get(j);
        inv.bumpCheck();
        inv.loseCheck();
        if(inv.lose == true){
        lose = true;
        }
        if(inv.wallBump == true){
        wallBump = true;
        break;
        }
      }
  }
    
    
    for (int i = 0; i < numRows; i++) {
      ArrayList row = army.get(i);
    if(row.size() > 0){
      for (int j = 0; j < army.get(i).size(); j++) {
        Invader inv = army.get(i).get(j);
        if(wallBump == true){inv.wallBump = true;}
        inv.move();
      }
    }
    }
  }
  
  void checkWin(){
    win = true;
  
    for (int i = 0; i < numRows; i++) {
      if(army.get(i).size() > 0){
        win = false;
      }
    }
  }

}
