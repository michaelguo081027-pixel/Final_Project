void menu(){
  background(192);
  textSize(100);
  text("DOUBLE POWER", width/2, height/4);
  textSize(50);
  text("CLICK TO START", width/2, 3*height/4);
  score=0;
  space=16;
  t=1.5;
  int i=0;
  c=16;
  x=new int[c];
  y=new int[c];
  tx=160;
  ty=200;
  while (i<c){
    x[i]= tx;
    y[i]= ty;
    tx=tx+160;
    if(tx>750){
      tx=160;
      ty=ty+150;
    }
    i=i+1;
  }
}

void menuClicks(){
  view=rules;
}
