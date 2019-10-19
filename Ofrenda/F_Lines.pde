float loveSpeed = 0.6;
float loveDistance = 0.5;
float loveNumerator = 1.5;
float timeAmount = 1000;
float strokeWeight = 2;

// collection of all particles
HashSet<HashSet<Particle>> masterList = new HashSet<HashSet<Particle>>();
// number of particles
final color[] cols = {color(0), color(187, 38, 26), color(28, 79, 140), color(226, 195, 95), 
    color(0, 20, 163), color(214, 87, 128), color(221, 126, 47), color(158, 85, 222), color(255, 255, 0)};
int count = 0;

//Configures the overall lines
void configLinesOverall(){
  for(Calavera c : loadedSkulls){
    spawn(c.getX(), c.getY(), 30);
  }
}

void linesReset(){
  println("RESETTING");
  graphic.clear();
  masterList =  new HashSet<HashSet<Particle>>();
  count = 0;
  configLinesOverall();
}

//Spawns particles
void spawn(float locX, float locY, int num){
  HashSet<Particle> particles = new HashSet<Particle>();
  for (int i=0; i<num; i++) {
    particles.add(new Particle(count, locX, locY, 70) );
    count+=1;
  }
  masterList.add(particles);
}
 
float lineTime = 0.0;
//Draws particles
void drawLines(){  
  for(HashSet<Particle> particles : masterList){
    for (Particle p : particles) {
   
      // love/hate vector
      float lovex = 0.0;
      float lovey = 0.0;
   
      for (Particle o : particles) {
        // do not compare with yourself
        if (p.id != o.id) {
          // calculate vector to get distance and direction
          PVector v = new PVector(o.x-p.x, o.y-p.y);
          float distance = v.mag();
          float angle = v.heading();
   
          // love!
          float love = loveNumerator/ distance;
          // or hate...
          if (distance<loveDistance) love = -love;
   
          // mood factor
          love *= p.moodSimilarity(o);
          // not too fast!
          love *= loveSpeed;
   
          // update love vector
          lovex += love * cos(angle);
          lovey += love * sin(angle);
        } 
   
        // calculated love vector will be our speed in resultant direction
        p.dx = lovex;
        p.dy = lovey;
      }
    }
   
    // update and draw
    for (Particle p : particles) {
      p.update();
      p.draw(graphic);
    }
  }
    lineTime += timeAmount;
}
