void menu(){
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if(f==n)f=0;
  fill(0);
  textSize(100);
  text("ONLY UP!", width/2, height/4);
  textSize(50);
  text("CLICK TO START", width/2, 3*height/4);
  h=width/2;
  l=50;
  v=height-l/2;
  score=0;
}

void menuClicks(){
  view=rules;
}
