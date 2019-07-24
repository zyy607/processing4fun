class Tree extends Shape
{
  
  
  Tree(float x, float y ,float r,color c)
  {
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;
    
    fRotate = random(-PI/10,PI/10);
    
    bGrow = true;
   
  }
    
    public void drawMe()
    {
        fill(141,91,5);
        rect(x - 10, y + 350, 20, 100); 
        fill(c);
        triangle(x, y, x - 100, y + 200, x + 100, y + 200);
        triangle(x, y+100, x - 130, y + 300, x + 130, y + 300);
        triangle(x, y+200, x - 160, y + 400, x + 160, y + 400);
    }
}
