int w=600;
int h=400;
void setup(){
  size (w,h);
  smooth();
}

void draw(){
  fill (255,0,0);
  ellipse(100,100,50,50);
  switch_func1();
  
}

void switch_func1(){
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
}



