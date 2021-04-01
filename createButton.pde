// create Button:

class button 
{
  int xLeftTop;
  int yLeftTop;
  String label;
  
  button(int x, int y, String n) 
  {
    xLeftTop = x;
    yLeftTop = y;
    label = n;
    fill(255, 255, 255);
    rect(x, y, xB, yB);
    fill(0);
    text(label, x + 5, y + 10); 
  }
  
  void moveOver(int x, int y)
  {
    if ((x > xLeftTop) && (x < (xLeftTop  + xB)) && 
        (y > yLeftTop) && (y < (yLeftTop + yB)))
    {
        fill (255, 0, 0);
    }
    else
    {
        fill (255, 255, 255);
    }
    rect(xLeftTop, yLeftTop, xB, yB);
    fill(0);
    text(label, xLeftTop + 5, yLeftTop + 10); 

  }

  boolean click(int x, int y)
  {
    boolean ret = false; 
    if ((x > xLeftTop) && (x < (xLeftTop  + xB)) && (y > yLeftTop) && (y < (yLeftTop + yB)))
    {
        ret = true;
    }
    return ret;
  }
 
};
