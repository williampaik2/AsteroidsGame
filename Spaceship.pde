class Spaceship extends Floater  
{   
  public Spaceship(){
     corners = 4;
     xCorners = new int[] {-8, 16, -8, 2};
     yCorners = new int[] {8, 0, -8, 0};
     myColor = color(255, 252, 252);
     myCenterX = myCenterY = 200;
     myXspeed = myYspeed = 1;
     myPointDirection = (int)(Math.random() * 360);
  }
}
