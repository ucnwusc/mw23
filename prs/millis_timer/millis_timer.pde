int m1;
void setup(){
  size(600,600);
  m1=millis();
}

void draw() {
  int m = millis();
  if (m-m1 >1000){
    clear();
    rect(25, 25, 200, 200);
  }else{
  fill(m % 255, m % 155, m% 255);
  rect(25, 25, 300, 300);
  }
}
