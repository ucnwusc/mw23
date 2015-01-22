int w=600;
int h=400;
int gflag = 0;

void setup(){
  size (w,h);
  smooth();
}

void draw(){
  switch_func();
}

void switch_func(){

switch(gflag) {
  case 1: 
    Level_One();
    break;
  case 2: 
    Level_Two();
    break;
  default:             // Default executes if the case labels
    Default_Level();
    break;
}
}
void nextButton(){
  fill(255,0,0);
  triangle(w/2,h/2+100, w/2,h/2+150,w/2+25,h/2+125);
  
}
void nextButton2(){
  fill(255,0,255);
  triangle(w/2+100,h/2+100, w/2,h/2+150,w/2+25,h/2+125);
  
}




