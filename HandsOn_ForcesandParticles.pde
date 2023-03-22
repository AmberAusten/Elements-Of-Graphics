// Hands On: Forces and Particles 

//float y = 50.0; 
//float r = 15.0;  
//float vel = 0.0; 
//float accel = 0.03; 
//float friction = 1; //0.995; //2 //.5
Particle[] p; // a collection of data and functions, not just a variable of one type 

void setup () {
  size(500,500); 
  //ellipseMode(RADIUS);
  
  //p = new Particle (50,50,0,0,10); // new instance of a particle object. executes the constructor
  p = new Particle[10];
  for (int i = 0; i < p.length; i++) {
    p[i] = new Particle(250, 480, random(5), 2, 10);
  }

}

void draw () {
  background(210);
  
  //p.display();
  //p.applyForces(5,5);
  
  for (int i = 0; i < p.length; i++) {
    p[i].applyForces(0, 0.01);
    p[i].display();
  }
  //ellipse(250,y,r,r);
  //vel += accel; 
  //vel *= friction; 
  //y += vel; 
  //if (y > (height - r)) {
  //  vel = -vel; 
  //}
  
}
