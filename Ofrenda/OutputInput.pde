void keyPressed() {
  switch(key) {
  case 'c':
    // enter/leave calibration mode, where surfaces can be warped 
    // and moved
    ks.toggleCalibration();
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
  
  case '4':
    machineState = 4;
    break;
    
  case '5':
    loadSkullTable();
    machineState = 5;
    break;
    
  case 'f': 
    showFeatures = !showFeatures;
    break;
  
  case ' ':
    saveSkullTable();
    break;
  
  case 'W':
    if(machineState == 5) loadedSkulls.get(currentID).addWidth();
    if(machineState == 4) stampedSkulls.get(currentID).addWidth();
    break;
  
  case 'w':
    if(machineState == 5) loadedSkulls.get(currentID).subWidth();
    if(machineState == 4) stampedSkulls.get(currentID).subWidth();
    break;
  
  case 'H':
    if(machineState == 5) loadedSkulls.get(currentID).addHeight();
    if(machineState == 4) stampedSkulls.get(currentID).addHeight();
    break;
  
  case 'h':
    if(machineState == 5) loadedSkulls.get(currentID).subHeight();
    if(machineState == 4) stampedSkulls.get(currentID).subHeight();
    break;

  }
}
