class Plant {
  int plantSize = 10;
  int x_pos, y_pos;
  boolean isAlive;
  
  Plant(int x, int y, boolean isAlive) {
   
    this.x_pos = x;
    this.y_pos = y;
    this.isAlive = isAlive;
  }
  
  
  void seed() {
    if (isAlive) {
    PImage plant = loadImage("Sprites/Plant.png");
    image(plant, x_pos, y_pos);
    

  
    }
  }
  
  
  void living(boolean[][] matrix) {
    if (isAlive) {
      delay(3000);
      this.grow(matrix);
    }
    
  }
  
  
  void grow(boolean[][] matrix) {
    int new_x;
    int new_y;
    
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        
        if (matrix[x_pos + i][y_pos + j] == false && !(i == 0 && j == 0 )) {
          new_x = x_pos + i;
          new_y = y_pos + j;
          
          Plant plant = new Plant(new_x, new_y, true);
          plant.seed();
        }
      }
    }
  
  }
  
  void newSeed() {}
  
  void die(boolean[][] matrix) {
    this.isAlive = false;
    
    matrix[x_pos][y_pos] = false;
        
  }
  
  
}
