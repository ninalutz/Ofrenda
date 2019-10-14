/*
Ofrenda Digital 

Code for Ofrenda Digital, a project and part of Nina Lutz's Masters Thesis at the MIT Media Lab

Nina Lutz
MIT Media Lab
nlutz@mit.edu 
Last update: 10.14.19
*/
import java.util.*;

import deadpixel.keystone.*;
Keystone ks;
CornerPinSurface surface;
PGraphics offscreen;
HashSet<Calavera> stampedSkulls;

void setup() {
  // Keystone will only work with P3D or OPENGL renderers, 
  // since it relies on texture mapping to deform
  //size(1600, 900, P3D);
 // size(1200, 800, P3D);
   size(displayWidth, displayHeight, P3D);
  stampedSkulls = new HashSet<Calavera>();
  initProjection();
  loadData();
  
  skullPoints = new Table();
  skullPoints.addColumn("id");
  skullPoints.addColumn("x");
  skullPoints.addColumn("y");
  
}

void draw() {
  renderProjection();

  // most likely, you'll want a black background to minimize
  // bleeding around your projection area
  background(0);
 
  // render the scene, transformed using the corner pin surface
  surface.render(offscreen);
}
