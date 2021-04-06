
class Prey {
  
  PImage preySprite = loadImage("Sprites/Prey.png");
  int preyWidth = 25;
  int x, y;
  boolean alive = true;
  
  Prey(int _x, int _y) {
    x = _x;
    y = _y;
  }
  
  void display() {
    
    if (this.alive) {
      image(preySprite, x, y);
    }
  }
  
  void move() {
    int direction = int(random(4));
    
    if (direction == 0) {
      x += preyWidth;
    }
    
    if (direction == 1) {
      y += preyWidth;
    }
    
    if (direction == 2) {
      x -= preyWidth;
    }
    
    if (direction == 3) {
      y -= preyWidth;
    }
  }
}
