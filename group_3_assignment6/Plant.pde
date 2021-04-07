class Plant {
  int x_pos, y_pos;
  boolean alive = true;
  boolean left = true;
  
  int UNIT = 25;
  
  int time ;
  int TimerValue = 6000;
  PImage plant = loadImage("Sprites/Plant.png");
  
  Plant(int x, int y, int time) {
   
    this.x_pos = x;
    this.y_pos = y;
    this.time = time;
 
  }
  
  
  
  void display() {
    if (this.alive) {
   
    image(this.plant, this.x_pos, this.y_pos);    
    
    }
  }
  
  void kill(boolean[][] matrix) {
    this.alive = false;
    matrix[x_pos][y_pos] = false;
  }
  
  
  Plant[] reproduce(Plant[] plants) {
    if (alive && (millis() - this.time >= this.TimerValue)) {
      this.time = millis();

    
    int new_y = int(random(width/UNIT)) * UNIT;
    int new_x = int(random(height/UNIT)) * UNIT;
    
      if (left) {
      plants = (Plant[])append(plants, new Plant(this.x_pos, new_y,this.time));
      left = false;}
      else if (!left) {
      plants = (Plant[])append(plants, new Plant(new_x, this.y_pos,this.time));
      left = true;}
         
           
        return plants;
      }
   
      else {

      return plants;
      }
    
    }
    

  
}
