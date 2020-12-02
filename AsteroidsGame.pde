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
  if (key == 'a') {
    hunter.turn(-5);
  } else if (key == 'd') {
    hunter.turn(5);
  } else if (key == 'w') {
    hunter.accelerate(0.5);
  } else if (key == 'h'){
    hunter.hyperspace();
  }
}
