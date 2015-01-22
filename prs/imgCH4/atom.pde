class Atom {
  float radius;
  float x;
  float y;
  int R;
  int B;
  int G;
  String name;
  int txtR;
  int txtG;
  int txtB;
  
  Atom(String n, float r, float x, float y, int R, int G, int B){
    this.radius=r;
    this.x=x;
    this.y=y;
    this.R=R;
    this.G=G;
    this.B=B;
    this.name=n;
  }//Atom()
 void setName(String s){
    this.name=s;
  }
  
  void update_xy(float x,float y){
    this.x=x;
    this.y=y;
  }
  
  void move (){
    this.x +=xspeed;
    this.y +=yspeed;
    // Check horizontal edges
    if (x > width || x < 0) {
      xspeed *= - 1;
    }
    //Check vertical edges
    if (y > height || y < 0) {
      yspeed *= - 1;
    }
  }
  void show (){
    smooth();
    noStroke();
    fill (this.R,this.G,this.B);
    ellipse (this.x,this.y,2*this.radius,2*this.radius);
    textAlign(CENTER);
    fill(0,0,255);
    text(this.name,this.x,this.y+4);
  }
  void show_notxt(){
    smooth();
    noStroke();
    fill (this.R,this.G,this.B);
    ellipse (this.x,this.y,2*this.radius,2*this.radius);
  }
}//class
