void Level_Two(){
  clear();
  nextButton();
  fill (255,0,0);
  rect(100,100,200,200);
  rect(100,302,200,40);
  if (gflag==2 && mouseX>100 &&mouseX<300&mouseY>302&&mouseY<342 &&mousePressed) gflag=0;
  
}
