
void setup (){
  size(600,400);
}
void draw(){
int d = day();    // Values from 1 - 31

int m = month();  // Values from 1 - 12
int y = year();   // 2003, 2004, 2005, etc.
println(" day="+d+" month="+m+" year="+y);

String s = String.valueOf(d);
text(s, 10, 28);
s = String.valueOf(m);
text(s, 10, 56); 
s = String.valueOf(y);
text(s, 10, 84);
}
