void menu(){
  //gif
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if(f==n)f=0;
  fill(0);
  //message
  textSize(100);
  text("PIN IT!", width/2, height/4);
  textSize(50);
  text("CLICK TO START", width/2, 3*height/4);
  //initialization
  x=width/2;
  y=15*height/16;
  pins=180;
  score=0;
}

void menuClicks(){
  view=rules;
}
