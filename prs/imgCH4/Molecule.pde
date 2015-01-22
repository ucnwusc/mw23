class Molecule {
  String name;
  String formula;
  String smiles;
  float mw;
  float x;
  float y;
  
  Molecule (String n, String f, String s, float mw, float x, float y){
    this.name=n;
    this.formula=f;
    this.smiles=s;
    this.mw=mw;
    this.x=x;
    this.y=y;
  }//Molecule 
  
  void update_xy(float x, float y){
      this.x=x;
      this.y=y;
    }
   void show(){
    fill(0,0,255);
    textAlign(CENTER);
    text (this.name,this.x,this.y+12);
    text (this.formula,this.x,this.y+24); 
   }
}//class
