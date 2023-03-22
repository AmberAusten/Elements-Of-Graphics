PImage img;
float [][] kernal = {{0,-1, 0}, {-1, 5, -1}, {0,-1.0}};


void setup (){
  size (300,300);
  img = loadImage("documents/processing/KhaloCrying.JPG"); //loading the image
  surface.setSize(img.width,img.height); // sets image to fit window 
  
  // Load pixels of the image
  img.loadPixels();
  
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y ++) {
      // acccess pixel at index and set c to its values
      int index = x + y*img.width;
      color c = img.pixels[index];
    }
  }
}

void draw () {
  image(img,0,0); // displaying the image called in draw 
        
   // tint function allows you to alter image with one function call. Bulk modifies- 
   tint(0,153,204);
   image(img,0,0);
   noTint();
   image(img,50,50);
   
   colorMode(HSB,360,50,25);
   //colorMode(RGB,255,255,255);
   
   
   
   // Begin loop for columns
  for ( int i = 0; i < cols;i++) {
    // Begin loop for rows
    for ( int j = 0; j < rows;j++) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position
      int loc = x + y*width;           // Pixel array location
      color c = img.pixels[loc];       // Grab the color
   
   
}
  }
