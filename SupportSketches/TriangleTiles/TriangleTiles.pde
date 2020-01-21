PImage img;
float pointSize = 4.0;
int speed = 60;
float min = 3;
float max = 15;
int speedAdd = 30;

void setup() {
  img = loadImage("testResImage.jpg");
  size(displayWidth, displayHeight);
  imageMode(CENTER);
  noStroke();
  background(255);
  //frameRate(30);
}

void draw() { 
  //triangle(x, y, x-pointSize, y+pointSize, x+pointSize, y+pointSize);
  for(int i = 0; i<speedAdd; i++){
      pointSize = random(min, max);
      int x = int(random(img.width));
      int y = int(random(img.height));
      color pix = img.get(x, y);
      fill(pix, 128);
    ellipse(x, y, pointSize, pointSize);
  }
}
