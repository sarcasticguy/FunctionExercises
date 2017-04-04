// Exercise C-1: Write a function that displays your penguin
// or your favicon, or a a simple drawing. Call that function
// from within draw()
int x=300;
int step=5;
int y=660;
int move=450;
int q=200;

void setup()
{
  size(600, 600);
}

void draw()
{
  penguin();
}


void penguin() {
  while (q<600) {
    ellipse(300, q, 100, 100);
    q=q+500;
  }
  // penguin body
  fill(50, 50, 50);
  ellipse(300, 350, 100, 200);
  fill(255, 255, 255);
  ellipse(300, 350, 50, 100);

  // arms
  fill(50, 50, 50);
  stroke(255, 255, 255);
  ellipse(255-50, x, 100, 25);
  ellipse(345+50, x, 100, 25);
  x=x+step;
  if (x > 325)
  {
    step=-5;
  }
  if (x < 275)
  {
    step=5;
  }
  // head
  ellipse(300, 250, 75, 75);
  ellipse(285, 245, 20, 20);
  ellipse(315, 245, 20, 20);
  fill(random(255), random(255), random(255));
  ellipse(285, 245, 10, 10);
  ellipse(315, 245, 10, 10);
  fill(50, 50, 50);
  triangle(290, 255, 310, 255, 300, 280);

  // feet
  ellipse(330, 450, 50, 20);
  ellipse(270, 450, 50, 20);

  // eggs
  fill(255);
  stroke(0);
  ellipse(300, move, 15, 30);
  move=move+5;
  if (move>=600) {
    move=450;
  }
}
