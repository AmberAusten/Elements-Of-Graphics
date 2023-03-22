
class Pacman {

  float x, y, s;

  int c = 0;

  Pacman(float x, float y, float s) {

    this.x = x;

    this.y = y;

    this.s = s;
  }

  void move() {

    float pos = x + s;

    if (pos > width) {

      this.x = 0;
    } else if (pos < 0) {

      this.x = width;
    } else {
      this.x = pos;
    }
  }

  void display() {

    c += 1;

    if (c > 30) {

      c = 0;
    }



    fill(color(255, 255, 0));

    if (s >= 0) {

      if (c <= 15) {  

        arc(x, y, 50, 50, QUARTER_PI, TWO_PI - QUARTER_PI);
      } else {
        arc(x, y, 50, 50, 0, TWO_PI);
      }
    } else {
      if (c<=15) {
        arc(x, y, 50, 50, PI+QUARTER_PI, TWO_PI+HALF_PI+QUARTER_PI);
      } else {
        arc(x, y, 50, 50, 0, TWO_PI);
      }
    }
  }
}
