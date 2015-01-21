
class Ball {

  float r;   // radius
  float x,y; // location
  float xspeed,yspeed; // speed
  
  // Constructor
  Ball(float tempR) {
    r = tempR;
    x = 16;
    y = 16;
    xspeed = 1;
    yspeed = 1;
  }
  
  void move() {
    x += xspeed; // Increment x
    y += yspeed; // Increment y
    
    // Check horizontal edges
    if (x > width || x < 0) {
      stop ();
    }
    //Check vertical edges
    if (y > height || y < 0) {
      stop();
    }
    
    if (keyPressed==true || mousePressed ==true){
      x -=  xspeed;
      y -= 5*yspeed;
    }
    
  }
  
  // Draw the ball
  void display() {
    stroke(0);
    fill(0,50);
    ellipse(x,y,r*2,r*2);
  }
}
