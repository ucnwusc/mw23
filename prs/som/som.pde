Atom atmH1, atmH2, atmO;
Molecule molWater;
int xspeed=1;
int yspeed=1;
float theta1, theta2;

void setup(){
  size(200,200);
  smooth();
  atmH1=new Atom ("H",10,0,0,255,255,0);
  atmH2=new Atom ("H",10,0,0,255,255,0);
  atmO=new Atom("O",20,100,100,255,69,0);
  molWater=new Molecule("water","H2O"," ",18.0,100.0,150.0);
  float r=atmO.radius + atmH1.radius;
  theta1=PI*1/6;
  theta2=PI*0.83;
  float x1=r*cos(theta1);
  float y1=r*sin(theta1);
  atmH1.update_xy(width/2+x1,height/2-y1);
  float x2=r*cos(theta2);
  float y2=r*sin(theta2);
  atmH2.update_xy(width/2+x2,height/2-y2);
}
void draw(){
  clear();
  //background(102,275,170);//medium aqua
  background(85,107,47);//dark olive green
  //atmH.show();
  //atmO.show();
  atmH1.show_notxt();
  atmH2.show_notxt();
  atmO.show_notxt();
  molWater.show();
 // println( atmH.name);
  //atm.move();
  //mol_move();
  
}
void mol_move (){
  atmH1.move();
  atmH2.move();
  atmO.move();
  
}
