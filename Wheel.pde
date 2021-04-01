// Wheel:

float angle = 0;

int wheelMode = 1;

void drawWheel()
{
  int xp, yp; 
  fill(255);
  ellipse(xW, yW, 100, 100);
  fill(0); 
  xp = xW + int(40 * sin(angle));
  yp = yW - int(40 * cos(angle));
  ellipse(xp, yp, 10, 10);
}

boolean clickWheel(int x, int y)
{
    boolean ret = false; 
    
    if ((x > (xW - 100)) && (x < (xW  + 100)) && (y > (yW - 100) && (y < (yW + 100))))
    {
        ret = true;
    }
    return ret;
}
 
