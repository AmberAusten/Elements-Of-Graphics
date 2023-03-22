// Hands On: Buttons
// Amber 

// Press Play
// Click Rectangle 2X first 
// Click Circle 2X second 


Button1 button1;
Button2 button2;
boolean toggleColor;

void setup() {
  size(600, 600);
  button1 = new Button1(width/2, height/2, 75, color(0, 255, 255));
  button2 = new Button2(width/4, height/4, 125, 75, color(0, 255, 255));
}

void draw() {
  if(toggleColor) {
    background(255,0,0);
  } else {
    background(255);
  }
  
  if (button1.visible) button1.create();
  if (button2.visible) button2.create();
}

void mousePressed() {
  if (button1.visible) {   
    float d = dist(button1.pos.x, button1.pos.y, mouseX, mouseY);
    if (d <= button1.radius){
      toggleColor = !toggleColor;
    } 
  }
   if (button2.visible) {   
    float d = dist(button2.pos.x, button2.pos.y, mouseX, mouseY);
    if (d <= button2.len && d <= button2.wid){
      toggleColor = !toggleColor;
  }
 }
}
