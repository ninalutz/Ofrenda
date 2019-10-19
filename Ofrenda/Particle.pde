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
  color[] cols = {#000000, #CB3C28, #0079DC, #F8F32B, #EA7419 };
  color c = cols[(int)random(cols.length)];
  
  //time var
  float time = 0.0;
  
  // mood factor
  float mood;
 
  void reset() {
    // distribute initial point on the ring, more near the outer edge, distorted
    float angle = random(TWO_PI);
    float r = 5.0*randomGaussian() + (width/2-100)*(1.0-pow(random(1.0), 7.0));
    x = cos(angle)*r;
    y = sin(angle)*r;
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
 
  Particle(int i) {
    id = i;
    reset();
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
