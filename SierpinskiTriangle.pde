public void setup()
{
  size(900, 900);
}
public void draw()
{
  background(0);
  sierpinski(15, 15, 870);
}
public void mousePressed()
{
 
}
public void sierpinski(int x, int y, int len)
{
  if (len <= 9)
  {
    fill(255);
    rect(x, y, len, len);
  }
  else
  {
    sierpinski(x, y, len/3);
    sierpinski(x, y+len/3, len/3); 
    sierpinski(x, y+(2*len)/3, len/3); 
    sierpinski(x+len/3, y, len/3); 
    sierpinski(x+len/3, y+(2*len)/3, len/3); 
    sierpinski(x+(2*len)/3, y, len/3); 
    sierpinski(x+(2*len)/3, y+len/3, len/3); 
    sierpinski(x+(2*len)/3, y+(2*len)/3, len/3);
  }
}
