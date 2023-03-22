// Fade class

PFont font;
float timeInterval;
float timePassed;

int textAlpha = 100;
int textFade = 4;



void fadeDraw() {

  fill(0, 10); // fill black and with 50% opacity. 50 is alpha, the opacity of the fill. Like see through
  rect(0, 0, width, height); // drawing a rectangle on top that covers the whole screen, has the width and height of the screem 
  
  fill(255); // want ellipse to be white like pac man pellets
  ellipse(random(width), random(height), 10, 10);
  
  fill(255, 255, 255, textAlpha);
  textFade();
  textFont(font);
  textSize(50);
  text("The End", 75, 225);
  
}

void textFade () { 
  
 if (millis() > timeInterval + timePassed); {
   timePassed = millis();
   textFade *= -1;
  }
 textAlpha += textFade; 
}
