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
        rotate(fRotate);
        noStroke();
        fill(c);
        rect( - 0.05*r, 0.75*r, 0.1*r, 0.5*r); 
        fill(c);
        triangle(0, -1*r, - 0.5 * r, 0, 0.5*r, 0);
        triangle(0, - 0.5*r, - 0.65 * r, 0.5 * r, 0.65 * r, 0.5 * r);
        triangle(0, 0, - 0.8 * r, r, 0.8 * r,r);
        
        popMatrix();
    }
}
