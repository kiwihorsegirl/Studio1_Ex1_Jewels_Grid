void setup()
{
  size(400, 400);
  background(255);
  ellipseMode(CORNER);
}

void draw() {
   int rowsNum = 5;
   int columnsNum = 5;
  drawGrid(rowsNum, columnsNum);
}

private void drawGrid(int rowsNum, int columnsNum)
{
  final int JEWEL_DIAMETER = 50;

  int xPosRows = 50;
  int yPosRows = 50;
  int xMargin = 50;

  // for the number of columns
  for (int j = 0; j < columnsNum; j++)
  {
    //draw a row
    for (int i = 0; i < rowsNum; i++)
    {
      fill(random(256), random(256), random(256));

      ellipse(xPosRows, yPosRows, JEWEL_DIAMETER, JEWEL_DIAMETER);
      xPosRows +=  JEWEL_DIAMETER;
      
      delay(50);
    }
    xPosRows = xMargin;
    yPosRows += JEWEL_DIAMETER;
  }
}
