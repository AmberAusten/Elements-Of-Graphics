Ghost g1;
Ghost g2;

Pacman p1 = new Pacman(250,100,5);
Pacman p2 = new MsPacman(250,300,-5);

void setup() {
  size(500, 500);
  g1 = new Ghost(0, 0, 1, color(255, 0, 0));
  g2 = new Ghost(100, 100, 1.5, color(0, 0, 255));
  
  font = loadFont("Skia-Regular_Black-Extended-48.vlw");
  
  timePassed = millis();
  timeInterval = 2000.0f; // every 2 seconds our fade method repeats 
  frameRate(60);
}

int Counter = 0;

void draw(){
  Counter++;
  if (Counter < 600){
  background(200);
  }
  g1.display();
  g1.move();
  
  g2.display();
  g2.move();
  
  p1.display();
  p1.move();
  
  p2.display();
  p2.move();
  
  if ((599 < Counter) && (Counter < 800)){
  fadeDraw();
  
  }
  else if (Counter >= 800){Counter = 0;}
}
