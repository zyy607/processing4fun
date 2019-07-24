class Star5 extends Shape
{
    
  Star5(float x, float y ,float r,color c)
  {
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;
    
    bGrow = true;
    
    fRotate = random(-20,20);
  }
  
  // Only looks star-like if skipPoints is relatively prime with nbrPoints
  void drawStar(int nbrPoints, float cx, float cy, float odiam, int skipPoints )
  {
    float orad = odiam / 2.0;
  
    fill(c);
  
    pushMatrix();
    translate(cx, cy);
    rotate(radians(-90 + fRotate)); // radians(-90)Point upwards  
  
    float  a = TWO_PI / nbrPoints;
  
    beginShape();
    int  n = 0;
    for (int i = 0; i < nbrPoints; ++i) {
      vertex( cos( a * n) * orad, sin( a * n) * orad);
      n += skipPoints;
    }
    endShape(CLOSE);
    popMatrix();
  }
  
  void draw()
  {
    drawStar(5,x,y,r*2,2);
  }  
  
}
