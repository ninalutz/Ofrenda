void getRender(){
  switch(machineState) {
  case 1:
    animateTiles(offscreen);
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
    drawStampedFlowers(offscreen);
    break;
  case 7:
    drawStampedNoses(offscreen);
    break;
  case 8:
    drawLoadedSkulls(offscreen);
    break;
  case 9:
    drawLoadedFlowers(offscreen);
    break;
  }
}
