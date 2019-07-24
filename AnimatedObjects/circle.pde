class Circle extends Shape
{
  
  Circle(float x, float y ,float r,color c)
  {
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;
    
    bGrow = true;
  }
  void draw()
  {
    noStroke();
    
    //strokeWeight(0);
    
    fill(c);
    
    ellipse(x,y,r,r);
  }   //<>//
  
}
