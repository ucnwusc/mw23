Atom atmC;
Atom [] atmhs;
Molecule molCH4;

int xspeed=1;
int yspeed=1;
float theta;
int index=0;
int wd=63;
int ht=63;

void setup(){
  
  size(wd,ht);
  float cx=width/2;
  float cy=height/2;
  smooth();
  atmhs=new Atom [4];
  for (int i=0;i<4;i++){
    atmhs[index++]=new Atom ("H",10,0,0,255,255,0);
  }
  println("cx="+cx+",cy="+cy);
  atmC=new Atom("C",20, cx, cy, 0,128,0);
  molCH4=new Molecule("Mathane","CH4"," ",16.0,100.0,150.0);
  
  float r=atmC.radius + atmhs[0].radius;
  theta=PI*2;
  float x1,y1;
  for (int i=0;i<4;i++){
   x1=r*cos(theta*i/4+PI*1/4);
   y1=r*sin(theta*i/4+PI*1/4);
   atmhs[i].update_xy(cx+x1,cy-y1);
  }
}
void draw(){
  clear();
  //background(102,275,170);//medium aqua
  //background(85,107,47);//dark olive green
  //background(192,192,192);//silver
  background(255,255,255);//transparent
  //atmH.show();
  //atmO.show();
  for(int i=0;i<4;i++){
    atmhs[i].show_notxt();
  }
  atmC.show_notxt();
  //molCH4.show();
 // println( atmH.name);
  //atm.move();
  //mol_move();
  save("CH4.png");
}
void mol_move (){
  atmC.move();
   for(int i=0;i<4;i++){
    atmhs[i].move();
  }
  
}
