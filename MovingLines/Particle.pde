class Particle {
  // position
  float x, y;
  // velocity
  float dx, dy;
  // id
  int id;
  // life length
  float age;
  // some random color
  color c = cols[(int)random(cols.length)];
  
  // mood factor
  float mood;
 
   Particle(int i, float e, float g) {
    id = i;
    reset();
  }
  
  void reset() {
    // distribute initial point on the ring, more near the outer edge, distorted
    float angle = random(TWO_PI);
    float r = 5.0*randomGaussian() + (width/2-100)*(1.0-pow(random(1.0), 7.0));
    x = cos(angle)*r;
    y = sin(angle)*r;
    //float r = 50;
    //x = cos(angle)*r + 150;
    //y = sin(angle)*r + 150;
    // set random age
    age = (int)random(100, 2000);
    calcMood();
  }
 
  void draw() {
    stroke(c,50);
    point(x+width/2, y+height/2);
  }
 
  // update position with externally calculated speed
  // check also age
  void update() {
    if(--age < 0) {
      reset();
    } else {
      x += dx;
      y += dy;
      calcMood();
    }
  }
 
  
  // compare moods
  float moodSimilarity(Particle p) {
    return 1.0-abs(p.mood-this.mood);
  }
  
  // calculate current mood
  private void calcMood() {
    mood = sin(noise(x/10.0,y/10.0,time)*TWO_PI); 
  }
 }
