class Plant {
  int x_pos, y_pos;
  boolean alive = true;
  
  int Timer = 0;
  int TimerValue = 3000;
  PImage plant = loadImage("Sprites/Plant.png");
  
  Plant(int x, int y) {
   
    this.x_pos = x;
    this.y_pos = y;
 
  }
  
  
  
  void display(boolean[][] matrix) {
    if (this.alive) {
   
    image(this.plant, x_pos, y_pos);    
    
    matrix[x_pos][y_pos] = true;
    }
  }
  
  void kill(boolean[][] matrix) {
    this.alive = false;
    matrix[x_pos][y_pos] = false;
  }
  
  
  Plant[] reproduce(Plant[] plants, boolean[][] matrix) {
    
    int new_y = this.y_pos + 50;
    int new_x = this.x_pos + 50;
    
  //  if (Timer >= TimerValue) {    
      if((new_y < 500) && !(matrix[this.x_pos][new_y])) {
      
        plants = (Plant[])append(plants, new Plant(this.x_pos, new_y));
        matrix[this.x_pos][new_y] = true;
        Timer = 0;
    
        return plants;
      }
    
    else if ((new_x < 500) && !(matrix[new_x][this.y_pos])) {
        plants = (Plant[])append(plants, new Plant(new_x, this.y_pos));
        matrix[new_x][this.y_pos] = true;
        Timer = 0;
        
    return plants;
      }
    
    else {
    Timer = 0;
    return plants;
      }
    
    }
    
/*    else {
      Timer += 1;
      return plants;
    }*/
//  }
  

  
}
