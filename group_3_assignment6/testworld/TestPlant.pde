class TestPlant {
  
  PImage plantSprite = loadImage("Plant.png");
  int plantWidth = 25;
  int x_pos, y_pos;
  boolean alive = true;
  
  TestPlant(int x, int y) {
   
    x_pos = x;
    y_pos = y;
    
  }
  
  void display() {
    
    if (this.alive) {
      image(plantSprite, x_pos, y_pos);
    }
  }

}
