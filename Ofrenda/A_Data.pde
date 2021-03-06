boolean showFeatures = false;
Table eyeLocs;
Table noseLocs;
Table mouthLocs;
Table skullLoc; 
Table flowerLocs;

Table flowerPoints;
Table skullPoints;
Table eyePoints;
Table mouthPoints;
Table nosePoints;

PImage testImage;
PImage mouth;
PImage nose;

PImage tile1, tile2, tile3, tile4, tile5;

float flowerSize = 200;
/*
Loads all data needed for the visual 
*/
void loadData(){
  testImage = loadImage("testResImage.png");
  tile1 = loadImage("data/Tiles/tile1.jpg");
  tile2 = loadImage("data/Tiles/tile2.jpg");
  tile3 = loadImage("data/Tiles/tile3.jpg");
  tile4 = loadImage("data/Tiles/tile4.jpg");
  tile5 = loadImage("data/Tiles/tile5.jpg");
  tile1.resize(width, height);
  tile2.resize(width, height);
  tile3.resize(width, height);
  tile4.resize(width, height);
  tile5.resize(width, height);
  tiles.add(tile1);
  tiles.add(tile2);
  tiles.add(tile3);
  tiles.add(tile4);
  tiles.add(tile5);
  loadSkullData();
}

void initData(){
  nose = loadImage("data/Nose.png");
  mouth = loadImage("data/mouth.png");
  skullPoints = new Table();
  skullPoints.addColumn("id");
  skullPoints.addColumn("x");
  skullPoints.addColumn("y");
  skullPoints.addColumn("w");
  skullPoints.addColumn("h");
  
  eyePoints = new Table();
  eyePoints.addColumn("x");
  eyePoints.addColumn("y");
  
  mouthPoints = new Table();
  mouthPoints.addColumn("x");
  mouthPoints.addColumn("y");
  
  nosePoints = new Table();
  nosePoints.addColumn("x");
  nosePoints.addColumn("y");
  
  flowerPoints = new Table();
  flowerPoints.addColumn("x");
  flowerPoints.addColumn("y");
  flowerPoints.addColumn("id");

}


void saveData(){
  try{
    //Save skull regions 
    for(int i = 0; i< stampedSkulls.size(); i++){
      TableRow newRow = skullPoints.addRow();
      newRow.setInt("id", stampedSkulls.get(i).getId());
      newRow.setFloat("x",  stampedSkulls.get(i).getX());
      newRow.setFloat("y",  stampedSkulls.get(i).getY());
      newRow.setFloat("w",  stampedSkulls.get(i).getWidth());
      newRow.setFloat("h", stampedSkulls.get(i).getHeight());
    }
    if(machineState == 4 || machineState == 8){
     saveTable(skullPoints, "data/SkullPoints" + day() + hour() + minute() + second() + ".csv");
    }
  }
  catch(Exception e){}
  
  //EYES
  try{
    for(int i = 0; i<ex.size(); i++){
      TableRow newRow = eyePoints.addRow();
      newRow.setFloat("x",  ex.get(i));
      newRow.setFloat("y", ey.get(i));
    }
    if(machineState == 5){
     saveTable(eyePoints, "data/EyePoints" + day() + hour() + minute() + second() + ".csv");
    }
  }
  catch(Exception e){}
  
  //NOSE
  try{
    for(int i = 0; i<nx.size(); i++){
      TableRow newRow = nosePoints.addRow();
      newRow.setFloat("x",  nx.get(i));
      newRow.setFloat("y", ny.get(i));
    }
    if(machineState == 7){
     saveTable(nosePoints, "data/NosePoints" + day() + hour() + minute() + second() + ".csv");
    }
  }
  catch(Exception e){}
  
  //MOUTH
  //try{
  //  for(int i = 0; i<mx.size(); i++){
  //    TableRow newRow = mouthPoints.addRow();
  //    newRow.setFloat("x",  mx.get(i));
  //    newRow.setFloat("y", my.get(i));
  //  }
  //   saveTable(mouthPoints, "data/MouthPoints" + day() + hour() + minute() + second() + ".csv");
  //}
  //catch(Exception e){}
  
  //FLOWERS
  //try{
  //  for(int i = 0; i<rx.size(); i++){
  //    TableRow newRow = flowerPoints.addRow();
  //    newRow.setFloat("x",  rx.get(i));
  //    newRow.setFloat("y", ry.get(i));
  //    newRow.setInt("id", int(random(flowers.size()-1)));
  //  }
  //   saveTable(flowerPoints, "data/FlowerPoints" + day() + hour() + minute() + second() + ".csv");
  //}
  //catch(Exception e){}
}


/*
Loads the most recent skull points spreadsheet
*/
void loadSkullData(){
  skullLoc = loadTable("data/skulls.csv", "header");
  eyeLocs = loadTable("data/eyes.csv", "header");
  noseLocs = loadTable("data/noses.csv", "header");
  mouthLocs = loadTable("data/mouths.csv", "header");
  flowerLocs = loadTable("data/flowers.csv", "header");
  //new Calavera(loc, skullBaseWidth, skullBaseHeight, c);
  for (TableRow row : skullLoc.rows()) {
    float skullX = row.getFloat("x");
    float skullY = row.getFloat("y");
    float skullW = row.getFloat("w");
    float skullH = row.getFloat("h");
    int skullId = row.getInt("id");
    PVector loc = new PVector(skullX, skullY);
    Calavera c = new Calavera(loc, skullW, skullH, skullColor, skullId);
    loadedSkulls.add(c);
  }
  
}


//Configures the overall lines
void configLinesOverall(){
  for(Calavera c : loadedSkulls){
    spawn(c.getX(), c.getY(), 15);
  }
}



void linesReset(){
  graphic.clear();
  masterList =  new HashSet<HashSet<Particle>>();
  count = 0;
  configLinesOverall();
}
