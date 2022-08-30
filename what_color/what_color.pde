int redDis = 0;
int greenDis = 0;
int blueDis = 0;
int yellowDis = 0;
int dis = 30;
int ranColor = 0;
int ranFill = 0;
int klik;
int score = 0;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {

  fill(255);
  textSize(20);
  text(score, 10, 25);

  if (mouseX<width/2 && mouseY<height/2) {
    redDis = dis;
  } else {
    redDis = 0;
  }

  fill(255 - redDis, 0, 0);
  rect(0, 33, width/2, height/2);

  if (mouseX>width/2 && mouseY<height/2) {
    greenDis = dis;
  } else {
    greenDis = 0;
  }

  fill(0, 255 - greenDis, 0);
  rect(width/2, 33, width/2, height/2);

  if (mouseX<width/2 && mouseY>height/2) {
    blueDis = dis;
  } else {
    blueDis = 0;
  }

  fill(0, 0, 255 - blueDis);
  rect(0, height/2, width/2, height/2);

  if (mouseX>width/2 && mouseY>height/2) {
    yellowDis = dis;
  } else {
    yellowDis = 0;
  }

  fill(255 - yellowDis, 255 - yellowDis, 0);
  rect(width/2, height/2, width/2, height/2);
}


void mousePressed() {

  //TODO: faven bliver valgt men ikke vist før man har klikket
  
  fill(0);
  rect(0, 0, width, height/15);
  
  ranColor = int(random(3));
  ranFill = int(random(3));

  while (ranColor == ranFill) {
    ranColor = int(random(3));
  }

  println(ranColor);

  switch(ranFill) {
  case 0:
    fill(255, 0, 0);
    break;
  case 1:
    fill(0, 255, 0);
    break;
  case 2:
    fill(0, 0, 255);
    break;
  case 3:
    fill(255, 255, 0);
    break;
  }

  textSize(25);
  switch(ranColor) {
  case 0:
    text("Red", width/2 - 20, 25);
    break;
  case 1:
    text("Green", width/2 - 25, 25);
    break;
  case 2:
    text("Blue", width/2 - 20, 25);
    break;
  case 3:
    text("Yellow", width/2 - 25, 25);
    break;
  }

  if (mouseX<width/2 && mouseY<height/2) {
    klik = 0;
  }

  if (mouseX>width/2 && mouseY<height/2) {
    klik = 1;
  }

  if (mouseX<width/2 && mouseY>height/2) {
    klik = 2;
  }

  if (mouseX>width/2 && mouseY>height/2) {
    klik = 3;
  }
  println(klik);

  if (ranColor == klik) {
    score++;
  } else if (ranColor != klik) {
    textSize(25);
    fill(255);
    text("game over", width-150, 25);
  }
}
