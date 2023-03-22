CircleButton circleButton;
RectangleButton rectangleButton;
CheckBox checkBox;
RadioButtonGroup radioButtonGroup;
ScrollBar scrollBar;
color bgColor;
final color bgColor1 = color(250, 131, 216);
final color bgColor2 = color(131,138, 250);

void setup() {
  size(500, 500);
  circleButton = new CircleButton(100, 200, 250);
  rectangleButton = new RectangleButton(300, 200, 150, 200);
  checkBox = new CheckBox(25, 25, 20, 20);
  radioButtonGroup = new RadioButtonGroup(100, 250, 100, 100);
  scrollBar = new ScrollBar(height/2, width/2, 200, 50);
  bgColor = bgColor1;
}

void draw() {
  bgColor = interpolateColor(scrollBar.t());
  background(bgColor);
  checkBox.display();
  scrollBar.display();
  radioButtonGroup.display();
  if (checkBox.isChecked()) {
    text("Checked!", 75, 25);
  }
}

void mousePressed() {
  PVector mousePoint = new PVector(mouseX, mouseY);
  
  circleButton.registerMousePress(mousePoint);
  rectangleButton.registerMousePress(mousePoint);
  checkBox.registerMousePress(mousePoint);
  radioButtonGroup.registerMousePress(mousePoint);
  scrollBar.registerMousePress(mousePoint);
}

void mouseDragged() {
  PVector mousePoint = new PVector(mouseX, mouseY);
  scrollBar.registerMousePress(mousePoint);
}

color interpolateColor(float t) {
  float oneMinusT = 1.0 - t;
  float red = oneMinusT * red(bgColor1) + t * red(bgColor2);
  float green = oneMinusT * green(bgColor1) + t * green(bgColor2);
  float blue = oneMinusT * blue(bgColor1) + t * blue(bgColor2);
  return color(red, green, blue);
}

void mouseReleased() {
 
 // if (circleButton.isPressed()) {
    // bgColor = color(255, 0, 0);
  //  circleButton.forgetMousePress();
 // }
  if (rectangleButton.isPressed()) {
    // bgColor = color(0, 0, 255);
    rectangleButton.forgetMousePress();
  }
  if (checkBox.isPressed()) {
    checkBox.forgetMousePress();
  }
  

  radioButtonGroup.forgetMousePress();
  scrollBar.forgetMousePress();
}
