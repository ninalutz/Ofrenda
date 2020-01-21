void keyPressed() {
  switch(key) {
  case 'c':
    // enter/leave calibration mode, where surfaces can be warped 
    // and moved
    ks.toggleCalibration();
    break;

  case 'r': 
    rainbowMode = !rainbowMode;
    break;
    
  case 'l':
    // loads the saved layout
    ks.load();
    break;

  case 's':
    // saves the layout
    ks.save();
    break;
  
  case '2':
    machineState = 2;
    break;
    
  case '1':
    machineState = 1;
    break;
    
  case '3':
    machineState = 3;
    break;
  
  //Stamp skulls
  case '4':
    machineState = 4;
    break;
    
  //Stamp eyes
  case '5':
    machineState = 5;
    break;
    
  //Stamp large flowers
  case '6':
    machineState = 6;
    break;
    
  //Stamp noses
  case '7':
    machineState = 7;
    break;
  
 //Draw loaded stuff 
  case '8':
    loadSkullData();
    machineState = 8;
    break;  
 
  case '9':
    loadSkullData();
    machineState = 9;
    break;
    
  case 'f': 
    showFeatures = !showFeatures;
    break;
  
  case ' ':
    saveData();
    break;
  
  case 'W':
    if(machineState == 8) stampedSkulls.get(currentID).addWidth();
    if(machineState == 4) stampedSkulls.get(currentID).addWidth();
    break;
  
  case 'w':
    if(machineState == 8) stampedSkulls.get(currentID).subWidth();
    if(machineState == 4) stampedSkulls.get(currentID).subWidth();
    break;
  
  case 'H':
    if(machineState == 8) loadedSkulls.get(currentID).addHeight();
    if(machineState == 4) stampedSkulls.get(currentID).addHeight();
    break;
  
  case 'h':
    if(machineState == 8) loadedSkulls.get(currentID).subHeight();
    if(machineState == 4) stampedSkulls.get(currentID).subHeight();
    break;
  case 'd':
    if(machineState == 4) stampedSkulls.remove(currentID);
    break;
  }
}
