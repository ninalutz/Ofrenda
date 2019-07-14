PImage testImage;

/*
This tests the resolution of the image with color, text, and a picture of tiling
*/
void drawResolutionTest(PGraphics p){
  
  p.beginDraw();
  p.background(255, 200, 0);
  String res = "This is a resolution test.";
  int repeats = 50;
  int fontSize = 30;
  
  int offset = fontSize;
  p.colorMode(HSB);
  for(int i = 0; i<repeats; i++){
    p.fill(i*10, 255, 255);
    p.textSize(fontSize);
    p.text(res, offset, fontSize*i + offset);
  }
  
  p.image(testImage, textWidth(res) + 10*fontSize, offset, 800, 800);
  p.colorMode(RGB);
  p.endDraw();
}

void drawSkullEyes(PGraphics p){
  p.beginDraw();
  p.background(0);
  for(Calavera c : skulls) c.draw(p);
  p.endDraw();
}

int skullNum = 32;
int skullWidth = 60;
int xOffset = 15;
int yOffset = 15;
int shelfSpace = 60;
ArrayList<Calavera> skulls;

void testBasicSkullImage(PGraphics p){
  for(int i = 0; i<skullNum; i++){
      Calavera c = new Calavera(i*skullWidth + xOffset, yOffset + (shelfSpace)*(i%8 + 1));
  }
  
}
