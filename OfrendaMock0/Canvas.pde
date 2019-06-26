int shelfWidth = 48;
float shelfHeight = 34.25;
int skullBox = 6;

int canvasWidth = 960;
int canvasHeight = 685;


void drawResolutionTest(PGraphics p){
  
  p.beginDraw();
  p.background(0);
  String res = "This is a resolution test.";
  int repeats = 50;
  int fontSize = 30;
  
  int offset = fontSize;
  p.colorMode(HSB);
  for(int i = 0; i<repeats; i++){
    p.fill(i*10, 255, 255);
    p.textSize(fontSize);
    p.text(res, offset, fontSize*i + offset);
  }
  
  p.colorMode(RGB);
  p.endDraw();
}
