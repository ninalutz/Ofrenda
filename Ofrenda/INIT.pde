void loadData(){
  testImage = loadImage("testResImage.jpg");
}

int numShelves = 4;
int skullsPerShelf = 8;
int shelfWidth = 48;
float shelfHeight = 34.25;

int skullBox = 6;
void initSkulls(){
  float shelfAdjustX = width/48;
  float shelfAdjustY = height/(34.25*4);
  
  skulls = new ArrayList<Calavera>();
  for(int i = 0; i<skullsPerShelf; i++){
    for(int j = 0; j<numShelves; j++){
      float x = 50 + 70*i;
      float y = 40 + 100*j;
      PVector loc = new PVector(x, y);
      color c = color(random(255), random(255), random(255));
      Calavera skull = new Calavera(loc, c);
      skulls.add(skull);
    }
  }
}
