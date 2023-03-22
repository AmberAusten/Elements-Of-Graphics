// break each line into its own string in a string array
String[] lines;
void setup() {
  size(1000, 500);
  background(255);
  fill(255);
  lines = loadStrings("wordfrequency.txt");
  
  rectMode(CENTER);
  
  for (int i = 0; i < lines.length; i++) {
    fill(100,50,50);
    float[] nums = float(split(lines[i], ':'));
    float freq = int(nums[0]);
    float num_words = int(nums[1]);
    int x = 1000/lines.length;
    rect(500, 500 - (x * i), (num_words/1717) * 1000, x);
  }
}

void draw() {
  
}
