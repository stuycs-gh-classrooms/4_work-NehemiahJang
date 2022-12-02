class Land {
  int state;
  int nextstate;
  int plotLength;
  int x;
  int y;

  Land(int cornerx, int cornery, int plotSize, int type) {
    x = cornerx;
    y = cornery;
    plotLength = plotSize;
    state = type;
  }
  void display() {
    if (state == DIRT) {
      fill(DIRT_COLOR);
    }
    if (state == FIRE) {
      fill(FIRE_COLOR);
    }
    if (state == BURNT) {
      fill(BURNT_COLOR);
    }
    if (state == GRASS) {
      fill(GRASS_COLOR);
    }
    square(x, y, plotLength);
  }


  void updateNextState(int prevstate) {
    if ((prevstate == FIRE) && (state == GRASS)) {
      nextstate = FIRE;
    } else if ((prevstate == BURNT) && (state == FIRE)) {
      nextstate = BURNT;
    } else {
      nextstate = state;
    }
  }
  void changeState() {
    state = nextstate;
  }
}
