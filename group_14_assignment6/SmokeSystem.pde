
class SmokeSystem {
  Particle [] particles = new Particle[3000]; //hasnt created them yet
  
  SmokeSystem(float x, float y) {
    for (int i = 0; i < particles.length; i++) {   // increment i once everytime run loop
      particles[i] = new Particle(x,y);
    }
  }
  
 void display(){ 
   fill(232,225,225,15); //light grey smoke color, full opacity 
   for (int i = 0; i < particles.length; i++) {  // for each particle in particles
      particles[i].display(); // display the particle
      particles[i].applyForce(0,-0.01);   // apply upward force at certain velocity
      
      if (particles[i].y > height/2) {
        fill(232,225,225,10);
        particles[i].display(); // display the particle
        particles[i].applyForce(0,random(-0.02,-0.01));   // apply upward force at random velocity
      }
      else {
        particles[i].display(); // display the particle
        fill(232,225,225,10);
        particles[i].applyForce(random(-0.5,0.5),0.01);   // apply constant upward and random side force
     }
   }
 }
}
