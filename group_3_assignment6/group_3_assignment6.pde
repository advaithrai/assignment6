
int cellCount = 501;

boolean[][] cellMatrix = new boolean[cellCount][cellCount];

Plant[] plants = new Plant[5];
Timer timer;

void setup() {
  
  size(500,500);  
  //frameRate(30);
  timer= new Timer(30);
  

   for (int i = 0; i < 5; i++) {
    Plant plant = new Plant(50 + (i * 50),100);
    plants[i] = plant;
  }


}

void draw() {
 background(159,191,139);
 
  for (Plant plant : plants) {
      plant.display(cellMatrix);
      if (timer.go()) {
        plant.reproduce(plants,cellMatrix);
      }
      
  }
  
  
 }

void createPlants() {
    for (int row = 0; row < cellCount; row++) {
    for (int col = 0; col < cellCount; col++) {
      if (cellMatrix[row][col] == true) {
          int x_pos = row * 10;
          int y_pos = col * 10;
          Plant plnt = new Plant(x_pos, y_pos);
          plnt.display(cellMatrix);
          
      }
    }
  }

}
