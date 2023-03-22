// Hands On: Displaying Text 
// Amber 

// “With freedom, flowers, books, and the moon, who could not be perfectly happy?” 
// ― Oscar Wilde, De Profundis

PFont railway;
final int FONT_SIZE = 44;
String typewriter;

void setup() {
  size(800,800);
  railway = createFont("railway",FONT_SIZE);
  textFont(railway);
  background(236,177,237);
  
  typewriter = "";
  width = 0;
}

void draw () {
  
  textLeading(120);
  stroke(153);
  //textAlign(BOTTOM,BOTTOM);
  //text("With freedom, flowers, books",0,FONT_SIZE);
  //text("and the moon",0,2*FONT_SIZE);
  //text("who could not be perfectly happy?",0,3*FONT_SIZE);
  //text("― Oscar Wilde, De Profundis",0,4*FONT_SIZE);
  
  text(typewriter, 0, FONT_SIZE);
 
  }

void keyPressed () {
      
  typewriter += key;
      
  width += textWidth(key);
  if (1000 - width < FONT_SIZE) {
    typewriter += "\n";
    width = 0;
   }
}
