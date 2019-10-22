/*
Ofrenda Digital 

Code for Ofrenda Digital, a project and part of 
Nina Lutz's Masters Thesis at the MIT Media Lab

Nina Lutz
MIT Media Lab
nlutz@mit.edu 
Last update: 10.19.19
*/

import java.util.*;
import deadpixel.keystone.*;
Keystone ks;
CornerPinSurface surface;
PGraphics offscreen;
ArrayList<Calavera> stampedSkulls;
ArrayList<Calavera> loadedSkulls;
ArrayList<PVector> flowersLoc = new ArrayList<PVector>();
ArrayList<Float> flowersSize = new ArrayList<Float>();
ArrayList<Integer> flowersId = new ArrayList<Integer>();
import java.util.*;
boolean animateLoop = true;

int machineLoop;

void setup() {
  // Keystone will only work with P3D or OPENGL renderers, 
  // since it relies on texture mapping to deform
  size(1920, 1080, P3D);
  stampedSkulls = new ArrayList<Calavera>();
  loadedSkulls = new ArrayList<Calavera>();
  initProjection();
  println("Initialized the projection");
  setupFlower();
  println("Set up animations");
  loadData();
  println("Loaded images and data");
  println("Initialized projection");
  initData();
  configLinesOverall();
  startTime = millis();
  machineLoop = 1;
}

void draw() {
  timePass();
  renderProjection();

  // most likely, you'll want a black background to minimize
  // bleeding around your projection area
  background(0);
 
  // render the scene, transformed using the corner pin surface
  surface.render(offscreen);
}
