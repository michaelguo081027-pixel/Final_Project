void menu(){
  //gif
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if(f==n)f=0;
  //message
  fill(0);
  textSize(100);
  text("P-INTEREST!", width/2, height/4);
  textSize(50);
  text("CLICK TO START", width/2, 3*height/4);
  //initialization
  x=width/2;
  y=15*height/16;
  score=0;
  minim=new Minim(this);
  failure=minim.loadFile("FAILURE.wav");
  t=1;
  needles.clear();
  flyingNeedle = null;
  hitNeedle = null;
  failedNeedle = null;
  score = 0;
  gameOver = false;
  rotationAngle = 0;
}

void menuClicks(){
  view=rules;
}
