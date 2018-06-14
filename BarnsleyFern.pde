import processing.pdf.*;

float x, y;

void setup()
{
  background(0);
  //size(2479, 3508, PDF, "Line.pdf");
  size(2000, 3000);
  stroke(255, 50);
  strokeWeight(0.5);
  x = 0;
  y = 0;
}
void draw()
{
  //background(0);
  for (int i=0; i<20000; i++)
  {
    drawPoint();
    nextPoint();
  }
  //exit();
}
void nextPoint()
{
  float nextX;
  float nextY;
  float r = random(1.00);

  if (r < 0.00)
  {
    nextX = 0;
    nextY = 0.16*y;
  } else if (r < 0.85)
  {
    nextX =  0.85*x + 0.04*y;
    nextY = -0.04*x + 0.85*y + 1.6;
  } else if (r < 0.93)
  {
    nextX =  0.20*x + -0.26*y;
    nextY = 0.23*x + 0.22*y + 1.0;
  } else
  {
    nextX =  -0.15*x + 0.28*y;
    nextY = 0.26*x + 0.24*y + 0.44;
  }

  x = nextX;
  y = nextY;
}
void drawPoint()
{
  float px = map(x, -3, 3, 0, width);
  float py = map(y, 0, 10, height, 0);
  point(px, py);
}
void mousePressed()
{
  saveFrame("test.png");
}
