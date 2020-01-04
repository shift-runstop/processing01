public class Sphere
{
  private int radius;
  private float xPos,yPos,zPos;
  private color r,g,b; 
  private float spin;
  
  public Sphere(int radius,float spin, color r, color g, color b, float xPos, float yPos, float zPos)
  {
    // sphere size
    setRadius(radius);
    
    // stroke colour
    setColorRed(r);
    setColorGreen(g);
    setColorBlue(b);
    
    // spin
    setSpin(spin);
    
    // translate
    setTransX(xPos);
    setTransY(yPos);
    setTransZ(zPos);
  }
  

  // Getzzzerrs
  
  public int getRadius()
  {
    return radius;
  }
  public float getSpin()
  {
    return spin;
  }
  public color getColorRed()
  {
    return r;
  }
  public color getColorBlue()
  {
    return b;
  }
  public color getColorGreen()
  {
    return g;
  }  
  public float getXpos()
  {
    return xPos;
  }
  public float getYpos()
  {
    return yPos;
  }
  public float getZpos()
  {
    return zPos;
  }


  // Setters begin here

  public void setSpin(float spin)
  {
    this.spin = spin;
  }
  
  public void setColorRed(color r)
  {
    this.r = r;
  }
  
  public void setColorGreen(color g)
  {
    this.g = g; 
  }
  
  public void setColorBlue(color b)
  {
    this.b = b;
  }
  
  public void setTransX(float xPos)
  {
    this.xPos = xPos;
  }
  
  public void setTransY(float yPos)
  {
    this.yPos = yPos;
  }
  
  public void setTransZ(float zPos)
  {
    this.zPos = zPos;
  }
  
  // more important setter
  
  // set radius wit if, else statement
  public void setRadius(int radius)
  {
    if ((radius > 101) || (radius <99 )){
    this.radius = 100;
    }
    else {
      this.radius = 100;
    }
  }
  
  // Methods
  
  public void display()
  {
    pushMatrix(); 
    translate(xPos, yPos, zPos);
    rotateY(spin++);
    stroke(r, g, b);
    sphere(radius);

    popMatrix();
  }
} // EOF
