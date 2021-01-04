class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    corners = 7;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random() * 16);
    xCorners[1] = (int)(Math.random() * 16);
    xCorners[2] = (int)(Math.random() * 16);
    xCorners[3] = (int)(Math.random() * 16);
    xCorners[4] = (int)(Math.random() * 16);
    xCorners[5] = (int)(Math.random() * 16 - 27);
    xCorners[6] = (int)(Math.random() * 16 - 33);
    yCorners[0] = (int)(Math.random() * 16 - 27);
    yCorners[1] = (int)(Math.random() * 16 - 23);
    yCorners[2] = (int)(Math.random() * 16 + 17);
    yCorners[3] = (int)(Math.random() * 16 + 17);
    yCorners[4] = (int)(Math.random() * 16 + 19);
    yCorners[5] = (int)(Math.random() * 16 - 27);
    yCorners[6] = (int)(Math.random() * 16 - 25);
    myColor = (int)(Math.random() * 250);
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
