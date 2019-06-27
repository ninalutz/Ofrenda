/*
Class for skulls to do skull things 
*/
class Calavera{
  PVector loc;
  float x, y;
  color faceColor;
  int faceHeight = 50;
  int faceWidth = 15;
  
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
    p.ellipseMode(CENTER);
    p.ellipse(loc.x, loc.y, faceHeight, faceWidth);
  }

}
