int [] xvals;
int [] yvals;
int numPoints;

void setup () {
  size(600, 400);
  background(255);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
  makeLines(xvals, yvals, 20);
  drawLines(xvals, yvals);
}
void makeLines(int[] xs, int[] ys, int points) {
  for (int i = 0; i < points; i++) {
    xs[i] = int(random(0, width));
  }
  for (int i = 0; i < points; i++) {
    ys[i] = int(random(0, height));
  }
}
void drawLines(int[] xs, int[] ys) {
  for (int i = 0; i + 1 < xs.length; i++) {
    line(xs[i], ys[i], xs[i+1], ys[i+1]);
  }
}
