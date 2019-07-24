//
ArrayList<Shape> shapes;  



void setup()
{
  fullScreen();
  
  background(10);
  
  ellipseMode(RADIUS);
  
  shapes = new ArrayList<Shape>(); //<>//
}

boolean bCollide(float x, float y, float r)
{
  if( x - r < 0 || x + r > width || y - r < 0 || y + r > height )
  {
    return true;
  }
  for(Shape i : shapes)
  {
    float distance =  dist(i.x,i.y,x,y);
    
    if(distance == 0)
    {
      continue;
    }
    
    float R = i.r;
    
    if (distance < (r + R))
    {
      return true; //<>//
    }
  }
  
  return false;
}

Shape generateOneCircle()
{
  float x = 0 ; 
  
  float y = 0 ; 
  
  float R = 10;
  
  int iTryTimes = 0;
  
  boolean bCollid = true;

  while(bCollid)
  {
      iTryTimes++;
      
      if(iTryTimes > 100)
      {
        return null;
      }
      
      x = random(0,width);
      
      y = random(0,height);
      
      bCollid = bCollide(x,y,R);     
  };

  float g = random(0,255);
  
  float b = random(0,255);
  
  int iRandom = (int)random(0,3);
  
  if(iRandom == 1)
  {
    return new Heart(x,y,R,color(255,g,b));
  }
  else if(iRandom == 0)
  {
    return new Circle(x,y,R,color(255,g,b));
  }
  else if(iRandom == 2)
  {
    return new Star5(x,y,R,color(255,255,b));
  }
  else
  {
    return new Heart(x,y,R,color(255,g,b));
  }
}

void draw()
{ 
  background(0);
  
  Shape s = generateOneCircle();
  
  if(s == null)
  {
      noLoop();
      println("FINISHED");
  }
  else
  {
    shapes.add(s);
  }
  for(Shape i : shapes)
  {
    if(!bCollide(i.x,i.y,i.r))
    {
      i.grow();
      
      i.draw();
    }
    else
    {
      i.draw();
    }
  }

}

/*
void setup() {
  size(640, 360);
  noStroke();
}

void draw() {
  background(0);
  // Scale the mouseX value from 0 to 640 to a range between 0 and 175
  float c = map(mouseX, 0, width, 0, 175);
  // Scale the mouseX value from 0 to 640 to a range between 40 and 300
  float d = map(mouseX, 0, width, 40, 300);
  fill(255, c, 0);
  ellipse(width/2, height/2, d, d);   
}
*/
