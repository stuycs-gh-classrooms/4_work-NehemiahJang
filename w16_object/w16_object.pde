Ball[] balls;
int score;

void setup() {
  size(600, 400);
  background(0);
  score = 0;

  balls = new Ball[10];
  setupBalls();
}//setup

void setupBalls() {
  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball();
  }//loop through array, creating new Ball objects
}//setupBalls


void draw() {
  background(0);
  for (int i = 0; i < balls.length; i++) {
    Ball b = balls[i];
    b.display();
    b.move();
  }
}//draw

void keyPressed() {
  for (int i = 0; i < balls.length; i++) {
    Ball b = balls[i];
    if (key == ' ') {
      b.reset();
    }//reset
    else if (key == CODED) {
      if (keyCode == UP) {
        b.changeSpeed(0, -1);
      }//up
      else if (keyCode == DOWN) {
        b.changeSpeed(0, 1);
      }//down
      else if (keyCode == LEFT) {
        b.changeSpeed(-1, 0);
      }//left
      else if (keyCode == RIGHT) {
        b.changeSpeed(1, 0);
      }//right
    }//non ASCII keys
  }
}

void mousePressed() {
  for (int i = 0; i < balls.length; i++) {
    Ball b = balls[i];
    if ( b.onBall(mouseX, mouseY) ) {
      score+= b.getScoreValue();
      b.reset();
      println(score);
    }
  }//hit
}//mousePressed
