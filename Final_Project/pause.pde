void pause(){
  fill(0);
  textSize(100);
  text("PAUSED", width/2, height/2);
  textSize(50);
  //text("Click to "+s, 3*width/4, height/12);
  stroke(0);
}

void pauseClicks(){
    view=game;
    s="Pause";
}
