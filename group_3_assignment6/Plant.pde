class Plant {
  int plantSize = 10;
  int x_pos, y_pos;
  boolean isAlive;
  
  Plant(float x, float y, boolean isAlive) {
   
    this.x_pos = x;
    this.y_pos = y;
    this.isAlive = isAlive;
  }
  
  
  void seed(boolean[][] matrix) {
    if (isAlive) {
    PImage plant = loadImage("Sprites/Plant.png");
    image(plant, x_pos, y_pos);
    
    matrix[x_pos][y_pos] = true;
  
    }
  }
  
  void grow(boolean[][] matrix) {
    int new_x;
    int new_y;
    
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        
        
      }
    }
    
    Plant plant = new Plant(x_pos, y_pos, true);
    plant.seed(matrix);
  
  }
  
  
  void reproduce(int[][] Matrix) {
    int matrixWidth = Matrix[0].length;
    int matrixHeight = Matrix.length;
    
    float new_x = x_pos + plantSize + 20;
    float new_y = y_pos + plantSize + 20;
    
  }
}
