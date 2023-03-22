
PImage img;
// use as a global so you dont keep loading your image over and over again 

void setup (){
  size (400,400);
  img = loadImage("documents/processing/KhaloCrying.JPG"); //loading the image
  surface.setSize(img.width,img.height); // sets image to fit window 
  
}
  
void draw () {
    image(img,0,0); // displaying the image called in draw 
    //tint(40,128,128);
    //myTint(img,40,128,128);
    
    // Getting the color 
    PImage c = get ();
    image(c,width,0);
    
    // of each pixel 
    color myTint = color(40,128,128,20);
    loadPixels();
    for (int i = 0; i < (width*height)-width; i++) {
        pixels[i] = myTint;
}
    updatePixels();
        
    // then change it
    PImage myImage = loadImage("documents/processing/KhaloCrying.JPG");
    set(0, 0, myTint);

}
