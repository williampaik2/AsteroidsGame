class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    corners = 12;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    xCorners[1] = -6;
    xCorners[2] = -2;
    xCorners[3] = -10;
    xCorners[4] = 6;
    xCorners[5] = 10;
    xCorners[6] = -10;
    xCorners[7] = -6;
    xCorners[8] = -2;
    xCorners[9] = -10;
    xCorners[10] = 6;
    xCorners[11] = 10;
    yCorners[0] = 2;
    yCorners[1] = 6;
    yCorners[2] = 10;
    yCorners[3] = 10;
    yCorners[4] = 12;
    yCorners[5] = 2;
    yCorners[6] = -2;
    yCorners[7] = -6;
    yCorners[8] = -10;
    yCorners[9] = -10;
    yCorners[10] = -12;
    yCorners[11] = -2;
    myColor = color(211, 201, 201);
    myCenterX = (int)(Math.random() * 400);
    myCenterY = (int)(Math.random() * 400);
    myXspeed = (Math.random() * 2 - 1);
    myYspeed = (Math.random() * 2 - 1);
    myPointDirection = (int)(Math.random() * 360);
    rotSpeed = 3;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
