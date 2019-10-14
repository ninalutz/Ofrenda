int machineState = 1;

void initProjection(){
  ks = new Keystone(this);
  surface = ks.createCornerPinSurface(width, height, 20);
  // We need an offscreen buffer to draw the surface we
  // want projected
  // note that we're matching the resolution of the
  // CornerPinSurface.
  // (The offscreen buffer can be P2D or P3D)
  offscreen = createGraphics(width, height, P3D);
  
}

void renderProjection(){
  // Convert the mouse coordinate into surface coordinates
  // this will allow you to use mouse events inside the 
  // surface from your screen. 

  getRender();
}

void getRender(){
  switch(machineState) {
  case 1:
     drawResolutionTest(offscreen);
    break;
  case 2:
    drawMouseSkull(offscreen);
    break;
  case 3: 
    drawTileOnly(offscreen);
    break;
  }
}
