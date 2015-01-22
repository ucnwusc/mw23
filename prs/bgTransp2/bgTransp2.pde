// need an extra PGraphics object for transparent bg.
//http://processing.org/reference/createGraphics_.html 
//http://processing.org/reference/image_.html 

PGraphics alphaG;
PImage img;

void setup() {
size(400,400); 
// create an extra pgraphics object for rendering on a transparent background
alphaG = createGraphics(width,height, JAVA2D);
img = loadImage("CH4.png");
 
// background will be transparent in the png-file 
background(0);
noLoop();
}

void draw() {
 
 // draw into the pgraphics object
 alphaG.beginDraw();
   alphaG.image(img,10,10); 
 alphaG.endDraw();
 
 // draw the second renderer into the window, so we can see something 
 image(alphaG, 200,200);
 alphaG.save("alphatest.png"); 
 println("alphatest.png saved.");
}

void keyPressed() {
  alphaG.save("alphatest.png"); 
  println("alphatest.png saved.");
}

