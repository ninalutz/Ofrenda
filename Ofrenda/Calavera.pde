/*
Class for skulls to do skull things 
*/

int skullBaseWidth = 140;
int skullBaseHeight = 200;

/*
Calavera object
A skull with a location and face and patterns that vary based on state machine
*/
class Calavera{
  PVector loc; //Center of the calavera ellipsoid 
  float x, y;
  color faceColor;
  int faceHeight;
  int faceWidth;
  
  Calavera(PVector loc, int w, int h, color c){
    this.loc = loc;
    this.x = loc.x;
    this.y = loc.y;
    this.faceHeight = h;
    this.faceWidth = w;
    this.faceColor = c;
  }

  void draw(PGraphics p){
    p.fill(faceColor);
    p.stroke(0, 0, 255);
    p.strokeWeight(3);
    p.ellipseMode(CENTER);
    p.ellipse(loc.x, loc.y, faceWidth, faceHeight);
    if(showFeatures){
      p.fill(0);
      p.noStroke();
      p.ellipseMode(CENTER);
      p.ellipse(loc.x + faceWidth/8, loc.y - faceWidth/8, faceWidth/4, faceWidth/4);
      p.ellipse(loc.x - faceWidth/4, loc.y -faceWidth/8, faceWidth/4, faceWidth/4);
    }
  }

  void hover(){}
  
  
}
