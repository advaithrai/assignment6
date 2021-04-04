class Plant {
  int plantSize = 10;
  float x_pos, y_pos;
  
  Plant(float x, float y) {
   
    this.x_pos = x;
    this.y_pos = y;
  }
  
  void display() {}
  
  void grow() {
  
  }
  
  void die() {}
  
  void reproduce(int[][] Matrix) {
    int matrixWidth = Matrix[0].length;
    int matrixHeight = Matrix.length;
    
    float new_x = x_pos + plantSize + 20;
    
  }
}
