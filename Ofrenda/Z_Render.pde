void getRender(){
  switch(machineState) {
  case 1:
    animateTiles(offscreen);
    break;
  case 2:
    drawFlowers(offscreen);
    break;
  case 3: 
    drawLoadedSkulls(offscreen);
    break;
  case 4:
     drawLoadedSkulls(offscreen);
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
     drawStampedSkulls(offscreen);
    break;
  }
}
