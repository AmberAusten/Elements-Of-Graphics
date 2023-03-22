//Amber 
//Using Attributes 
//Aug 30, 2021 


void setup() {
   size(500,500);

}
void draw () {
  background(0);
  stroke(255);
  line(300,300, 200,200);
  line(300,200,200,300);
  
  point(100,250);
  point(400,250);
  fill(255);
  ellipse(100,250,5,5);
  ellipse(400,250,5,5);
  
  rectMode(CORNER);
  rect(200,100,100,50);
  rect(200,350,100,50);
  noFill();
  
  ellipse(60,250,10,10);
  ellipse(435,250,10,10);
  
  ellipseMode(RADIUS);
  ellipse(25,250,5,5);
  ellipse(475,250,5,5);
  
  //noStroke();
  rect(200,450,100,25);
  rect(200,50, 100, 25);
  
  colorMode(255);
  bezier(400,100,425,100,425,150,400,150);
  bezier(100,350,75,350,75,400,100,400);
  
  stroke(100);
  rect(50,50,20,20);
  stroke(200);
  rect(20,30,20,20);
  
  stroke(200);
  rect(450,450,20,20);
  stroke(100);
  rect(420,430, 20,20);
  
  // Questions to consider while modeling: 
  
  // 1.Using attribute order helps create depth illusion. If you lay the stoke strength at a certain
  // level, draw a shape, then duplicate the shape at a diffeent strength, it appears as 
  // the depth of that shape to the eye. In this code, I drew two squares in each diagonal corner to check out this illusion. 
  
  // 2.primitive modes can be a starting place for building a more complex image, like a 3D shape. It lays the groundwork and 
  // these shapes can alter the look of the final image depending how it is built 
  
  
  
}

  
