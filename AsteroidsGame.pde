Spaceship hunter = new Spaceship();
Star[] galaxy = new Star[100];
public void setup() 
{
  size(400, 400);
  for (int i = 0; i < galaxy.length; i++){
    galaxy[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < galaxy.length; i++){
    galaxy[i].show();
  }
  hunter.show();
  hunter.move();
}

public void keyPressed()
{
  if (key == CODED) {
    if (keyCode == LEFT) {
      hunter.turn(-5);
    } else if (keyCode == RIGHT) {
      hunter.turn(5);
    } else if (keyCode == UP) {
      hunter.accelerate(0.5);
    } else if (keyCode == DOWN){
      hunter.myXspeed = hunter.myYspeed = 0;
      hunter.myCenterX = (int)(Math.random() * 400);
      hunter.myCenterY = (int)(Math.random() * 400);
    }
  }
}
