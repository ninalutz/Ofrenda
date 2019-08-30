boolean showFeatures = false;

void loadData(){
  testImage = loadImage("testResImage.jpg");
}

//Skull quantity variables 
int numShelves = 4;
int skullsPerShelf = 8;
int skullNum = numShelves*skullsPerShelf;
//Width and height of the physical shelves in inches
float shelfWidth = 48;
float shelfHeight = 34.25;
float skullBoxWidth = 6;

//Skull display variables 
//130 height --> 90 width
color skullColor = color(255, 255, 0);
int skullWidth = 140;
int skullHeight = 170; 
int skullXSpace = 50;
int skullYSpace = 50;

//Gloabl offset for canvas
int xOffset = 110;
int yOffset = 110;

ArrayList<Calavera> basicSkulls; //collection for basic skull test 
ArrayList<Calavera> eyeSkulls; //skulls for moving eye test 
ArrayList<Calavera> basicPatternSkulls; 
ArrayList<Calavera> skulls; 

void initSkulls(){
  skulls = new ArrayList<Calavera>();
  for(int i = 0; i<skullsPerShelf; i++){
    for(int j = 0; j<numShelves; j++){
      float x = xOffset + (skullWidth + skullXSpace)*i;
      float y = yOffset + (skullHeight+skullYSpace)*j;
      PVector loc = new PVector(x, y);
      color c = skullColor;
      Calavera skull = new Calavera(loc, skullWidth, skullHeight, c);
      skulls.add(skull);
    }
  }
}
