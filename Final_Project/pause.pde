void pause(){
  fill(0, 255, 0);
  stroke(0, 255, 0);
  rect(width/2, 0, width/2, height/8);
  fill(0);
  textSize(100);
  text("PAUSED", width/2, height/2);
  textSize(50);
  text("Click to Continue", 3*width/4, height/12);
  stroke(0);
}

void pauseClicks(){
  view=game;
}
