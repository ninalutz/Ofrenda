// number of particles
final static int N = 20;
final static color[] cols = {#000000, #CB3C28, #0079DC, #F8F32B, #EA7419 };
import java.util.*;
float loveSpeed = 1;
float loveDistance = 0.5;
float loveNumerator = 1.5;
float timeAmount = 20;
float strokeWeight = 1.4;

// collection of all particles
HashSet<Particle> particles = new HashSet<Particle>(N);
 
void setup() {
  size(700,700);
  noFill();
  smooth(8);
  strokeWeight(strokeWeight);
  background(255, 255, 255);
 
  // initialize particles
  for (int i=0; i<N; i++) {
    particles.add(new Particle(i, 100, 100) );
  }
}
 
float time = 0.0;

void draw() {
  drawLines();
  time += timeAmount;
  println(frameRate);
}

 
 void mousePressed(){
	 //save('pic.jpg');
 }
