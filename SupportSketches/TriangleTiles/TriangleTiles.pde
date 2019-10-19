PImage img;
float pointSize = 4.0;

void setup() {
  img = loadImage("testResImage.jpg");
  size(640, 360);
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 
  
  for(int i = 0; i<300; i++){
    pointSize = random(2, 10);
    int x = int(random(img.width));
    int y = int(random(img.height));
    color pix = img.get(x, y);
    fill(pix, 128);
    //triangle(x, y, x-pointSize, y+pointSize, x+pointSize, y+pointSize);
    ellipse(x, y, pointSize, pointSize);
  }
}
