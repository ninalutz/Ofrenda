
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
Draws a skull shaped oval in the mouse position
*/
void drawMouseSkull(PGraphics p){
  p.beginDraw();
  p.background(255, 0, 0);
  PVector loc = surface.getTransformedMouse();
  Calavera cal = new Calavera(loc, skullBaseWidth, skullBaseHeight, skullColor);
  cal.draw(p);
  p.endDraw();
}

/*
Draws a basic background image of tiles
*/
void drawTileOnly(PGraphics p){
  p.beginDraw();
  p.background(0);
  p.image(testImage, 0, 0,p.width, p.height);
  p.endDraw();
}

/*
Draws stamped skulls
*/
void drawStampedSkulls(PGraphics p){
  p.beginDraw();
  p.background(0);
  p.fill(255, 255, 0);
  PVector loc = surface.getTransformedMouse();
  p.ellipse(loc.x, loc.y, skullBaseWidth, skullBaseHeight);
  for (Calavera c : stampedSkulls)c.draw(offscreen);
  p.endDraw();
}

/*
Draws stamped skulls
*/
void drawStampedEyes(PGraphics p){
  p.beginDraw();
  p.background(0);
  p.fill(255, 255, 0);
  PVector loc = surface.getTransformedMouse();
  drawFlower(p, orangeFlower, loc.x, loc.y, eyeSize);
  for(int i = 0; i<ex.size(); i++){
    drawFlower(p, orangeFlower, ex.get(i), ey.get(i), eyeSize);
  }
  p.endDraw();
}

/*
Draws stamped skulls
*/
void drawStampedMouths(PGraphics p){
  p.beginDraw();
  p.background(0);
  p.fill(255, 255, 0);
  PVector loc = surface.getTransformedMouse();
  p.image(mouth, loc.x, loc.y, mouthWidth, mouthHeight);
  for(int i = 0; i<mx.size(); i++){
    p.image(mouth, mx.get(i), my.get(i), mouthWidth, mouthHeight);
  }
  p.endDraw();
}

void drawStampedFlowers(PGraphics p){
  p.beginDraw();
  p.background(0);
  p.fill(255, 255, 0);
  PVector loc = surface.getTransformedMouse();
  drawFlower(p, orangeFlower, loc.x, loc.y, flowerSize);
  for(int i = 0; i<rx.size(); i++){
    drawFlower(p, orangeFlower, rx.get(i), ry.get(i), flowerSize);
  }
  p.endDraw();
}

/*
Draws stamped skulls
*/
void drawStampedNoses(PGraphics p){
  p.beginDraw();
  p.background(0);
  p.fill(255, 255, 0);
  PVector loc = surface.getTransformedMouse();
  p.image(nose, loc.x, loc.y, noseWidth, noseHeight);
  for(int i = 0; i< eyeLocs.getRowCount(); i++){
     drawFlower(p, redFlower, eyeLocs.getFloat(i, "x"), eyeLocs.getFloat(i, "y"), eyeSize);
  }
  for(int i = 0; i<nx.size(); i++){
    p.image(nose, nx.get(i), ny.get(i), noseWidth, noseHeight);
  }
  p.endDraw();
}

PGraphics graphic;

/*
Draws skulls loaded from spreadsheet
*/
void drawLoadedSkulls(PGraphics p){
  graphic.beginDraw();
  drawLines();
  graphic.endDraw();
  p.beginDraw();
  p.background(0);
 for (Calavera c : loadedSkulls) c.draw(offscreen);
  p.image(graphic, 0, 0);
   
  for(int i = 0; i< eyeLocs.getRowCount(); i++){
     drawFlower(p, redFlower, eyeLocs.getFloat(i, "x"), eyeLocs.getFloat(i, "y"), eyeSize);
  }
  for(int i = 0; i< noseLocs.getRowCount(); i++){
     p.image(nose, noseLocs.getFloat(i, "x"), noseLocs.getFloat(i, "y"), noseWidth, noseHeight);
  }
  p.endDraw();
}

/*
Draws loaded flowers --> circles on the skull areas
*/
void drawLoadedFlowers(PGraphics p){
  p.beginDraw();
  p.background(0);
  for(int i = 0; i< flowerLocs.getRowCount(); i++){
     drawFlower(p, flowers.get(flowerLocs.getInt(i, "id")), flowerLocs.getFloat(i, "x"), flowerLocs.getFloat(i, "y"), flowerSize);
  }
  p.endDraw();
}
