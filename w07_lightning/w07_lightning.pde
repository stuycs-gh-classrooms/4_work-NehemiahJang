void drawLightning(int x, int y, int numParts) {
  int nexty = y + height/numParts;
  int nextx = int(random(x-5, x+6));
  
  while (numParts > 0) {
    line(x, y, nextx, nexty);
    nextx = int(random(x-5, x+6));
    y = nexty + height/numParts;
    numParts = numParts-1;
  }
}

void setup() {
  size(500, 500);
  drawLightning(250, 0, 5);
  drawLightning(200, 0, 6);
  drawLightning(100, 0, 7);
  drawLightning(300, 0, 4);
  drawLightning(400, 0, 8);
}
    
