class calavera{
  PVector loc;
  float x, y;
  color faceColor;
  
  calavera(PVector loc){
    this.faceColor = color(255, 255, 255); 
    this.loc = loc;
    this.x = loc.x;
    this.y = loc.y;
  }
  
  calavera(float x, float y){
    this.x = x;
    this.y = y;
    this.loc = new PVector(x, y);
    this.faceColor = color(255, 255, 255); 
  }
  
    calavera(PVector loc, color c){
    this.loc = loc;
        this.x = loc.x;
    this.y = loc.y;
    this.faceColor = c;
  }
  
  calavera(float x, float y, color c){
    this.x = x;
    this.y = y;
    this.loc = new PVector(x, y);
    this.faceColor = c;
  }
  
  void draw(){
    fill(faceColor);
    
  }

}
