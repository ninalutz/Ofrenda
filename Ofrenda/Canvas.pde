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


/*
Draws basic ovals for skulls without eyes or features 
*/
void drawBasicSkulls(PGraphics p){
  p.beginDraw();
  p.background(255, 0, 0);
  for(Calavera c : skulls) c.draw(p);
  p.endDraw();
}

void drawMouseSkull(PGraphics p){
  p.beginDraw();
  p.background(255, 0, 0);
  color c = color(255, 255, 0);
  PVector loc = surface.getTransformedMouse();
  Calavera cal = new Calavera(loc, skullWidth, skullHeight, c);
  cal.draw(p);
  p.endDraw();
}
