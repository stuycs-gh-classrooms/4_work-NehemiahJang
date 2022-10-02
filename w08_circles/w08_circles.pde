int movingX;
int movingY;
int radius;
int defaultX;
int defaultY;
int circlerowY;

void circleRow(int startX, int endX, int y, int d) {
  int curx = startX + d/2;
  int cury = y + d/2;
  while (curx < endX) {
    circle(curx, cury , d);
    curx += d; 
  }
}

void setup() {
  size(500,500);
  movingX = 0;
  movingY = 0;
  radius = 50;
  defaultX = movingX;
  circlerowY = movingY;
  defaultY = movingY + radius * 2;

}


void draw() {
  background(255);
  circleRow(defaultX, 500, circlerowY, radius * 2);
  circle(movingX + radius, movingY + radius * 3, radius * 2);
  movingX++;
  if (movingY + radius * 2 == 500) {
    if (movingX + radius * 2 == 500) {
      movingX = defaultX;
      movingY = defaultY;
    }
  }
  if (movingX + radius * 2 == 500) {
    movingX = defaultX;
    movingY += radius * 2; 
  }
}


  
