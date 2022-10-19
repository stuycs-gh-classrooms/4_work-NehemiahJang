int angle;
int dotDiameter;//Size of the circle

int sinAmplitude;
int circRadius;
int spiralRadius;

void setup() {
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  stroke(255);
}//setup

void draw() {
  //background(0);
  //sin curve
  drawSinCurve(angle, sinAmplitude, sinAmplitude);
 
  //circle
  drawCircle(angle, circRadius, width/2, sinAmplitude*2 + circRadius);
  //concentric circles
  drawCircle(angle, spiralRadius, width/2, sinAmplitude*2 + circRadius*3);
  angle++;
  if (angle % 360 == 0){
    spiralRadius -= 10;
  }

 
}//draw

void drawSinCurve(int degrees, int amplitude, int yOffset) {
  float y = amplitude * sin(radians(degrees))+yOffset;
  circle(degrees % width, y, dotDiameter);
 
}
void drawCircle(int degrees, int radius, int xOffset, int yOffset) {
  float x = radius * cos(radians(degrees)) + xOffset;
  float y = radius * sin(radians(degrees)) + yOffset;
  circle(x, y, dotDiameter);
 
}
