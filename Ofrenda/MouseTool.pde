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
      Calavera cal = new Calavera(loc, skullBaseWidth, skullBaseHeight, c);
      stampedSkulls.add(cal);
    }
}

void saveSkullTable(){
    for(int i = 0; i<cx.size(); i++){
      TableRow newRow = skullPoints.addRow();
      newRow.setInt("id", skullPoints.getRowCount() - 1);
      newRow.setFloat("x", cx.get(i));
      newRow.setFloat("y", cy.get(i));
    }
    saveTable(skullPoints, "data/SkullPoints" + day() + hour() + minute() + second() + ".csv");
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
    PVector loc = new PVector(skullX, skullY);
    color col = color(255, 255, 0);
    Calavera c = new Calavera(loc, skullBaseWidth, skullBaseHeight, col);
    loadedSkulls.add(c);
  }
}
