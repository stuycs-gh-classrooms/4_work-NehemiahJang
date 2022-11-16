int[] xvals;
int[] yvals;
int MAX_POINTS = 1000;
int numPoints;

void setup() {
  size(600, 400);
  xvals = new int[MAX_POINTS];
  yvals = new int[MAX_POINTS];
  numPoints = 0;
}//setup

void draw() {
  background(0);
  drawLines(xvals, yvals);
}//draw

void drawLines(int[] xs, int[] ys) {
  stroke(255);
  strokeWeight(3);
  for (int i = 1; i < numPoints+1; i++) {
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }//for
}//drawLines

void mousePressed() {
  numPoints++;
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
}//mousePressed

void keyPressed() {
  if (key == 'c') {
    numPoints = 0;
  }
  if (key == CODED) {
    if (keyCode == UP) {
      moveLines(xvals, yvals, 0, -1);
    }
    if (keyCode == DOWN) {
      moveLines(xvals, yvals, 0, 1);
    }
    if (keyCode == LEFT) {
      moveLines(xvals, yvals, -1, 0);
    }
    if (keyCode == RIGHT) {
      moveLines(xvals, yvals, 1, 0);
    }
  }
}//keyPressed

void moveLines(int[] xs, int[] ys, int xMod, int yMod) {
  for (int i = 0; i < numPoints + 1; i++) {
    xs[i]+= xMod;
    ys[i]+= yMod;
  }
}
