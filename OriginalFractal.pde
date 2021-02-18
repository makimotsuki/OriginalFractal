public void setup()
{
  size(500,500);
  rectMode(CENTER);
  stroke(255);
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),180);

}
public void draw()
{
  background(0);
  myFractal(125,140,200);
  myFractal(375,350,200);
  anotherFractal(375,140,200);
  anotherFractal(125,350,200);
}
public void myFractal(int x, int y, int siz)
{
  ellipse(x,y,siz,siz);
  if(siz > 10)
  {
    myFractal(x-siz/4,y-siz/4,siz/2);
    myFractal(x+siz/4,y+siz/4,siz/2);
  }
}
public void anotherFractal(int x, int y, int siz)
{
  rect(x,y,siz,siz);
  if(siz > 10)
  {
    anotherFractal(x-siz/4,y-siz/4,siz/2);
    anotherFractal(x+siz/4,y+siz/4,siz/2);
  }
}
