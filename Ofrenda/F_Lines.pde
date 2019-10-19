float loveSpeed = 1;
float loveDistance = 0.5;
float loveNumerator = 1.5;
float timeAmount = 1000;
float strokeWeight = 2;

// collection of all particles
HashSet<HashSet<Particle>> masterList = new HashSet<HashSet<Particle>>();
// number of particles
final static color[] cols = {#000000, #CB3C28, #0079DC, #F8F32B, #EA7419 };
int count = 0;

//Configures the overall lines
void configLinesOverall(){
  for(Calavera c : loadedSkulls){
    spawn(c.getX(), c.getY(), int(random(10, 30)));
  }
}

//Spawns particles
void spawn(float locX, float locY, int num){
  HashSet<Particle> particles = new HashSet<Particle>();
  for (int i=0; i<num; i++) {
    particles.add(new Particle(count, locX, locY, 50) );
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
