float yoff = 0.0;        // 2nd dimension of perlin noise
Ball ball1;
RectObj rectobj1;
RectObj rectobj2;
float d=0.0;
float dmin=100000.0;
float score=0;

int xspacing = 16;   // How far apart should each horizontal location be spaced
int w;              // Width of entire wave

float theta = 0.0;  // Start angle at 0
float amplitude = 35.0;  // Height of wave
float period = 700.0;  // How many pixels before the wave repeats
float dx;  // Value for incrementing X, a function of period and xspacing
float[] yvalues;  // Us

void setup() {
  size(640, 360);
  smooth();
  ball1 =new Ball(20);
  rectobj1=new RectObj(300,0,20,150);
  rectobj2=new RectObj(500,0,20,200);
  w = width+16;
  dx = (TWO_PI / period) * xspacing;
  yvalues = new float[w/xspacing];
  
}

void draw() {
  background(173,216,230);
  ball1.move();
  ball1.display();
  rectobj1.move();
  rectobj1.display();
  rectobj2.move();
  rectobj2.display();

  fill(0,0,255);
  // We are going to draw a polygon out of the wave points
  calcWave();
  renderWave();
   
   if (rectobj1.x-ball1.x <= ball1.r && ball1.y <=rectobj1.h) ball1.x=ball1.x-5;
   
   if (dist(ball1.x, ball1.y, rectobj1.x, rectobj1.h) <= ball1.r){
       ball1.x -=1;
       ball1.y +=1;
   }
   if (ball1.y <= ball1.r+rectobj1.h) ball1.y=ball1.y+1;
   if (dist(ball1.x, ball1.y, rectobj1.x+rectobj1.w, rectobj1.h) <= ball1.r){
       ball1.x +=1;
       ball1.y +=1;
   }
   if (ball1.x > (rectobj1.x + rectobj1.w) && (ball1.x - (rectobj1.x + rectobj1.w) <= ball1.r) && ball1.y <=rectobj1.h) ball1.x=ball1.x+10;
   
   if (rectobj2.x-ball1.x <= ball1.r && ball1.y <=rectobj2.h) ball1.x=ball1.x-5;
   
   if (dist(ball1.x, ball1.y, rectobj2.x, rectobj2.h) <= ball1.r){
       ball1.x -=1;
       ball1.y +=1;
   }
   if (ball1.y <= ball1.r+rectobj2.h) ball1.y=ball1.y+1;
   if (dist(ball1.x, ball1.y, rectobj2.x+rectobj2.w, rectobj2.h) <= ball1.r){
       ball1.x +=1;
       ball1.y +=1;
   }
   if (ball1.x > (rectobj2.x + rectobj2.w) && ball1.x - (rectobj2.x + rectobj2.w) <= ball1.r && ball1.y <=rectobj2.h) ball1.x=ball1.x+10;
   if (ball1.x > score) score=ball1.x;
   score=(score/640)*100;
   int a=floor(score);
   textSize(32);
   fill(255, 102, 153);
   
   text("Score="+a, 10, height-50); 
   println("score is="+a);
   
}//draw func

//func
void calcWave() {
  // Increment theta (try different values for 'angular velocity' here
  theta += 0.02;

  // For every x value, calculate a y value with sine function
  float x = theta;
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = sin(x)*amplitude;
    x+=dx;
  }
}

//func
void renderWave() {
  noStroke();
  fill(65,105,255);
  // A simple way to draw the wave with an ellipse at each location
  beginShape();
  for (int x = 0; x < yvalues.length; x++) {
    //ellipse(x*xspacing, height/2+yvalues[x], 16, 16);
   
    vertex(x*xspacing, height/2+yvalues[x]+50); 
    
  }
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}

