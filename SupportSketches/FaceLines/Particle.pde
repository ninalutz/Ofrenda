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
  
  float startX, startY;
  
  float r;
  
  // mood factor
  float mood;
 
   Particle(int i, float e, float g, float rad) {
    startX = e;
    id = i;
    startY = g;
    r = rad;
    reset();
  }
  
  void reset() {
    // distribute initial point on the ring, more near the outer edge, distorted
    float angle = radians(random(360));
    x = cos(angle)*r + startX;
    y = sin(angle)*r + startY;
    // set random age
    age = (int)random(100, 2000);
    calcMood();
  }
 
  void draw() {
    stroke(c,50);
    point(x, y);
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
    mood = sin(noise(x/10.0,y/10.0,lineTime)*TWO_PI); 
  }
 }
