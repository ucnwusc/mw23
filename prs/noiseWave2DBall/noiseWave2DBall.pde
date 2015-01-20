float yoff = 0.0;        // 2nd dimension of perlin noise
Ball ball1;
float d=0.0;
float dmin=100000.0;

void setup() {
  size(640, 360);
  smooth();
  ball1 =new Ball(32);
}

void draw() {
  background(173,216,230);
  ball1.move();
  ball1.display();

  fill(0,0,255);
  // We are going to draw a polygon out of the wave points
  beginShape(); 
  
  float xoff = 0;       // Option #1: 2D Noise
  // float xoff = yoff; // Option #2: 1D Noise
  
  // Iterate over horizontal pixels
  for (float x = 0; x <= width; x += 10) {
    // Calculate a y value according to noise, map to 
    float y = map(noise(xoff, yoff), 0, 1, 200,300); // Option #1: 2D Noise
    // float y = map(noise(xoff), 0, 1, 200,300);    // Option #2: 1D Noise
    
    // Set the vertex
    vertex(x, y); 
    // Increment x dimension for noise
    xoff += 0.05;
    float dmin1=1000.0;
    if ((x >= ball1.x - ball1.r) && (x <= ball1.x + ball1.r )&& y >= ball1.y){
         d=dist(ball1.x, ball1.y, x, y);
         if (d < dmin1) dmin1=d;
         println("now dmin1="+dmin1+",d="+d);
         dmin=dmin1;
    }


  }
  // increment y dimension for noise
  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  
  println("old dmin="+dmin);
  if(dmin < ball1.r) {
        println("dmin="+d, "ball1.r="+ball1.r);
        println("Collision\n");
    } else {
        println("No Collision\n");
   }
}

