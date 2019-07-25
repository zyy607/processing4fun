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
    
    void draw()
    {
        pushMatrix();
        
        translate(x,y);
        noStroke();
        fill(c);
        rect( - 0.1*r, 1.5*r, 0.2*r, r); 
        fill(c);
        triangle(0, -2*r, - 1 * r, 0, r, 0);
        triangle(0, -r, - 1.3 * r, r, 1.3 * r, r);
        triangle(0, 0, - 1.6 * r, 2*r, 1.6 * r,2*r);
        
        popMatrix();
    }
}
