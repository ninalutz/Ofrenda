class MoveLines{

  // number of particles
  int N = 100;
   
  float loveSpeed = 1;
  float loveDistance = 0.5;
  float loveNumerator = 1.5;
  float timeAmount = 100;
  float strokeWeight = 1.4;
  
  // collection of all particles
  ArrayList<Particle> particles = new ArrayList<Particle>(N);
  
  float time = 0.0;
 
  void config(){
    for (int i=0; i<N; i++) {
      particles.add( new Particle(i) );
    }
  }
  
  void drawLines(){
     strokeWeight(strokeWeight);
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
            p.draw();
          }
          
          time += timeAmount;
  }
}
