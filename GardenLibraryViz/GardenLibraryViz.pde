// Garden Library project
// Romy Achituv, Andres Colubri
// 
// GardenLibraryViz app, version 11 (February 1th, 2013).

void setup() {
  size(WIDTH, HEIGHT);
  //smooth(8);
  
  frame.setResizable(RESIZE);
  
  // img = loadImage("media/header.gif");//added  
  initialize(LOADING);
}

void draw() {
  if (currentTask < RUNNING) {
    initialize(currentTask);
    loadingAnimation();
  } 
  else {     
    background(backgroundColor);
    
    checkResize();

    checkMouseActivity();

    // Update UI    
    for (InterfaceElement e: ui) {
      e.update();
    }

    // Draw UI    
    for (InterfaceElement e: ui) {
      e.draw();
    }
    
    hintInfo.update();
    hintInfo.draw();
  }
  //   image(img,0,0);// added here on top of legend anim
  //  printFrameRate();
}

void mousePressed() {  
  if (currentTask < RUNNING) return;
  for (InterfaceElement e: ui) {
    e.mousePressed();
  }
}

void mouseDragged() {
  if (currentTask < RUNNING) return;  
  for (InterfaceElement e: ui) {
    e.mouseDragged();
  }
}

void mouseReleased() {
  if (currentTask < RUNNING) return;  
  for (InterfaceElement e: ui) {
    e.mouseReleased();
  }
}

void mouseMoved() {
  if (currentTask < RUNNING) return;  
  for (InterfaceElement e: ui) {
    e.mouseMoved();
  }
}

