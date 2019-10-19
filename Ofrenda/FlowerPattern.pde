int startTime;
int elapsedTime;

PImage[] pinkFlower = new PImage[54];
PImage[] yellowFlower = new PImage[54];
PImage[] orangeFlower = new PImage[54];
PImage[] redFlower = new PImage[54];
PImage[] tealFlower = new PImage[54];
PImage[] blueFlower = new PImage[54];
PImage[] blackFlower = new PImage[54];
PImage[] purpleFlower = new PImage[54];

void setupFlower(){
   loadFlowerFull("data/Flowers/flower", pinkFlower);
   loadFlowerFull("data/Flowers/red", redFlower);
   loadFlowerFull("data/Flowers/blue", blueFlower);
   loadFlowerFull("data/Flowers/black", blackFlower);
   loadFlowerFull("data/Flowers/teal", tealFlower);
   loadFlowerFull("data/Flowers/yellow", yellowFlower);
   loadFlowerFull("data/Flowers/orange", orangeFlower);
   loadFlowerFull("data/Flowers/purple", purpleFlower);
 }

void loadFlowerFull(String file1, PImage[] flower){
    //Flowers
   for(int i =0; i<9; i++){
     flower[i] = loadImage(file1+(i+1)+".png");
     flower[36+i] = loadImage(file1+(i+1)+".png");
     flower[18+i] = loadImage(file1+(i+1)+".png");
   }
   for(int i =0; i<9; i++){
     flower[27+i] = loadImage(file1+(9-i)+".png");
     flower[9+i] = loadImage(file1+(9-i)+".png");
     flower[45+i] = loadImage(file1+(9-i)+".png");
   }
}

int value = 0;

void drawFlower(PGraphics p, PImage[] f, float x, float y, float imgSize){
  elapsedTime = millis() - startTime;
  p.image(f[value], x, y);
  if (elapsedTime % 5 == 0) value += 1;
  if(value == 54) value = 0;
}

void drawFlowers(PGraphics p){
  p.beginDraw();
  p.background(0);
  elapsedTime = millis() - startTime;
  
  p.image(pinkFlower[value], 100, 100 );
  p.image(yellowFlower[value], 200, 100 );
  p.image(redFlower[value], 300, 100 );
  p.image(orangeFlower[value], 400, 100 );
  p.image(tealFlower[value], 500, 100 );
  p.image(blueFlower[value], 600, 100 );
  p.image(purpleFlower[value], 700, 100 );
  p.image(blackFlower[value], 800, 100 );
  
  p.image(pinkFlower[value], 100, 100 );
  p.image(yellowFlower[value], 200, 100 );
  p.image(redFlower[value], 300, 100 );
  p.image(orangeFlower[value], 400, 100 );
  p.image(tealFlower[value], 500, 100 );
  p.image(blueFlower[value], 600, 100 );
  p.image(purpleFlower[value], 700, 100 );
  p.image(blackFlower[value], 800, 100 );
  
  p.image(pinkFlower[value], 100, 100 );
  p.image(yellowFlower[value], 200, 100 );
  p.image(redFlower[value], 300, 100 );
  p.image(orangeFlower[value], 400, 100 );
  p.image(tealFlower[value], 500, 100 );
  p.image(blueFlower[value], 600, 100 );
  p.image(purpleFlower[value], 700, 100 );
  p.image(blackFlower[value], 800, 100 );
  
  p.image(pinkFlower[value], 100, 100 );
  p.image(yellowFlower[value], 200, 100 );
  p.image(redFlower[value], 300, 100 );
  p.image(orangeFlower[value], 400, 100 );
  p.image(tealFlower[value], 500, 100 );
  p.image(blueFlower[value], 600, 100 );
  p.image(purpleFlower[value], 700, 100 );
  p.image(blackFlower[value], 800, 100 );
  
    p.image(pinkFlower[value], 100, 100 );
  p.image(yellowFlower[value], 200, 100 );
  p.image(redFlower[value], 300, 100 );
  p.image(orangeFlower[value], 400, 100 );
  p.image(tealFlower[value], 500, 100 );
  p.image(blueFlower[value], 600, 100 );
  p.image(purpleFlower[value], 700, 100 );
  p.image(blackFlower[value], 800, 100 );
  
  p.image(pinkFlower[value], 100, 100 );
  p.image(yellowFlower[value], 200, 100 );
  p.image(redFlower[value], 300, 100 );
  p.image(orangeFlower[value], 400, 100 );
  p.image(tealFlower[value], 500, 100 );
  p.image(blueFlower[value], 600, 100 );
  p.image(purpleFlower[value], 700, 100 );
  p.image(blackFlower[value], 800, 100 );
  
  p.image(pinkFlower[value], 100, 100 );
  p.image(yellowFlower[value], 200, 100 );
  p.image(redFlower[value], 300, 100 );
  p.image(orangeFlower[value], 400, 100 );
  p.image(tealFlower[value], 500, 100 );
  p.image(blueFlower[value], 600, 100 );
  p.image(purpleFlower[value], 700, 100 );
  p.image(blackFlower[value], 800, 100 );
  
  p.image(pinkFlower[value], 100, 100 );
  p.image(yellowFlower[value], 200, 100 );
  p.image(redFlower[value], 300, 100 );
  p.image(orangeFlower[value], 400, 100 );
  p.image(tealFlower[value], 500, 100 );
  p.image(blueFlower[value], 600, 100 );
  p.image(purpleFlower[value], 700, 100 );
  p.image(blackFlower[value], 800, 100 );
  
  if (elapsedTime % 5 == 0) value += 1;
  
  if(value == 54) value = 0;
  p.endDraw();
}
