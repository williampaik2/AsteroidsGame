class Spaceship extends Floater  
{   
  public Spaceship(){
     corners = 4;
     xCorners = new int[] {-8, 16, -8, 2};
     yCorners = new int[] {8, 0, -8, 0};
     myColor = color(99, 164, 252);
     myCenterX = myCenterY = 200;
     myXspeed = myYspeed = 1;
     myPointDirection = (int)(Math.random() * 360);
  }
  public void setMyXSpeed(double myXSpeedNew){
    myXspeed = myXSpeedNew;
  }
  public void setMyYSpeed(double myYSpeedNew){
    myYspeed = myYSpeedNew;
  }
  public void setMyCenterX(double myCenterXNew){
    myCenterX = myCenterXNew;
  }
  public void setMyCenterY(double myCenterYNew){
    myCenterY = myCenterYNew;
  }
  public void setMyPointDirection(double myPointDirectionNew){
    myPointDirection = myPointDirectionNew;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public void hyperspace(){
    setMyXSpeed(0.0);
    setMyYSpeed(0.0);
    setMyCenterX((int)(Math.random() * 400));
    setMyCenterY((int)(Math.random() * 400));
    setMyPointDirection((int)(Math.random() * 360));
  }
}
