class RectObj {

  float w,h;   // radius
  float x,y; // location
  float xspeed,yspeed; // speed
  
  // Constructor
  RectObj(float tempX, float tempY,float tempW,float tempH) {
    w =tempW;
    h =tempH;
    x = tempX;
    y = tempY;
    xspeed = -0.001;
    yspeed = 0;
  }
  
  void move() {
    x += xspeed; // Increment x
    y += yspeed; // Increment y
    
    // Check horizontal edges
    if (x > width || x < 0) {
      stop ();
    }
    
  }
  
  // Draw the ball
  void display() {
    stroke(0);
    fill(0,50);
    rect(x,y,w,h);
  }
}
