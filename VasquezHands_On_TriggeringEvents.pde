// Hands-On: Triggering Events
// Amber Vasquez kav835 

void setup () {
  size(600,600);
  
}

void draw () {
  if (mousePressed){ // if mouse is pressed....
    if(mouseButton == LEFT) { // if mouse button is clicked on the left 
      background(258,152,232); // background color pink
    }else if (mouseButton == RIGHT) { // if mouse button is clicked on the right
      background(245,134,106); // background color peachy
  }
} 
  
  if (keyPressed && (key == '&')) { // if a key was presses and it was an &, 
    text(key, mouseX, mouseY); // then i will display some text, displaying the key I presseda the location of the mouse in the window 
  }
  if (keyPressed && (key == 'a')) { // if a key was presses and it was an &, 
    text(key, mouseX, mouseY);
    fill(0);
  }
}

void mousePressed () {
  if (mousePressed){ // if mouse is pressed....
    if(mouseButton == LEFT) { // if mouse button is clicked on the left 
      background(258,152,232); // background color pink
    }else if (mouseButton == RIGHT) { // if mouse button is clicked on the right
      background(245,134,106); // background color peachy
  
    }
  }
}

void mouseMoved () {
  print(mouseX, mouseY);
  stroke(255);
  fill(110,106,245);
  ellipse(mouseX,mouseY,3,3);
  
}

void keyPressed () {
  if (keyPressed && (key == '&')) { // if a key was presses and it was an &, 
    text(key, mouseX, mouseY); // then it will display some text, displaying the key I pressed a the location of the mouse in the window 
  
    }
  }

  
