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
    saveTable(skullPoints, "data/SkullPoints.csv");
}
