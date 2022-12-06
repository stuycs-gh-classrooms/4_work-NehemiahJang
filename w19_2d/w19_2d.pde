//State variable constants
int DIRT = 0;
int FIRE = 1;
int BURNT = 2;
int GRASS = 3;

//Helpful color values
color DIRT_COLOR = #8c452b;
color FIRE_COLOR = #e8671c;
color BURNT_COLOR = #827f2f;
color GRASS_COLOR = #00994a;

//Driver variables
boolean burning = false;
int grassDensity = 75;
int tractLength = 20;
Land tract[][];

void setup() {
  size(700, 350);
  noStroke();
  frameRate(5);
  tract = new Land[tractLength][];
  for(int i = 0; i < tract.length; i++){
    tract[i] = new Land[tractLength];
    setupLand(tract[i], tractLength, grassDensity, i);
    showLand(tract[i]);
  }
}//setup

void draw() {
  for(int i = 0; i < tract.length; i++){
    showLand(tract[i]);
    if (burning) {
      liveFire(tract[i]);
    }//burning
  }//draw
}

void setupLand(Land[] row, int numPlots, float density, int r) {
  //figure out size of each plot of land
  int plotSize = width / numPlots;

  //instantiate each Land object
  for (int i=0; i<row.length; i++) {
    int type = DIRT;

    //first Land object should be FIRE
    if (i == 0) {
      type = FIRE;
    }//start with fire

    //Chance for grass is based on density
    else if (random(100) < density) {
      type = GRASS;
    }//grass land

    //creates a new land at (x, y) with size plotSize and type
    row[i] = new Land(i*plotSize,r*plotSize, plotSize, type);
  }//setup loop
}//setupLand

void showLand(Land[] row) {
  for (int i=0; i<row.length; i++) {
    row[i].display();
  }
}//showLand

void liveFire(Land[] row) {
  //First, check Land objects to the left, apply state change rules.
  //Assume nothing useful to the left of row[0]
  row[0].updateNextState(0);
  for (int i=1; i<row.length; i++) {
    row[i].updateNextState(row[i-1].state);
  }//set nextStates for all plots

  //Based on potential state changes from updateNextState
  for (int i=0; i<row.length; i++) {
    row[i].changeState();
  }//change states
}//liveFire

void keyPressed() {
  if (key == ' ') {
    burning = !burning;
  }//start burning
  else if (key == 'r') {
    for(int i = 0; i < tract.length; i++){
      burning = false;
      setupLand(tract[i], tractLength, grassDensity, i);
    }
  }
}
