void Default_Level (){
  clear();
  nextButton();
  fill(0,255,0);
  rect(100,100,200,50);
  rect(100,152,200,50);
  rect(100,204,200,50);
  
  float mouseDist = dist(300, 300, mouseX, mouseY);
  if (gflag ==  0 && mouseX < 200 && mouseX>100 && mouseY>100 && mouseY <150 && mousePressed)
      gflag=1;
      
  if (gflag ==0 && mouseX < 200 && mouseX>100 && mouseY>152 && mouseY <202 && mousePressed)
      gflag=2;
      
  
}
