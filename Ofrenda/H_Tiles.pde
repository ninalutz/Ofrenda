ArrayList<PImage> tiles =  new ArrayList<PImage>();
int tileSpeed = 200;

void animateTiles(PGraphics p){
  p.beginDraw();
  tileAnimation(tiles.get(0), p);
  p.endDraw();
}


void tileAnimation(PImage img, PGraphics p){
  for(int i = 0; i<tileSpeed; i++){
    float pointSize = random(2, 10);
    int x = int(random(img.width));
    int y = int(random(img.height));
    color pix = img.get(x, y);
    p.noStroke();
    p.fill(pix, 100);
    p.ellipse(x, y, pointSize, pointSize);
  }
}
