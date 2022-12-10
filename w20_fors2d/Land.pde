class Land{
  int state;
  int nextState;
  int landSize;
  color landColor;
  int x, y;
  
  Land(){
    landSize = 20;
  }
  Land(int px, int py, int plotSize, int type){
    landSize = plotSize;
    state = type;
    x = px;
    y = py;
    nextState = 2;
  }
  void display(){
    if (state == 0){
      fill(DIRT_COLOR);
    }
    if(state == 1){
      fill(FIRE_COLOR);
    }
    if(state == 2){
      fill(BURNT_COLOR);
    }
    if(state == 3){
      fill(GRASS_COLOR);
    }      
    rect(x, y, landSize, landSize);
  }
  void updateNextState(int prevState){
    if(prevState == 1 && state == 3){
      nextState = 1;
    }
    else if(state == 1){
      nextState = 2;
    }
    else{
      nextState = state;
    }
  }
  void changeState(){
    state = nextState;
  }
}
