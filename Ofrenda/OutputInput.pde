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
  }
}
