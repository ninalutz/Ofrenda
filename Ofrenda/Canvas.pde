
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
  color c = color(255, 255, 0);
  PVector loc = surface.getTransformedMouse();
  Calavera cal = new Calavera(loc, skullBaseWidth, skullBaseHeight, c);
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

/*
Draws stamped skulls
*/
void drawStampedNoses(PGraphics p){
  p.beginDraw();
  p.background(0);
  p.fill(255, 255, 0);
  PVector loc = surface.getTransformedMouse();
  p.image(nose, loc.x, loc.y, noseWidth, noseHeight);
  for(int i = 0; i<nx.size(); i++){
    p.image(nose, nx.get(i), ny.get(i), noseWidth, noseHeight);
  }
  p.endDraw();
}

/*
Draws skulls loaded from spreadsheet
*/
void drawLoadedSkulls(PGraphics p){
  p.beginDraw();
  p.background(0);
 for (Calavera c : loadedSkulls) c.draw(offscreen);
   
  for(int i = 0; i< eyeLocs.getRowCount(); i++){
     drawFlower(p, redFlower, eyeLocs.getFloat(i, "x"), eyeLocs.getFloat(i, "y"), eyeSize);
  }
  for(int i = 0; i< noseLocs.getRowCount(); i++){
     p.image(nose, noseLocs.getFloat(i, "x"), noseLocs.getFloat(i, "y"), noseWidth, noseHeight);
  }
  for(int i = 0; i< mouthLocs.getRowCount(); i++){
     p.image(mouth, mouthLocs.getFloat(i, "x"), mouthLocs.getFloat(i, "y"),  mouthWidth, mouthHeight);
  }
 
  p.endDraw();
}

void  drawEllipses(PGraphics p){
  p.beginDraw();
  p.background(0);
  float startX = 100;
  float startY = 100;
  float spaceX = 200;
  float spaceY = 300;
  p.fill(255, 255, 0);
  for(int i = 0; i<4; i++){
    for(int j = 0; j<8; j++){
      p.ellipse(startX + j*spaceX, startY + i*spaceY, 10, 10);
    }
  }
  p.endDraw();
}
