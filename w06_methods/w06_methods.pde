void tetris(int x, int y, int length){
  int c = y + length;
  fill(255, 0, 255);
  square(x, y, length);
  square(x + length, c, length);
  square(x, c, length);
  square(x - length, c, length);
}


void setup(){
  size(400, 400);
  background(0, 0, 0);
  tetris(100, 200, 50);
}
