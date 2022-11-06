size(500, 500);
background(245, 230, 255);
noStroke();
fill(230, 200, 255);
for (int i = 0; i<3; i++) {
  rect(0, i*200, 500, 100);
}
for (int i = 0; i<3; i++) {
  rect(i*200, 0, 100, 500);
}
fill(230, 170, 230);
for (int i = 0; i<3; i++) {
  for (int j = 0; j <3; j++) {
    fill(230, 170, 230);
    rect(i*200, j*200, 100, 100);
  }
}
ellipse(250, 250, 150, 150);
textAlign(CENTER);
fill(255);
text("team", 250, 256);
