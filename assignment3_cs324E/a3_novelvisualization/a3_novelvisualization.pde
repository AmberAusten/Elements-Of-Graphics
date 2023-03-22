// break each line into its own string in a string array
String[] lines;
PFont poor_richard;

// 3 colors in an array
color[] colors = {
  color(3, 252, 161), color(210, 3, 252), color(252, 152, 3)
};

float x = 0;
float y = 50;

void setup() {
  size(700, 600);
  background(100);
  lines = loadStrings("uniquewords.txt");
  poor_richard = createFont("Poor Richard", 32);
  textFont(poor_richard);
  textSize(50);
  
}

void draw() {
  // get random number to pick random word
  int random_num = int(random(lines.length));
  
  // get random word
  String word = lines[random_num];
  
  // random number to pick random color
  int color_num = int(random(colors.length));
  
  // set font color
  fill(colors[color_num]);
  
  // set spacing
  int spacing = 10;

  // generate words if they fit on the screen
  if (x + textWidth(word) + spacing < width) {
    text(word, x, y);
    x += textWidth(word) + spacing;  
  } else if (y + 50 < height) {
    x = 0;
    y += 50;
    text(word, x, y);
    x += textWidth(word) + spacing;
  }
  
  // reset x and y to recreate screen full of words
  if (mousePressed) {
    background(100);
    x = 0;
    y = 50; 
  }
}
