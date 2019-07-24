class Heart extends Shape
{
  
  ArrayList<PVector> heart = new ArrayList<PVector>();
  
  void initHeart()
{
/*
  float yStart = 1.3;
  
  float yEnd = -1.0;
  
  float yStep = -0.06;

  float xStart = -1.2;
  
  float xEnd = 1.2;
  
  float xStep = 0.05;
  
  int i = (int)((yEnd - yStart) / yStep / 2 *(-1));
  
  int jStart = (int)((xEnd - xStart) / xStep / 2 *(-1));
  
  int j = jStart;
  
    for (float y = yStart; y > yEnd; y += yStep)
    {
      for (float x = xStart; x < xEnd; x += xStep)
      {
        float a = x * x + y * y - 1;
        float d = a * a * a - x * x * y * y * y;
        
        if ( d <= 0.0000f )
        {
          heart.add(new PVector(j, i));
        }
        else
        {
        }
        j++;
      }
      i++;
      j = jStart;
    }
*/

  float a = 0.0;
  
  heart.clear();
  
  while (a <= TWO_PI) 
  {
    float i =  r * pow(sin(a), 3);
    float j = -r * (13 * cos(a) - 5 * cos(2 * a) - 2 * cos(3 * a) - cos(4 * a))/16;
  
    heart.add(new PVector(i, j));
    
    a += 0.1;
  }
}
  
  Heart(float x, float y ,float r,color c)
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
    initHeart();
    
    noStroke();
    
    fill(c);
    
    pushMatrix();
    
    translate(x, y);
    
    rotate(fRotate);
    
    beginShape();
    
    for (PVector v : heart) 
    {
      vertex(v.x, v.y);
    }
    
    endShape();
    
    popMatrix();
    
  }
}
