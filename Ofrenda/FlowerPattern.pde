int startTime;
int elapsedTime;

PImage flowerT;
PImage[] flower = new PImage[54];

void setupFlower(){
   flowerT = loadImage( "data/flower.gif" );
   for(int i =0; i<9; i++){
     flower[i] = loadImage("data/flower"+(i+1)+".png");
     flower[36+i] = loadImage("data/flower"+(i+1)+".png");
     flower[18+i] = loadImage("data/flower"+(i+1)+".png");
   }
   for(int i =0; i<9; i++){
     flower[27+i] = loadImage("data/flower"+(9-i)+".png");
     flower[9+i] = loadImage("data/flower"+(9-i)+".png");
     flower[45+i] = loadImage("data/flower"+(9-i)+".png");
   }
}

int value = 0;

void drawFlower(PGraphics p){
  elapsedTime = millis() - startTime;
  p.image(flower[value], 100, 100 );
  
  if (elapsedTime % 5 == 0) value += 1;
  
  if(value == 54) value = 0;
}
