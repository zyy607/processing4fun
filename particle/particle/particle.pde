class Particle 
{
  
  Particle(float x, float y ,float mag,float angle,color c)
  {
    this.x = x;
    this.y = y;
    this.mag = mag;
    this.angle = angle;
//  this.r = r;
    this.c = c;
  }
  
  float x;
  float y;
  float mag;
  float angle;
  
  float r;
  
  
  color c;
}

ArrayList<Particle> particles;

void setup()
{
  //size(1280, 800);
  fullScreen();
  noStroke();
  
  particles = new ArrayList<Particle>();

  for(int i = 0;i < 500; i = i+1) 
  {
    float x = random(0,width);
    float y = random(0,height); 
    float v_mag = random(1.0,2.0);
    float v_angle = random(-2*PI,2*PI);
    color c = color(random(100,255),random(100,255),random(100,255));
    Particle particle = new Particle(x,y,v_mag,v_angle,c);
    particles.add(particle); 
  }
}

void draw()
{
  fill(0, 10);
  rect(0, 0, width, height);
  //fill(255);
  for (Particle particle : particles)
  {
    float noiseValue = noise(0.001*particle.x,10+0.001*particle.y,frameCount*0.005);
    particle.angle = map(noiseValue,0,1,-2*PI,PI*2);
    float vx = particle.mag*cos(particle.angle); 
    float vy = particle.mag*sin(particle.angle); 
    particle.x = particle.x + vx; 
    particle.y = particle.y + vy; 
    if (particle.x<0 || particle.x>width || particle.y<0 || particle.y>height) 
    {  
      particle.x = random(0,width);  
      particle.y = random(0,height);
      float r = map(sin(frameCount/75.0),-1,1,50,255); 
      float g = map(sin(frameCount/101.0),-1,1,75,255); 
      float b = map(sin(frameCount/151.0),-1,1,100,255); 
      particle.c = color(r,g,b);
    }
    fill(particle.c);    
    ellipse(particle.x, particle.y,2,2);
  }
}
