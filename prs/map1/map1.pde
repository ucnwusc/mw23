void setup(){
  size(200, 200);
}
void draw(){
float value = 25;
float m = map(value, 0, 100, 0, width);
ellipse(m, 200, 10, 10);
}

