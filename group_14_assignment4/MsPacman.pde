class MsPacman extends Pacman {

  MsPacman(float x, float y, float s) {

    super(x, y, s);
  }

  void display() {

    c += 1;

    if (c > 30) {

      c = 0;
    }

    fill(color(255, 255, 0));

    PShape mpr, mpl, headr, headl, bowr, bowl, mpi, headi, mpil;

    mpr = createShape(GROUP);

    mpl = createShape(GROUP);

    mpi = createShape(GROUP);

    mpil = createShape(GROUP);



    headr = createShape(ARC, 0, 0, 50, 50, QUARTER_PI, TWO_PI - QUARTER_PI);

    headr.setFill(color(255, 255, 0));

    bowr = createShape();

    bowr.beginShape();

    bowr.fill(color(255, 0, 0));

    bowr.vertex(-28, -5);

    bowr.vertex(-29, -20);

    bowr.vertex(-10, -15);

    bowr.vertex(-10, -28);

    bowr.endShape(CLOSE);





    headl = createShape(ARC, 0, 0, 50, 50, PI+QUARTER_PI, TWO_PI+HALF_PI+QUARTER_PI);

    headl.setFill(color(255, 255, 0));





    bowl = createShape();

    bowl.beginShape();

    bowl.fill(color(255, 0, 0));

    bowl.vertex(28, -20);

    bowl.vertex(29, -5);

    bowl.vertex(10, -28);

    bowl.vertex(10, -15);

    bowl.endShape(CLOSE);



    headi = createShape(ELLIPSE, 0, 0, 50, 50);

    headi.setFill(color(255, 255, 0));





    mpr.addChild(headr);

    mpr.addChild(bowr);



    mpl.addChild(headl);

    mpl.addChild(bowl);



    mpi.addChild(headi);

    mpi.addChild(bowr);



    mpil.addChild(headi);

    mpil.addChild(bowl);



    if (s >= 0) {

      if (c <= 15) {  

        shape(mpr, x, y);
      } else {
        shape(mpi, x, y);
      }
    } else {
      if (c<=15) {
        shape(mpl, x, y);
      } else {
        shape(mpil, x, y);
      }
    }
  }
}
