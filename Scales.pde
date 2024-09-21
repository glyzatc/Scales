void setup ()
{
  size (1500, 1500);
}

void draw ()
{
  background (#6F899B);
 
  //nested loop
  for (int y = 150; y < 1500; y += 300)
    for (int x = 75; x < 1500; x += 150)
    {
      diamonds (x, y);
    }
}

void diamonds (int x, int y)
{
  noStroke();
  //top triangle (top half)
  triangle (x - 75, y, x, y - 150, x + 75, y);
  //bottom triangle (bottom half)
  triangle (x + 75, y, x, y + 150, x - 75, y);

  if ((int) (Math.random ()*2) ==1) 
  {
    fill (#DCE9F5);
  } else {
    fill (#EFF2DC);
  }
}

