//Skull Region Lists
FloatList cx = new FloatList();
FloatList cy = new FloatList();

//Eye region lists
FloatList ex = new FloatList();
FloatList ey = new FloatList();

//Nose region lists
FloatList nx = new FloatList();
FloatList ny = new FloatList();

//Mouth region lists
FloatList mx = new FloatList();
FloatList my = new FloatList();

Table skullPoints;
Table eyePoints;
Table mouthPoints;
Table nosePoints;

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
    //Do the eyes
    if(machineState == 5){
      PVector loc = surface.getTransformedMouse();
      ex.append(loc.x);
      ey.append(loc.y);
    }
    //Do the mouths
    if(machineState == 6){
      PVector loc = surface.getTransformedMouse();
      mx.append(loc.x);
      my.append(loc.y);
    }
    //Do the noses
    if(machineState == 7){
      PVector loc = surface.getTransformedMouse();
      nx.append(loc.x);
      ny.append(loc.y);
    }
}
