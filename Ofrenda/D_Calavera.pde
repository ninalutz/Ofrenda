/*s
Class for skulls to do skull things 
*/

int skullBaseWidth = 140;
int skullBaseHeight = 200;
int currentID; 
float eyeSize = 50;
float noseWidth = 25;
float noseHeight = 20;
float mouthWidth = 60;
float mouthHeight = 10;
boolean rainbowMode = false;
/*
Calavera object
A skull with a location and face and patterns that vary based on state machine
*/
class Calavera{
  int adjustFactor = 5;
  PVector loc; //Center of the calavera ellipsoid 
  float x, y;
  color faceColor;
  float faceHeight, faceWidth;
  int id;
  
  boolean over = false;
  boolean locked = false;

  Calavera(PVector loc, float w, float h, color c, int id){
    this.loc = loc;
    this.x = loc.x;
    this.y = loc.y;
    this.faceHeight = h;
    this.faceWidth = w;
    this.faceColor = c;
    this.id = id;
  }
  
  Calavera(PVector loc, int w, int h, color c){
    this.loc = loc;
    this.x = loc.x;
    this.y = loc.y;
    this.faceHeight = h;
    this.faceWidth = w;
    this.faceColor = c;
  }
  
  float c;
  
  void draw(PGraphics p){
    p.fill(faceColor);
    p.stroke(faceColor);
    
    if(rainbowMode){
        p.colorMode(HSB);
        p.stroke(c, 255, 255);
        if (c >= 255)  c=0;  else  c++;
        p.fill(c, 255, 255);
    }
    colorMode(RGB);
    
    if(over) p.fill(255, 0, 0);
    p.strokeWeight(3);
    p.ellipseMode(CENTER);
    p.ellipse(loc.x, loc.y, faceWidth, faceHeight);
    if(machineState == 4) hover();
    if(over) currentID = this.getId();
  }

  void hover(){
    PVector mouseLoc = surface.getTransformedMouse();
    if(mouseLoc.x < loc.x + faceWidth/2 && mouseLoc.x > loc.x - faceWidth/2 
    && mouseLoc.y < loc.y + faceHeight/2 && mouseLoc.y > loc.y - faceHeight/2) over = true;
    else over = false;
  }
  
  float getWidth(){
    return faceWidth;
  }
  
  float getHeight(){
    return faceHeight;
  }
  
  int getId(){
    return this.id;
  }
  
  float getX(){
    return this.loc.x;
  }
  
  float getY(){
    return this.loc.y;
  }
  
  void addWidth(){ 
    this.faceWidth += adjustFactor;
  }
  
  void subWidth(){ this.faceWidth -= adjustFactor;}
  void addHeight(){ this.faceHeight += adjustFactor;}
  void subHeight(){ this.faceHeight -= adjustFactor;}
}
