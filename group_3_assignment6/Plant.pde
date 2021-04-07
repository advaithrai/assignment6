class Plant {
  int plantSize = 10;
  int x_pos, y_pos;
  boolean alive = true;
  
  int Timer = 0;
  int TimerValue = 3000;
  
  Plant(int x, int y) {
   
    this.x_pos = x;
    this.y_pos = y;
 
  }
  
  
  void seed(boolean[][] matrix) {
    if (alive) {
    PImage plant = loadImage("Sprites/Plant.png");
    image(plant, x_pos, y_pos);    
    
    matrix[x_pos][y_pos] = true;
    }
  }
  
  void kill(boolean[][] matrix) {
    this.alive = false;
    matrix[x_pos][y_pos] = false;
  }
  
  void grow(boolean[][] matrix) {
    int new_x;
    int new_y;
    
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        
        if (matrix[x_pos + i][y_pos + j] == false && !(i == 0 && j == 0 )) {
          new_x = x_pos + i;
          new_y = y_pos + j;
          
          Plant plant = new Plant(new_x, new_y);
          plant.seed(matrix);
        }
      }
    }
  
  }
  
  Plant[] reproduce(Plant[] plants, boolean[][] matrix) {
    
    int new_y = this.y_pos + 50;
    
    if (Timer >= TimerValue) {    
      if((new_y < 500) && !(matrix[this.x_pos][new_y])) {
      
        plants = (Plant[])append(plants, new Plant(this.x_pos, new_y));
        matrix[this.x_pos][new_y] = true;
        Timer = 0;
    
    return plants;}
    
    else {
    Timer = 0;
    return plants;}
    
    }
    
    else {
      Timer += 1;
      return plants;
    }
  }
  
  void growPlants(boolean[][]cellMatrix) {
  for (int row = 0; row < cellCount; row++) {
  for (int col = 0; col < cellCount; col++) {
      if (cellMatrix[row][col] == true) {
          
          int x_pos = row ;
          int y_pos = col + 1;
          
          if (y_pos < cellCount && !(cellMatrix[x_pos][y_pos])) { 
          cellMatrix[x_pos][y_pos] = true;}
          
          
          
      }
    }
  }


}


  
}
