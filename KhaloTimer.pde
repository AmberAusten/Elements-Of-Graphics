// Hands On: Timer
// Khalo Paper dolls with timer

Timer timer;
final int ANIMATION_TIMER_INTERVAL = 50;
final int PAUSE_PERIOD = 500;
int currentFrame = 0;
boolean justPaused;

final int NUM_FRAMES = 4;

PImage[] khaloSprite = new PImage[NUM_FRAMES]; 

void setup() {
  size(500,500);
  //frameRate(20);
  for (int i=0; i < NUM_FRAMES; i++) { 
    String imageName = "khalo-" + nf(i+1, 2) + ".bmp"; 
    khaloSprite[i] = loadImage(imageName); 
  }
  timer = new Timer(ANIMATION_TIMER_INTERVAL);
}

void draw () {
  background(255);
  //int frame = frameCount % numFrames; 
  image(khaloSprite[currentFrame],20, 200); 
  if (!timer.isPaused() && !justPaused && currentFrame == 0) {
    timer.pause();
    justPaused = true;
  }
  if (timer.isPaused() && timer.pauseDuration() >= PAUSE_PERIOD) {
    timer.resume();
  }
  if (timer.timeForAlert()) {
    currentFrame = (currentFrame + 1) % NUM_FRAMES;
    justPaused = false;
  }
}
