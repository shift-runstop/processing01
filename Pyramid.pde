public class Pyramid
{
  private float vertexPosX;
  private float vertexPosY;
  private float vertexPosZ;

  // Constructor
  public Pyramid(float vertexPosX, float vertexPosY, float vertexPosZ)
  {
    setVertexX(vertexPosX);
    setVertexY(vertexPosY);
    setVertexZ(vertexPosZ);
  }
  
// GETTER METHODS

  public float getVertexPosX()
  {
    return vertexPosX;
  }
  public float getVertexPosY()
  {
    return vertexPosY;
  }
  public float getVertexPosZ()
  {
    return vertexPosZ;
  }
  
  // SETTERS
    
  public void setVertexX(float vertexPosX)
  {
    this.vertexPosX  = vertexPosX;
  }
  public void setVertexY(float vertexPosY)
  {
    this.vertexPosY  = vertexPosY;
  }
    public void setVertexZ(float vertexPosZ)
  {
    this.vertexPosZ  = vertexPosZ;
  }

  // METHODS
  public void move()
  {
    translate(random(300,350), random(300,350), random(0,200));
  }
  
  public void display()
  {
    rotateX(PI/2);
    rotateZ(-PI/6);
    stroke(255, 0, 150);
    noFill();
    
    beginShape();
    vertex(-vertexPosX, -vertexPosY, -vertexPosZ);
    vertex(vertexPosX, -vertexPosY, -vertexPosZ);
    vertex(0, 0, vertexPosZ);
    
    vertex(vertexPosX, -vertexPosY, -vertexPosZ);
    vertex(vertexPosX, vertexPosY, -vertexPosZ);
    vertex(0, 0, vertexPosZ);
    
    vertex(vertexPosX, vertexPosY, -vertexPosZ);
    vertex(-vertexPosX, vertexPosY, -vertexPosZ);
    vertex(0, 0, vertexPosZ);
    
    vertex(-vertexPosX, vertexPosY, -vertexPosZ);
    vertex(-vertexPosX, -vertexPosY, -vertexPosZ);
    vertex(0, 0, vertexPosZ);
    endShape();
  }
} //EOF
