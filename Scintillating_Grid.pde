// Ilusión  Scintillating Grid 
// Artwork on redbubble at https://www.redbubble.com/people/rupertrussell/works/7920811-scintillating-grid
// Author: Rupert Russell, October 2, 2010
// Based on work by E. and B. Lingelbach and M. Schrauf in 1994.
// https://en.wikipedia.org/wiki/Grid_illusion

// The scintillating grid illusion is an optical illusion, discovered by E. and B. Lingelbach and M. Schrauf in 1994.
// [2] It is often considered a variation of the Hermann grid illusion but posesses different properties.[2][3]

// It is constructed by superimposing white discs on the intersections of orthogonal gray bars on a black background. 
// Dark dots seem to appear and disappear rapidly at random intersections, hence the label "scintillating". 
// When a person keeps his or her eyes directly on a single intersection, the dark dot does not appear. 
// The dark dots disappear if one is too close to or too far from the image.


void setup() {
  size(800, 800);
}


void draw() {
  background(0);          // black background

  //style
  strokeWeight(9);        // medium weight lines 
  smooth();               // antialias lines
  stroke(100, 100, 100);  // dark grey colour for lines

  int step = 40;          // grid spacing

  //vertical lines
  for (int x = step; x < width; x = x + step) {
    line(x, 0, x, height);
  }

  //horizontal lines
  for (int y = step; y < height; y = y + step) {
    line(0, y, width, y);
  }

  // Circles
  ellipseMode(CENTER);
  stroke(255, 255, 255);  // white circles
  for (int i = step; i < width -5; i = i + step) {
    for (int j = step; j < height -15; j = j + step) {
      strokeWeight(9); 
      point(i, j);
      strokeWeight(9);
    }
  }
  save("Scintillating_grid_illusion.png");
}
