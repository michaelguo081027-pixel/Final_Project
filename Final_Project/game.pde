void game(){
  background(0, 255, 0);
  fill(0);
  textSize(50);
  text("Score: "+score, width/6, height/12);
  text("Click to Pause", 3*width/4, height/12);
  //space
  int i=0;
  while(i<c){
    fill(192);
    circle(x[i], y[i], 125);
    i++;
  }
  //numbers
  
  //end
  if(space==0)view=end;
}

void gameClicks(){
  view=pause;
}
