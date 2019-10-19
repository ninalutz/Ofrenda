import java.util.*;

void setup() {
  size(1500, 800);
  noFill();
configLinesOverall();
  background(255, 255, 255);

}

void draw() {
  drawLines();
}


void configLinesOverall(){
  smooth(2);
  strokeWeight(strokeWeight);
//  for(int i = 0; i<8; i++){
//    for(int j = 0; j<4; j++){
//      spawn(-600 + 170*i,  -250 + 170*j, int(random(10,20)));
//    }
//  }
   spawn(200, 200, int(random(10,20)));
}
