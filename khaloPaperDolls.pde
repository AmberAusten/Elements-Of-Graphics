// sprite animation

int numFrames = 4;
PImage[] x_sprite = new PImage[numFrames]; // creates an array of P Images


void setup() {
  size(500,500);
  frameRate(20);
  for (int i=0; i < x_sprite.length; i++) { // loads eah image into pimage array 
    String imageName = "khalo-" + nf(i+1, 2) + ".gif"; // nf function generates the image numbering 
    x_sprite[i] = loadImage(imageName); // store images into array 
  }
}

void draw () {
  background(255);
  int frame = frameCount % numFrames; // frame count is our indexing and mod it with number of frames. keeps frames variabe from 0-10
  image(x_sprite[frame], 250, 250, 200, 200); // display image
}
