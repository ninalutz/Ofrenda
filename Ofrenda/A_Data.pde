boolean showFeatures = false;
Table eyeLocs;
Table noseLocs;
Table mouthLocs;
Table skullLoc; 

PImage testImage;
PImage mouth;
PImage nose;

/*
Loads all data needed for the visual 
*/
void loadData(){
  testImage = loadImage("testResImage.png");
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
}


void saveData(){
  try{
    //Save skull regions 
    for(int i = 0; i< loadedSkulls.size(); i++){
      TableRow newRow = skullPoints.addRow();
      newRow.setInt("id", loadedSkulls.get(i).getId());
      newRow.setFloat("x",  loadedSkulls.get(i).getX());
      newRow.setFloat("y",  loadedSkulls.get(i).getY());
      newRow.setFloat("w",  loadedSkulls.get(i).getWidth());
      newRow.setFloat("h", loadedSkulls.get(i).getHeight());
    }
     saveTable(skullPoints, "data/SkullPoints" + day() + hour() + minute() + second() + ".csv");
  }
  catch(Exception e){}
  
  //EYES
  try{
    for(int i = 0; i<ex.size(); i++){
      TableRow newRow = eyePoints.addRow();
      newRow.setFloat("x",  ex.get(i));
      newRow.setFloat("y", ey.get(i));
    }
     saveTable(eyePoints, "data/EyePoints" + day() + hour() + minute() + second() + ".csv");
  }
  catch(Exception e){}
  
  //NOSE
  try{
    for(int i = 0; i<nx.size(); i++){
      TableRow newRow = nosePoints.addRow();
      newRow.setFloat("x",  nx.get(i));
      newRow.setFloat("y", ny.get(i));
    }
     saveTable(nosePoints, "data/NosePoints" + day() + hour() + minute() + second() + ".csv");
  }
  catch(Exception e){}
  
  //MOUTH
  try{
    for(int i = 0; i<mx.size(); i++){
      TableRow newRow = nosePoints.addRow();
      newRow.setFloat("x",  mx.get(i));
      newRow.setFloat("y", my.get(i));
    }
     saveTable(nosePoints, "data/MouthPoints" + day() + hour() + minute() + second() + ".csv");
  }
  catch(Exception e){}
}


/*
Loads the most recent skull points spreadsheet
*/
void loadSkullData(){
  skullLoc = loadTable("data/skulls.csv", "header");
  eyeLocs = loadTable("data/eyes.csv", "header");
  noseLocs = loadTable("data/noses.csv", "header");
  mouthLocs = loadTable("data/mouths.csv", "header");
  
  //new Calavera(loc, skullBaseWidth, skullBaseHeight, c);
  for (TableRow row : skullLoc.rows()) {
    float skullX = row.getFloat("x");
    float skullY = row.getFloat("y");
    float skullW = row.getFloat("w");
    float skullH = row.getFloat("h");
    int skullId = row.getInt("id");
    PVector loc = new PVector(skullX, skullY);
    color col = color(255, 255, 0);
    Calavera c = new Calavera(loc, skullW, skullH, col, skullId);
    loadedSkulls.add(c);
  }
  
}
