void game(){
  background(0, 255, 0);
  fill(0);
  textSize(50);
  
  text("Score: "+score, width/6, height/12);
  text("Click to "+s, 3*width/4, height/12);
  int i=0;
  while(i<c){
    fill(255);
    circle(x[i], y[i], 125);
    i++;
  }
}

void gameClicks(){
  view=pause;
  s="Continue";
}
