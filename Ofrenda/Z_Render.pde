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
  case 4:
    drawStampedSkulls(offscreen);
    break;
  case 5:
    drawStampedEyes(offscreen);
    break;
  case 6:
    drawStampedMouths(offscreen);
    break;
  case 7:
    drawStampedNoses(offscreen);
    break;
  case 8:
    drawLoadedSkulls(offscreen);
    break;
  }
}
