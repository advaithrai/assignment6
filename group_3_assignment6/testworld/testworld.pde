
TestPlant[] plants;
Prey[] preys;

int UNIT = 25;

void setup() {
  frameRate(3);
  size(500,500);
  preys = new Prey[1];
  plants = new TestPlant[50];
  
  for (int i = 0; i < 1; i++) {
    
    int randX = int(random(width/UNIT)) * UNIT;
    int randY = int(random(height/UNIT)) * UNIT;
    
    preys[i] = new Prey(randX, randY);
  }
  
  for (int i = 0; i < 50; i++) {
    
    int randX = int(random(width/UNIT)) * UNIT;
    int randY = int(random(height/UNIT)) * UNIT;
    
    plants[i] = new TestPlant(randX, randY);
  }
  
}

void draw() {
  background(0);
  
  for (Prey prey : preys) {
    preys = prey.reproduce(preys);
    prey.move();
    prey.display();
  }
  
  for (TestPlant plant : plants) {
    
    for (Prey prey : preys) {
      prey.eat(plant);
    }
   
    plant.display();
  }
  
  

  
}
