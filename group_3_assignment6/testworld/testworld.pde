Prey prey;
TestPlant tp;
void setup() {
  frameRate(3);
  size(500,500);
  prey = new Prey(250,250);
  tp = new TestPlant(200,200);
}

void draw() {
  background(0);
  tp.display();
  prey.display();
  prey.move();
}
