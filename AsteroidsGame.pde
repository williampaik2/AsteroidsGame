ArrayList <Bullet> fire = new ArrayList();
Spaceship hunter = new Spaceship();
Star[] galaxy = new Star[30];
ArrayList <Asteroid> comet = new ArrayList();
public void setup() 
{
  size(400, 400);
  for (int i = 0; i < galaxy.length; i++){
    galaxy[i] = new Star();
  }
  for (int i = 0; i < 5; i++){
    comet.add(new Asteroid());
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
  for (int i = 0; i < comet.size() - 1; i++){
    comet.get(i).show();
    comet.get(i).move();
    float d = dist((float)hunter.getX(), (float)hunter.getY(), (float)comet.get(i).getX(), (float)comet.get(i).getY());
    if (d < 18){
      comet.remove(i);
    }
  }
  for (int i = 0; i < fire.size(); i++){
    fire.get(i).move();
    fire.get(i).show();
    for (int a = 0; a < comet.size(); a++){
      float d = dist((float)fire.get(i).getX(), (float)fire.get(i).getY(), (float)comet.get(a).getX(), (float)comet.get(a).getY());
      if (d < 30){
        comet.remove(a);
        fire.remove(i);
        
        break;
      } 
      if (comet.size() == 1){
        exit();
      }  
    }
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
    } else if (key == ' '){
      fire.add(new Bullet(hunter));
    }
}
