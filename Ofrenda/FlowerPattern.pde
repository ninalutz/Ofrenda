
PImage flowerT;
PImage[] flower = new PImage[36];
void setupFlower(){
   flowerT = loadImage( "data/flower.gif" );
   for(int i =0; i<9; i++){
     flower[i] = loadImage("data/flower"+(i+1)+".png");
     flower[i+1] = loadImage("data/flower"+(i+1)+".png");
   }
   for(int i =0; i<9; i++){
     flower[9+i] = loadImage("data/flower"+(9-i)+".png");
     flower[9+i+1] = loadImage("data/flower"+(9-i)+".png");
   }
}


void drawFlower(PGraphics p){
  p.image(flower[frameCount%18], 100, 100 );
}
