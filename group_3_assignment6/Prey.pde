
class Prey {
  
  PImage preySprite = loadImage("Sprites/Prey.png");
  int preyWidth = 25;
  int x, y;
  boolean alive = true;
  int food = 0;
  
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
  
    void eat(Plant p) {
    
    if (p.alive) {
      
      if (p.x_pos == this.x && p.y_pos == this.y) {
        p.alive = false;
        this.food++;
      }
      
    }

  }
  
  Prey[] reproduce(Prey[] preys) {
    
    if (this.food >= 3) {
   
      preys = (Prey[])append(preys, new Prey(this.x, this.y));
      this.food = 0;
      return preys;
      
    } else {
      return preys;
    }
   
  }
}
