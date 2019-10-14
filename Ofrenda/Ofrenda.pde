import deadpixel.keystone.*;
Keystone ks;
CornerPinSurface surface;
PGraphics offscreen;

void setup() {
  // Keystone will only work with P3D or OPENGL renderers, 
  // since it relies on texture mapping to deform
  //size(1600, 900, P3D);
 // size(1200, 800, P3D);
   size(displayWidth, displayHeight, P3D);
 
  initProjection();
  initSkulls();
  loadData();
}

void draw() {
  renderProjection();

  // most likely, you'll want a black background to minimize
  // bleeding around your projection area
  background(0);
 
  // render the scene, transformed using the corner pin surface
  surface.render(offscreen);
}
