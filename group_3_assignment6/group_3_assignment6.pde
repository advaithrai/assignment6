
int cellCount = 501;

boolean[][] cellMatrix = new boolean[cellCount][cellCount];


void setup() {
  
  size(500,500);
  
  frameRate(5);
  
  cellMatrix[50][50]= true;


}

void draw() {
 background(159,191,139);
 
  
  
 }

void createPlants() {
    for (int row = 0; row < cellCount; row++) {
    for (int col = 0; col < cellCount; col++) {
      if (cellMatrix[row][col] == true) {
          int x_pos = row * 10;
          int y_pos = col * 10;
          Plant plnt = new Plant(x_pos, y_pos);
          plnt.seed();
          
      }
    }
  }

}
