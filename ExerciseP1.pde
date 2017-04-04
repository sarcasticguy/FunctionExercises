//
// DO THIS ON PAPER FIRST, THEN PASTE THE CODE INTO PROCESSING AND
// CHECK YOUR ANSWERS.
//

// Exercise P-1: Below we take a classic 'bouncing ball' and combine it with 
// a drawCar() function. Fill in the blanks so that you now have a bouncing
// car with parameter passing! Note that the global variables are named 
// globalX and globalY to avoid confusion with the local variables x and y in 
// drawCar().

int globalX = 0;
int globalY = 100;
int speed = 1;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  move();
  bounce();
  drawCar(_______, _______, 24, color(100));
}

void move() {
  // Change the x location by speed
  ________ = _______ + speed;
}

void bounce() {
  if ((globalX > width) || (globalX < 0)) {
    speed = speed * -1;
  }
}

void drawCar(int ___, int ___, int thesize, color c) {
  int offset = thesize / 4;
  rectMode(CENTER);
  stroke(0);
  fill(c);
  rect(x, y, thesize, thesize/2);
  fill(200);
  rect(x - offset, y - offset, offset, offset/2);
  rect(x + offset, y - offset, offset, offset/2);
  rect(x - offset, y + offset, offset, offset/2);
  rect(x + offset, y + offset, offset, offset/2);
}
