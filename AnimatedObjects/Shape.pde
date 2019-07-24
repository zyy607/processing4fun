class Shape
{
  float x;
  float y;
  float r;
  
  color c;
  
  boolean bGrow;
  
  float fRotate;
  
  void draw()
  {
  };
  
  boolean bEdge()
  {
    if( x - r < 0 || x + r > width || y-r < 0 || y + r > height )
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  void grow()
  {
    if( bGrow )
    {
      r += 0.5;
    }
      
    if( bEdge() )
    {  
      bGrow = false;
    }
  }
}
