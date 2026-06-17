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
  score=0;
  minim=new Minim(this);
  failure=minim.loadFile("FAILURE.wav");
  //pins
  c=360;
  h=new float[c];
  v=new float[c];
  show=new boolean[c];
  tv=400;
  th=200;
  int j=0;
  t=1;
  while (j<c){
    h[j]= th;
    v[j]= tv;
    show[j]=true;
    th=th+120;

    j=j+1;
  }
}

void menuClicks(){
  view=rules;
}
