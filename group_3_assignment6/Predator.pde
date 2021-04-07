
class Predator {
  
  PImage predSprite = loadImage("Sprites/Predator.png");
  int predWidth = 25;
  int x, y;
  int eaten = 0;
  
  Predator(int x_pos, int y_pos){
    x = x_pos;
    y = y_pos;
  }
  
  void display(){
    image(predSprite, x, y);
  }
  
  void move(){
    int direction = int(random(4));
    
    if(direction == 0){
      x -= predWidth;
      y -= predWidth;
    }
    
    if(direction == 1){
      x -= predWidth;
      y += predWidth;
    }
    
    if(direction == 2){
      x += predWidth;
      y -= predWidth;
    }
    
    if(direction == 3){
      x += predWidth;
      y += predWidth;
    }
  }
  
  void eat(Prey p){
    
    if(p.alive){
      if(p.x == this.x && p.y == this.y){
        p.alive = false;
        this.eaten++;
      }
    }
  }
  
  Predator[] reproduce(Predator[] predators){
    
    if(this.eaten >= 2){
    
      predators = (Predator[])append(predators, new Predator(this.x, this.y));
      this.eaten = 0;
      return predators;
      
    }else{
      return predators;
    }
  }
}
  
    
    

    
    
