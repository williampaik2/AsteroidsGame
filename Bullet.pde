class Bullet extends Floater{
  public Bullet(Spaceship hunter){
    myCenterX = hunter.getX();
    myCenterY = hunter.getY();
    myXspeed = hunter.getXspeed();
    myYspeed = hunter.getYspeed();
    myPointDirection = hunter.getPointDirection();
    accelerate(6.0);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public void show(){
    noStroke();
    fill(color(234, 9, 9));
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
}
