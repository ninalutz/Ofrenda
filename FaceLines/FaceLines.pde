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
HashSet<HashSet<Particle>> masterList = new HashSet<HashSet<Particle>>();

void setup() {
  size(1500, 800);
  noFill();
  smooth(8);
  strokeWeight(strokeWeight);
  background(255, 255, 255);

  for(int i = 0; i<8; i++){
    for(int j = 0; j<4; j++){
      spawn( -600 + 170*i,  -250 + 170*j, int(random(10,20)));
    }
  }

}
 
float time = 0.0;

void draw() {
  drawLines();
  time += timeAmount;
  println(frameRate);
}

int count = 0;

void spawn(float locX, float locY, int num){
  HashSet<Particle> particles = new HashSet<Particle>();
  for (int i=0; i<num; i++) {
    particles.add(new Particle(count, locX, locY, 50) );
    count+=1;
  }
  masterList.add(particles);
}
