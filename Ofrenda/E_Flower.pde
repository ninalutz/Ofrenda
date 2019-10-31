int startTime;
int elapsedTime;
ArrayList<PImage[]> flowers = new ArrayList<PImage[]>();

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
   
     
  for(int i =0; i<13; i++){
    for(int j =0; j<7; j++){
      flowersLoc.add(new PVector(-100 + i*150, -100 + j*150));
      flowersSize.add(random(300, 800));
      flowersId.add(int(random(0,8)));
    }
  }
  
  Collections.shuffle(flowersLoc);
  
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
   flowers.add(flower);
}

int value = 0;
boolean looped = true;

void timePass(){
    elapsedTime = millis() - startTime;
    if (elapsedTime % 5 == 0) value += 1;
    if(value == 54) value = 0;
    
    //println(second());
    //println(elapsedTime);
    
    if(second() == 1 && looped == true) {
       if(machineLoop == 3) machineLoop = 1;
       else machineLoop += 1;
       if(animateLoop) machineState = machineLoop;
       offscreen.beginDraw();
       offscreen.background(0);
       offscreen.endDraw();
       looped = false;
    }
    if(second() != 1) looped = true;
}

void drawFlower(PGraphics p, PImage[] f, float x, float y, float imgSize){
  imageMode(CENTER);
  p.image(f[value], x, y, imgSize, imgSize);
}

  int numFlowers = 15;
  
void drawFlowers(PGraphics p){
  p.beginDraw();
  p.background(0);
  for(int i =0; i<flowersLoc.size(); i++){
    drawFlower(p, flowers.get(flowersId.get(i)), flowersLoc.get(i).x, flowersLoc.get(i).y, flowersSize.get(i));
  }
  p.endDraw();
}
