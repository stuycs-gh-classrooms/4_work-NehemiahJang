Ball[] balls;
int score; 
color SAFE_COLOR = color(0, 255, 255);
color COLLISION_COLOR = color(255, 0, 255);

void setup() {
  size(600, 400);
  background(0);

  balls = new Ball[10];
  setupBalls();
  
  score = 0;
}//setup

void setupBalls() {
  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball();
  }//loop through array, creating new Ball objects
}//setupBalls

void draw() {
  background(0);
  //loop for safe color
  for (int i=0; i<balls.length; i++) {
    balls[i].setColor(SAFE_COLOR);
    //loop for colliding colors
    for(int a = 0; a < balls.length; a++){
      if(balls[i].collisionCheck(balls[a])){
        balls[i].setColor(COLLISION_COLOR);
      }
    }
    
    balls[i].display();
    balls[i].move();
  }
}//draw

void keyPressed() { 
    for (int i=0; i<balls.length; i++) {
    if (key == ' ') {
      balls[i].reset();
     }//reset
    
  else if (key == CODED) {
    if (keyCode == UP) {
      balls[i].changeSpeed(0, -1);
    }//up
    
    else if (keyCode == DOWN) {
      balls[i].changeSpeed(0, 1);
    }//down
    
    else if (keyCode == LEFT) {
      balls[i].changeSpeed(-1, 0);
    }//left
    
    else if (keyCode == RIGHT) {
      balls[i].changeSpeed(1, 0);
    }//right
    
  }//non ASCII keys
 }
}



void mousePressed() {
  for (int i=0; i<balls.length; i++) {
  if ( balls[i].onBall(mouseX, mouseY) ) {
    score+= balls[i].getScoreValue();
    balls[i].reset();
    println(score);
  }
 }//hit
}//mousePressed
