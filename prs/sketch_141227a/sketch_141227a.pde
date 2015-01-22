void setup(){
  size(600,400);
  smooth();
}
void draw(){
   
int num = 1;

switch(num) {
  case 0: 
    println("Zero");  // Does not execute
    break;
  case 1: 
    println("One");  // Prints "One"
    fill(255,0,0);
    ellipse(100,100,50,50);
    break;
}
char letter = 'N';

switch(letter) {
  case 'A': 
    println("Alpha");  // Does not execute
    fill (0,255,0);
    rect(200,200,50,50);
    break;
  case 'B': 
    println("Bravo");  // Does not execute
    break;
  default:             // Default executes if the case labels
    fill(0,0,255);
    rect(300,300,50,50);
   println("None");   // don't match the switch parameter
    break;
}
// Removing a "break" enables testing
// for more than one value at once



switch(letter) {
  case 'a':
  case 'A': 
    println("Alpha");  // Does not execute
    break;
  case 'b':
  case 'B': 
    println("Bravo");  // Prints "Bravo"
    break;
}

  
}
