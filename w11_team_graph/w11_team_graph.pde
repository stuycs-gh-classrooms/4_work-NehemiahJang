//All three "graphs" will use these variables
int angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.

int sinAmplitude;
int circRadius;
int spiralRadius;
int n;

void setup() {
  size(800, 800);
  background(0);
  dotDiameter = 10;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  stroke(255);
  n = 0;
}//setup

void draw() {
  //background(0);
  //sin curve
  noStroke();
  fill(random(255), random(255), random(255));
  drawCosCurve(angle + 360 * n, sinAmplitude, sinAmplitude);
  //circle
  drawCircle(angle + 360 * n, circRadius, width/2, sinAmplitude*2 + circRadius);
  angle++;
  circRadius--;
}//draw

void drawCosCurve(int degrees, int amplitude, int yOffset) {
  float cosY = 1 / (sin(radians(degrees))) * amplitude;
  circle(degrees - degrees/2, cosY + degrees/2, dotDiameter);
}

void drawCircle(int degrees, int radius, int xOffset, int yOffset) {
  float rad = radians(degrees);
  xOffset = int(radius * cos(rad));
  yOffset = int(radius * sin(rad));
  circle(width/2 + xOffset, 5 * height/6 + yOffset, dotDiameter);
}
