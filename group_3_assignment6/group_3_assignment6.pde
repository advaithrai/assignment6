Plant plant;
int cellCount = 50;

boolean[][] cellMatrix = new boolean[cellCount][cellCount];
Plant[] plants = new Plant[6];

boolean isAlive = true;

void setup() {
  
  size(500,500);
  
  frameRate(20);
  
  for (int i = 0; i <= 5; i++) {
      plant = new Plant(50,50,true);
  }

  
  


}

void draw() {
 background(159,191,139);
 
  plant.seed();

}

void mouseClicked() {
  plant.isAlive = false;


}
