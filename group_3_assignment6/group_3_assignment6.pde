Plant[] plants;
Prey[] preys;
Predator[] predators;


int UNIT = 25;

void setup() {
  frameRate(6);
  size(500,500);
  preys = new Prey[8];
  predators = new Predator[4];
  plants = new Plant[15];

  
  for (int i = 0; i < 8; i++) {
    
    int randX = int(random(width/UNIT)) * UNIT;
    int randY = int(random(height/UNIT)) * UNIT;
    
    preys[i] = new Prey(randX, randY);
  }
  
    for (int i = 0; i < 4; i++) {
    
    int randX = int(random(width/UNIT)) * UNIT;
    int randY = int(random(height/UNIT)) * UNIT;
    
    predators[i] = new Predator(randX, randY);
  }

  
  for (int i = 0; i < 15; i++) {
    
    int randX = int(random(width/UNIT)) * UNIT;
    int randY = int(random(height/UNIT)) * UNIT;
    
    plants[i] = new Plant(randX, randY, 0);
  }
  
}

void draw() {
  background(104,180,131);
  
  for (Prey prey : preys) {
     for (Predator predator : predators) {
      predator.eat(prey);
    }
    
    preys = prey.reproduce(preys);
    prey.move();
    prey.display();
    

  }
  
  for (Predator predator : predators) {
    predators = predator.reproduce(predators);
    predator.move();
    predator.display();
  }
  
  for (Plant plant : plants) {
    
     for (Prey prey : preys) {
      prey.eat(plant);
    }
   
    plants = plant.reproduce(plants);   

   plant.display();
  
  }
  
  

  
}
