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

//Skull display variables 
color skullColor = color(255, 255, 255);
int skullWidth = 60;

//Gloabl offset for canvas
int xOffset = 40;
int yOffset = 70;

ArrayList<Calavera> basicSkulls; //collection for basic skull test 
ArrayList<Calavera> eyeSkulls; //skulls for moving eye test 
ArrayList<Calavera> basicPatternSkulls; 

void initSkulls(){
  
  skulls = new ArrayList<Calavera>();
  for(int i = 0; i<skullsPerShelf; i++){
    for(int j = 0; j<numShelves; j++){
      float x = xOffset + 70*i;
      float y = yOffset + 100*j;
      PVector loc = new PVector(x, y);
      color c = skullColor;
      Calavera skull = new Calavera(loc, c);
      skulls.add(skull);
    }
  }
}
