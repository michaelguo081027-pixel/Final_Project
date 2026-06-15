void game(){
  background(135, 206, 250);
  fill(0);
  textSize(50);
  //scoring:+1 per second survived
  text("Score: "+score, width/6, height/12);
  text("Click to Pause", 3*width/4, height/12);
  time=time+0.01;
  if(time>=1){
    time=0;
    score++;
  }
  fill(255);
  circle(h,750,l);
  if(akey==true||leftkey==true)h=h-5;
  if(dkey==true||rightkey==true)h=h+5;
  if(wkey==true||upkey==true){
    circle(h, j, 10);
    j=j-1;
  }
  t=t-0.01;
  if(t>0){
    circle(m,i,l);
    i=i+5;
  }if(t<=0){
    t=3;
    i=-100;
  }
}

void gameClicks(){
  view=pause;
}
