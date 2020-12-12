Spaceship hunter = new Spaceship();
Star[] galaxy = new Star[100];
ArrayList <Asteroid> bob = new ArrayList();
public void setup() 
{
  size(400, 400);
  for (int i = 0; i < galaxy.length; i++){
    galaxy[i] = new Star();
  }
  for (int i = 0; i < 5; i++){
    bob.add(new Asteroid());
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
  for (int i = 0; i < bob.size(); i++){
    bob.get(i).show();
    bob.get(i).move();
    float d = dist((float)hunter.getX(), (float)hunter.getY(), (float)bob.get(i).getX(), (float)bob.get(i).getY());
    if (d < 15)
      bob.remove(i);
  }
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
