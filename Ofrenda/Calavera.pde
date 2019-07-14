/*
Class for skulls to do skull things 
*/

class Calavera{
  PVector loc;
  float x, y;
  color faceColor;
  int faceHeight = 90;
  int faceWidth = 50;
  
  Calavera(PVector loc){
    this.faceColor = color(255, 255, 255); 
    this.loc = loc;
    this.x = loc.x;
    this.y = loc.y;
  }
  
  Calavera(float x, float y){
    this.x = x;
    this.y = y;
    this.loc = new PVector(x, y);
    this.faceColor = color(255, 255, 255); 
  }
  
  Calavera(PVector loc, color c){
    this.loc = loc;
    this.x = loc.x;
    this.y = loc.y;
    this.faceColor = c;
  }
  
  Calavera(float x, float y, color c){
    this.x = x;
    this.y = y;
    this.loc = new PVector(x, y);
    this.faceColor = c;
  }
  
  void draw(PGraphics p){
    p.fill(faceColor);
    p.stroke(255);
    p.ellipseMode(CENTER);
    p.ellipse(loc.x, loc.y, faceWidth, faceHeight);
    p.fill(0);
    p.noStroke();
    p.ellipseMode(CENTER);
    p.ellipse(loc.x + faceWidth/4, loc.y, faceWidth/4, faceWidth/2);
    p.ellipse(loc.x - faceWidth/4, loc.y, faceWidth/4, faceWidth/2);
  }

}
