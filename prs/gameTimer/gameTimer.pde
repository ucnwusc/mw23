int level;
Timer levelTimer;

void setup() {
  levelTimer = new Timer(5000);
}

void draw() {
  println(levelTimer.isFinished());
}

void keyPressed() {
  switch(key) {
  case '1':
    level = 1;
    levelTimer.start();
    break;
  case '2':
    level = 2;
    levelTimer.start();
    break;
  case '3':
    level = 3;
    levelTimer.start();
    break;
  }
}
