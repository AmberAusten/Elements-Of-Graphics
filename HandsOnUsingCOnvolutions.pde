// Hands on: Using Convolutions 
// Amber 
// Sep 8, 2021

PImage img;
PImage buffer;
float[][] matrix = {{0, -1, 0} , {-1,5,-1}, {0,-1,0}};  // Take shaprpen Kernal matirx // put into a 3x3 float array (slide 17 example) 


void setup (){
  size(400,400);
  
  img = loadImage("documents/processing/KhaloCrying.JPG"); //loading the image
  surface.setSize(img.width,img.height); // sets image to fit window 
  
  buffer = createImage(img.width, img.height, ARGB); // create a deep copy of an image (image buffer) 
  buffer.copy(img, 0, 0, img.width, img.height, 0, 0,
  buffer.width, buffer.height);
  
  sharpen(buffer);
}
  
void sharpen(PImage pic) {
  for (int x = 1; x < pic.width - 1; x++) {
    for (int y = 1; y < pic.height - 1; y++) {
      int index = x + pic.width * y;
      pic.pixels[index] = applySharpenKernel(pic, x, y); // apply sharpen kernal to an image 

    }
  }
}
  
color applySharpenKernel(PImage pic, int x, int y) {
  float red = 0;
  float green = 0;
  float blue = 0;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      int index = (x + i - 1) + pic.width * (y + j - 1);
      color currentColor = img.pixels[index];
      float kernelCoeff = matrix[i][j];
      red += red(currentColor) * kernelCoeff;
      green += green(currentColor) * kernelCoeff;
      blue += blue(currentColor) * kernelCoeff;
    }
  }
  red = constrain(abs(red), 0, 255);
  green = constrain(abs(green), 0, 255);
  blue = constrain(abs(blue), 0, 255);
  return color(red, green, blue);
}


void draw (){
  image(buffer,0,0);
}
    
  
