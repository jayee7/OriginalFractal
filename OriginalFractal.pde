public void setup()
{
  size(500,500);
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(250,250,480);
}
public void myFractal(int x, int y, int siz)
{
  ellipse(x,y,siz,siz);
  fill(#FF00AA);
  ellipse(y,x,siz,siz);
  rect(x,y,siz/2,siz/2);
   rect(y,x,siz/2,siz/2);
  if(siz>10)
  {
    myFractal(x-siz/2,y,siz/2);
    myFractal(x+siz/2,y,siz/2);
  }
}
