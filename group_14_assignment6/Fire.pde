class Fire {
  float x, y, r;
  color c;
  // arraylist for particles
  ArrayList<Particle2> particles = new ArrayList<Particle2>();

  Fire(float x, float y, float r, color c) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;
  }

  void display(float wind, float gravity) {
    particles.add(new Particle2(x, y, r, c));
    // add one new particle each time the draw() calls display()
    for (int i = 0; i < 5; i++) {
      particles.add(new Particle2(x, y, r, c));
    }
    for (int i = 0; i < particles.size(); i++) {
      Particle2 p = particles.get(i);
      p.update(wind, gravity);
      p.display();
      
      if (particles.get(i).isGone()) {
        // remove particle from arraylist
        particles.remove(i);
      }
    }
  }
}
