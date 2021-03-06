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

//Large flower region lists
FloatList rx = new FloatList();
FloatList ry = new FloatList();


color skullColor = color(255, 255, 255);
/*
Stamping function for calavera objects
*/
void mousePressed() {
    if(machineState == 8){
      println("HELLO");
      PVector loc = surface.getTransformedMouse();
      cx.append(loc.x);
      cy.append(loc.y);
      color c = color(skullColor);
      Calavera cal = new Calavera(loc, skullBaseWidth, skullBaseHeight, c, stampedSkulls.size());
      stampedSkulls.add(cal);
    }
    //Do the eyes
    if(machineState == 5){
      PVector loc = surface.getTransformedMouse();
      ex.append(loc.x);
      ey.append(loc.y);
    }

    //Do the large flowers!
     if(machineState == 6){
      PVector loc = surface.getTransformedMouse();
      rx.append(loc.x);
      ry.append(loc.y);
     }
     
    //Do the noses
    if(machineState == 7){
      PVector loc = surface.getTransformedMouse();
      nx.append(loc.x);
      ny.append(loc.y);
    }
}
