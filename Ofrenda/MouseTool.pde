FloatList cx = new FloatList();
FloatList cy = new FloatList();
Table skullPoints;

/*
Stamping function for calavera objects
*/
void mousePressed() {
    if(machineState == 4){
      PVector loc = surface.getTransformedMouse();
      cx.append(loc.x);
      cy.append(loc.y);
      color c = color(mouseX, mouseY, 200);
      Calavera cal = new Calavera(loc, skullBaseWidth, skullBaseHeight, c, stampedSkulls.size());
      stampedSkulls.add(cal);
    }
}

void saveSkullTable(){
  if(machineState == 4){
    for(int i = 0; i<stampedSkulls.size(); i++){
      TableRow newRow = skullPoints.addRow();
      newRow.setInt("id", stampedSkulls.get(i).getId());
      newRow.setFloat("x",  stampedSkulls.get(i).getX());
      newRow.setFloat("y",  stampedSkulls.get(i).getY());
      newRow.setFloat("w", stampedSkulls.get(i).getWidth());
      newRow.setFloat("h", stampedSkulls.get(i).getHeight());
    }
     saveTable(skullPoints, "data/SkullPoints" + day() + hour() + minute() + second() + ".csv");
  }
  
    if(machineState == 5){
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
}

Table skullLoc; 
/*
Loads the most recent skull points spreadsheet
*/
void loadSkullTable(){
  skullLoc = loadTable("data/skulls.csv", "header");
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
